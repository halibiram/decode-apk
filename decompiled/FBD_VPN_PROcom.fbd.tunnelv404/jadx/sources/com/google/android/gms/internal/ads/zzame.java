package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzame {
    public final String zza;
    public final int zzb;
    public final String zzc;
    public final Set zzd;

    private zzame(String str, int i, String str2, Set set) {
        this.zzb = i;
        this.zza = str;
        this.zzc = str2;
        this.zzd = set;
    }

    public static zzame zza(String str, int i) {
        String str2;
        String trim = str.trim();
        zzek.zzd(!trim.isEmpty());
        int indexOf = trim.indexOf(new ObfuscatedString(new long[]{-5930247753218684613L, -8684626606421091193L}).toString());
        if (indexOf == -1) {
            str2 = new ObfuscatedString(new long[]{-825486604697254513L}).toString();
        } else {
            String trim2 = trim.substring(indexOf).trim();
            trim = trim.substring(0, indexOf);
            str2 = trim2;
        }
        int i2 = zzfy.zza;
        String[] split = trim.split(new ObfuscatedString(new long[]{-7618427936638344301L, -3430479193900775198L}).toString(), -1);
        String str3 = split[0];
        HashSet hashSet = new HashSet();
        for (int i3 = 1; i3 < split.length; i3++) {
            hashSet.add(split[i3]);
        }
        return new zzame(str3, i, str2, hashSet);
    }

    public static zzame zzb() {
        return new zzame(new ObfuscatedString(new long[]{-5349052835345123508L}).toString(), 0, new ObfuscatedString(new long[]{3198610698732427966L}).toString(), Collections.emptySet());
    }
}
