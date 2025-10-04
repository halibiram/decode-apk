package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzaae extends zzst {
    public zzaae(Throwable th, @Nullable zzsv zzsvVar, @Nullable Surface surface) {
        super(th, zzsvVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
    }
}
