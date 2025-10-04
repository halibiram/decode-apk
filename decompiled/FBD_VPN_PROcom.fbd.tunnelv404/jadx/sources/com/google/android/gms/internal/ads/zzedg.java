package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzedg {
    private final zzgey zza;
    private final zzedb zzb;
    private final zzflm zzc;

    public zzedg(zzgey zzgeyVar, zzedb zzedbVar, zzflm zzflmVar) {
        this.zza = zzgeyVar;
        this.zzb = zzedbVar;
        this.zzc = zzflmVar;
    }

    public final ListenableFuture zza(final zzbze zzbzeVar) {
        zzfld zzb = this.zzc.zzb(zzflg.zze, zzgen.zzm(zzgen.zzh(null), new zzfws() { // from class: com.google.android.gms.internal.ads.zzedd
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                zzbze zzbzeVar2 = zzbze.this;
                return new zzbyi(zzbzeVar2.zzc, zzbzeVar2.zzd, zzbzeVar2.zzf, zzfxt.zzc(zzbzeVar2.zza.getString(new ObfuscatedString(new long[]{-473512751017814140L, 867945721880103194L}).toString())), -1, zzbzeVar2.zzh, zzbzeVar2.zze, zzbzeVar2.zzk, zzbzeVar2.zzl);
            }
        }, this.zza));
        final zzedb zzedbVar = this.zzb;
        Objects.requireNonNull(zzedbVar);
        return zzgen.zzm(zzb.zzf(new zzgdu() { // from class: com.google.android.gms.internal.ads.zzede
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzedb.this.zzb((zzbyi) obj);
            }
        }).zza(), new zzfws() { // from class: com.google.android.gms.internal.ads.zzedf
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                Bundle bundle = zzbzeVar.zza;
                if (bundle != null) {
                    try {
                        JSONObject zzh = com.google.android.gms.ads.internal.client.zzay.zzb().zzh(bundle);
                        try {
                            com.google.android.gms.ads.internal.client.zzay.zzb().zzk(jSONObject, zzh);
                            return jSONObject;
                        } catch (JSONException unused) {
                            return zzh;
                        }
                    } catch (JSONException unused2) {
                        return jSONObject;
                    }
                }
                return jSONObject;
            }
        }, this.zza);
    }
}
