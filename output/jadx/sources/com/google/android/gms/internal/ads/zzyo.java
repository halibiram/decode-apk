package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public abstract class zzyo {

    @Nullable
    private zzyn zza;

    @Nullable
    private zzyw zzb;

    @Nullable
    public zzmg zzd() {
        throw null;
    }

    @CallSuper
    public void zzj() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzk(zzk zzkVar) {
        throw null;
    }

    public boolean zzn() {
        throw null;
    }

    public abstract zzyp zzp(zzmh[] zzmhVarArr, zzws zzwsVar, zzur zzurVar, zzcx zzcxVar);

    public abstract void zzq(@Nullable Object obj);

    public final zzyw zzr() {
        zzyw zzywVar = this.zzb;
        zzek.zzb(zzywVar);
        return zzywVar;
    }

    @CallSuper
    public final void zzs(zzyn zzynVar, zzyw zzywVar) {
        this.zza = zzynVar;
        this.zzb = zzywVar;
    }

    public final void zzt() {
        zzyn zzynVar = this.zza;
        if (zzynVar != null) {
            zzynVar.zzj();
        }
    }
}
