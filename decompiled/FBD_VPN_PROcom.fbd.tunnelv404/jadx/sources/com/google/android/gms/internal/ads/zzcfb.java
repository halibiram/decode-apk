package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicInteger;

@Deprecated
/* loaded from: classes2.dex */
public class zzcfb {
    private final zzceu zza;
    private final AtomicInteger zzb;

    public zzcfb() {
        zzceu zzceuVar = new zzceu();
        this.zza = zzceuVar;
        this.zzb = new AtomicInteger(0);
        zzgen.zzr(zzceuVar, new zzcez(this), zzcep.zzf);
    }

    @Deprecated
    public final int zze() {
        return this.zzb.get();
    }

    @Deprecated
    public final void zzg() {
        this.zza.zzd(new Exception());
    }

    @Deprecated
    public final void zzh(Object obj) {
        this.zza.zzc(obj);
    }

    @Deprecated
    public final void zzi(zzcey zzceyVar, zzcew zzcewVar) {
        zzgen.zzr(this.zza, new zzcfa(this, zzceyVar, zzcewVar), zzcep.zzf);
    }
}
