package com.tknetwork.tunnel.securepreferences.model;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class SecurityConfig {
    private final int iPBKDF2_Iterations;
    private final int iSaltSize;
    private final int keySize;
    private final EncryptionAlgorithm mAlgorithm;
    private final DigestType mDigestType;
    private final char[] mPassword;

    /* loaded from: classes3.dex */
    public static class Builder {
        private static final int DEFAULT_AES_KEY_SIZE = 128;
        private static final int DEFAULT_ITERATIONS = 1000;
        private static final int DEFAULT_SALT_SIZE = 32;
        private EncryptionAlgorithm algorithm;
        private final char[] password;
        private static final DigestType DEFAULT_DIGEST = DigestType.SHA256;
        private static final EncryptionAlgorithm DEFAULT_ALGORITHM = EncryptionAlgorithm.AES;
        private int saltSize = -1;
        private int iterations = -1;
        private DigestType digest = null;
        private int aesKeySize = -1;

        public Builder(String str) {
            if (str != null) {
                this.password = str.toCharArray();
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-61474520502604913L, 3645653949730543514L, 3816852571665723397L, -7902115899248779544L}).toString());
        }

        public SecurityConfig build() {
            int i;
            int i2;
            int i3;
            int i4 = this.iterations;
            if (i4 != -1) {
                i = i4;
            } else {
                i = 1000;
            }
            int i5 = this.saltSize;
            if (i5 != -1) {
                i2 = i5;
            } else {
                i2 = 32;
            }
            DigestType digestType = this.digest;
            if (digestType == null) {
                digestType = DEFAULT_DIGEST;
            }
            DigestType digestType2 = digestType;
            int i6 = this.aesKeySize;
            if (i6 != -1) {
                i3 = i6;
            } else {
                i3 = 128;
            }
            EncryptionAlgorithm encryptionAlgorithm = this.algorithm;
            if (encryptionAlgorithm == null) {
                encryptionAlgorithm = DEFAULT_ALGORITHM;
            }
            return new SecurityConfig(this.password, i3, i, i2, digestType2, encryptionAlgorithm);
        }

        public Builder setDigestType(DigestType digestType) {
            this.digest = digestType;
            return this;
        }

        public Builder setEncryptionAlgorithm(EncryptionAlgorithm encryptionAlgorithm) {
            this.algorithm = encryptionAlgorithm;
            return this;
        }

        public Builder setKeySize(int i) {
            this.aesKeySize = i;
            return this;
        }

        public Builder setPbkdf2Iterations(int i) {
            if (i >= 0) {
                this.iterations = i;
                return this;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{113121045690190181L, 5975039981558464831L, 7132863954081733526L, 7614182770798730594L, 4904875106726800660L, 3980387677658778854L}).toString());
        }

        public Builder setPbkdf2SaltSize(int i) {
            if (i >= 8 && i % 8 == 0) {
                this.saltSize = i;
                return this;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2051628611178802770L, 7169768640452040940L, -4015039361687147501L, 2088123082476152259L}).toString());
        }
    }

    public SecurityConfig(char[] cArr, int i, int i2, int i3, DigestType digestType, EncryptionAlgorithm encryptionAlgorithm) {
        this.mPassword = Arrays.copyOf(cArr, cArr.length);
        this.iPBKDF2_Iterations = i2;
        this.mDigestType = digestType;
        this.iSaltSize = i3;
        this.mAlgorithm = encryptionAlgorithm;
        for (int i4 : encryptionAlgorithm.getKeySizes()) {
            if (i == i4) {
                this.keySize = i;
                return;
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{6182685739015726870L, -597161140911383381L, -8413161242349428720L, 831256548541617482L, -6149519651136474932L, 4100230009353724337L, 3832654877071039349L}).toString());
    }

    public EncryptionAlgorithm getAlgorithm() {
        return this.mAlgorithm;
    }

    public DigestType getDigestType() {
        return this.mDigestType;
    }

    public int getKeySize() {
        return this.keySize;
    }

    public int getPBKDF2Iterations() {
        return this.iPBKDF2_Iterations;
    }

    public char[] getPassword() {
        return this.mPassword;
    }

    public int getSaltSize() {
        return this.iSaltSize;
    }
}
