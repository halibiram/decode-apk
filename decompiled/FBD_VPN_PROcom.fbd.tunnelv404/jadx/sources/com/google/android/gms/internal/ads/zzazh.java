package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
final class zzazh implements Runnable {
    final /* synthetic */ zzazi zza;

    public zzazh(zzazi zzaziVar) {
        this.zza = zzaziVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List list;
        obj = this.zza.zzc;
        synchronized (obj) {
            zzazi zzaziVar = this.zza;
            z = zzaziVar.zzd;
            if (z) {
                z2 = zzaziVar.zze;
                if (z2) {
                    zzaziVar.zzd = false;
                    zzcec.zze(new ObfuscatedString(new long[]{1752766395955145907L, -9010233417117028591L, 5074429893997213038L, -4496717060689418451L}).toString());
                    list = this.zza.zzf;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            ((zzazj) it.next()).zza(false);
                        } catch (Exception e) {
                            zzcec.zzh(new ObfuscatedString(new long[]{-7966666606839887078L}).toString(), e);
                        }
                    }
                }
            }
            zzcec.zze(new ObfuscatedString(new long[]{-8943146816600917286L, -4479172905624770992L, 415419331161717245L, -7866978415389105866L}).toString());
        }
    }
}
