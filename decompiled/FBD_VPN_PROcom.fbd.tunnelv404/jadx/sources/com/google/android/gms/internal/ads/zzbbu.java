package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zzbbu {
    final /* synthetic */ zzbbv zza;
    private final byte[] zzb;
    private int zzc;

    public /* synthetic */ zzbbu(zzbbv zzbbvVar, byte[] bArr, zzbbt zzbbtVar) {
        this.zza = zzbbvVar;
        this.zzb = bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized void zzd() {
        try {
            zzbbv zzbbvVar = this.zza;
            if (zzbbvVar.zzb) {
                zzbbvVar.zza.zzj(this.zzb);
                this.zza.zza.zzi(0);
                this.zza.zza.zzg(this.zzc);
                this.zza.zza.zzh(null);
                this.zza.zza.zzf();
            }
        } catch (RemoteException e) {
            zzcec.zzf(new ObfuscatedString(new long[]{-7951031367099077629L, -3017661680022760044L, -5765232479481288041L, -8860625340219594806L}).toString(), e);
        }
    }

    public final zzbbu zza(int i) {
        this.zzc = i;
        return this;
    }

    public final synchronized void zzc() {
        ExecutorService executorService;
        executorService = this.zza.zzc;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbbs
            @Override // java.lang.Runnable
            public final void run() {
                zzbbu.this.zzd();
            }
        });
    }
}
