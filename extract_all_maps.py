import re
import sys
import os
import json

# This is a Python reimplementation of the deobfuscation logic from
# com.panda912.muddy.ObfuscatedString

def deobfuscate(long_array):
    if not long_array:
        return ""

    seed = long_array[0]

    multiplier = 0x5DEECE66D
    addend = 0xB
    mask = (1 << 48) - 1

    seed = (seed * multiplier + addend) & mask

    chars = []
    for i in range(1, len(long_array)):
        seed = (seed * multiplier + addend) & mask
        decrypted_long = long_array[i] ^ seed

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

    # Handle the 'L' suffix for long literals in Java by removing it
    parts = [p.strip().replace('L', '') for p in s.split(',')]
    return [int(p) for p in parts if p]

def find_block(content, start_pattern, end_pattern):
    """Finds a block of code between a start and end pattern."""
    start_match = re.search(start_pattern, content, re.DOTALL)
    if not start_match:
        return None

    start_pos = start_match.end()
    end_match = re.search(end_pattern, content[start_pos:], re.DOTALL)
    if not end_match:
        return None

    return content[start_pos : start_pos + end_match.start()]

def extract_replacements_from_block(block_content):
    """Extracts replacement pairs from a given block of Java code."""
    pattern = re.compile(
        r"new ObfuscatedString\(new long\[]\s*(\{[\d, \-L]+?\})\)",
        re.DOTALL
    )

    matches = pattern.findall(block_content)

    if len(matches) % 2 != 0:
        print(f"Warning: Found an odd number of ObfuscatedString matches ({len(matches)}).")
        matches = matches[:len(matches) - (len(matches) % 2)]

    replacements = {}

    for i in range(0, len(matches), 2):
        try:
            long_array_from = parse_long_array(matches[i])
            long_array_to = parse_long_array(matches[i+1])

            str_from = deobfuscate(long_array_from)
            str_to = deobfuscate(long_array_to)

            replacements[str_from] = str_to
        except Exception as e:
            print(f"Error parsing or deobfuscating match pair: {e}")

    return replacements

# --- Main Execution ---
java_file = 'decompiled/FBD_VPN_PROcom.fbd.tunnelv404/jadx/sources/com/tknetwork/tunnel/activities/ActivityUi.java'

if not os.path.exists(java_file):
    print(f"Error: Java file not found at {java_file}")
    sys.exit(1)

with open(java_file, 'r', encoding='utf-8') as f:
    full_content = f.read()

all_maps = {}

# --- Define patterns to find the start of each replacement chain ---
patterns = {
    "host": r"String replace3 = VPNUtil\.decrypt\(jSONObject\.getString\(new ObfuscatedString\(new long\[]\{[^}]+\}\)\.toString\(\)\)\)",
    "user": r"configUtil\.setFreeServerUsername\(VPNUtil\.decrypt\(jSONObject\.getString\(new ObfuscatedString\(new long\[]\{[^}]+\}\)\.toString\(\)\)\)",
    "pass": r"configUtil\.setFreeServerPassword\(VPNUtil\.decrypt\(jSONObject\.getString\(new ObfuscatedString\(new long\[]\{[^}]+\}\)\.toString\(\)\)\)",
    "main": r"String replace = VPNUtil\.decrypt\(this\.f5771config\.getUpdateApi\(\)\)"
}

# The end pattern is the terminating semicolon of the statement
end_pattern = r";"

for name, start_pattern in patterns.items():
    print(f"--- Extracting for '{name}' ---")
    block = find_block(full_content, start_pattern, end_pattern)
    if block:
        all_maps[name] = extract_replacements_from_block(block)
    else:
        print(f"Could not find block for '{name}'")

# --- Save the combined maps to a file ---
output_file = 'all_replacement_maps.json'
with open(output_file, 'w') as f:
    json.dump(all_maps, f, indent=2, sort_keys=True)

print(f"\n\nSuccessfully extracted all maps to {output_file}")
for name, map_data in all_maps.items():
    if map_data is not None:
        print(f" - Map '{name}' found {len(map_data)} replacements.")
    else:
        print(f" - Map '{name}' not found.")