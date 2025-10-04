package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzbsi implements zzbnu {
    final /* synthetic */ zzbsj zza;
    private final zzceu zzb;

    public zzbsi(zzbsj zzbsjVar, zzceu zzceuVar) {
        this.zza = zzbsjVar;
        this.zzb = zzceuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void zza(@Nullable String str) {
        try {
            if (str == null) {
                this.zzb.zzd(new zzbrm());
            } else {
                this.zzb.zzd(new zzbrm(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnu
    public final void zzb(JSONObject jSONObject) {
        try {
            this.zzb.zzc(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            this.zzb.zzd(e);
        }
    }
}
