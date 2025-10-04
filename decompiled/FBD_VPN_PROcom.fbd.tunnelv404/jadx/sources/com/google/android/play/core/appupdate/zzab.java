package com.google.android.play.core.appupdate;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzab {
    private zzi zza;

    private zzab() {
    }

    public final zza zza() {
        zzi zziVar = this.zza;
        if (zziVar != null) {
            return new zzz(zziVar, null);
        }
        throw new IllegalStateException(String.valueOf(zzi.class.getCanonicalName()).concat(new ObfuscatedString(new long[]{3993547836342299411L, -6363707625820923080L, 6152006787139424465L}).toString()));
    }

    public final zzab zzb(zzi zziVar) {
        this.zza = zziVar;
        return this;
    }

    public /* synthetic */ zzab(zzaa zzaaVar) {
    }
}
