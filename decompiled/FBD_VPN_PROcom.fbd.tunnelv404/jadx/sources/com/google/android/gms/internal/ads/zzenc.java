package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzenc implements zzeip {
    private final Map zza = new HashMap();
    private final zzdua zzb;

    public zzenc(zzdua zzduaVar) {
        this.zzb = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    @Nullable
    public final zzeiq zza(String str, JSONObject jSONObject) {
        zzeiq zzeiqVar;
        synchronized (this) {
            try {
                zzeiqVar = (zzeiq) this.zza.get(str);
                if (zzeiqVar == null) {
                    zzeiqVar = new zzeiq(this.zzb.zzc(str, jSONObject), new zzekk(), str);
                    this.zza.put(str, zzeiqVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzeiqVar;
    }
}
