package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzfxe {
    public static int zza(int i, int i2, String str) {
        String zzb;
        if (i >= 0 && i < i2) {
            return i;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{-3268105886218654925L, 5790517711061947086L}).toString();
        if (i >= 0) {
            if (i2 < 0) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4605302659760157246L, 3328231534462512097L, -6823450089623419970L}), new StringBuilder(), i2));
            }
            zzb = zzfxt.zzb(new ObfuscatedString(new long[]{3014347374213784691L, 4547654937844783918L, -3990953283771773421L, 855454925673895181L, 7546843756689605351L, -9007970105629895643L}).toString(), obfuscatedString, Integer.valueOf(i), Integer.valueOf(i2));
        } else {
            zzb = zzfxt.zzb(new ObfuscatedString(new long[]{-2506203458381482429L, 2214398969114098199L, 9024005656972312391L, 4501782354635880927L, 1817876127122137343L}).toString(), obfuscatedString, Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException(zzb);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        throw new IndexOutOfBoundsException(zzk(i, i2, new ObfuscatedString(new long[]{1375508538013813479L, -1983492890593149914L}).toString()));
    }

    public static Object zzc(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static Object zzd(@CheckForNull Object obj, String str, @CheckForNull Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(zzfxt.zzb(str, obj2));
    }

    public static void zze(boolean z) {
        if (z) {
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static void zzf(boolean z, @CheckForNull Object obj) {
        if (z) {
        } else {
            throw new IllegalArgumentException((String) obj);
        }
    }

    public static void zzg(boolean z, String str, long j) {
        if (z) {
        } else {
            throw new IllegalArgumentException(zzfxt.zzb(str, Long.valueOf(j)));
        }
    }

    public static void zzh(int i, int i2, int i3) {
        String zzk;
        if (i >= 0 && i2 >= i && i2 <= i3) {
            return;
        }
        if (i >= 0 && i <= i3) {
            if (i2 >= 0 && i2 <= i3) {
                zzk = zzfxt.zzb(new ObfuscatedString(new long[]{103320232126171542L, -2283234135097353633L, 2483743493282352291L, -3815842401701001846L, -6489150804046624889L, 8373476478104441112L, 6131178400103236194L, -3170362800273830092L}).toString(), Integer.valueOf(i2), Integer.valueOf(i));
            } else {
                zzk = zzk(i2, i3, new ObfuscatedString(new long[]{6248454015945078874L, -978693422317670123L, 7742010959746805089L}).toString());
            }
        } else {
            zzk = zzk(i, i3, new ObfuscatedString(new long[]{-5982447540529237669L, 8845773296485976347L, 3223063160615316803L}).toString());
        }
        throw new IndexOutOfBoundsException(zzk);
    }

    public static void zzi(boolean z) {
        if (z) {
        } else {
            throw new IllegalStateException();
        }
    }

    public static void zzj(boolean z, @CheckForNull Object obj) {
        if (z) {
        } else {
            throw new IllegalStateException((String) obj);
        }
    }

    private static String zzk(int i, int i2, String str) {
        if (i < 0) {
            return zzfxt.zzb(new ObfuscatedString(new long[]{2620805238425247226L, 1385744100071232026L, 8006469119821240203L, 5779679329357114053L, -1603349233164024799L}).toString(), str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzfxt.zzb(new ObfuscatedString(new long[]{-4557906729960705347L, 6569445829442466198L, 6386269190169775250L, -8544271922976416140L, 2102931906317483159L, -7433024523936682184L, 159048564191568851L}).toString(), str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5048368523004337152L, 9144792911156250687L, 6770040831609241680L}), new StringBuilder(), i2));
    }
}
