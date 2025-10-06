import hashlib
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad
import base64
import json
import sys

def deobfuscate_string(s):
    """
    Performs character substitution on the decrypted string based on the
    logic discovered in the Java source.
    1 <-> 7
    2 <-> 8
    3 <-> 9
    """
    s = s.replace('1', '*').replace('7', '1').replace('*', '7')
    s = s.replace('2', '*').replace('8', '2').replace('*', '8')
    s = s.replace('3', '*').replace('9', '3').replace('*', '9')
    return s

def decrypt_value(password, encrypted_base64_value):
    """
    Decrypts a single Base64 encoded value using AES/CBC/PKCS7Padding
    and then applies character de-obfuscation.
    Now includes error printing for debugging.
    """
    try:
        key = hashlib.sha256(password.encode('utf-8')).digest()
        iv = bytes([0] * 16)

        # The data might not be perfectly padded for Base64, so add padding if needed.
        missing_padding = len(encrypted_base64_value) % 4
        if missing_padding != 0:
            encrypted_base64_value += '=' * (4 - missing_padding)

        encrypted_data = base64.b64decode(encrypted_base64_value)

        cipher = AES.new(key, AES.MODE_CBC, iv)
        decrypted_padded = cipher.decrypt(encrypted_data)

        decrypted = unpad(decrypted_padded, AES.block_size)

        decrypted_str = decrypted.decode('utf-8', errors='ignore')

        deobfuscated_str = deobfuscate_string(decrypted_str)

        return deobfuscated_str
    except (ValueError, TypeError, base64.binascii.Error) as e:
        # This will catch errors from b64decode or unpad, which are expected for non-encrypted strings.
        # We can ignore these and return the original value.
        return encrypted_base64_value
    except Exception as e:
        # Print other unexpected errors for debugging, but still return the original value.
        print(f"Unexpected error decrypting '{encrypted_base64_value[:30]}...': {e}", file=sys.stderr)
        return encrypted_base64_value

def decrypt_recursive(data, password):
    """
    Recursively traverses the JSON data (dicts, lists) and decrypts all string values.
    """
    if isinstance(data, dict):
        new_dict = {}
        for k, v in data.items():
            new_dict[k] = decrypt_recursive(v, password)
        return new_dict
    elif isinstance(data, list):
        new_list = []
        for item in data:
            new_list.append(decrypt_recursive(item, password))
        return new_list
    elif isinstance(data, str):
        return decrypt_value(password, data)
    else:
        return data

def main():
    password = "DexterEskalarte2024"
    print(f"[*] Using Password: {password}")

    try:
        with open('Servers.js', 'r', encoding='utf-8') as f:
            js_content = f.read()
    except FileNotFoundError:
        print("\n[!] Error: Servers.js not found.", file=sys.stderr)
        return

    try:
        data = json.loads(js_content)
    except json.JSONDecodeError as e:
        print(f"\n[!] Error decoding JSON from Servers.js: {e}", file=sys.stderr)
        return

    print("\n--- Decrypting Full Configuration (with error logging) ---")
    decrypted_data = decrypt_recursive(data, password)

    output_filename = "decrypted_servers_full.json"
    with open(output_filename, 'w', encoding='utf-8') as f:
        json.dump(decrypted_data, f, indent=4, ensure_ascii=False)

    print(f"\n[*] Successfully processed the configuration.")
    print(f"[*] Full results saved to {output_filename}")


if __name__ == "__main__":
    main()