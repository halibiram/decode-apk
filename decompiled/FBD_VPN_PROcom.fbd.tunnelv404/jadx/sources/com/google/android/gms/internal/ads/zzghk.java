package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzghk implements zzgfs {
    private final zzggx zza;
    private final zzgrx zzb;
    private final zzgrx zzc;

    public /* synthetic */ zzghk(zzggx zzggxVar, zzghj zzghjVar) {
        zzgrx zzgrxVar;
        this.zza = zzggxVar;
        if (zzggxVar.zzf()) {
            zzgry zzb = zzgnz.zza().zzb();
            zzgsd zza = zzgns.zza(zzggxVar);
            this.zzb = zzb.zza(zza, new ObfuscatedString(new long[]{680355679775832112L, 8635541814251523640L}).toString(), new ObfuscatedString(new long[]{8763430211610413745L, 6018168072511967495L}).toString());
            zzgrxVar = zzb.zza(zza, new ObfuscatedString(new long[]{-1278001989313540792L, -9129585512609966463L}).toString(), new ObfuscatedString(new long[]{100901744196286619L, 479781950241424821L}).toString());
        } else {
            zzgrxVar = zzgns.zza;
            this.zzb = zzgrxVar;
        }
        this.zzc = zzgrxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length > 5) {
            byte[] copyOf = Arrays.copyOf(bArr, 5);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 5, length);
            for (zzggt zzggtVar : this.zza.zze(copyOf)) {
                try {
                    byte[] zza = ((zzgfs) zzggtVar.zze()).zza(copyOfRange, bArr2);
                    zzggtVar.zza();
                    int length2 = copyOfRange.length;
                    return zza;
                } catch (GeneralSecurityException unused) {
                }
            }
        }
        for (zzggt zzggtVar2 : this.zza.zze(zzgfx.zza)) {
            try {
                byte[] zza2 = ((zzgfs) zzggtVar2.zze()).zza(bArr, bArr2);
                zzggtVar2.zza();
                return zza2;
            } catch (GeneralSecurityException unused2) {
            }
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{1693839567183291848L, -6832178619745868216L, -4488637928031732627L, -9045009507916047110L}).toString());
    }
}
