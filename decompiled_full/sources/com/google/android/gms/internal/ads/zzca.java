package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;

@VisibleForTesting
/* loaded from: classes2.dex */
final class zzca {
    public final int zza;

    public zzca(int i, int i2) {
        this.zza = i2;
    }

    public final int zza() {
        int i = this.zza;
        if (i == 2) {
            return 10;
        }
        if (i == 5) {
            return 11;
        }
        if (i == 29) {
            return 12;
        }
        if (i == 42) {
            return 16;
        }
        if (i != 22) {
            return i != 23 ? 0 : 15;
        }
        return 1073741824;
    }
}
