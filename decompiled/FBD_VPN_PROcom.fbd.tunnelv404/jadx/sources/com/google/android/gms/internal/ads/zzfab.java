package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfab implements zzexq {
    private final JSONObject zza;

    public zzfab(Context context) {
        this.zza = zzbzo.zzc(context);
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlo)).booleanValue()) {
            return zzgen.zzh(new zzexp() { // from class: com.google.android.gms.internal.ads.zzezz
                @Override // com.google.android.gms.internal.ads.zzexp
                public final void zzj(Object obj) {
                }
            });
        }
        return zzgen.zzh(new zzexp() { // from class: com.google.android.gms.internal.ads.zzfaa
            @Override // com.google.android.gms.internal.ads.zzexp
            public final void zzj(Object obj) {
                zzfab.this.zzc((JSONObject) obj);
            }
        });
    }

    public final /* synthetic */ void zzc(JSONObject jSONObject) {
        try {
            jSONObject.put(new ObfuscatedString(new long[]{-4244533652736500021L, -9018541838751835738L, -6130673136799613612L}).toString(), this.zza);
        } catch (JSONException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7383205078287257145L, 1676303508854966694L, -1833235839400684978L, -9150214965127667735L, 3249627131211529350L, 635048909720504922L}).toString());
        }
    }
}
