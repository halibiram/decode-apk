package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfvy extends zzfvu {
    final /* synthetic */ zzfwe zza;

    public zzfvy(zzfwe zzfweVar) {
        this.zza = zzfweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        zzfvt zzfvtVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        zzfvt zzfvtVar2;
        obj = this.zza.zzg;
        synchronized (obj) {
            try {
                atomicInteger = this.zza.zzl;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.zza.zzl;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        zzfvtVar2 = this.zza.zzc;
                        zzfvtVar2.zzc(new ObfuscatedString(new long[]{5261654385528336060L, 3512259191017153971L, 6962847596168964232L, -3071406229554269147L, -3010556105655448128L, 4199070541699343079L, -979701715457351701L, -8244241075057138220L}).toString(), new Object[0]);
                        return;
                    }
                }
                zzfwe zzfweVar = this.zza;
                iInterface = zzfweVar.zzn;
                if (iInterface != null) {
                    zzfvtVar = zzfweVar.zzc;
                    zzfvtVar.zzc(new ObfuscatedString(new long[]{3091717705347827060L, -1958620819139613476L, 3362350986531708367L, -7174143424058781869L}).toString(), new Object[0]);
                    zzfwe zzfweVar2 = this.zza;
                    context = zzfweVar2.zzb;
                    serviceConnection = zzfweVar2.zzm;
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
