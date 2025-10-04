package com.tknetwork.tunnel.securepreferences.model;

/* loaded from: classes3.dex */
public enum EncryptionAlgorithm {
    AES(new int[]{128, 196, 256}),
    TripleDES(new int[]{128, 192});

    private final int[] keySizesInBits;

    EncryptionAlgorithm(int[] iArr) {
        this.keySizesInBits = iArr;
    }

    public int[] getKeySizes() {
        return this.keySizesInBits;
    }
}
