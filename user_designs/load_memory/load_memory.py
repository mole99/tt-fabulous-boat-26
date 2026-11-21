BITSTREAM_START = "FAB0FAB1"
DESYNC_FLAG = 20
MEMORY_FLAG = 21
MEMORY_DONE_FLAG = 31

with open("load_memory.bit", "wb") as ofile:

    # Header
    ofile.write(bytes.fromhex(BITSTREAM_START))
    
    # Memory flag + Coords
    X = 1
    Y = 0
    ofile.write((1<<MEMORY_FLAG | (Y<<5) | (X)).to_bytes(4, 'big'))
    
    num_bytes = 256
    for i in range(num_bytes):
        if i == num_bytes-1:
            ofile.write((i | (1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))
        else:
            ofile.write((i & ~(1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))

    # Memory flag + Coords
    X = 3
    Y = 0
    ofile.write((1<<MEMORY_FLAG | (Y<<5) | (X)).to_bytes(4, 'big'))
    
    num_bytes = 512
    for i in range(num_bytes):
        if i == num_bytes-1:
            ofile.write((i | (1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))
        else:
            ofile.write((i & ~(1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))

    # Memory flag + Coords
    X = 2
    Y = 0
    ofile.write((1<<MEMORY_FLAG | (Y<<5) | (X)).to_bytes(4, 'big'))
    
    num_bytes = 13
    for i in range(num_bytes):
        if i == num_bytes-1:
            ofile.write((i | (1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))
        else:
            ofile.write((i & ~(1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))

    # Memory flag + Coords
    X = 4
    Y = 0
    ofile.write((1<<MEMORY_FLAG | (Y<<5) | (X)).to_bytes(4, 'big'))
    
    num_bytes = 8
    for i in range(num_bytes):
        if i == num_bytes-1:
            ofile.write((i | (1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))
        else:
            ofile.write((i & ~(1<<MEMORY_DONE_FLAG)).to_bytes(4, 'big'))

    # Desync flag
    ofile.write((1<<DESYNC_FLAG).to_bytes(4, 'big'))
