import struct

class JavaRandom:
    def __init__(self, seed=0):
        self.seed = 0
        self.set_seed(seed)

    def set_seed(self, seed):
        self.seed = (seed ^ 0x5DEECE66D) & ((1 << 48) - 1)

    def next(self, bits):
        self.seed = (self.seed * 0x5DEECE66D + 0xB) & ((1 << 48) - 1)
        res = self.seed >> (48 - bits)
        # sign extend if top bit is 1
        if bits <= 32 and (res & (1 << (bits - 1))):
             res = res - (1 << bits)
        return res

    def nextLong(self):
        msb = self.next(32)
        lsb = self.next(32)
        # In python, we need to handle the signed ints correctly
        # to form a 64-bit long as Java does.
        # We can treat them as bit patterns.
        return (msb << 32) + lsb

def deobfuscate(long_array):
    if not long_array:
        return ""

    seed = long_array[0]
    random = JavaRandom()
    random.set_seed(seed)

    decrypted_bytes = bytearray()

    # Create a mask for 64-bit operations
    mask = (1 << 64) - 1

    for i in range(1, len(long_array)):
        obfuscated_long = long_array[i]
        random_long = random.nextLong()

        # Perform XOR on the 64-bit patterns
        decrypted_long_unsigned = (obfuscated_long & mask) ^ (random_long & mask)

        # Pack as unsigned long long, little-endian
        decrypted_bytes.extend(struct.pack('<Q', decrypted_long_unsigned))

    # The original string was padded with nulls to be a multiple of 8 bytes.
    # We need to find the actual end of the string.
    try:
        end_index = decrypted_bytes.index(0)
        trimmed_bytes = decrypted_bytes[:end_index]
    except ValueError:
        trimmed_bytes = decrypted_bytes

    return trimmed_bytes.decode('utf-8', errors='ignore')

if __name__ == '__main__':
    obfuscated_strings = {
        "AES_MODE": [2713706588130071333, -2505997483674552861, -2719358967089088701, -3767416467809513181],
        "CHARSET": [-282787645040061913, -7756028607433626875],
        "HASH_ALGORITHM": [7665567033842310478, -7714960248739963013],
        "Encrypt_Cipher": [876045786134005980, -3732197557162215916, 3563968425780695657, 8827303412929278946],
        "Decrypt_Cipher": [5755437163734362023, -4700088326951369774, -3527497048734295519, 2511094809590703765],
        "generateKey_MessageDigest": [-6436036027845676939, -6907634714148124541],
        "generateKey_SecretKeySpec": [2830087188911761805, 3387367310359858196]
    }

    print("--- Attempting deobfuscation with corrected script ---")
    for name, arr in obfuscated_strings.items():
        decrypted_string = deobfuscate(arr)
        print(f"{name}: {decrypted_string}")