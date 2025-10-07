package com.google.android.gms.internal.ads;

import java.util.Iterator;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzgah extends zzfyb {
    final /* synthetic */ Iterator zza;
    final /* synthetic */ zzfxf zzb;

    public zzgah(Iterator it, zzfxf zzfxfVar) {
        this.zza = it;
        this.zzb = zzfxfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyb
    @CheckForNull
    public final Object zza() {
        while (this.zza.hasNext()) {
            Iterator it = this.zza;
            zzfxf zzfxfVar = this.zzb;
            Object next = it.next();
            if (zzfxfVar.zza(next)) {
                return next;
            }
        }
        zzb();
        return null;
    }
}
