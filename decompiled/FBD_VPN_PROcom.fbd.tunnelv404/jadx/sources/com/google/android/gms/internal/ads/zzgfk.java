package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgfk extends zzged {

    @CheckForNull
    private ListenableFuture zza;

    @CheckForNull
    private ScheduledFuture zzb;

    private zzgfk(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.zza = listenableFuture;
    }

    public static ListenableFuture zzf(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzgfk zzgfkVar = new zzgfk(listenableFuture);
        zzgfh zzgfhVar = new zzgfh(zzgfkVar);
        zzgfkVar.zzb = scheduledExecutorService.schedule(zzgfhVar, j, timeUnit);
        listenableFuture.addListener(zzgfhVar, zzgeb.zza);
        return zzgfkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    @CheckForNull
    public final String zza() {
        ListenableFuture listenableFuture = this.zza;
        ScheduledFuture scheduledFuture = this.zzb;
        if (listenableFuture != null) {
            String obj = listenableFuture.toString();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5470445515999648251L, -1238040008853294302L, 4818392559076756631L}).toString());
            sb.append(obj);
            String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{627705984514854150L, -2510109323405153204L}), sb);
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                if (delay > 0) {
                    StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(m3332x9d12c1f4);
                    m3341xc20437a5.append(new ObfuscatedString(new long[]{4504392124739579990L, -1002691683227834844L, -4738962347999949696L, -1780381684874219227L}).toString());
                    m3341xc20437a5.append(delay);
                    return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-791883434814820800L, -6784990499255635215L}), m3341xc20437a5);
                }
            }
            return m3332x9d12c1f4;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzgdb
    public final void zzb() {
        zzr(this.zza);
        ScheduledFuture scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
