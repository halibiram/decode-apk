package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzpe {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;

    public final zzpe zza(boolean z) {
        this.zza = true;
        return this;
    }

    public final zzpe zzb(boolean z) {
        this.zzb = z;
        return this;
    }

    public final zzpe zzc(boolean z) {
        this.zzc = z;
        return this;
    }

    public final zzpg zzd() {
        if (!this.zza && (this.zzb || this.zzc)) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{3068528178637273181L, 2533175538228625920L, 7857578222426081707L, -5473078624218696594L, 1821422801799390379L, 6476622164049414699L, 3291809357934716805L, -9209658609012399460L, -915161995384976275L, 3830770567859974340L, -6961329957982428093L, -6185322023849914641L}).toString());
        }
        return new zzpg(this, null);
    }
}
