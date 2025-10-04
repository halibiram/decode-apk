package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgdv extends zzgdx {
    public zzgdv(zzfzv zzfzvVar, boolean z) {
        super(zzfzvVar, z);
        zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzgdx
    public final /* bridge */ /* synthetic */ Object zzG(List list) {
        Object obj;
        ArrayList zza = zzgao.zza(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzgdw zzgdwVar = (zzgdw) it.next();
            if (zzgdwVar != null) {
                obj = zzgdwVar.zza;
            } else {
                obj = null;
            }
            zza.add(obj);
        }
        return DesugarCollections.unmodifiableList(zza);
    }
}
