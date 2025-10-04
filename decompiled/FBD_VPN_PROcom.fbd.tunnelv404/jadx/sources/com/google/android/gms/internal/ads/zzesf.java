package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzesf {
    private final AtomicBoolean zza = new AtomicBoolean(false);

    @Nullable
    private zzese zzb;

    @Nullable
    public final zzese zza() {
        return this.zzb;
    }

    public final void zzb(zzese zzeseVar) {
        this.zzb = zzeseVar;
    }

    public final void zzc(boolean z) {
        this.zza.set(true);
    }

    public final boolean zzd() {
        return this.zza.get();
    }
}
