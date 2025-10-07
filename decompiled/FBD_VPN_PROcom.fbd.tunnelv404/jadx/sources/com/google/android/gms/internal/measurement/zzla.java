package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzla implements zzlh {
    private final zzlh[] zza;

    public zzla(zzlh... zzlhVarArr) {
        this.zza = zzlhVarArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final zzlg zzb(Class cls) {
        zzlh[] zzlhVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzlh zzlhVar = zzlhVarArr[i];
            if (zzlhVar.zzc(cls)) {
                return zzlhVar.zzb(cls);
            }
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3857933173741221724L, -8878615044556248187L, 7671416962506371347L, -7015076285188416710L, 1647498155219186928L, -8678823286212367882L, -7921504072293654386L}).toString().concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.measurement.zzlh
    public final boolean zzc(Class cls) {
        zzlh[] zzlhVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzlhVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
