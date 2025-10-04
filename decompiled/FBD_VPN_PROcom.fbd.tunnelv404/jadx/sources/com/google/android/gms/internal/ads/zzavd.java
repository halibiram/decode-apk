package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import androidx.annotation.VisibleForTesting;
import j$.util.concurrent.ThreadLocalRandom;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Random;

/* loaded from: classes2.dex */
public final class zzavd {

    @VisibleForTesting
    protected volatile Boolean zzb;
    private final zzawj zze;
    private static final ConditionVariable zzc = new ConditionVariable();

    @VisibleForTesting
    protected static volatile zzfst zza = null;
    private static volatile Random zzd = null;

    public zzavd(zzawj zzawjVar) {
        this.zze = zzawjVar;
        zzawjVar.zzk().execute(new zzavc(this));
    }

    public static final int zzd() {
        try {
            return ThreadLocalRandom.current().nextInt();
        } catch (RuntimeException unused) {
            if (zzd == null) {
                synchronized (zzavd.class) {
                    try {
                        if (zzd == null) {
                            zzd = new Random();
                        }
                    } finally {
                    }
                }
            }
            return zzd.nextInt();
        }
    }

    public final void zzc(int i, int i2, long j, String str, Exception exc) {
        try {
            zzc.block();
            if (this.zzb.booleanValue() && zza != null) {
                zzars zza2 = zzarw.zza();
                zza2.zza(this.zze.zza.getPackageName());
                zza2.zze(j);
                if (str != null) {
                    zza2.zzb(str);
                }
                if (exc != null) {
                    StringWriter stringWriter = new StringWriter();
                    exc.printStackTrace(new PrintWriter(stringWriter));
                    zza2.zzf(stringWriter.toString());
                    zza2.zzd(exc.getClass().getName());
                }
                zzfss zza3 = zza.zza(((zzarw) zza2.zzal()).zzax());
                zza3.zza(i);
                if (i2 != -1) {
                    zza3.zzb(i2);
                }
                zza3.zzc();
            }
        } catch (Exception unused) {
        }
    }
}
