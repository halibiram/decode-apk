package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbxk {
    private static zzcct zza;
    private final Context zzb;
    private final AdFormat zzc;

    @Nullable
    private final com.google.android.gms.ads.internal.client.zzdx zzd;

    @Nullable
    private final String zze;

    public zzbxk(Context context, AdFormat adFormat, @Nullable com.google.android.gms.ads.internal.client.zzdx zzdxVar, @Nullable String str) {
        this.zzb = context;
        this.zzc = adFormat;
        this.zzd = zzdxVar;
        this.zze = str;
    }

    @Nullable
    public static zzcct zza(Context context) {
        zzcct zzcctVar;
        synchronized (zzbxk.class) {
            try {
                if (zza == null) {
                    zza = com.google.android.gms.ads.internal.client.zzay.zza().zzr(context, new zzbsr());
                }
                zzcctVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcctVar;
    }

    public final void zzb(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        com.google.android.gms.ads.internal.client.zzl zza2;
        zzcct zza3 = zza(this.zzb);
        if (zza3 == null) {
            queryInfoGenerationCallback.onFailure(new ObfuscatedString(new long[]{-7473451735540874529L, -8335107863432449550L, -8210421512469936712L, 8458737465943123572L, -7708883177049773935L, 357165884878468924L, 5555193398389427291L}).toString());
            return;
        }
        Context context = this.zzb;
        com.google.android.gms.ads.internal.client.zzdx zzdxVar = this.zzd;
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        if (zzdxVar == null) {
            zza2 = new com.google.android.gms.ads.internal.client.zzm().zza();
        } else {
            zza2 = com.google.android.gms.ads.internal.client.zzp.zza.zza(this.zzb, zzdxVar);
        }
        try {
            zza3.zzf(wrap, new zzccx(this.zze, this.zzc.name(), null, zza2), new zzbxj(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure(new ObfuscatedString(new long[]{-5265032431065233809L, -3616357735525421666L, -622009845282758678L}).toString());
        }
    }
}
