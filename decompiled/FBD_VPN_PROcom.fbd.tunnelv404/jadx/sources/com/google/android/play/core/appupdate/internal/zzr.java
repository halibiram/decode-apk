package com.google.android.play.core.appupdate.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzr extends zzn {
    final /* synthetic */ zzx zza;

    public zzr(zzx zzxVar) {
        this.zza = zzxVar;
    }

    @Override // com.google.android.play.core.appupdate.internal.zzn
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        zzm zzmVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        zzm zzmVar2;
        obj = this.zza.zzg;
        synchronized (obj) {
            try {
                atomicInteger = this.zza.zzl;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.zza.zzl;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        zzmVar2 = this.zza.zzc;
                        zzmVar2.zzd(new ObfuscatedString(new long[]{204728655002976150L, -73407154154949447L, 1871644432429565597L, -1939849926622838383L, 2158790608336609191L, 1905183247169031675L, -7187114547862490103L, 8393436493081971558L}).toString(), new Object[0]);
                        return;
                    }
                }
                zzx zzxVar = this.zza;
                iInterface = zzxVar.zzn;
                if (iInterface != null) {
                    zzmVar = zzxVar.zzc;
                    zzmVar.zzd(new ObfuscatedString(new long[]{-1341865522436116484L, -849789758906072837L, -359605475952003407L, -5689391558612736772L}).toString(), new Object[0]);
                    zzx zzxVar2 = this.zza;
                    context = zzxVar2.zzb;
                    serviceConnection = zzxVar2.zzm;
                    context.unbindService(serviceConnection);
                    this.zza.zzh = false;
                    this.zza.zzn = null;
                    this.zza.zzm = null;
                }
                this.zza.zzw();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
