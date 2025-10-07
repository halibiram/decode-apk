package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class zzacy {
    public static int zza(zzacv zzacvVar, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int zzb = zzacvVar.zzb(bArr, i + i3, i2 - i3);
            if (zzb == -1) {
                break;
            }
            i3 += zzb;
        }
        return i3;
    }

    @Pure
    public static void zzb(boolean z, @Nullable String str) {
        if (z) {
        } else {
            throw zzcc.zza(str, null);
        }
    }

    public static boolean zzc(zzacv zzacvVar, byte[] bArr, int i, int i2, boolean z) {
        try {
            return zzacvVar.zzm(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (z) {
                return false;
            }
            throw e;
        }
    }

    public static boolean zzd(zzacv zzacvVar, byte[] bArr, int i, int i2) {
        try {
            ((zzack) zzacvVar).zzn(bArr, i, i2, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public static boolean zze(zzacv zzacvVar, int i) {
        try {
            ((zzack) zzacvVar).zzo(i, false);
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
