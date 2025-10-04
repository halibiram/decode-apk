package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzflz implements zzflw {
    private final zzflw zza;
    private final Queue zzb = new LinkedBlockingQueue();
    private final int zzc = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziC)).intValue();
    private final AtomicBoolean zzd = new AtomicBoolean(false);

    public zzflz(zzflw zzflwVar, ScheduledExecutorService scheduledExecutorService) {
        this.zza = zzflwVar;
        long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziB)).intValue();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlk)).booleanValue()) {
            scheduledExecutorService.scheduleWithFixedDelay(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfly
                @Override // java.lang.Runnable
                public final void run() {
                    zzflz.zzc(zzflz.this);
                }
            }, intValue, intValue, TimeUnit.MILLISECONDS);
        } else {
            scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfly
                @Override // java.lang.Runnable
                public final void run() {
                    zzflz.zzc(zzflz.this);
                }
            }, intValue, intValue, TimeUnit.MILLISECONDS);
        }
    }

    public static /* synthetic */ void zzc(zzflz zzflzVar) {
        while (!zzflzVar.zzb.isEmpty()) {
            zzflzVar.zza.zzb((zzflv) zzflzVar.zzb.remove());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzflw
    public final String zza(zzflv zzflvVar) {
        return this.zza.zza(zzflvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzflw
    public final void zzb(zzflv zzflvVar) {
        if (this.zzb.size() >= this.zzc) {
            if (!this.zzd.getAndSet(true)) {
                Queue queue = this.zzb;
                zzflv zzb = zzflv.zzb(new ObfuscatedString(new long[]{-3612664545528762955L, -1217360883182101885L, -4714689937918736414L}).toString());
                Map zzj = zzflvVar.zzj();
                if (zzj.containsKey(new ObfuscatedString(new long[]{2953229225284947047L, -1489739809504279292L}).toString())) {
                    zzb.zza(new ObfuscatedString(new long[]{-4178478911115388635L, -6263366711871928213L, -4308523641197918268L}).toString(), (String) zzj.get(new ObfuscatedString(new long[]{6651801941817573162L, -8849846097178555176L}).toString()));
                }
                queue.offer(zzb);
                return;
            }
            return;
        }
        this.zzb.offer(zzflvVar);
    }
}
