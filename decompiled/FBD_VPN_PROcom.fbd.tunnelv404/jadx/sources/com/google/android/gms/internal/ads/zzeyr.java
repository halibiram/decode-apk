package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzeyr implements zzexq {
    private final Executor zza;
    private final String zzb;

    @Nullable
    private final PackageInfo zzc;
    private final zzcdc zzd;

    public zzeyr(zzcdc zzcdcVar, Executor executor, String str, @Nullable PackageInfo packageInfo, int i) {
        this.zzd = zzcdcVar;
        this.zza = executor;
        this.zzb = str;
        this.zzc = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zzf(zzgen.zzm(zzgen.zzh(this.zzb), new zzfws() { // from class: com.google.android.gms.internal.ads.zzeyp
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return new zzeys((String) obj);
            }
        }, this.zza), Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzeyq
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzeyr.this.zzc((Throwable) obj);
            }
        }, this.zza);
    }

    public final /* synthetic */ ListenableFuture zzc(Throwable th) {
        return zzgen.zzh(new zzeys(this.zzb));
    }
}
