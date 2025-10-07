import os
import json
import base64
from hashlib import sha256
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad, pad
from Crypto.Protocol.KDF import PBKDF2
from Crypto.Hash import SHA1

# --- AES Decryption (for general config) ---
def decrypt_aes_cbc(data_b64, key_str):
    try:
        iv = bytes([0] * 16)
        ciphertext = base64.b64decode(data_b64)
        key = sha256(key_str.encode('utf-8')).digest()
        cipher = AES.new(key, AES.MODE_CBC, iv)
        decrypted_padded = cipher.decrypt(ciphertext)
        decrypted = unpad(decrypted_padded, AES.block_size, 'pkcs7').decode('utf-8')
        return decrypted.strip()
    except Exception:
        return f"AES_DECRYPTION_FAILED"

# --- PBKDF2 Decryption (for OpenVPN credentials) ---
def decrypt_pbkdf2(data_b64):
    try:
        password = "It is a beautiful and terrible thing, and should not be forgotten.".encode('utf-8')
        encrypted_data = base64.b64decode(data_b64)
        salt = encrypted_data[:16]
        ciphertext = encrypted_data[16:]
        key = PBKDF2(password, salt, dkLen=32, count=16, hmac_hash_module=SHA1)
        iv = bytes([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16])
        cipher = AES.new(key, AES.MODE_CBC, iv)
        decrypted_padded = cipher.decrypt(ciphertext)
        decrypted = unpad(decrypted_padded, AES.block_size, 'pkcs7').decode('utf-8')
        return decrypted.strip()
    except Exception:
        return f"PBKDF2_DECRYPTION_FAILED"

def process_json_object(obj, aes_key):
    """Recursively process a dictionary or list to decrypt values."""
    if isinstance(obj, dict):
        for key, value in obj.items():
            if isinstance(value, str) and len(value) > 4 and '=' in value[-3:]:
                if key in ["ServerUser", "ServerPass"]:
                    # First, try PBKDF2. If it fails, try AES as a fallback.
                    decrypted_val = decrypt_pbkdf2(value)
                    if "DECRYPTION_FAILED" in decrypted_val:
                        decrypted_val = decrypt_aes_cbc(value, aes_key)
                    obj[key] = decrypted_val if "DECRYPTION_FAILED" not in decrypted_val else value
                else:
                    # For other fields, try AES first.
                    decrypted_val = decrypt_aes_cbc(value, aes_key)
                    if "DECRYPTION_FAILED" in decrypted_val:
                        decrypted_val = decrypt_pbkdf2(value) # Try PBKDF2 as fallback
                    obj[key] = decrypted_val if "DECRYPTION_FAILED" not in decrypted_val else value
            elif isinstance(value, (dict, list)):
                process_json_object(value, aes_key)
    elif isinstance(obj, list):
        for i, item in enumerate(obj):
            if isinstance(item, (dict, list)):
                process_json_object(item, aes_key)
            elif isinstance(item, str) and len(item) > 4 and '=' in item[-3:]:
                decrypted_val = decrypt_aes_cbc(item, aes_key)
                if "DECRYPTION_FAILED" in decrypted_val:
                    decrypted_val = decrypt_pbkdf2(item)
                obj[i] = decrypted_val if "DECRYPTION_FAILED" not in decrypted_val else item


def process_server_file(filepath, aes_key_str):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            file_content = f.read()
            sanitized_content = file_content.replace('},]', '}]').replace('},}', '}}')
            config = json.loads(sanitized_content)

        process_json_object(config, aes_key_str)

        print(json.dumps(config, indent=4, ensure_ascii=False))

    except FileNotFoundError:
        print(f"Error: File not found at {filepath}")
    except json.JSONDecodeError as je:
        print(f"Error: Could not decode JSON from {filepath}. Error: {je}")
    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    AES_KEY_STRING = "DexterEskalarte2024"

    server_file_path = None
    possible_filenames = ["servers.json", "Servers.js", "servers.js", "Servers.json"]
    for filename in possible_filenames:
        if os.path.exists(filename):
            server_file_path = filename
            break

    if server_file_path:
        print(f"Found server file: {server_file_path}")
        process_server_file(server_file_path, AES_KEY_STRING)
    else:
        print("Error: Could not find a server configuration file.")