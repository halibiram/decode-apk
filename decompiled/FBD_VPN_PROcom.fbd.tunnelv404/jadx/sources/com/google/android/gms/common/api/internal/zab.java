package com.google.android.gms.common.api.internal;

import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class zab extends ActivityLifecycleObserver {
    private final WeakReference<zaa> zaa;

    @VisibleForTesting(otherwise = 2)
    public zab(zaa zaaVar) {
        this.zaa = new WeakReference<>(zaaVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        zaa zaaVar = this.zaa.get();
        if (zaaVar != null) {
            zaaVar.zac(runnable);
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-8871174913035249364L, 5525161698022838057L, -8311530403055417694L, -4685025741064156082L, -256723175628726109L, -8562804922786896419L, 7289598173290962673L}).toString());
    }
}
