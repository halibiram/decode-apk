package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzhcb extends zzhcl {
    public zzhcb(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhcl
    public final void zza() {
        if (!zzj()) {
            for (int i = 0; i < zzb(); i++) {
                Map.Entry zzg = zzg(i);
                if (((zzgzj) zzg.getKey()).zzc()) {
                    zzg.setValue(DesugarCollections.unmodifiableList((List) zzg.getValue()));
                }
            }
            for (Map.Entry entry : zzc()) {
                if (((zzgzj) entry.getKey()).zzc()) {
                    entry.setValue(DesugarCollections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
