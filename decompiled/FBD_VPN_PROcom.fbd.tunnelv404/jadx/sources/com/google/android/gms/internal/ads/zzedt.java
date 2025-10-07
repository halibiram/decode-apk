package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzedt extends zzedw {
    private zzbyi zzh;

    public zzedt(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zze = context;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzt().zzb();
        this.zzg = scheduledExecutorService;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final synchronized void onConnected(@Nullable Bundle bundle) {
        if (!this.zzc) {
            this.zzc = true;
            try {
                try {
                    this.zzd.zzp().zzf(this.zzh, new zzedv(this));
                } catch (Throwable th) {
                    com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-3729162914270619404L, -585401008977351119L, -3396408369658429734L, 6908244409936006230L, 6581242778821385971L, 7642744263316702776L, -2720359809736192834L}).toString());
                    this.zza.zzd(th);
                }
            } catch (RemoteException unused) {
                this.zza.zzd(new zzecf(1));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzedw, com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        String format = String.format(Locale.US, new ObfuscatedString(new long[]{2630214539864318318L, 1473065804597954597L, 1234501364714989302L, -8463168954631947156L, 7543372226952088884L, -1303217580723808364L, 3370675305619683174L, 5862308310382694156L}).toString(), Integer.valueOf(i));
        zzcec.zze(format);
        this.zza.zzd(new zzecf(1, format));
    }

    public final synchronized ListenableFuture zza(zzbyi zzbyiVar, long j) {
        if (this.zzb) {
            return zzgen.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        }
        this.zzb = true;
        this.zzh = zzbyiVar;
        zzb();
        ListenableFuture zzo = zzgen.zzo(this.zza, j, TimeUnit.MILLISECONDS, this.zzg);
        zzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeds
            @Override // java.lang.Runnable
            public final void run() {
                zzedt.this.zzc();
            }
        }, zzcep.zzf);
        return zzo;
    }
}
