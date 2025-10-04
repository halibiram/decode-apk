package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzhav implements zzhbc {
    private final zzhbc[] zza;

    public zzhav(zzhbc... zzhbcVarArr) {
        this.zza = zzhbcVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzhbc
    public final zzhbb zzb(Class cls) {
        for (int i = 0; i < 2; i++) {
            zzhbc zzhbcVar = this.zza[i];
            if (zzhbcVar.zzc(cls)) {
                return zzhbcVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-4531566111976045727L, 7973817494486128214L, -2345993563136041855L, 2789698420801673842L, -3461449282703967900L, -1258916075112746389L, -3631603807813667798L}).toString().concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.ads.zzhbc
    public final boolean zzc(Class cls) {
        for (int i = 0; i < 2; i++) {
            if (this.zza[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
