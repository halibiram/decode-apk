package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzadk {
    private static final Pattern zzc = Pattern.compile(new ObfuscatedString(new long[]{-1814760288762061242L, 1677516297470345685L, 6787867500298293121L, -4556198526950706906L, -1695016739550879380L, 5433570290094419383L, -5589876101146019234L, 3192279230139402222L}).toString());
    public int zza = -1;
    public int zzb = -1;

    private final boolean zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                int i = zzfy.zza;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.zza = parseInt;
                    this.zzb = parseInt2;
                    return true;
                }
                return false;
            } catch (NumberFormatException unused) {
                return false;
            }
        }
        return false;
    }

    public final boolean zza() {
        return (this.zza == -1 || this.zzb == -1) ? false : true;
    }

    public final boolean zzb(zzby zzbyVar) {
        for (int i = 0; i < zzbyVar.zza(); i++) {
            zzbx zzb = zzbyVar.zzb(i);
            if (zzb instanceof zzagk) {
                zzagk zzagkVar = (zzagk) zzb;
                if (new ObfuscatedString(new long[]{-5788470369142381059L, -3433563092877085069L}).toString().equals(zzagkVar.zzb) && zzc(zzagkVar.zzc)) {
                    return true;
                }
            } else if (zzb instanceof zzagt) {
                zzagt zzagtVar = (zzagt) zzb;
                if (new ObfuscatedString(new long[]{4967092029781760620L, 820157725391519225L, -1851310768464304560L}).toString().equals(zzagtVar.zza)) {
                    if (new ObfuscatedString(new long[]{-998458477799009606L, 1533302440109528119L}).toString().equals(zzagtVar.zzb) && zzc(zzagtVar.zzc)) {
                        return true;
                    }
                } else {
                    continue;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
