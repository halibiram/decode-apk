package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcho extends com.google.android.gms.ads.internal.util.zzb {
    final zzcgl zza;
    final zzchw zzb;
    private final String zzc;
    private final String[] zzd;

    public zzcho(zzcgl zzcglVar, zzchw zzchwVar, String str, String[] strArr) {
        this.zza = zzcglVar;
        this.zzb = zzchwVar;
        this.zzc = str;
        this.zzd = strArr;
        com.google.android.gms.ads.internal.zzt.zzy().zzb(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final void zza() {
        try {
            this.zzb.zzu(this.zzc, this.zzd);
        } finally {
            com.google.android.gms.ads.internal.util.zzt.zza.post(new zzchn(this));
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzb
    public final ListenableFuture zzb() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbW)).booleanValue() && (this.zzb instanceof zzcif)) {
            return zzcep.zze.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzchm
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzcho.this.zzd();
                }
            });
        }
        return super.zzb();
    }

    public final /* synthetic */ Boolean zzd() {
        return Boolean.valueOf(this.zzb.zzw(this.zzc, this.zzd, this));
    }

    public final String zze() {
        return this.zzc;
    }
}
