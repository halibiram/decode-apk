package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfue extends zzfuc {
    private static zzfue zzc;

    private zzfue(Context context) {
        super(context, new ObfuscatedString(new long[]{-1825653072435496467L, 7522955915437740693L, 5518106222367911420L}).toString(), new ObfuscatedString(new long[]{-8981684812132816874L, 7876951080673486674L, -7928664086494566416L, 2978211596236718052L}).toString(), new ObfuscatedString(new long[]{-3493162405836949760L, -3975960444193062819L, -1766542360347903947L, 6540887028339694011L}).toString());
    }

    public static final zzfue zzj(Context context) {
        zzfue zzfueVar;
        synchronized (zzfue.class) {
            try {
                if (zzc == null) {
                    zzc = new zzfue(context);
                }
                zzfueVar = zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzfueVar;
    }

    public final zzfub zzh(long j, boolean z) {
        zzfub zzb;
        synchronized (zzfue.class) {
            zzb = zzb(null, null, j, z);
        }
        return zzb;
    }

    public final zzfub zzi(String str, String str2, long j, boolean z) {
        zzfub zzb;
        synchronized (zzfue.class) {
            zzb = zzb(str, str2, j, z);
        }
        return zzb;
    }

    public final void zzk() {
        synchronized (zzfue.class) {
            zzf(false);
        }
    }

    public final void zzl() {
        synchronized (zzfue.class) {
            zzf(true);
        }
    }
}
