package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaql {
    public static final boolean zza = zzaqm.zzb;
    private final List zzb = new ArrayList();
    private boolean zzc = false;

    public final void finalize() {
        if (!this.zzc) {
            zzb(new ObfuscatedString(new long[]{98411960436266450L, 2507911618872251485L, -3200117675491645093L, -3159438187879548982L}).toString());
            zzaqm.zzb(new ObfuscatedString(new long[]{-6090427067313434266L, -1870462795536991532L, 7715768986420511535L, 854908153637196238L, 7152672761868774295L, -3941779922026287639L, 22729342152195680L, 212830229874532673L, 6492867223499668889L, -4559586210976282885L}).toString(), new Object[0]);
        }
    }

    public final synchronized void zza(String str, long j) {
        if (!this.zzc) {
            this.zzb.add(new zzaqk(str, j, SystemClock.elapsedRealtime()));
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-4984655409904750198L, 6267513348186463802L, 5942245922194009750L, -8937934419806450223L, 209691985008140066L}).toString());
        }
    }

    public final synchronized void zzb(String str) {
        long j;
        this.zzc = true;
        if (this.zzb.size() == 0) {
            j = 0;
        } else {
            j = ((zzaqk) this.zzb.get(r4.size() - 1)).zzc - ((zzaqk) this.zzb.get(0)).zzc;
        }
        if (j > 0) {
            long j2 = ((zzaqk) this.zzb.get(0)).zzc;
            zzaqm.zza(new ObfuscatedString(new long[]{-1726511093145980144L, 700687476523923115L, 2191069343198085646L}).toString(), Long.valueOf(j), str);
            for (zzaqk zzaqkVar : this.zzb) {
                long j3 = zzaqkVar.zzc;
                zzaqm.zza(new ObfuscatedString(new long[]{-6331494102628895024L, 7173738352894950786L, -4932768980058764211L}).toString(), Long.valueOf(j3 - j2), Long.valueOf(zzaqkVar.zzb), zzaqkVar.zza);
                j2 = j3;
            }
        }
    }
}
