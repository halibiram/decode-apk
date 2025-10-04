package com.google.android.gms.internal.consent_sdk;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public final class zzcx {
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
                m3332x9d12c1f4 = new ObfuscatedString(new long[]{-8346288331418945445L, -176118071291258422L}).toString();
            } else {
                try {
                    m3332x9d12c1f4 = obj.toString();
                } catch (Exception e) {
                    String name = obj.getClass().getName();
                    String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-8268811059939188246L, -9212699943907326424L}), AbstractC0749x8313616e.m3341xc20437a5(name), Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger(new ObfuscatedString(new long[]{2619322535082216683L, 85902263822040842L, -6764257366025623193L, -8494998363126409949L, 1018380652523377360L}).toString()).logp(Level.WARNING, new ObfuscatedString(new long[]{5495484256164490913L, 8390181073069333821L, 865037173972429820L, 1803384377739298989L, 1468357260303515213L}).toString(), new ObfuscatedString(new long[]{-489600864220945195L, -8299409660986682652L, 7469593344935163066L}).toString(), new ObfuscatedString(new long[]{-2210075181910915590L, 7600167801990753739L, -9142869830353941443L, 3771906888211596827L, -2010580936475082709L, 7320692080742076369L}).toString().concat(m3336x1aebc6d9), (Throwable) e);
                    String name2 = e.getClass().getName();
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-6859829983338297351L, 790150126608176390L}).toString());
                    sb.append(m3336x1aebc6d9);
                    sb.append(new ObfuscatedString(new long[]{5785324770602527410L, -7442428826227507834L}).toString());
                    sb.append(name2);
                    m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2144845927965591226L, -2338218682248796810L}), sb);
                }
            }
            objArr[i2] = m3332x9d12c1f4;
            i2++;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + (length * 16));
        int i3 = 0;
        while (true) {
            length2 = objArr.length;
            if (i >= length2 || (indexOf = str.indexOf(new ObfuscatedString(new long[]{-4904076019101884149L, 1683455959885338129L}).toString(), i3)) == -1) {
                break;
            }
            sb2.append((CharSequence) str, i3, indexOf);
            sb2.append(objArr[i]);
            i++;
            i3 = indexOf + 2;
        }
        sb2.append((CharSequence) str, i3, str.length());
        if (i < length2) {
            sb2.append(new ObfuscatedString(new long[]{-4584812847103369587L, 5302096258451325613L}).toString());
            sb2.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb2.append(new ObfuscatedString(new long[]{1085376832653970339L, -796427229368202482L}).toString());
                sb2.append(objArr[i4]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }
}
