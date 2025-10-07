package com.google.android.gms.internal.ads;

import android.os.ConditionVariable;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzavc implements Runnable {
    final /* synthetic */ zzavd zza;

    public zzavc(zzavd zzavdVar) {
        this.zza = zzavdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ConditionVariable conditionVariable;
        boolean z;
        zzawj zzawjVar;
        ConditionVariable conditionVariable2;
        if (this.zza.zzb != null) {
            return;
        }
        conditionVariable = zzavd.zzc;
        synchronized (conditionVariable) {
            if (this.zza.zzb != null) {
                return;
            }
            boolean z2 = false;
            try {
                z = ((Boolean) zzbgc.zzcq.zze()).booleanValue();
            } catch (IllegalStateException unused) {
                z = false;
            }
            if (z) {
                try {
                    zzawjVar = this.zza.zze;
                    zzavd.zza = zzfst.zzb(zzawjVar.zza, new ObfuscatedString(new long[]{-3290084646172483903L, -2738735946643625077L}).toString(), null);
                } catch (Throwable unused2) {
                }
            }
            z2 = z;
            this.zza.zzb = Boolean.valueOf(z2);
            conditionVariable2 = zzavd.zzc;
            conditionVariable2.open();
        }
    }
}
