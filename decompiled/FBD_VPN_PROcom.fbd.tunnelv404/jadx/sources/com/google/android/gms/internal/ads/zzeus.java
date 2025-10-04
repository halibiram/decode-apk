package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeus implements zzexp {
    private final boolean zza;

    public zzeus(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        ((Bundle) obj).putBoolean(new ObfuscatedString(new long[]{5940460574284803307L, 2246412454397345209L}).toString(), this.zza);
    }
}
