package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class zzgxn implements zzggp {
    private static final byte[] zza = {0};
    private final zzgse zzb;
    private final int zzc;
    private final byte[] zzd;
    private final byte[] zze;

    private zzgxn(zzgpq zzgpqVar) {
        this.zzb = new zzgxk(zzgpqVar.zzd().zzd(zzggb.zza()));
        this.zzc = zzgpqVar.zza().zzb();
        this.zzd = zzgpqVar.zzc().zzc();
        if (zzgpqVar.zza().zze().equals(zzgpx.zzc)) {
            this.zze = Arrays.copyOf(zza, 1);
        } else {
            this.zze = new byte[0];
        }
    }

    public static zzggp zza(zzgpq zzgpqVar) {
        return new zzgxn(zzgpqVar);
    }

    public static zzggp zzb(zzgqm zzgqmVar) {
        return new zzgxn(zzgqmVar);
    }

    public final byte[] zzc(byte[] bArr) {
        byte[] bArr2 = this.zze;
        if (bArr2.length > 0) {
            return zzgwp.zzb(this.zzd, this.zzb.zza(zzgwp.zzb(bArr, bArr2), this.zzc));
        }
        return zzgwp.zzb(this.zzd, this.zzb.zza(bArr, this.zzc));
    }

    private zzgxn(zzgqm zzgqmVar) {
        String valueOf = String.valueOf(zzgqmVar.zzd().zzf());
        this.zzb = new zzgxm(new ObfuscatedString(new long[]{4944376251840829799L, -6442363934756662883L}).toString().concat(valueOf), new SecretKeySpec(zzgqmVar.zze().zzd(zzggb.zza()), new ObfuscatedString(new long[]{4322576348274965853L, 4259361058251324570L}).toString()));
        this.zzc = zzgqmVar.zzd().zzb();
        this.zzd = zzgqmVar.zzc().zzc();
        if (zzgqmVar.zzd().zzg().equals(zzgqv.zzc)) {
            this.zze = Arrays.copyOf(zza, 1);
        } else {
            this.zze = new byte[0];
        }
    }

    public zzgxn(zzgse zzgseVar, int i) {
        this.zzb = zzgseVar;
        this.zzc = i;
        this.zzd = new byte[0];
        this.zze = new byte[0];
        zzgseVar.zza(new byte[0], i);
    }
}
