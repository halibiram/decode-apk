package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeoutException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzemf implements zzgej {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfgp zzb;
    final /* synthetic */ zzfgm zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfnu zze;
    final /* synthetic */ zzfgy zzf;
    final /* synthetic */ zzemh zzg;

    public zzemf(zzemh zzemhVar, long j, zzfgp zzfgpVar, zzfgm zzfgmVar, String str, zzfnu zzfnuVar, zzfgy zzfgyVar) {
        this.zza = j;
        this.zzb = zzfgpVar;
        this.zzc = zzfgmVar;
        this.zzd = str;
        this.zze = zzfnuVar;
        this.zzf = zzfgyVar;
        this.zzg = zzemhVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgej
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(Throwable th) {
        Clock clock;
        Integer num;
        int i;
        com.google.android.gms.ads.internal.client.zze zzb;
        boolean z;
        boolean z2;
        LinkedHashMap linkedHashMap;
        com.google.android.gms.ads.internal.client.zze zzeVar;
        zzeis zzeisVar;
        zzfny zzfnyVar;
        zzemj zzemjVar;
        clock = this.zzg.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        zzeir zzeirVar = null;
        if (th instanceof TimeoutException) {
            i = 2;
        } else {
            if (th instanceof zzelp) {
                num = null;
                i = 3;
            } else if (th instanceof CancellationException) {
                i = 4;
            } else if (th instanceof zzfho) {
                num = null;
                i = 5;
            } else {
                int i2 = 6;
                if (th instanceof zzead) {
                    if (zzfij.zza(th).zza == 3) {
                        i2 = 1;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbC)).booleanValue() && (th instanceof zzeir) && (zzb = ((zzeir) th).zzb()) != null) {
                        num = Integer.valueOf(zzb.zza);
                    } else {
                        num = null;
                    }
                    i = i2;
                } else {
                    num = null;
                    i = 6;
                }
            }
            synchronized (this.zzg) {
                try {
                    zzemh zzemhVar = this.zzg;
                    z = zzemhVar.zze;
                    if (z) {
                        zzemjVar = zzemhVar.zzb;
                        zzfgp zzfgpVar = this.zzb;
                        zzfgm zzfgmVar = this.zzc;
                        if (th instanceof zzeir) {
                            zzeirVar = (zzeir) th;
                        }
                        zzemjVar.zza(zzfgpVar, zzfgmVar, i, zzeirVar, elapsedRealtime);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzij)).booleanValue()) {
                        zzfnyVar = this.zzg.zzc;
                        zzfnu zzfnuVar = this.zze;
                        zzfgy zzfgyVar = this.zzf;
                        zzfgm zzfgmVar2 = this.zzc;
                        zzfnyVar.zzd(zzfnuVar.zzc(zzfgyVar, zzfgmVar2, zzfgmVar2.zzo));
                    }
                    zzemh zzemhVar2 = this.zzg;
                    z2 = zzemhVar2.zzg;
                    if (z2) {
                        return;
                    }
                    linkedHashMap = zzemhVar2.zzd;
                    zzfgm zzfgmVar3 = this.zzc;
                    linkedHashMap.put(zzfgmVar3, new zzemg(this.zzd, zzfgmVar3.zzag, i, elapsedRealtime, num));
                    com.google.android.gms.ads.internal.client.zze zza = zzfij.zza(th);
                    int i3 = zza.zza;
                    if ((i3 == 3 || i3 == 0) && (zzeVar = zza.zzd) != null && !zzeVar.zzc.equals(new ObfuscatedString(new long[]{-8071455041248651941L, 62780234557561988L, 6053003501463240643L, -8549187881208731975L, -4980373637362944284L}).toString())) {
                        zza = zzfij.zza(new zzeir(13, zza.zzd));
                    }
                    zzeisVar = this.zzg.zzf;
                    zzeisVar.zzf(this.zzc, elapsedRealtime, zza);
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        num = null;
        synchronized (this.zzg) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        boolean z2;
        boolean zzq;
        LinkedHashMap linkedHashMap;
        zzeis zzeisVar;
        LinkedHashMap linkedHashMap2;
        zzemj zzemjVar;
        clock = this.zzg.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        synchronized (this.zzg) {
            try {
                zzemh zzemhVar = this.zzg;
                z = zzemhVar.zze;
                if (z) {
                    zzemjVar = zzemhVar.zzb;
                    zzemjVar.zza(this.zzb, this.zzc, 0, null, elapsedRealtime);
                }
                zzemh zzemhVar2 = this.zzg;
                z2 = zzemhVar2.zzg;
                if (z2) {
                    return;
                }
                zzq = zzemhVar2.zzq(this.zzc);
                if (zzq) {
                    linkedHashMap2 = this.zzg.zzd;
                    ((zzemg) linkedHashMap2.get(this.zzc)).zzd = elapsedRealtime;
                } else {
                    linkedHashMap = this.zzg.zzd;
                    zzfgm zzfgmVar = this.zzc;
                    linkedHashMap.put(zzfgmVar, new zzemg(this.zzd, zzfgmVar.zzag, 0, elapsedRealtime, null));
                }
                zzeisVar = this.zzg.zzf;
                zzeisVar.zzg(this.zzc, elapsedRealtime, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
