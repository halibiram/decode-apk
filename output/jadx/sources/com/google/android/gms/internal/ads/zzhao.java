package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
final class zzhao extends zzhas {
    private static final Class zza = DesugarCollections.unmodifiableList(Collections.emptyList()).getClass();

    public /* synthetic */ zzhao(zzhan zzhanVar) {
        super(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static List zzf(Object obj, long j, int i) {
        zzhal zzhalVar;
        List arrayList;
        List list = (List) zzhcz.zzh(obj, j);
        if (list.isEmpty()) {
            if (list instanceof zzham) {
                arrayList = new zzhal(i);
            } else if ((list instanceof zzhbm) && (list instanceof zzhad)) {
                arrayList = ((zzhad) list).zzd(i);
            } else {
                arrayList = new ArrayList(i);
            }
            zzhcz.zzv(obj, j, arrayList);
            return arrayList;
        }
        if (zza.isAssignableFrom(list.getClass())) {
            ArrayList arrayList2 = new ArrayList(list.size() + i);
            arrayList2.addAll(list);
            zzhcz.zzv(obj, j, arrayList2);
            zzhalVar = arrayList2;
        } else if (list instanceof zzhcu) {
            zzhal zzhalVar2 = new zzhal(list.size() + i);
            zzhalVar2.addAll(zzhalVar2.size(), (zzhcu) list);
            zzhcz.zzv(obj, j, zzhalVar2);
            zzhalVar = zzhalVar2;
        } else {
            if ((list instanceof zzhbm) && (list instanceof zzhad)) {
                zzhad zzhadVar = (zzhad) list;
                if (!zzhadVar.zzc()) {
                    zzhad zzd = zzhadVar.zzd(list.size() + i);
                    zzhcz.zzv(obj, j, zzd);
                    return zzd;
                }
                return list;
            }
            return list;
        }
        return zzhalVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final List zza(Object obj, long j) {
        return zzf(obj, j, 10);
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final void zzb(Object obj, long j) {
        Object unmodifiableList;
        List list = (List) zzhcz.zzh(obj, j);
        if (list instanceof zzham) {
            unmodifiableList = ((zzham) list).zze();
        } else if (!zza.isAssignableFrom(list.getClass())) {
            if ((list instanceof zzhbm) && (list instanceof zzhad)) {
                zzhad zzhadVar = (zzhad) list;
                if (zzhadVar.zzc()) {
                    zzhadVar.zzb();
                    return;
                }
                return;
            }
            unmodifiableList = DesugarCollections.unmodifiableList(list);
        } else {
            return;
        }
        zzhcz.zzv(obj, j, unmodifiableList);
    }

    @Override // com.google.android.gms.internal.ads.zzhas
    public final void zzc(Object obj, Object obj2, long j) {
        List list = (List) zzhcz.zzh(obj2, j);
        List zzf = zzf(obj, j, list.size());
        int size = zzf.size();
        int size2 = list.size();
        if (size > 0 && size2 > 0) {
            zzf.addAll(list);
        }
        if (size > 0) {
            list = zzf;
        }
        zzhcz.zzv(obj, j, list);
    }

    private zzhao() {
        super(null);
    }
}
