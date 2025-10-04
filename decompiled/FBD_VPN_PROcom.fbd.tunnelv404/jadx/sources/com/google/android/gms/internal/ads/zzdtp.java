package com.google.android.gms.internal.ads;

import android.view.InputEvent;
import androidx.annotation.VisibleForTesting;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdtp {

    @Nullable
    private InputEvent zza;

    @VisibleForTesting(otherwise = 3)
    public zzdtp() {
    }

    @Nullable
    public final InputEvent zza() {
        return this.zza;
    }

    public final void zzb(InputEvent inputEvent) {
        this.zza = inputEvent;
    }
}
