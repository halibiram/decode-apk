package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
final class zzdnz implements zzbja {
    final /* synthetic */ zzdow zza;
    final /* synthetic */ ViewGroup zzb;

    public zzdnz(zzdow zzdowVar, ViewGroup viewGroup) {
        this.zza = zzdowVar;
        this.zzb = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final JSONObject zza() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final JSONObject zzb() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final void zzc() {
        zzgaa zzgaaVar = zzdnw.zza;
        Map zzm = this.zza.zzm();
        if (zzm != null) {
            int size = zzgaaVar.size();
            int i = 0;
            while (i < size) {
                Object obj = zzm.get((String) zzgaaVar.get(i));
                i++;
                if (obj != null) {
                    this.zza.onClick(this.zzb);
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final void zzd(MotionEvent motionEvent) {
        this.zza.onTouch(null, motionEvent);
    }
}
