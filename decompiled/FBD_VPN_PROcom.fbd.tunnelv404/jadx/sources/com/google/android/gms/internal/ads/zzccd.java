package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class zzccd implements zzayq {
    private final Context zza;
    private final Object zzb;
    private final String zzc;
    private boolean zzd;

    public zzccd(Context context, String str) {
        this.zza = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zzc = str;
        this.zzd = false;
        this.zzb = new Object();
    }

    public final String zza() {
        return this.zzc;
    }

    public final void zzb(boolean z) {
        if (!com.google.android.gms.ads.internal.zzt.zzn().zzp(this.zza)) {
            return;
        }
        synchronized (this.zzb) {
            try {
                if (this.zzd == z) {
                    return;
                }
                this.zzd = z;
                if (TextUtils.isEmpty(this.zzc)) {
                    return;
                }
                if (this.zzd) {
                    com.google.android.gms.ads.internal.zzt.zzn().zzf(this.zza, this.zzc);
                } else {
                    com.google.android.gms.ads.internal.zzt.zzn().zzg(this.zza, this.zzc);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayq
    public final void zzby(zzayp zzaypVar) {
        zzb(zzaypVar.zzj);
    }
}
