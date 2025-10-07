package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfoy {
    private final zzfqk zza;
    private final String zzb;
    private final zzfok zzc;
    private final String zzd = new ObfuscatedString(new long[]{4791045090639123441L, 2130498779797159863L, 2224216658618908576L}).toString();

    public zzfoy(View view, zzfok zzfokVar, @Nullable String str) {
        this.zza = new zzfqk(view);
        this.zzb = view.getClass().getCanonicalName();
        this.zzc = zzfokVar;
    }

    public final zzfok zza() {
        return this.zzc;
    }

    public final zzfqk zzb() {
        return this.zza;
    }

    public final String zzc() {
        return this.zzd;
    }

    public final String zzd() {
        return this.zzb;
    }
}
