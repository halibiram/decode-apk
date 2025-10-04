package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgxk implements zzgse {
    private final SecretKey zza;
    private final byte[] zzb;
    private final byte[] zzc;

    public zzgxk(byte[] bArr) {
        zzgxo.zza(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, new ObfuscatedString(new long[]{-3680034993225462493L, 7074513869913984724L}).toString());
        this.zza = secretKeySpec;
        Cipher zzb = zzb();
        zzb.init(1, secretKeySpec);
        byte[] zza = zzgrl.zza(zzb.doFinal(new byte[16]));
        this.zzb = zza;
        this.zzc = zzgrl.zza(zza);
    }

    private static Cipher zzb() {
        if (zzgmv.zza(1)) {
            return (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{-2592880209623465236L, -1482917627779341356L, -4202282434192878427L, 8558838802966106647L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-889932055594614314L, -4723417391765237624L, 2465921740784972796L, -8031961142128326161L, -722498247164697998L, -2032055209529476802L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgse
    public final byte[] zza(byte[] bArr, int i) {
        byte[] zzc;
        if (i <= 16) {
            SecretKey secretKey = this.zza;
            Cipher zzb = zzb();
            zzb.init(1, secretKey);
            int length = bArr.length;
            int max = Math.max(1, (int) Math.ceil(length / 16.0d));
            int i2 = max - 1;
            int i3 = i2 * 16;
            if (max * 16 == length) {
                zzc = zzgwp.zzd(bArr, i3, this.zzb, 0, 16);
            } else {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, i3, length);
                int length2 = copyOfRange.length;
                if (length2 < 16) {
                    byte[] copyOf = Arrays.copyOf(copyOfRange, 16);
                    copyOf[length2] = Byte.MIN_VALUE;
                    zzc = zzgwp.zzc(copyOf, this.zzc);
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1990957887035542533L, 8511511320772094789L, -7004232244589514510L, -5430574086700140732L, 5954043384314415882L}).toString());
                }
            }
            byte[] bArr2 = new byte[16];
            for (int i4 = 0; i4 < i2; i4++) {
                bArr2 = zzb.doFinal(zzgwp.zzd(bArr2, 0, bArr, i4 * 16, 16));
            }
            return Arrays.copyOf(zzb.doFinal(zzgwp.zzc(zzc, bArr2)), i);
        }
        throw new InvalidAlgorithmParameterException(new ObfuscatedString(new long[]{7817977922655389650L, -509825230053133228L, 1787113638695388439L, 4403368943466733205L, -5823253250002940511L, -5594673494672715802L}).toString());
    }
}
