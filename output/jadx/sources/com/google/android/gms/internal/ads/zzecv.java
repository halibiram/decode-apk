package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
public final class zzecv {
    private final zzgey zza;
    private final zzgey zzb;
    private final zzedq zzc;
    private final zzhgx zzd;

    public zzecv(zzgey zzgeyVar, zzgey zzgeyVar2, zzedq zzedqVar, zzhgx zzhgxVar) {
        this.zza = zzgeyVar;
        this.zzb = zzgeyVar2;
        this.zzc = zzedqVar;
        this.zzd = zzhgxVar;
    }

    public final /* synthetic */ ListenableFuture zza(zzbym zzbymVar) {
        return this.zzc.zza(zzbymVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkX)).longValue());
    }

    public final /* synthetic */ ListenableFuture zzb(zzbym zzbymVar, int i, zzecf zzecfVar) {
        return ((zzeew) this.zzd.zzb()).zzb(zzbymVar, i);
    }

    public final ListenableFuture zzc(final zzbym zzbymVar) {
        ListenableFuture zzf;
        String str = zzbymVar.zzf;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzB(str)) {
            zzf = zzgen.zzg(new zzecf(1, new ObfuscatedString(new long[]{-8190831613608197642L, -7680742877142342067L, 251393877032922807L, -3151489714659401377L, 414604173763142081L}).toString()));
        } else {
            zzf = zzgen.zzf(zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.internal.ads.zzecs
                @Override // com.google.android.gms.internal.ads.zzgdt
                public final ListenableFuture zza() {
                    return zzecv.this.zza(zzbymVar);
                }
            }, this.zza), ExecutionException.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzect
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    Throwable th = (ExecutionException) obj;
                    if (th.getCause() != null) {
                        th = th.getCause();
                    }
                    return zzgen.zzg(th);
                }
            }, this.zzb);
        }
        final int callingUid = Binder.getCallingUid();
        return zzgen.zzf(zzf, zzecf.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzecu
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzecv.this.zzb(zzbymVar, callingUid, (zzecf) obj);
            }
        }, this.zzb);
    }
}
