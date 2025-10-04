package com.google.android.gms.internal.ads;

import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
final class zzfzs {
    public static int zza(int i) {
        return (int) (Integer.rotateLeft((int) (i * (-862048943)), 15) * 461845907);
    }

    public static int zzb(@CheckForNull Object obj) {
        int hashCode;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return zza(hashCode);
    }
}
