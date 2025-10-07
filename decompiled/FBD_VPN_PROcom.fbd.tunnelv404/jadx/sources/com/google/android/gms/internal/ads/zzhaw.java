package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhaw implements zzhbz {
    private static final zzhbc zza = new zzhau();
    private final zzhbc zzb;

    public zzhaw() {
        zzhbc zzhbcVar;
        zzgzo zza2 = zzgzo.zza();
        try {
            zzhbcVar = (zzhbc) Class.forName(new ObfuscatedString(new long[]{-7768672168547716143L, -8507910124297117576L, 7195663643816147782L, 5058317976068305635L, -7632659622360330226L, 418617517429118229L, -2864416342666667395L}).toString()).getDeclaredMethod(new ObfuscatedString(new long[]{-8088678397834032725L, -4449018112701247980L, -1070826380651385885L}).toString(), null).invoke(null, null);
        } catch (Exception unused) {
            zzhbcVar = zza;
        }
        zzhav zzhavVar = new zzhav(zza2, zzhbcVar);
        byte[] bArr = zzhae.zzd;
        this.zzb = zzhavVar;
    }

    private static boolean zzb(zzhbb zzhbbVar) {
        if (zzhbbVar.zzc() - 1 != 1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhbz
    public final zzhby zza(Class cls) {
        zzhca.zzr(cls);
        zzhbb zzb = this.zzb.zzb(cls);
        if (zzb.zzb()) {
            if (zzgzu.class.isAssignableFrom(cls)) {
                return zzhbi.zzc(zzhca.zzn(), zzgzi.zzb(), zzb.zza());
            }
            return zzhbi.zzc(zzhca.zzm(), zzgzi.zza(), zzb.zza());
        }
        if (zzgzu.class.isAssignableFrom(cls)) {
            if (zzb(zzb)) {
                return zzhbh.zzl(cls, zzb, zzhbk.zzb(), zzhas.zze(), zzhca.zzn(), zzgzi.zzb(), zzhba.zzb());
            }
            return zzhbh.zzl(cls, zzb, zzhbk.zzb(), zzhas.zze(), zzhca.zzn(), null, zzhba.zzb());
        }
        if (zzb(zzb)) {
            return zzhbh.zzl(cls, zzb, zzhbk.zza(), zzhas.zzd(), zzhca.zzm(), zzgzi.zza(), zzhba.zza());
        }
        return zzhbh.zzl(cls, zzb, zzhbk.zza(), zzhas.zzd(), zzhca.zzm(), null, zzhba.zza());
    }
}
