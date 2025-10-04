package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* loaded from: classes2.dex */
final class zzczx implements zzdcl, zzdbs {
    private final Context zza;
    private final zzfgm zzb;
    private final zzbwy zzc;

    public zzczx(Context context, zzfgm zzfgmVar, zzbwy zzbwyVar) {
        this.zza = context;
        this.zzb = zzfgmVar;
        this.zzc = zzbwyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbs(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbu(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbv(@Nullable Context context) {
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzr() {
        zzbwz zzbwzVar = this.zzb.zzae;
        if (zzbwzVar != null && zzbwzVar.zza) {
            ArrayList arrayList = new ArrayList();
            if (!this.zzb.zzae.zzb.isEmpty()) {
                arrayList.add(this.zzb.zzae.zzb);
            }
        }
    }
}
