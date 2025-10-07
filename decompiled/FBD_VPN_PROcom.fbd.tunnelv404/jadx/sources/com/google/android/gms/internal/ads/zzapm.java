package com.google.android.gms.internal.ads;

import android.os.Process;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes2.dex */
public final class zzapm extends Thread {
    private static final boolean zza = zzaqm.zzb;
    private final BlockingQueue zzb;
    private final BlockingQueue zzc;
    private final zzapk zzd;
    private volatile boolean zze = false;
    private final zzaqn zzf;
    private final zzapr zzg;

    public zzapm(BlockingQueue blockingQueue, BlockingQueue blockingQueue2, zzapk zzapkVar, zzapr zzaprVar) {
        this.zzb = blockingQueue;
        this.zzc = blockingQueue2;
        this.zzd = zzapkVar;
        this.zzg = zzaprVar;
        this.zzf = new zzaqn(this, blockingQueue2, zzaprVar);
    }

    private void zzc() {
        zzaqa zzaqaVar = (zzaqa) this.zzb.take();
        zzaqaVar.zzm(new ObfuscatedString(new long[]{7667593528855876373L, -6474342666240631644L, -5529968402777649775L}).toString());
        zzaqaVar.zzt(1);
        try {
            zzaqaVar.zzw();
            zzapj zza2 = this.zzd.zza(zzaqaVar.zzj());
            if (zza2 == null) {
                zzaqaVar.zzm(new ObfuscatedString(new long[]{-3870455294473793037L, 1618092559622664524L, 7969389669094478947L}).toString());
                if (!this.zzf.zzc(zzaqaVar)) {
                    this.zzc.put(zzaqaVar);
                }
            } else {
                long currentTimeMillis = System.currentTimeMillis();
                if (zza2.zza(currentTimeMillis)) {
                    zzaqaVar.zzm(new ObfuscatedString(new long[]{6306392253870307792L, 7730249515911823521L, -7437800042060289296L, 2304573384804031566L}).toString());
                    zzaqaVar.zze(zza2);
                    if (!this.zzf.zzc(zzaqaVar)) {
                        this.zzc.put(zzaqaVar);
                    }
                } else {
                    zzaqaVar.zzm(new ObfuscatedString(new long[]{-7673512114172815505L, -1269467742992531497L, -704831155020637306L}).toString());
                    zzaqg zzh = zzaqaVar.zzh(new zzapw(zza2.zza, zza2.zzg));
                    zzaqaVar.zzm(new ObfuscatedString(new long[]{6661566930735304345L, 6658134996526644582L, 5983744451193291533L}).toString());
                    if (!zzh.zzc()) {
                        zzaqaVar.zzm(new ObfuscatedString(new long[]{5417987195161685734L, 6432866117713560152L, -7272165203696593627L, 5022637786615927471L}).toString());
                        this.zzd.zzc(zzaqaVar.zzj(), true);
                        zzaqaVar.zze(null);
                        if (!this.zzf.zzc(zzaqaVar)) {
                            this.zzc.put(zzaqaVar);
                        }
                    } else if (zza2.zzf < currentTimeMillis) {
                        zzaqaVar.zzm(new ObfuscatedString(new long[]{-8943238931826885719L, -4770494271717241882L, 5246932824972801873L, -2772054864272382175L}).toString());
                        zzaqaVar.zze(zza2);
                        zzh.zzd = true;
                        if (!this.zzf.zzc(zzaqaVar)) {
                            this.zzg.zzb(zzaqaVar, zzh, new zzapl(this, zzaqaVar));
                        } else {
                            this.zzg.zzb(zzaqaVar, zzh, null);
                        }
                    } else {
                        this.zzg.zzb(zzaqaVar, zzh, null);
                    }
                }
            }
            zzaqaVar.zzt(2);
        } catch (Throwable th) {
            zzaqaVar.zzt(2);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (zza) {
            zzaqm.zzd(new ObfuscatedString(new long[]{-3218289073115989189L, -8571346401608544994L, -7696427103666033581L, -7701880652015596025L}).toString(), new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzd.zzb();
        while (true) {
            try {
                zzc();
            } catch (InterruptedException unused) {
                if (this.zze) {
                    Thread.currentThread().interrupt();
                    return;
                } else {
                    zzaqm.zzb(new ObfuscatedString(new long[]{7032560604112451662L, -4377342315572404266L, -7692533374779374659L, -820050398236469685L, -2985283216278145868L, -4435909556244882734L, -7820606026768353855L, -7305942427367699015L, 1519183422959356447L, 2576702141941870087L, 8926819592499321500L, -7199363245366435871L}).toString(), new Object[0]);
                }
            }
        }
    }

    public final void zzb() {
        this.zze = true;
        interrupt();
    }
}
