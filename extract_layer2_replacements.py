import re
import sys
import os

# This is a Python reimplementation of the deobfuscation logic from
# com.panda912.muddy.ObfuscatedString

def deobfuscate(long_array):
    if not long_array:
        return ""

    seed = long_array[0]

    # Simple LCG PRNG: seed = (seed * multiplier + addend) & mask
    # In Java's Random, the multiplier is 0x5DEECE66D and addend is 0xB
    multiplier = 0x5DEECE66D
    addend = 0xB
    mask = (1 << 48) - 1

    # This simulates the first call to next(31) to get the char array length
    seed = (seed * multiplier + addend) & mask

    chars = []
    for i in range(1, len(long_array)):
        # Simulate next() call to get the next random long
        seed = (seed * multiplier + addend) & mask
        # XOR with the data
        decrypted_long = long_array[i] ^ seed

        # Unpack two chars from the long
        char1 = chr(decrypted_long & 0xFFFF)
        char2 = chr((decrypted_long >> 32) & 0xFFFF)

        chars.append(char1)
        if char2 != '\x00':
             chars.append(char2)

    return "".join(chars)

def parse_long_array(s):
    s = s.strip()
    if s.startswith("{") and s.endswith("}"):
        s = s[1:-1]

    # Handle the 'L' suffix for long literals in Java
    parts = [p.strip().replace('L', '') for p in s.split(',')]
    return [int(p) for p in parts if p]

def extract_replacements_from_java(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Regex to find all .replace(new ObfuscatedString(...), new ObfuscatedString(...)) calls
    pattern = re.compile(
        r"\.replace\(new ObfuscatedString\(new long\[]\s*(\{.*?\})\)\.toString\(\),\s*new ObfuscatedString\(new long\[]\s*(\{.*?\})\)\.toString\(\)\)",
        re.DOTALL
    )

    matches = pattern.findall(content)

    replacements = {}

    print(f"Found {len(matches)} potential replacement pairs.")

    for match in matches:
        try:
            long_array_from = parse_long_array(match[0])
            long_array_to = parse_long_array(match[1])

            str_from = deobfuscate(long_array_from)
            str_to = deobfuscate(long_array_to)

            # The logic seems to be a single character replacement
            if len(str_from) == 1 and len(str_to) == 1:
                if str_from not in replacements:
                    replacements[str_from] = str_to
                    # print(f"Found replacement: '{str_from}' -> '{str_to}'")
                elif replacements[str_from] != str_to:
                     print(f"WARNING: Conflicting replacement for '{str_from}': existing='{replacements[str_from]}', new='{str_to}'")

        except Exception as e:
            print(f"Error parsing or deobfuscating a match: {match}")
            print(f"Exception: {e}")

    return replacements

# --- Main Execution ---
java_file = 'decompiled/FBD_VPN_PROcom.fbd.tunnelv404/jadx/sources/com/tknetwork/tunnel/activities/ActivityUi.java'

if not os.path.exists(java_file):
    print(f"Error: Java file not found at {java_file}")
    sys.exit(1)

print(f"Analyzing {java_file} for second-layer replacements...")
second_layer_map = extract_replacements_from_java(java_file)

print("\n--- Second Layer Replacement Map ---")
# Sort the map for consistent output
sorted_map = {k: v for k, v in sorted(second_layer_map.items())}
import json
print(json.dumps(sorted_map, indent=4))
print(f"\nTotal unique replacements found: {len(second_layer_map)}")