package com.tknetwork.tunnel.securepreferences.crypto;

/* loaded from: classes3.dex */
public interface CipherService {
    byte[] decrypt(byte[] bArr, byte[] bArr2, byte[] bArr3);

    byte[] encrypt(byte[] bArr, byte[] bArr2, byte[] bArr3);

    int getIVSize();
}
