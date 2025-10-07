package com.google.gson.internal.bind.util;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarTimeZone;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public class ISO8601Utils {
    private static final String UTC_ID = new ObfuscatedString(new long[]{-4695854768049248914L, 5838327468595093841L}).toString();
    private static final TimeZone TIMEZONE_UTC = DesugarTimeZone.getTimeZone(new ObfuscatedString(new long[]{-275654927072513824L, -2797480235247874350L}).toString());

    private ISO8601Utils() {
    }

    private static boolean checkOffset(String str, int i, char c) {
        if (i < str.length() && str.charAt(i) == c) {
            return true;
        }
        return false;
    }

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt >= '0' && charAt <= '9') {
                i++;
            } else {
                return i;
            }
        }
        return str.length();
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00e8 A[Catch: IllegalArgumentException -> 0x0051, IndexOutOfBoundsException -> 0x0054, TryCatch #2 {IllegalArgumentException -> 0x0051, IndexOutOfBoundsException -> 0x0054, blocks: (B:3:0x000a, B:5:0x001c, B:6:0x001e, B:8:0x002a, B:9:0x002c, B:11:0x003a, B:13:0x0040, B:18:0x005d, B:20:0x006d, B:21:0x006f, B:23:0x007b, B:24:0x007f, B:26:0x0085, B:30:0x008f, B:35:0x00a2, B:37:0x00aa, B:42:0x00e2, B:44:0x00e8, B:46:0x00ee, B:47:0x0228, B:53:0x00fa, B:54:0x012e, B:55:0x012f, B:58:0x0158, B:60:0x0171, B:62:0x0189, B:64:0x01b4, B:69:0x01e3, B:70:0x021f, B:73:0x0224, B:74:0x013b, B:75:0x025a, B:76:0x026e, B:77:0x00c1, B:78:0x00c4), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x025a A[Catch: IllegalArgumentException -> 0x0051, IndexOutOfBoundsException -> 0x0054, TryCatch #2 {IllegalArgumentException -> 0x0051, IndexOutOfBoundsException -> 0x0054, blocks: (B:3:0x000a, B:5:0x001c, B:6:0x001e, B:8:0x002a, B:9:0x002c, B:11:0x003a, B:13:0x0040, B:18:0x005d, B:20:0x006d, B:21:0x006f, B:23:0x007b, B:24:0x007f, B:26:0x0085, B:30:0x008f, B:35:0x00a2, B:37:0x00aa, B:42:0x00e2, B:44:0x00e8, B:46:0x00ee, B:47:0x0228, B:53:0x00fa, B:54:0x012e, B:55:0x012f, B:58:0x0158, B:60:0x0171, B:62:0x0189, B:64:0x01b4, B:69:0x01e3, B:70:0x021f, B:73:0x0224, B:74:0x013b, B:75:0x025a, B:76:0x026e, B:77:0x00c1, B:78:0x00c4), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0273  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Date parse(String str, ParsePosition parsePosition) {
        String str2;
        String message;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        TimeZone timeZone;
        int i6;
        char charAt;
        try {
            int index = parsePosition.getIndex();
            int i7 = index + 4;
            int parseInt = parseInt(str, index, i7);
            if (checkOffset(str, i7, '-')) {
                i7 = index + 5;
            }
            int i8 = i7 + 2;
            int parseInt2 = parseInt(str, i7, i8);
            if (checkOffset(str, i8, '-')) {
                i8 = i7 + 3;
            }
            int i9 = i8 + 2;
            int parseInt3 = parseInt(str, i8, i9);
            boolean checkOffset = checkOffset(str, i9, 'T');
            if (!checkOffset && str.length() <= i9) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(parseInt, parseInt2 - 1, parseInt3);
                gregorianCalendar.setLenient(false);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (checkOffset) {
                int i10 = i8 + 5;
                int parseInt4 = parseInt(str, i8 + 3, i10);
                if (checkOffset(str, i10, ':')) {
                    i10 = i8 + 6;
                }
                int i11 = i10 + 2;
                int parseInt5 = parseInt(str, i10, i11);
                int i12 = checkOffset(str, i11, ':') ? i10 + 3 : i11;
                if (str.length() > i12 && (charAt = str.charAt(i12)) != 'Z' && charAt != '+' && charAt != '-') {
                    int i13 = i12 + 2;
                    int parseInt6 = parseInt(str, i12, i13);
                    int i14 = (parseInt6 <= 59 || parseInt6 >= 63) ? parseInt6 : 59;
                    if (checkOffset(str, i13, '.')) {
                        int i15 = i12 + 3;
                        int indexOfNonDigit = indexOfNonDigit(str, i12 + 4);
                        int min = Math.min(indexOfNonDigit, i12 + 6);
                        i4 = parseInt(str, i15, min);
                        int i16 = min - i15;
                        if (i16 == 1) {
                            i4 *= 100;
                        } else if (i16 == 2) {
                            i4 *= 10;
                        }
                        i = parseInt4;
                        i3 = i14;
                        i9 = indexOfNonDigit;
                        i2 = parseInt5;
                    } else {
                        i2 = parseInt5;
                        i3 = i14;
                        i4 = 0;
                        i9 = i13;
                        i = parseInt4;
                    }
                    if (str.length() <= i9) {
                        char charAt2 = str.charAt(i9);
                        if (charAt2 == 'Z') {
                            timeZone = TIMEZONE_UTC;
                            i6 = i9 + 1;
                        } else {
                            if (charAt2 != '+' && charAt2 != '-') {
                                throw new IndexOutOfBoundsException(new ObfuscatedString(new long[]{7926372251755258217L, 753328731267477894L, 2193363298517760566L, -6979285444765832921L, -5622914730424986923L}).toString() + charAt2 + new ObfuscatedString(new long[]{7910582601063277017L, 5201626453838457140L}).toString());
                            }
                            String substring = str.substring(i9);
                            if (substring.length() < 5) {
                                substring = substring + new ObfuscatedString(new long[]{-3665687877914991845L, 3797675973513689909L}).toString();
                            }
                            int length = i9 + substring.length();
                            if (!substring.equals(new ObfuscatedString(new long[]{2580518591992247483L, -4219875619504426286L}).toString()) && !substring.equals(new ObfuscatedString(new long[]{-1520460406393225768L, -544350145003746131L}).toString())) {
                                String str3 = new ObfuscatedString(new long[]{1310002002137553185L, -4351469234566809125L}).toString() + substring;
                                TimeZone timeZone2 = DesugarTimeZone.getTimeZone(str3);
                                String id = timeZone2.getID();
                                if (id.equals(str3)) {
                                    i5 = length;
                                } else {
                                    i5 = length;
                                    if (!id.replace(new ObfuscatedString(new long[]{4003290393910173971L, 2121695962728648444L}).toString(), new ObfuscatedString(new long[]{7781587322618470968L}).toString()).equals(str3)) {
                                        throw new IndexOutOfBoundsException(new ObfuscatedString(new long[]{-2671312988203773722L, 5289806834199903063L, 2629319392428358149L, -1837310753094627883L, 8623539968156845036L, 6412136088595883287L}).toString() + str3 + new ObfuscatedString(new long[]{6329393956063413992L, 1494877197996280005L, -3869714758842534187L, -2732579618062812260L}).toString() + timeZone2.getID());
                                    }
                                }
                                timeZone = timeZone2;
                            } else {
                                i5 = length;
                                timeZone = TIMEZONE_UTC;
                            }
                            i6 = i5;
                        }
                        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                        gregorianCalendar2.setLenient(false);
                        gregorianCalendar2.set(1, parseInt);
                        gregorianCalendar2.set(2, parseInt2 - 1);
                        gregorianCalendar2.set(5, parseInt3);
                        gregorianCalendar2.set(11, i);
                        gregorianCalendar2.set(12, i2);
                        gregorianCalendar2.set(13, i3);
                        gregorianCalendar2.set(14, i4);
                        parsePosition.setIndex(i6);
                        return gregorianCalendar2.getTime();
                    }
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8209620335524549609L, 4349952520502025617L, 5747661477326301827L, 7385349844168631351L}).toString());
                }
                i = parseInt4;
                i9 = i12;
                i2 = parseInt5;
            } else {
                i = 0;
                i2 = 0;
            }
            i3 = 0;
            i4 = 0;
            if (str.length() <= i9) {
            }
        } catch (IllegalArgumentException e) {
            e = e;
            if (str != null) {
                str2 = null;
            } else {
                str2 = "\"" + str + Typography.quote;
            }
            message = e.getMessage();
            if (message != null || message.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{6793909526305442244L, 2157283159421635500L}).toString());
                sb.append(e.getClass().getName());
                message = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6924206275840337297L, -2186921181139229884L}), sb);
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new ObfuscatedString(new long[]{5146427319144125681L, -4603563590520204728L, 4649823760229379420L, -6800274924421029286L}).toString());
            sb2.append(str2);
            ParseException parseException = new ParseException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5659950711177104938L, 7218895017621485354L}), sb2, message), parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
            if (str != null) {
            }
            message = e.getMessage();
            if (message != null) {
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{6793909526305442244L, 2157283159421635500L}).toString());
            sb3.append(e.getClass().getName());
            message = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6924206275840337297L, -2186921181139229884L}), sb3);
            StringBuilder sb22 = new StringBuilder();
            sb22.append(new ObfuscatedString(new long[]{5146427319144125681L, -4603563590520204728L, 4649823760229379420L, -6800274924421029286L}).toString());
            sb22.append(str2);
            ParseException parseException2 = new ParseException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5659950711177104938L, 7218895017621485354L}), sb22, message), parsePosition.getIndex());
            parseException2.initCause(e);
            throw parseException2;
        }
    }

    private static int parseInt(String str, int i, int i2) {
        int i3;
        int i4;
        if (i >= 0 && i2 <= str.length() && i <= i2) {
            if (i < i2) {
                i4 = i + 1;
                int digit = Character.digit(str.charAt(i), 10);
                if (digit >= 0) {
                    i3 = -digit;
                } else {
                    throw new NumberFormatException(new ObfuscatedString(new long[]{-4555739151836077910L, 1966945245434731307L, -8864443627535761541L}).toString() + str.substring(i, i2));
                }
            } else {
                i3 = 0;
                i4 = i;
            }
            while (i4 < i2) {
                int i5 = i4 + 1;
                int digit2 = Character.digit(str.charAt(i4), 10);
                if (digit2 >= 0) {
                    i3 = (i3 * 10) - digit2;
                    i4 = i5;
                } else {
                    throw new NumberFormatException(new ObfuscatedString(new long[]{-6234978168396713011L, -3940660503266774775L, -6150091430772925941L}).toString() + str.substring(i, i2));
                }
            }
            return -i3;
        }
        throw new NumberFormatException(str);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-108948539918093099L, 6236467371026932506L, -8671646137341516246L, 653321731813929592L}).toString().length() + (z ? new ObfuscatedString(new long[]{2000914694528976271L, 3909578505099328219L}).toString().length() : 0) + (timeZone.getRawOffset() == 0 ? new ObfuscatedString(new long[]{-4980764274164515804L, -2255990536576304490L}) : new ObfuscatedString(new long[]{-8694539442994019111L, 8421776035391646578L})).toString().length());
        padInt(sb, gregorianCalendar.get(1), new ObfuscatedString(new long[]{7205300874675561610L, -3299200145287626994L}).toString().length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, new ObfuscatedString(new long[]{5624808664138580825L, -618649070000777635L}).toString().length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), new ObfuscatedString(new long[]{2932279256151975270L, -1156226509556855047L}).toString().length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), new ObfuscatedString(new long[]{2045530228509983678L, 1160871142812118321L}).toString().length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), new ObfuscatedString(new long[]{-7133328963323559988L, 1978359363335013094L}).toString().length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), new ObfuscatedString(new long[]{271116116059530419L, -4129232929586506906L}).toString().length());
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), new ObfuscatedString(new long[]{-6061186798048568829L, 1398919281698887271L}).toString().length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            int abs2 = Math.abs(i % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, abs, new ObfuscatedString(new long[]{9043784776791137389L, -1439497584635453697L}).toString().length());
            sb.append(':');
            padInt(sb, abs2, new ObfuscatedString(new long[]{-2796883413408683665L, 121993809471592848L}).toString().length());
        } else {
            sb.append('Z');
        }
        return sb.toString();
    }
}
