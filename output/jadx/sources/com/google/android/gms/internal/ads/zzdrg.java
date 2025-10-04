package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdrg implements zzbja {
    final /* synthetic */ String zza = new ObfuscatedString(new long[]{7653853683791828324L, -8559363435617085846L, -3114509768271019869L}).toString();
    final /* synthetic */ zzdrh zzb;

    public zzdrg(zzdrh zzdrhVar, String str) {
        this.zzb = zzdrhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final JSONObject zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final JSONObject zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final void zzc() {
        zzdmv zzdmvVar;
        zzdmv zzdmvVar2;
        zzdrh zzdrhVar = this.zzb;
        zzdmvVar = zzdrhVar.zzd;
        if (zzdmvVar != null) {
            String str = this.zza;
            zzdmvVar2 = zzdrhVar.zzd;
            zzdmvVar2.zzE(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final void zzd(MotionEvent motionEvent) {
    }
}
