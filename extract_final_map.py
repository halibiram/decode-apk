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

    parts = [p.strip().replace('L', '') for p in s.split(',')]
    return [int(p) for p in parts if p]

def find_method_body(content, method_signature):
    """A simple way to find a method's body."""
    try:
        start = content.index(method_signature)
        brace_start = content.index('{', start)

        open_braces = 1
        brace_end = brace_start + 1
        while open_braces > 0 and brace_end < len(content):
            if content[brace_end] == '{':
                open_braces += 1
            elif content[brace_end] == '}':
                open_braces -= 1
            brace_end += 1

        return content[brace_start:brace_end]
    except ValueError:
        return None

def extract_replacements_from_block(block_content):
    """Extracts replacement pairs from a given block of Java code."""
    # This regex is designed to be more robust.
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
java_file = 'decompiled/FBD_VPN_PROcom.fbd.tunnelv404/jadx/sources/com/tknetwork/tunnel/service/TunnelVPN.java'

if not os.path.exists(java_file):
    print(f"Error: Java file not found at {java_file}")
    sys.exit(1)

with open(java_file, 'r', encoding='utf-8') as f:
    full_content = f.read()

# Find the d(String str) method body
d_method_body = find_method_body(full_content, "private String d(String str)")
if not d_method_body:
    print("Error: Could not find the d(String str) method body.")
    sys.exit(1)

print("--- Extracting final replacement map from TunnelVPN.java ---")
final_map = extract_replacements_from_block(d_method_body)

# --- Save the map to a file ---
output_file = 'final_replacement_map.json'
with open(output_file, 'w') as f:
    json.dump(final_map, f, indent=2, sort_keys=True)

print(f"\n\nSuccessfully extracted final map to {output_file}")
print(f" - Found {len(final_map)} replacements.")