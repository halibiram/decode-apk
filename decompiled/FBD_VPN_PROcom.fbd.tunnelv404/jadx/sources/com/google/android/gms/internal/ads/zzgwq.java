package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgwq implements zzgfs {
    private final zzgmj zza;
    private final byte[] zzb;

    private zzgwq(byte[] bArr, byte[] bArr2) {
        this.zza = new zzgmj(bArr);
        this.zzb = bArr2;
    }

    public static zzgfs zzb(zzgkb zzgkbVar) {
        return new zzgwq(zzgkbVar.zzd().zzd(zzggb.zza()), zzgkbVar.zzc().zzc());
    }

    private final byte[] zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length >= 28) {
            return this.zza.zzb(ByteBuffer.wrap(bArr, 12, length - 12), Arrays.copyOf(bArr, 12), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6948638456455405136L, -7862148510739620672L, -1889617553999261661L, 8523830042407437817L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return zzc(bArr, bArr2);
        }
        if (zzgpm.zzb(bArr3, bArr)) {
            byte[] bArr4 = this.zzb;
            return zzc(Arrays.copyOfRange(bArr, bArr4.length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7256040711793559341L, 8297858800217394269L, -8970612033585175493L, -4200960077128449083L, -6053493806843122102L, 7304089822173946481L, -2779557127591323279L}).toString());
    }
}
