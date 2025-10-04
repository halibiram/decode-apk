package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeuw implements zzexp {
    private final Boolean zza;

    public zzeuw(Boolean bool) {
        this.zza = bool;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Boolean bool = this.zza;
        Bundle bundle = (Bundle) obj;
        if (bool != null) {
            bundle.putBoolean(new ObfuscatedString(new long[]{-4012273084470087427L, 8722753024381887547L}).toString(), bool.booleanValue());
        }
    }
}
