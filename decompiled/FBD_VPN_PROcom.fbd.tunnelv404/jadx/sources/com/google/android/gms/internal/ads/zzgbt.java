package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgbt extends zzfyb {
    final Iterator zza;
    final /* synthetic */ zzgbu zzb;

    public zzgbt(zzgbu zzgbuVar) {
        this.zzb = zzgbuVar;
        this.zza = zzgbuVar.zza.iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzfyb
    @CheckForNull
    public final Object zza() {
        while (this.zza.hasNext()) {
            Iterator it = this.zza;
            Set set = this.zzb.zzb;
            Object next = it.next();
            if (set.contains(next)) {
                return next;
            }
        }
        zzb();
        return null;
    }
}
