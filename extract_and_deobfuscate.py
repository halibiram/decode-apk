import re
import sys

class JavaRandom:
    """
    A Python implementation of Java's java.util.Random.
    Needed to replicate the exact pseudo-random number sequence.
    """
    def __init__(self, seed=0):
        if seed is None:
            # In a real Java environment, this would be more complex.
            # For our case, we always have a seed.
            seed = 0
        self.seed = (seed ^ 0x5DEECE66D) & ((1 << 48) - 1)

    def _next(self, bits):
        self.seed = (self.seed * 0x5DEECE66D + 0xB) & ((1 << 48) - 1)
        return self.seed >> (48 - bits)

    def next_long(self):
        # A 64-bit long is constructed from two 32-bit integers
        high = self._next(32)
        low = self._next(32)
        val = (high << 32) + low
        # Handle signed 64-bit conversion
        if val >= (1 << 63):
            val -= (1 << 64)
        return val

def long_to_bytes(n):
    """Converts a long to a little-endian byte array of length 8."""
    if n < 0:
        n += (1 << 64)
    b = bytearray()
    for _ in range(8):
        b.append(n & 0xff)
        n >>= 8
    return b

def deobfuscate(long_array):
    """
    Deobfuscates a long array from ObfuscatedString back to a string.
    """
    if not long_array:
        return ""

    seed = long_array[0]
    rand = JavaRandom(seed)

    decrypted_bytes = bytearray()

    for i in range(1, len(long_array)):
        obfuscated_long = long_array[i]
        random_long = rand.next_long()

        decrypted_long = obfuscated_long ^ random_long

        decrypted_bytes.extend(long_to_bytes(decrypted_long))

    # Trim trailing null bytes
    while decrypted_bytes and decrypted_bytes[-1] == 0:
        decrypted_bytes.pop()

    return decrypted_bytes.decode('utf-8', errors='ignore')

def main():
    try:
        with open("decompiled/FBD_VPN_PROcom.fbd.tunnelv404/jadx/sources/com/tknetwork/tunnel/activities/ActivityUi.java", 'r', encoding='utf-8') as f:
            content = f.read()
    except FileNotFoundError:
        print("Error: ActivityUi.java not found.", file=sys.stderr)
        sys.exit(1)

    # Find the c_02 method block to narrow down the search
    method_match = re.search(r'private void c_02\(\) \{.*?\n(.*?)\n    \}', content, re.DOTALL)
    if not method_match:
        print("Error: c_02 method not found in ActivityUi.java", file=sys.stderr)
        sys.exit(1)

    method_body = method_match.group(1)

    # Regex to find all .replace(new ObfuscatedString(new long[]{...}), new ObfuscatedString(new long[]{...}))
    pattern = re.compile(r'\.replace\(new ObfuscatedString\(new long\[\]\{(.*?)\}\)\.toString\(\), new ObfuscatedString\(new long\[\]\{(.*?)\}\)\.toString\(\)\)')

    matches = pattern.findall(method_body)

    print("Found replacement map:")
    for from_longs_str, to_longs_str in matches:
        from_longs = [int(l.replace('L', '')) for l in from_longs_str.split(', ')]
        to_longs = [int(l.replace('L', '')) for l in to_longs_str.split(', ')]

        from_char = deobfuscate(from_longs)
        to_char = deobfuscate(to_longs)

        print(f'"{from_char}" -> "{to_char}"')

if __name__ == "__main__":
    main()