package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.GuardedBy;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzext {
    private final Context zza;
    private final Set zzb;
    private final Executor zzc;
    private final zzfmz zzd;
    private final zzdwf zze;
    private long zzf = 0;

    @GuardedBy("this")
    private int zzg = 0;

    public zzext(Context context, Executor executor, Set set, zzfmz zzfmzVar, zzdwf zzdwfVar) {
        this.zza = context;
        this.zzc = executor;
        this.zzb = set;
        this.zzd = zzfmzVar;
        this.zze = zzdwfVar;
    }

    public final ListenableFuture zza(final Object obj) {
        zzfmo zza = zzfmn.zza(this.zza, 8);
        zza.zzh();
        final ArrayList arrayList = new ArrayList(this.zzb.size());
        List arrayList2 = new ArrayList();
        zzbfu zzbfuVar = zzbgc.zzlh;
        if (!((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).isEmpty()) {
            arrayList2 = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).split(new ObfuscatedString(new long[]{-6422766377291434906L, 7294758547640712891L}).toString()));
        }
        this.zzf = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        for (final zzexq zzexqVar : this.zzb) {
            if (!arrayList2.contains(String.valueOf(zzexqVar.zza()))) {
                final long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                ListenableFuture zzb = zzexqVar.zzb();
                zzb.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzext.this.zzb(elapsedRealtime, zzexqVar);
                    }
                }, zzcep.zzf);
                arrayList.add(zzb);
            }
        }
        ListenableFuture zza2 = zzgen.zzb(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzexs
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Iterator it = arrayList.iterator();
                while (true) {
                    Object obj2 = obj;
                    if (it.hasNext()) {
                        zzexp zzexpVar = (zzexp) ((ListenableFuture) it.next()).get();
                        if (zzexpVar != null) {
                            zzexpVar.zzj(obj2);
                        }
                    } else {
                        return obj2;
                    }
                }
            }
        }, this.zzc);
        if (zzfnc.zza()) {
            zzfmy.zza(zza2, this.zzd, zza);
        }
        return zza2;
    }

    public final void zzb(long j, zzexq zzexqVar) {
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j;
        if (((Boolean) zzbid.zza.zze()).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-1131032385353958337L, 4533463764489701490L, -4073878536553290061L, -3020106042934860951L}).toString() + zzfxt.zzc(zzexqVar.getClass().getCanonicalName()) + new ObfuscatedString(new long[]{-4663089119497939262L, -631461448075937599L}).toString() + elapsedRealtime);
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzca)).booleanValue()) {
            return;
        }
        zzdwe zza = this.zze.zza();
        zza.zzb(new ObfuscatedString(new long[]{2777021794957276649L, -5079517532836857100L}).toString(), new ObfuscatedString(new long[]{6445389904206585218L, -437268497060663951L}).toString());
        zza.zzb(new ObfuscatedString(new long[]{-803354529499952530L, 1436081106149524936L}).toString(), new ObfuscatedString(new long[]{-2638478909968968005L, -7027516851869399821L, 9070542297431785768L}).toString());
        zza.zzb(new ObfuscatedString(new long[]{1425524723180415820L, -3627812060755616348L}).toString(), String.valueOf(zzexqVar.zza()));
        zza.zzb(new ObfuscatedString(new long[]{-7112809124805026109L, -9133855016961344026L}).toString(), String.valueOf(elapsedRealtime));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcb)).booleanValue()) {
            synchronized (this) {
                this.zzg++;
            }
            zza.zzb(new ObfuscatedString(new long[]{-5330781619121130310L, -4806130856738489377L}).toString(), com.google.android.gms.ads.internal.zzt.zzo().zzh().zzd());
            synchronized (this) {
                try {
                    if (this.zzg == this.zzb.size() && this.zzf != 0) {
                        this.zzg = 0;
                        String valueOf = String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzf);
                        if (zzexqVar.zza() > 39 && zzexqVar.zza() < 52) {
                            zza.zzb(new ObfuscatedString(new long[]{5148404862719846094L, -493704828061436408L, -3857676391578439673L}).toString(), valueOf);
                        } else {
                            zza.zzb(new ObfuscatedString(new long[]{-4677756082685623446L, -6994937963338640352L}).toString(), valueOf);
                        }
                    }
                } finally {
                }
            }
        }
        zza.zzh();
    }
}
