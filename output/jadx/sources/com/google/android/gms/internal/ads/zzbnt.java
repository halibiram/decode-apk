package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbnt implements zzbnu {
    final /* synthetic */ zzceu zza;

    public zzbnt(zzbnv zzbnvVar, zzceu zzceuVar) {
        this.zza = zzceuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void zza(@Nullable String str) {
        this.zza.zzd(new zzbrm(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void zzb(JSONObject jSONObject) {
        this.zza.zzc(jSONObject);
    }
}
