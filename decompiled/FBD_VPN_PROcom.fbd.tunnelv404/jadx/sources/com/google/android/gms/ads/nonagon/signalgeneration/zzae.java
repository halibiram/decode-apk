package com.google.android.gms.ads.nonagon.signalgeneration;

import com.google.android.gms.internal.ads.zzbbz;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzae {
    private final String zza;

    public /* synthetic */ zzae(zzac zzacVar, zzad zzadVar) {
        String str;
        str = zzacVar.zza;
        this.zza = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbbz zza() {
        char c;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals(new ObfuscatedString(new long[]{-5544858431527196195L, -5695838787449652604L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals(new ObfuscatedString(new long[]{-7813355589894568959L, 310589531751749110L, 5038420101418058638L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals(new ObfuscatedString(new long[]{-9046232578479723967L, 6042158271754511977L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals(new ObfuscatedString(new long[]{-2543639744812724265L, 2873992239013181437L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return zzbbz.zza;
                    }
                    return zzbbz.zzh;
                }
                return zzbbz.zzg;
            }
            return zzbbz.zzd;
        }
        return zzbbz.zzb;
    }

    public final String zzb() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    public final Set zzc() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
