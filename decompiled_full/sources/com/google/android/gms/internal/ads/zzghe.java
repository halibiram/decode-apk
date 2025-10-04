package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: classes2.dex */
public final class zzghe {
    public static zzggq zza(byte[] bArr) {
        try {
            zzguy zze = zzguy.zze(bArr, zzgzf.zza());
            zzgoe zzd = zzgoe.zzd();
            zzgoy zza = zzgoy.zza(zze);
            if (!zzd.zzk(zza)) {
                return new zzgnp(zza);
            }
            return zzd.zzc(zza);
        } catch (IOException e) {
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{1330726994126163644L, 3991107291141968389L, -6419749137655601087L, -3731596625426692138L}).toString(), e);
        }
    }

    public static byte[] zzb(zzggq zzggqVar) {
        return ((zzgoy) zzgoe.zzd().zzf(zzggqVar, zzgoy.class)).zzc().zzax();
    }
}
