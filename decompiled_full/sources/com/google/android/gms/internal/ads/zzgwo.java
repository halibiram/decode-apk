package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzgwo implements zzgfs {
    private final zzgmg zza;
    private final byte[] zzb;

    private zzgwo(byte[] bArr, zzgxq zzgxqVar) {
        if (zzgmv.zza(2)) {
            this.zza = new zzgmg(bArr, true);
            this.zzb = zzgxqVar.zzc();
            return;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6197371465150692779L, 1366436999847179645L, 6273333066438896864L, -6956212272146343120L, -6133596552604310951L, 3741167353183284715L, 1552111603437407269L, -8610508351155992228L, -8603208251020754652L, 3022017776185786774L, -906001965794022966L}).toString());
    }

    public static zzgfs zzb(zzgiz zzgizVar) {
        zzgizVar.zzb();
        zzgizVar.zzb();
        return new zzgwo(zzgizVar.zzd().zzd(zzggb.zza()), zzgizVar.zzc());
    }

    @Override // com.google.android.gms.internal.ads.zzgfs
    public final byte[] zza(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.zzb;
        if (bArr3.length == 0) {
            return this.zza.zza(Arrays.copyOf(bArr, 12), bArr, bArr2);
        }
        if (zzgpm.zzb(bArr3, bArr)) {
            byte[] bArr4 = this.zzb;
            byte[] copyOfRange = Arrays.copyOfRange(bArr, bArr4.length, bArr.length);
            return this.zza.zza(Arrays.copyOf(copyOfRange, 12), copyOfRange, bArr2);
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-6480048357505244298L, 6042847935525431942L, -4059562424808980918L, 650303014474375367L, 7428746416487537793L, 1171792533145343583L, -5818986613456795007L}).toString());
    }
}
