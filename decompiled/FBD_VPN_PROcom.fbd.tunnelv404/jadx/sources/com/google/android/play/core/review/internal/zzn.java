package com.google.android.play.core.review.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzn extends zzj {
    final /* synthetic */ zzt zza;

    public zzn(zzt zztVar) {
        this.zza = zztVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        IInterface iInterface;
        zzi zziVar;
        Context context;
        ServiceConnection serviceConnection;
        AtomicInteger atomicInteger2;
        zzi zziVar2;
        obj = this.zza.zzg;
        synchronized (obj) {
            try {
                atomicInteger = this.zza.zzl;
                if (atomicInteger.get() > 0) {
                    atomicInteger2 = this.zza.zzl;
                    if (atomicInteger2.decrementAndGet() > 0) {
                        zziVar2 = this.zza.zzc;
                        zziVar2.zzc(new ObfuscatedString(new long[]{-8921335705126531849L, 956344783872542735L, -1103744361737165145L, -2411756850015709919L, 4662492384913405264L, -8397573108380590722L, 4406934210111021603L, 4208461060525231794L}).toString(), new Object[0]);
                        return;
                    }
                }
                zzt zztVar = this.zza;
                iInterface = zztVar.zzn;
                if (iInterface != null) {
                    zziVar = zztVar.zzc;
                    zziVar.zzc(new ObfuscatedString(new long[]{-2068133049658216380L, -2092282247061194560L, 1464773477552133421L, -6460488245050682590L}).toString(), new Object[0]);
                    zzt zztVar2 = this.zza;
                    context = zztVar2.zzb;
                    serviceConnection = zztVar2.zzm;
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
