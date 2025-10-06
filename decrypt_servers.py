import json
from Crypto.Cipher import AES
from Crypto.Hash import SHA256
from Crypto.Util.Padding import unpad
import base64

def decrypt_value(encrypted_base64_str):
    if not encrypted_base64_str or not isinstance(encrypted_base64_str, str):
        return encrypted_base64_str

    try:
        # Pre-process the string
        processed_str = encrypted_base64_str.replace('p', '=').replace('l', '/')

        # The key is the SHA-256 hash of "DexterEskalarte2024"
        key_str = "DexterEskalarte2024"
        key = SHA256.new(key_str.encode()).digest()

        # The IV is a static, all-zero 16-byte value
        iv = b'\x00' * 16

        # Decode the base64 string
        encrypted_data = base64.b64decode(processed_str)

        # Create the cipher object and decrypt
        cipher = AES.new(key, AES.MODE_CBC, iv)
        decrypted_padded_data = cipher.decrypt(encrypted_data)

        # Unpad the data
        decrypted_data = unpad(decrypted_padded_data, AES.block_size)

        return decrypted_data.decode('utf-8', errors='ignore')
    except (ValueError, KeyError, base64.binascii.Error, IndexError) as e:
        # Return original value if decryption fails
        return encrypted_base64_str

# Read the server configuration file
with open('Servers.js', 'r') as f:
    # The file is not a standard JSON, it's a JS object.
    # Read the whole file and remove the initial part if it's not a valid JSON start.
    content = f.read()
    # A simple way to handle this is to find the first '{' and last '}'
    start = content.find('{')
    end = content.rfind('}') + 1
    json_content = content[start:end]
    config_data = json.loads(json_content)

# Fields to decrypt
fields_to_decrypt = [
    "ServerIPHost", "ServerCloudFrontHost", "ServerHTTPHost", "ServerUser", "ServerPass",
    "etServerAddress", "etEndpoint", "etPublicKey", "etPrivateKey", "etPreSharedKey",
    "etAllowedIPs", "SNIHost", "Payload", "Squid", "config_url", "account_api"
]

# Decrypt servers
if 'Servers' in config_data and config_data['Servers']:
    for server in config_data['Servers']:
        for field in fields_to_decrypt:
            if field in server:
                server[field] = decrypt_value(server[field])

# Decrypt networks
if 'Networks' in config_data and config_data['Networks']:
    for network in config_data['Networks']:
        for field in fields_to_decrypt:
            if field in network:
                network[field] = decrypt_value(network[field])

# Decrypt top-level config_url and account_api
if 'config_url' in config_data:
    config_data['config_url'] = decrypt_value(config_data['config_url'])
if 'account_api' in config_data:
    config_data['account_api'] = decrypt_value(config_data['account_api'])

# Save the decrypted configuration
with open('decrypted_servers.json', 'w') as f:
    json.dump(config_data, f, indent=2)

print("Decryption complete. Decrypted data saved to decrypted_servers.json")