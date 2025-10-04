package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzerd implements zzexp {
    private final boolean zza;

    public zzerd(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        String obfuscatedString;
        Bundle bundle = (Bundle) obj;
        if (true != this.zza) {
            obfuscatedString = new ObfuscatedString(new long[]{2709690863362670821L, -2877853318971194289L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3180108978417823279L, -3151481904059319779L}).toString();
        }
        bundle.putString(new ObfuscatedString(new long[]{-7979725573710947064L, -5436684081307411354L}).toString(), obfuscatedString);
    }
}
