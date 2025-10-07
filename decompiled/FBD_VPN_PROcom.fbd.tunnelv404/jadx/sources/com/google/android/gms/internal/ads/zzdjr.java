package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class zzdjr {
    private final zzdkw zza;

    @Nullable
    private final zzcjk zzb;

    public zzdjr(zzdkw zzdkwVar, @Nullable zzcjk zzcjkVar) {
        this.zza = zzdkwVar;
        this.zzb = zzcjkVar;
    }

    public static final zzdim zzh(zzfml zzfmlVar) {
        return new zzdim(zzfmlVar, zzcep.zzf);
    }

    public static final zzdim zzi(zzdlb zzdlbVar) {
        return new zzdim(zzdlbVar, zzcep.zzf);
    }

    @Nullable
    public final View zza() {
        zzcjk zzcjkVar = this.zzb;
        if (zzcjkVar == null) {
            return null;
        }
        return zzcjkVar.zzG();
    }

    @Nullable
    public final View zzb() {
        zzcjk zzcjkVar = this.zzb;
        if (zzcjkVar != null) {
            return zzcjkVar.zzG();
        }
        return null;
    }

    @Nullable
    public final zzcjk zzc() {
        return this.zzb;
    }

    public final zzdim zzd(Executor executor) {
        final zzcjk zzcjkVar = this.zzb;
        return new zzdim(new zzdfk() { // from class: com.google.android.gms.internal.ads.zzdjq
            @Override // com.google.android.gms.internal.ads.zzdfk
            public final void zza() {
                com.google.android.gms.ads.internal.overlay.zzm zzL;
                zzcjk zzcjkVar2 = zzcjk.this;
                if (zzcjkVar2 != null && (zzL = zzcjkVar2.zzL()) != null) {
                    zzL.zzb();
                }
            }
        }, executor);
    }

    public final zzdkw zze() {
        return this.zza;
    }

    public Set zzf(zzczu zzczuVar) {
        return Collections.singleton(new zzdim(zzczuVar, zzcep.zzf));
    }

    public Set zzg(zzczu zzczuVar) {
        return Collections.singleton(new zzdim(zzczuVar, zzcep.zzf));
    }
}
