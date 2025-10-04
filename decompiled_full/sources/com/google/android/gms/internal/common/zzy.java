package com.google.android.gms.internal.common;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import org.jspecify.nullness.NullMarked;

@NullMarked
/* loaded from: classes2.dex */
public final class zzy {
    public static String zza(@CheckForNull String str, @CheckForNull Object... objArr) {
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
                m3332x9d12c1f4 = new ObfuscatedString(new long[]{-6560099825573285788L, -1836188604570018106L}).toString();
            } else {
                try {
                    m3332x9d12c1f4 = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4485352422020280074L, 5073918744768733268L}), AbstractC0749x8313616e.m3341xc20437a5(name), Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger(new ObfuscatedString(new long[]{-6006655930673062468L, -7867039548991515161L, -4873334783179865479L, -8296183945159088406L, -7709160625118799044L}).toString()).logp(Level.WARNING, new ObfuscatedString(new long[]{-1912079065349967579L, -3397970272522531581L, 7005270828505511624L, 4664256892261573717L, -1548259526555877171L}).toString(), new ObfuscatedString(new long[]{8957049658013126570L, -872060644372387809L, 8764584730801742562L}).toString(), new ObfuscatedString(new long[]{6102150696192933014L, 4170866923077171919L, -6434947298446906861L, 3141975708290432938L, 204921775363377640L, -658499446809817894L}).toString().concat(m3336x1aebc6d9), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-7366933428751697487L, 835016450965357886L}).toString());
                    sb.append(m3336x1aebc6d9);
                    sb.append(new ObfuscatedString(new long[]{-5103224720673695459L, 3692071351034430152L}).toString());
                    sb.append(name2);
                    m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1314745049899532309L, 6434615916330394693L}), sb);
                }
            }
            objArr[i2] = m3332x9d12c1f4;
            i2++;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (length * 16));
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf(new ObfuscatedString(new long[]{-698661237365057967L, -6445180320647299124L}).toString(), i3)) == -1) {
                break;
            }
            sb2.append((CharSequence) str, i3, indexOf);
            sb2.append(objArr[i]);
            i++;
            i3 = indexOf + 2;
        }
        sb2.append((CharSequence) str, i3, str.length());
        if (i < length2) {
            sb2.append(new ObfuscatedString(new long[]{1172179788436592693L, 573016171514593113L}).toString());
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(new ObfuscatedString(new long[]{-8929873795686011350L, -2762726154876314708L}).toString());
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }
}
