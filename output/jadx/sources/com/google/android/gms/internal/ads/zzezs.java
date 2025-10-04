package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzezs implements zzexq {
    private final Context zza;
    private final zzcdl zzb;
    private final ScheduledExecutorService zzc;
    private final Executor zzd;
    private final String zze;
    private final zzcdc zzf;

    public zzezs(zzcdc zzcdcVar, int i, Context context, zzcdl zzcdlVar, ScheduledExecutorService scheduledExecutorService, Executor executor, String str) {
        this.zzf = zzcdcVar;
        this.zza = context;
        this.zzb = zzcdlVar;
        this.zzc = scheduledExecutorService;
        this.zzd = executor;
        this.zze = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 44;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zze((zzgee) zzgen.zzo(zzgen.zzm(zzgee.zzu(zzgen.zzk(new zzgdt() { // from class: com.google.android.gms.internal.ads.zzezp
            @Override // com.google.android.gms.internal.ads.zzgdt
            public final ListenableFuture zza() {
                return zzgen.zzh(null);
            }
        }, this.zzd)), new zzfws() { // from class: com.google.android.gms.internal.ads.zzezq
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                String str = (String) obj;
                if (str == null) {
                    return null;
                }
                return new zzezt(str);
            }
        }, this.zzd), ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaV)).longValue(), TimeUnit.MILLISECONDS, this.zzc), Exception.class, new zzfws() { // from class: com.google.android.gms.internal.ads.zzezr
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                zzezs.this.zzc((Exception) obj);
                return null;
            }
        }, zzgfe.zzb());
    }

    public final /* synthetic */ zzezt zzc(Exception exc) {
        this.zzb.zzw(exc, new ObfuscatedString(new long[]{9149743420866075033L, -7365356583385720100L, -2329543685658358723L, 1445450286317813311L}).toString());
        return null;
    }
}
