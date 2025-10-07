package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzalg {
    public final int zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;

    private zzalg(int i, int i2, int i3, int i4, int i5) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
        this.zze = i5;
    }

    @Nullable
    public static zzalg zza(String str) {
        char c;
        zzek.zzd(str.startsWith(new ObfuscatedString(new long[]{-4361413193005524495L, -8061672327428777748L}).toString()));
        String[] split = TextUtils.split(str.substring(7), new ObfuscatedString(new long[]{5275741450074558132L, -6387545724437027792L}).toString());
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            int length = split.length;
            if (i < length) {
                String zza = zzfwk.zza(split[i].trim());
                switch (zza.hashCode()) {
                    case 100571:
                        if (zza.equals(new ObfuscatedString(new long[]{774350396307788805L, 1821863180803122028L}).toString())) {
                            c = 1;
                            break;
                        }
                        break;
                    case 3556653:
                        if (zza.equals(new ObfuscatedString(new long[]{4212320321969307581L, 6519984904564688079L}).toString())) {
                            c = 3;
                            break;
                        }
                        break;
                    case 109757538:
                        if (zza.equals(new ObfuscatedString(new long[]{-8423994434202175799L, 4931421301788446730L}).toString())) {
                            c = 0;
                            break;
                        }
                        break;
                    case 109780401:
                        if (zza.equals(new ObfuscatedString(new long[]{-8403628851375939579L, 2169870220548435807L}).toString())) {
                            c = 2;
                            break;
                        }
                        break;
                }
                c = 65535;
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            if (c == 3) {
                                i5 = i;
                            }
                        } else {
                            i4 = i;
                        }
                    } else {
                        i3 = i;
                    }
                } else {
                    i2 = i;
                }
                i++;
            } else {
                if (i2 != -1 && i3 != -1 && i5 != -1) {
                    return new zzalg(i2, i3, i4, i5, length);
                }
                return null;
            }
        }
    }
}
