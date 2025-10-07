package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2.dex */
public final class zzbgr {
    private final long zza;

    @Nullable
    private final String zzb;

    @Nullable
    private final zzbgr zzc;

    public zzbgr(long j, @Nullable String str, @Nullable zzbgr zzbgrVar) {
        this.zza = j;
        this.zzb = str;
        this.zzc = zzbgrVar;
    }

    public final long zza() {
        return this.zza;
    }

    @Nullable
    public final zzbgr zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zzb;
    }
}
