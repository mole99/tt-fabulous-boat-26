import io
import os
import sys
import yaml
import pathlib
import textwrap
from glob import glob
from decimal import Decimal
from typing import Callable, List, Literal, Mapping, Tuple, Union, Optional, Dict, Any
from librelane.steps import Step, OdbpyStep, OpenROADStep
from librelane.steps.klayout import KLayoutStep
from librelane.steps.openroad import get_psm_error_count
from librelane.steps.step import (
    ViewsUpdate,
    MetricsUpdate,
)
from librelane.steps.common_variables import io_layer_variables
from librelane.flows import Flow, FlowError
from librelane.state import DesignFormat, State
from librelane.common import Path, aggregate_metrics
from librelane.config import Variable
from librelane.logging import (
    verbose,
    debug,
    info,
    rule,
    success,
    warn,
    err,
    subprocess,
)
from librelane.steps import (
    Yosys,
    OpenROAD,
    Magic,
    KLayout,
    Odb,
    Netgen,
    Checker,
    Verilator,
    Misc,
)


@Step.factory.register()
class CustomPDN(OdbpyStep):
    """
    Custom PDN step.
    """

    id = "Odb.CustomPDN"
    name = "Custom PDN step"
    long_name = "Custom PDN step that does some stuff"

    def get_script_path(self):
        return os.path.join(os.path.dirname(__file__), "scripts", "custom_pdn.py")

@Step.factory.register()
class CheckPowerGrid(OpenROADStep):
    """
    Checks the power grid.
    """

    id = "OpenROAD.CheckPowerGrid"
    name = "Check Power Grid"
    long_name = "Check Power Grid"

    def get_script_path(self):
        return os.path.join(os.path.dirname(__file__), "scripts", "check_power_grid.tcl")

    def run(self, state_in: State, **kwargs) -> Tuple[ViewsUpdate, MetricsUpdate]:
        kwargs, env = self.extract_env(kwargs)
        views_updates, metrics_updates = super().run(state_in, env=env, **kwargs)

        alerts = self.alerts or []
        error_reports = glob(os.path.join(self.step_dir, "*-grid-errors.rpt"))
        for report in error_reports:
            net = os.path.basename(report).split("-", maxsplit=1)[0]
            no_terminals = any(
                alert.code == "PSM-0025" and alert.message.startswith(net)
                for alert in alerts
            )
            if no_terminals:
                count = 1
            else:
                count = get_psm_error_count(open(report, encoding="utf8"))
            metrics_updates[f"design__power_grid_violation__count__net:{net}"] = count

        metric_updates_with_aggregates = aggregate_metrics(
            metrics_updates,
            {"design__power_grid_violation__count": (0, lambda x: sum(x))},
        )

        return views_updates, metric_updates_with_aggregates
