package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Strings {
    private Strings() {
    }

    public static String commonPrefix(CharSequence charSequence, CharSequence charSequence2) {
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(charSequence2);
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < min && charSequence.charAt(i) == charSequence2.charAt(i)) {
            i++;
        }
        int i2 = i - 1;
        if (validSurrogatePairAt(charSequence, i2) || validSurrogatePairAt(charSequence2, i2)) {
            i--;
        }
        return charSequence.subSequence(0, i).toString();
    }

    public static String commonSuffix(CharSequence charSequence, CharSequence charSequence2) {
        Preconditions.checkNotNull(charSequence);
        Preconditions.checkNotNull(charSequence2);
        int min = Math.min(charSequence.length(), charSequence2.length());
        int i = 0;
        while (i < min && charSequence.charAt((charSequence.length() - i) - 1) == charSequence2.charAt((charSequence2.length() - i) - 1)) {
            i++;
        }
        if (validSurrogatePairAt(charSequence, (charSequence.length() - i) - 1) || validSurrogatePairAt(charSequence2, (charSequence2.length() - i) - 1)) {
            i--;
        }
        return charSequence.subSequence(charSequence.length() - i, charSequence.length()).toString();
    }

    @CheckForNull
    public static String emptyToNull(@CheckForNull String str) {
        return Platform.emptyToNull(str);
    }

    public static boolean isNullOrEmpty(@CheckForNull String str) {
        return Platform.stringIsNullOrEmpty(str);
    }

    public static String lenientFormat(@CheckForNull String str, @CheckForNull Object... objArr) {
        int indexOf;
        String valueOf = String.valueOf(str);
        int i = 0;
        if (objArr == null) {
            objArr = new Object[]{new ObfuscatedString(new long[]{-2687530404146419960L, 4171152683545294L, 2972447113663774446L}).toString()};
        } else {
            for (int i2 = 0; i2 < objArr.length; i2++) {
                objArr[i2] = lenientToString(objArr[i2]);
            }
        }
        StringBuilder sb = new StringBuilder((objArr.length * 16) + valueOf.length());
        int i3 = 0;
        while (i < objArr.length && (indexOf = valueOf.indexOf(new ObfuscatedString(new long[]{-3900043658084985282L, 529736529148312020L}).toString(), i3)) != -1) {
            sb.append((CharSequence) valueOf, i3, indexOf);
            sb.append(objArr[i]);
            i3 = indexOf + 2;
            i++;
        }
        sb.append((CharSequence) valueOf, i3, valueOf.length());
        if (i < objArr.length) {
            sb.append(new ObfuscatedString(new long[]{5392930829538961276L, -1376037208675575993L}).toString());
            sb.append(objArr[i]);
            for (int i4 = i + 1; i4 < objArr.length; i4++) {
                sb.append(new ObfuscatedString(new long[]{-4958204023903351199L, -3904041137993058631L}).toString());
                sb.append(objArr[i4]);
            }
            sb.append(']');
        }
        return sb.toString();
    }

    private static String lenientToString(@CheckForNull Object obj) {
        String str;
        if (obj == null) {
            return new ObfuscatedString(new long[]{-4334001834586241413L, 8630615593487332228L}).toString();
        }
        try {
            return obj.toString();
        } catch (Exception e) {
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(name.length() + 1, hexString));
            sb.append(name);
            sb.append('@');
            sb.append(hexString);
            String sb2 = sb.toString();
            Logger logger = Logger.getLogger(new ObfuscatedString(new long[]{-378939609990401327L, -7843993119354117205L, 5742488142074030178L, -4174820996248870425L, -3177643523778962004L}).toString());
            Level level = Level.WARNING;
            String obfuscatedString = new ObfuscatedString(new long[]{-6107650144632221302L, 2657014722186844652L, -1833958448418954782L, 1498165277235607618L, 2751000030441036769L, 8517862692993578866L}).toString();
            String valueOf = String.valueOf(sb2);
            if (valueOf.length() != 0) {
                str = obfuscatedString.concat(valueOf);
            } else {
                str = new String(obfuscatedString);
            }
            logger.log(level, str, (Throwable) e);
            String name2 = e.getClass().getName();
            StringBuilder sb3 = new StringBuilder(name2.length() + AbstractC1320xaf50c7e8.m4356x1378447b(9, sb2));
            sb3.append(new ObfuscatedString(new long[]{768079949296097398L, -1385907801687603680L}).toString());
            sb3.append(sb2);
            sb3.append(new ObfuscatedString(new long[]{5039188800375209642L, -2355454638610564157L}).toString());
            sb3.append(name2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1169296808710742687L, -3421838406951149300L}), sb3);
        }
    }

    public static String nullToEmpty(@CheckForNull String str) {
        return Platform.nullToEmpty(str);
    }

    public static String padEnd(String str, int i, char c) {
        Preconditions.checkNotNull(str);
        if (str.length() >= i) {
            return str;
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(i, str);
        for (int length = str.length(); length < i; length++) {
            m2938x1aebc6d9.append(c);
        }
        return m2938x1aebc6d9.toString();
    }

    public static String padStart(String str, int i, char c) {
        Preconditions.checkNotNull(str);
        if (str.length() >= i) {
            return str;
        }
        StringBuilder sb = new StringBuilder(i);
        for (int length = str.length(); length < i; length++) {
            sb.append(c);
        }
        sb.append(str);
        return sb.toString();
    }

    public static String repeat(String str, int i) {
        boolean z;
        Preconditions.checkNotNull(str);
        if (i <= 1) {
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-7476266890997609721L, 3902630562684005789L, 2923072111755684571L, 7895662711149796111L}).toString(), i);
            if (i == 0) {
                return new ObfuscatedString(new long[]{-6271222443785416238L}).toString();
            }
            return str;
        }
        int length = str.length();
        long j = length * i;
        int i2 = (int) j;
        if (i2 == j) {
            char[] cArr = new char[i2];
            str.getChars(0, length, cArr, 0);
            while (true) {
                int i3 = i2 - length;
                if (length < i3) {
                    System.arraycopy(cArr, 0, cArr, length, length);
                    length <<= 1;
                } else {
                    System.arraycopy(cArr, 0, cArr, length, i3);
                    return new String(cArr);
                }
            }
        } else {
            throw new ArrayIndexOutOfBoundsException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{-6618566877372494762L, 5112397746551775126L, 7868498837577431502L, 9221816937469665014L, -9144775287547506108L}), new StringBuilder(51), j));
        }
    }

    @VisibleForTesting
    public static boolean validSurrogatePairAt(CharSequence charSequence, int i) {
        if (i >= 0 && i <= charSequence.length() - 2 && Character.isHighSurrogate(charSequence.charAt(i)) && Character.isLowSurrogate(charSequence.charAt(i + 1))) {
            return true;
        }
        return false;
    }
}
