package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzens implements zzeip {
    private final zzeow zza;
    private final zzdua zzb;

    public zzens(zzeow zzeowVar, zzdua zzduaVar) {
        this.zza = zzeowVar;
        this.zzb = zzduaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeip
    @Nullable
    public final zzeiq zza(String str, JSONObject jSONObject) {
        zzbus zzbusVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbE)).booleanValue()) {
            try {
                zzbusVar = this.zzb.zzb(str);
            } catch (RemoteException e) {
                zzcec.zzh(new ObfuscatedString(new long[]{-7708281758909212290L, 8489709450008496146L, -5449573145567946112L, -8401753498325472886L, 762142122777433373L}).toString(), e);
                zzbusVar = null;
            }
        } else {
            zzbusVar = this.zza.zza(str);
        }
        if (zzbusVar == null) {
            return null;
        }
        return new zzeiq(zzbusVar, new zzekj(), str);
    }
}
