import base64
import json
import os
import sys
from hashlib import sha256
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

# --- Load the extracted replacement maps ---
try:
    with open('all_replacement_maps.json', 'r') as f:
        REPLACEMENT_MAPS_LAYER1 = json.load(f)
except FileNotFoundError:
    print("Error: 'all_replacement_maps.json' not found. Please run 'extract_all_maps.py' first.")
    sys.exit(1)

try:
    with open('final_replacement_map.json', 'r') as f:
        REPLACEMENT_MAP_LAYER2 = json.load(f)
except FileNotFoundError:
    print("Error: 'final_replacement_map.json' not found. Please run 'extract_final_map.py' first.")
    sys.exit(1)

# --- Decryption Functions ---

def aes_decrypt(encrypted_b64, password):
    """Decrypts an AES-CBC encrypted, Base64 encoded string."""
    try:
        # Pre-process the Base64 string (from ActivityUi.java)
        encrypted_b64_processed = encrypted_b64.replace('p', '=').replace('l', '/')

        encrypted_bytes = base64.b64decode(encrypted_b64_processed)
        key = sha256(password.encode('utf-8')).digest()
        iv = bytes([0] * 16)

        cipher = AES.new(key, AES.MODE_CBC, iv)
        decrypted_padded = cipher.decrypt(encrypted_bytes)

        decrypted = unpad(decrypted_padded, AES.block_size)
        return decrypted.decode('utf-8')
    except (ValueError, KeyError, base64.binascii.Error):
        # If decryption or decoding fails, return the original (likely unencrypted) string
        return encrypted_b64

def apply_replacements(text, replacement_map):
    """Applies a map of character replacements to a string."""
    for old, new in replacement_map.items():
        text = text.replace(old, new)
    return text

def decrypt_server_config(server_object, password):
    """Fully decrypts a single server object from the JSON using all layers."""
    decrypted_server = {}
    for key, value in server_object.items():
        if isinstance(value, str) and len(value) > 20: # Heuristic for encrypted strings
            decrypted_value = aes_decrypt(value, password)

            # Apply the correct first-layer map based on the key
            if key in ["ServerIPHost", "ServerCloudFrontHost", "ServerHTTPHost"]:
                decrypted_value = apply_replacements(decrypted_value, REPLACEMENT_MAPS_LAYER1.get("host", {}))
            elif key == "ServerUser":
                 decrypted_value = apply_replacements(decrypted_value, REPLACEMENT_MAPS_LAYER1.get("user", {}))
            elif key == "ServerPass":
                 decrypted_value = apply_replacements(decrypted_value, REPLACEMENT_MAPS_LAYER1.get("pass", {}))
            else: # General case for other fields like payload, SNI, etc.
                 decrypted_value = apply_replacements(decrypted_value, REPLACEMENT_MAPS_LAYER1.get("main", {}))

            # Apply the final, second-layer map to everything
            decrypted_value = apply_replacements(decrypted_value, REPLACEMENT_MAP_LAYER2)

            decrypted_server[key] = decrypted_value
        else:
            decrypted_server[key] = value

    return decrypted_server

def main():
    """Main function to run the decryption process."""
    servers_file = 'Servers.js'
    output_file = 'decrypted_servers.json'
    password = "DexterEskalarte2024"

    if not os.path.exists(servers_file):
        print(f"Error: Input file '{servers_file}' not found.")
        sys.exit(1)

    with open(servers_file, 'r', encoding='utf-8') as f:
        json_str = f.read().replace('var Servers =', '').strip()
        if json_str.endswith(';'):
            json_str = json_str[:-1]

    try:
        data = json.loads(json_str)
    except json.JSONDecodeError as e:
        print(f"Error decoding JSON from '{servers_file}': {e}")
        sys.exit(1)

    decrypted_data = {}
    for section, content in data.items():
        if section == "Servers":
            decrypted_data[section] = [decrypt_server_config(server, password) for server in content]
        elif section == "Networks":
            decrypted_data[section] = [decrypt_server_config(network, password) for network in content]
        elif isinstance(content, dict):
             decrypted_data[section] = decrypt_server_config(content, password)
        else:
             decrypted_data[section] = content

    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(decrypted_data, f, indent=4, ensure_ascii=False)

    print(f"Decryption complete. Output written to '{output_file}'")

if __name__ == "__main__":
    main()