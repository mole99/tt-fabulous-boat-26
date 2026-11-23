# GF_SRAM_256x8_1RW

The `GF_SRAM_256x8_1RW` primitive provides an SRAM with 256x8 bits of data and one synchronous read/write port.
It features a per-bit write enable (`WEN_N`), which allows to only write individual bits or bytes of data.

![GF_SRAM_256x8_1RW](images/svg/GF_SRAM_256x8_1RW.svg){align=center}

## Signals

| Name          | Direction | Width | Description              |
|---------------|-----------|-------|--------------------------|
| CLK           | input     | 1     | The clock input for the R/W port. |
| A             | input     | 8     | The address for the R/W port. |
| D             | input     | 8     | The write data.          |
| WEN_N         | input     | 8     | The per-bit write mask (inverted).  |
| GWEN_N        | input     | 1     | The global write enable signal (inverted). |
| CEN_N         | input     | 1     | The memory enable signal (inverted). |
| Q             | output    | 8     | The read data.           |

## Attributes

| Name          | Width | Description              |
|---------------|-------|--------------------------|
| CLK_INV       | 1     | Invert the clock signal. |
