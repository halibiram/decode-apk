package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
final class zzhaq extends zzhas {
    public /* synthetic */ zzhaq(zzhap zzhapVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final List zza(Object obj, long j) {
        int i;
        zzhad zzhadVar = (zzhad) zzhcz.zzh(obj, j);
        if (!zzhadVar.zzc()) {
            int size = zzhadVar.size();
            if (size == 0) {
                i = 10;
            } else {
                i = size + size;
            }
            zzhad zzd = zzhadVar.zzd(i);
            zzhcz.zzv(obj, j, zzd);
            return zzd;
        }
        return zzhadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final void zzb(Object obj, long j) {
        ((zzhad) zzhcz.zzh(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final void zzc(Object obj, Object obj2, long j) {
        zzhad zzhadVar = (zzhad) zzhcz.zzh(obj, j);
        zzhad zzhadVar2 = (zzhad) zzhcz.zzh(obj2, j);
        int size = zzhadVar.size();
        int size2 = zzhadVar2.size();
        if (size > 0 && size2 > 0) {
            if (!zzhadVar.zzc()) {
                zzhadVar = zzhadVar.zzd(size2 + size);
            }
            zzhadVar.addAll(zzhadVar2);
        }
        if (size > 0) {
            zzhadVar2 = zzhadVar;
        }
        zzhcz.zzv(obj, j, zzhadVar2);
    }

    private zzhaq() {
        super(null);
    }
}
