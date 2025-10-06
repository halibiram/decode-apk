import re
import sys

def deobfuscate(long_array):
    """
    Deobfuscates a Java long array from the ObfuscatedString class
    by XORing all elements together and decoding the resulting bytes.
    """
    if not long_array:
        return ""

    # Strip 'L' suffix and convert to int
    try:
        long_array = [int(x.strip().rstrip('L')) for x in long_array]
    except ValueError as e:
        print(f"Error converting long array: {e}", file=sys.stderr)
        print(f"Problematic array: {long_array}", file=sys.stderr)
        return "ERROR"


    merged = 0
    for x in long_array:
        merged ^= x

    result_bytes = bytearray()
    # A long is 8 bytes, so we extract up to 8 bytes
    for i in range(8):
        byte = (merged >> (i * 8)) & 0xFF
        if byte == 0 and len(result_bytes) > 0: # a null byte likely terminates the string
            break
        result_bytes.insert(0, byte)

    # Clean up leading null bytes that might appear
    while result_bytes and result_bytes[0] == 0:
        result_bytes.pop(0)

    return result_bytes.decode('utf-8', errors='ignore')

def find_matching_paren(text, start_index):
    """
    Finds the index of the matching closing parenthesis for a given starting parenthesis.
    """
    open_paren = 1
    for i in range(start_index, len(text)):
        if text[i] == '(':
            open_paren += 1
        elif text[i] == ')':
            open_paren -= 1

        if open_paren == 0:
            return i
    return -1

def main(filepath):
    """
    Parses the Java file to extract and deobfuscate the password.
    """
    try:
        with open(filepath, 'r') as f:
            content = f.read()
    except FileNotFoundError:
        print(f"Error: File not found at {filepath}", file=sys.stderr)
        return

    # Find the start of the decrypt call's arguments
    start_str = "return c_13.decrypt("
    start_index = content.find(start_str)
    if start_index == -1:
        print("Could not find the main decryption block.", file=sys.stderr)
        return

    start_index += len(start_str)

    # Find the end of the decrypt call by matching parentheses
    end_index = find_matching_paren(content, start_index)
    if end_index == -1:
        print("Could not find matching parenthesis for decrypt call.", file=sys.stderr)
        return

    # Isolate the full string of arguments
    full_args_str = content[start_index:end_index]

    # The password expression is the first argument, so find the last comma
    last_comma_index = full_args_str.rfind(',')
    if last_comma_index == -1:
        print("Could not separate arguments in decrypt call.", file=sys.stderr)
        return

    full_expression = full_args_str[:last_comma_index].strip()

    # Regex to find all ObfuscatedString long arrays
    obfuscated_pattern = re.compile(r"new ObfuscatedString\(new long\[\]\{([^}]+)\}\)")
    all_long_arrays = [match.split(',') for match in obfuscated_pattern.findall(full_expression)]

    if not all_long_arrays:
        print("No obfuscated string arrays found in the expression.", file=sys.stderr)
        return

    # The first one is the base string, the rest are replace pairs
    deobfuscated_strings = [deobfuscate(arr) for arr in all_long_arrays]

    final_string = deobfuscated_strings[0]

    # The rest are pairs of (old, new) for replacement
    for i in range(1, len(deobfuscated_strings), 2):
        if i + 1 < len(deobfuscated_strings):
            old_str = deobfuscated_strings[i]
            new_str = deobfuscated_strings[i+1]
            final_string = final_string.replace(old_str, new_str)

    print(final_string)


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python batch_deobfuscator.py <path_to_java_file>", file=sys.stderr)
    else:
        main(sys.argv[1])