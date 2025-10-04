package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzaqy {
    private final int zza;
    private final List zzb;
    private final int zzc;

    @Nullable
    private final InputStream zzd;

    public zzaqy(int i, List list, int i2, InputStream inputStream) {
        this.zza = i;
        this.zzb = list;
        this.zzc = i2;
        this.zzd = inputStream;
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
        return this.zza;
    }

    @Nullable
    public final InputStream zzc() {
        InputStream inputStream = this.zzd;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final List zzd() {
        return DesugarCollections.unmodifiableList(this.zzb);
    }
}
