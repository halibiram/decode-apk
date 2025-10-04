package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzfqi extends zzfqe {
    public zzfqi(zzfpx zzfpxVar, HashSet hashSet, JSONObject jSONObject, long j) {
        super(zzfpxVar, hashSet, jSONObject, j);
    }

    private final void zzc(String str) {
        zzfov zza = zzfov.zza();
        if (zza != null) {
            for (zzfoh zzfohVar : zza.zzc()) {
                if (((zzfqe) this).zza.contains(zzfohVar.zzh())) {
                    zzfohVar.zzg().zzd(str, this.zzc);
                }
            }
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ Object doInBackground(Object[] objArr) {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        String str = (String) obj;
        zzc(str);
        super.onPostExecute(str);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    /* renamed from: zza */
    public final void onPostExecute(String str) {
        zzc(str);
        super.onPostExecute(str);
    }
}
