package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzcg {
    public final float zzc;
    public final float zzd;
    private final int zzg;
    public static final zzcg zza = new zzcg(1.0f, 1.0f);
    private static final String zze = Integer.toString(0, 36);
    private static final String zzf = Integer.toString(1, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzcf
    };

    public zzcg(@FloatRange(from = 0.0d, fromInclusive = false) float f, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        zzek.zzd(f2 > 0.0f);
        this.zzc = f;
        this.zzd = f2;
        this.zzg = Math.round(f * 1000.0f);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcg.class == obj.getClass()) {
            zzcg zzcgVar = (zzcg) obj;
            if (this.zzc == zzcgVar.zzc && this.zzd == zzcgVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int floatToRawIntBits = Float.floatToRawIntBits(this.zzc) + 527;
        return Float.floatToRawIntBits(this.zzd) + (floatToRawIntBits * 31);
    }

    public final String toString() {
        return String.format(Locale.US, new ObfuscatedString(new long[]{5603571186485142583L, 2252994114325963243L, 4091592973390026403L, 8038911391042760980L, -5615260554214628829L, -3122964619394269302L, 280338529517214109L}).toString(), Float.valueOf(this.zzc), Float.valueOf(this.zzd));
    }

    public final long zza(long j) {
        return j * this.zzg;
    }
}
