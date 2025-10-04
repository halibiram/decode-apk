package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgmg {
    private static final ThreadLocal zza = new zzgmf();
    private final SecretKey zzb;

    public zzgmg(byte[] bArr, boolean z) {
        if (zzgmv.zza(2)) {
            zzgxo.zza(bArr.length);
            this.zzb = new SecretKeySpec(bArr, new ObfuscatedString(new long[]{-4113710131696396000L, -585243686204388009L}).toString());
            return;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{5753619077537462055L, -4382062669373595449L, 8906095178237775734L, -3157565088700004438L, -7000422085408108898L, 8782238682128381990L, 4439079718205175284L, -8599814598080249843L, 4987029763222398715L, -100105246838220301L, -3270155446315970579L}).toString());
    }

    public final byte[] zza(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr.length == 12) {
            int length = bArr2.length;
            if (length >= 28) {
                if (ByteBuffer.wrap(bArr).equals(ByteBuffer.wrap(bArr2, 0, 12))) {
                    Objects.equals(System.getProperty(new ObfuscatedString(new long[]{-635264205585672244L, 4615857153807917825L, -1401302581178506722L}).toString()), new ObfuscatedString(new long[]{2987677197267772898L, -2989809938139495289L, 4407798636079758646L, -7528136939262124076L}).toString());
                    GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, bArr, 0, 12);
                    ThreadLocal threadLocal = zza;
                    ((Cipher) threadLocal.get()).init(2, this.zzb, gCMParameterSpec);
                    if (bArr3 != null && bArr3.length != 0) {
                        ((Cipher) threadLocal.get()).updateAAD(bArr3);
                    }
                    return ((Cipher) threadLocal.get()).doFinal(bArr2, 12, length - 12);
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{3227740310675960094L, -5337380780675699755L, 4471774473185645964L, 6054487129061956636L, 5595336719306626577L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-1117877430013164361L, -546810261446425030L, -6719174048473180855L, 1015738478150527533L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-2559723042575704955L, -6878948725462460900L, 5765609199902259390L}).toString());
    }
}
