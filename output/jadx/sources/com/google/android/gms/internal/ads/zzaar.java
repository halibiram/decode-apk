package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;

@RequiresApi(30)
/* loaded from: classes2.dex */
final class zzaar {
    @DoNotInline
    public static void zza(Surface surface, float f) {
        int i;
        if (f == 0.0f) {
            i = 0;
        } else {
            i = 1;
        }
        try {
            surface.setFrameRate(f, i);
        } catch (IllegalStateException e) {
            zzff.zzd(new ObfuscatedString(new long[]{8303381632654623127L, -2775944064517619275L, -2061880519887895521L, -7246838788571456009L}).toString(), new ObfuscatedString(new long[]{5794643917105266461L, -5093851515131328713L, 5415226934330626501L, -2450229708994985850L, 7968595345035485848L, 8708193791242175688L}).toString(), e);
        }
    }
}
