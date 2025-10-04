package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
public final class zzapu extends Thread {
    private final BlockingQueue zza;
    private final zzapt zzb;
    private final zzapk zzc;
    private volatile boolean zzd = false;
    private final zzapr zze;

    public zzapu(BlockingQueue blockingQueue, zzapt zzaptVar, zzapk zzapkVar, zzapr zzaprVar) {
        this.zza = blockingQueue;
        this.zzb = zzaptVar;
        this.zzc = zzapkVar;
        this.zze = zzaprVar;
    }

    private void zzb() {
        zzaqa zzaqaVar = (zzaqa) this.zza.take();
        SystemClock.elapsedRealtime();
        zzaqaVar.zzt(3);
        try {
            try {
                try {
                    zzaqaVar.zzm(new ObfuscatedString(new long[]{1799712846279171483L, 6989125150548252245L, -477516050749189413L, 8317966085016422896L}).toString());
                    zzaqaVar.zzw();
                    TrafficStats.setThreadStatsTag(zzaqaVar.zzc());
                    zzapw zza = this.zzb.zza(zzaqaVar);
                    zzaqaVar.zzm(new ObfuscatedString(new long[]{-6718065343551126621L, 1546073932372762534L, 514307895288696199L, 5978738889622901669L}).toString());
                    if (zza.zze && zzaqaVar.zzv()) {
                        zzaqaVar.zzp(new ObfuscatedString(new long[]{-2741905449429016843L, 2749863974031692584L, -6228067755050126330L}).toString());
                        zzaqaVar.zzr();
                    } else {
                        zzaqg zzh = zzaqaVar.zzh(zza);
                        zzaqaVar.zzm(new ObfuscatedString(new long[]{8791962566556542123L, -3465197078777363117L, -1954406869363847814L, -6405435886070572441L}).toString());
                        if (zzh.zzb != null) {
                            this.zzc.zzd(zzaqaVar.zzj(), zzh.zzb);
                            zzaqaVar.zzm(new ObfuscatedString(new long[]{4674012767688397972L, -1581410759381678690L, -1701491210624604457L, 5416807707702596879L}).toString());
                        }
                        zzaqaVar.zzq();
                        this.zze.zzb(zzaqaVar, zzh, null);
                        zzaqaVar.zzs(zzh);
                    }
                } catch (zzaqj e) {
                    SystemClock.elapsedRealtime();
                    this.zze.zza(zzaqaVar, e);
                    zzaqaVar.zzr();
                }
            } catch (Exception e2) {
                zzaqm.zzc(e2, new ObfuscatedString(new long[]{3313755785567105124L, 5341611794768136711L, -8623240297998960049L, -1521935362258095444L}).toString(), e2.toString());
                zzaqj zzaqjVar = new zzaqj(e2);
                SystemClock.elapsedRealtime();
                this.zze.zza(zzaqaVar, zzaqjVar);
                zzaqaVar.zzr();
            }
            zzaqaVar.zzt(4);
        } catch (Throwable th) {
            zzaqaVar.zzt(4);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzb();
            } catch (InterruptedException unused) {
                if (this.zzd) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaqm.zzb(new ObfuscatedString(new long[]{1032699964387548412L, -3742682549973564270L, -2551615718071075044L, 2036955208493594537L, -2616313960380781834L, 8432035092843027700L, -6116165481247954444L, -910098986123386821L, -7488113464589420443L, -7878584462102889602L, -3203305678779224252L, -7305701358354552389L}).toString(), new Object[0]);
            }
        }
    }

    public final void zza() {
        this.zzd = true;
        interrupt();
    }
}
