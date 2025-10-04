package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class zzfov {
    private static final zzfov zza = new zzfov();
    private final ArrayList zzb = new ArrayList();
    private final ArrayList zzc = new ArrayList();

    private zzfov() {
    }

    public static zzfov zza() {
        return zza;
    }

    public final Collection zzb() {
        return DesugarCollections.unmodifiableCollection(this.zzc);
    }

    public final Collection zzc() {
        return DesugarCollections.unmodifiableCollection(this.zzb);
    }

    public final void zzd(zzfoh zzfohVar) {
        this.zzb.add(zzfohVar);
    }

    public final void zze(zzfoh zzfohVar) {
        ArrayList arrayList = this.zzb;
        boolean zzg = zzg();
        arrayList.remove(zzfohVar);
        this.zzc.remove(zzfohVar);
        if (zzg && !zzg()) {
            zzfpc.zzb().zzg();
        }
    }

    public final void zzf(zzfoh zzfohVar) {
        ArrayList arrayList = this.zzc;
        boolean zzg = zzg();
        arrayList.add(zzfohVar);
        if (!zzg) {
            zzfpc.zzb().zzf();
        }
    }

    public final boolean zzg() {
        if (this.zzc.size() > 0) {
            return true;
        }
        return false;
    }
}
