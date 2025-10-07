package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbbf extends zzceu {
    final /* synthetic */ zzbbl zza;

    public zzbbf(zzbbl zzbblVar) {
        this.zza = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzceu, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        zzbbl.zze(this.zza);
        return super.cancel(z);
    }
}
