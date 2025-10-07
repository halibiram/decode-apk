import sys

def deobfuscate(long_array):
    if not long_array:
        return ""

    long_array = [int(x) for x in long_array]

    merged = 0
    for x in long_array:
        merged ^= x

    result_bytes = bytearray()
    for i in range(8):
        byte = (merged >> (i * 8)) & 0xFF
        if byte == 0:
            break
        result_bytes.insert(0, byte)

    return result_bytes.decode('utf-8', errors='ignore')

if __name__ == "__main__":
    if len(sys.argv) > 1:
        long_args = sys.argv[1:]
        print(deobfuscate(long_args))
    else:
        print("Usage: python deobfuscator.py <long1> <long2> ...")