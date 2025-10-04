package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzfxt {
    @CheckForNull
    public static String zza(@CheckForNull String str) {
        if (zzfxd.zza(str)) {
            return null;
        }
        return str;
    }

    public static String zzb(@CheckForNull String str, @CheckForNull Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String m3332x9d12c1f4;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = objArr.length;
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            if (obj == null) {
                m3332x9d12c1f4 = new ObfuscatedString(new long[]{8670849679588462570L, -3639789483966842832L}).toString();
            } else {
                try {
                    m3332x9d12c1f4 = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7929277687569951344L, 3100802829124811091L}), AbstractC0749x8313616e.m3341xc20437a5(name), Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger(new ObfuscatedString(new long[]{186283582258116851L, 12189594250560819L, 7604106912459302454L, 8596714741922550918L, -6169705723963419276L}).toString()).logp(Level.WARNING, new ObfuscatedString(new long[]{7288053743061308238L, -1268047365156769646L, -3054837839920887503L, 5998313206863657929L, -8704780091091130078L}).toString(), new ObfuscatedString(new long[]{2144352434875318216L, -5684691724846067153L, -2865856610742942955L}).toString(), new ObfuscatedString(new long[]{8071828131606277083L, 981055187355124610L, 7310627038122175599L, 8318496888994942380L, -4326800264135227495L, -5880574777974324041L}).toString().concat(m3336x1aebc6d9), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{7926620682210470517L, -5904204046857347581L}).toString());
                    sb.append(m3336x1aebc6d9);
                    sb.append(new ObfuscatedString(new long[]{5551939137996184556L, 4022000049644334827L}).toString());
                    sb.append(name2);
                    m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7438961797638314258L, -4650951686289626614L}), sb);
                }
            }
            objArr[i2] = m3332x9d12c1f4;
            i2++;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (length * 16));
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf(new ObfuscatedString(new long[]{-117204657529241113L, -12065403019464718L}).toString(), i3)) == -1) {
                break;
            }
            sb2.append((CharSequence) str, i3, indexOf);
            sb2.append(objArr[i]);
            i++;
            i3 = indexOf + 2;
        }
        sb2.append((CharSequence) str, i3, str.length());
        if (i < length2) {
            sb2.append(new ObfuscatedString(new long[]{-3840583532329919310L, 6481488290342141963L}).toString());
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(new ObfuscatedString(new long[]{5164695015148732556L, -8128508983999318291L}).toString());
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static String zzc(@CheckForNull String str) {
        return str == null ? new ObfuscatedString(new long[]{-7520211512102996075L}).toString() : str;
    }

    public static boolean zzd(@CheckForNull String str) {
        return zzfxd.zza(str);
    }
}
