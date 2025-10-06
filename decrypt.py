import json
import base64
from hashlib import sha256
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad

def decrypt_value(encrypted_value):
    if not isinstance(encrypted_value, str) or not encrypted_value:
        return encrypted_value

    try:
        # Pre-process the base64 string
        processed_b64 = encrypted_value.replace('p', '=').replace('l', '/')

        # Decode from base64
        decoded_data = base64.b64decode(processed_b64)

        # Derive key
        key = sha256("DexterEskalarte2024".encode()).digest()

        # Static IV
        iv = b'\\x00' * 16

        # Create cipher
        cipher = AES.new(key, AES.MODE_CBC, iv)

        # Decrypt and unpad
        decrypted_data = unpad(cipher.decrypt(decoded_data), AES.block_size)

        # Post-decryption character substitution
        return decrypted_data.decode('utf-8')
    except (ValueError, IndexError, base64.binascii.Error) as e:
        # If decryption fails, return the original value
        return encrypted_value

def decrypt_json_data(data):
    if isinstance(data, dict):
        return {k: decrypt_json_data(v) for k, v in data.items()}
    elif isinstance(data, list):
        return [decrypt_json_data(i) for i in data]
    else:
        return decrypt_value(data)

# Read the encrypted JSON file
with open('FBD_VPN_PRO_servers.json', 'r') as f:
    encrypted_data = json.load(f)

# Decrypt the data
decrypted_data = decrypt_json_data(encrypted_data)

# Write the decrypted data to a new file
with open('servers.json.decrypted', 'w') as f:
    json.dump(decrypted_data, f, indent=4)

print("Decryption complete. Decrypted data saved to servers.json.decrypted")