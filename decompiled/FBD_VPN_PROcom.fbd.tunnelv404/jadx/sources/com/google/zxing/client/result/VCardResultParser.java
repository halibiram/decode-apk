package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile(new ObfuscatedString(new long[]{2672195567486752465L, -4773152710886042806L, -2579994642427868571L}).toString(), 2);
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile(new ObfuscatedString(new long[]{-1676552440809499388L, -3628113884284825483L, 504015572498225700L, -6801051066594847974L}).toString());
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile(new ObfuscatedString(new long[]{-1541478726029165181L, -9222719468043748826L}).toString());
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile(new ObfuscatedString(new long[]{7872140002288654831L, -7889383006597676055L}).toString());
    private static final Pattern VCARD_ESCAPES = Pattern.compile(new ObfuscatedString(new long[]{8374585366927084068L, 7342797405386736828L, -1064998597927981897L}).toString());
    private static final Pattern EQUALS = Pattern.compile(new ObfuscatedString(new long[]{364222834376921108L, -4258281811439950183L}).toString());
    private static final Pattern SEMICOLON = Pattern.compile(new ObfuscatedString(new long[]{-6582270494510565487L, 4549116094688608747L}).toString());
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile(new ObfuscatedString(new long[]{-5875051546664186497L, -1887803481428588854L, 1590875944763310852L}).toString());
    private static final Pattern COMMA = Pattern.compile(new ObfuscatedString(new long[]{4591483985489274754L, 3516569651196452807L}).toString());
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile(new ObfuscatedString(new long[]{-9150705682908459008L, 2020102307017685868L}).toString());

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        char charAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char charAt2 = charSequence.charAt(i);
            if (charAt2 != '\n' && charAt2 != '\r') {
                if (charAt2 != '=') {
                    maybeAppendFragment(byteArrayOutputStream, str, sb);
                    sb.append(charAt2);
                } else if (i < length - 2 && (charAt = charSequence.charAt(i + 1)) != '\r' && charAt != '\n') {
                    i += 2;
                    char charAt3 = charSequence.charAt(i);
                    int parseHexDigit = ResultParser.parseHexDigit(charAt);
                    int parseHexDigit2 = ResultParser.parseHexDigit(charAt3);
                    if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                        byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                    }
                }
            }
            i++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        int indexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (indexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        if (charSequence != null && !VCARD_LIKE_DATE.matcher(charSequence).matches()) {
            return false;
        }
        return true;
    }

    public static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z, z2);
        if (matchVCardPrefixedField != null && !matchVCardPrefixedField.isEmpty()) {
            return matchVCardPrefixedField.get(0);
        }
        return null;
    }

    public static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        int i;
        String str2;
        ArrayList arrayList;
        boolean z3;
        String str3;
        int indexOf;
        int i2;
        int i3;
        String replaceAll;
        int i4;
        int i5 = 3;
        int i6 = 1;
        int i7 = 2;
        int length = str.length();
        int i8 = 0;
        int i9 = 0;
        ArrayList arrayList2 = null;
        while (i9 < length) {
            StringBuilder sb = new StringBuilder();
            long[] jArr = new long[i7];
            // fill-array-data instruction
            jArr[0] = 7973489084048922307L;
            jArr[1] = 7417530399763485068L;
            sb.append(new ObfuscatedString(jArr).toString());
            sb.append((Object) charSequence);
            long[] jArr2 = new long[i5];
            // fill-array-data instruction
            jArr2[0] = 7079213922422097543L;
            jArr2[1] = -3336721448689061265L;
            jArr2[2] = 5860467719418169483L;
            sb.append(new ObfuscatedString(jArr2).toString());
            Matcher matcher = Pattern.compile(sb.toString(), i7).matcher(str);
            if (i9 > 0) {
                i9--;
            }
            if (!matcher.find(i9)) {
                break;
            }
            int end = matcher.end(i8);
            String group = matcher.group(i6);
            if (group != null) {
                String[] split = SEMICOLON.split(group);
                int length2 = split.length;
                int i10 = 0;
                arrayList = null;
                z3 = false;
                str3 = null;
                String str4 = null;
                while (i10 < length2) {
                    String str5 = split[i10];
                    if (arrayList == null) {
                        arrayList = new ArrayList(i6);
                    }
                    arrayList.add(str5);
                    String[] split2 = EQUALS.split(str5, i7);
                    if (split2.length > i6) {
                        String str6 = split2[i8];
                        String str7 = split2[i6];
                        long[] jArr3 = new long[i7];
                        // fill-array-data instruction
                        jArr3[0] = 7016926453627993997L;
                        jArr3[1] = -2038041411963606521L;
                        if (new ObfuscatedString(jArr3).toString().equalsIgnoreCase(str6) && new ObfuscatedString(new long[]{-2434687948692052138L, 2086855291764304263L, -6620973157645775667L}).toString().equalsIgnoreCase(str7)) {
                            i4 = 1;
                            z3 = true;
                            i10 += i4;
                            i6 = 1;
                            i7 = 2;
                            i8 = 0;
                        }
                        if (new ObfuscatedString(new long[]{-2632140371400311287L, 4442254482215405997L}).toString().equalsIgnoreCase(str6)) {
                            str3 = str7;
                        } else if (new ObfuscatedString(new long[]{526383381332844207L, 4830478540732512046L}).toString().equalsIgnoreCase(str6)) {
                            str4 = str7;
                        }
                    }
                    i4 = 1;
                    i10 += i4;
                    i6 = 1;
                    i7 = 2;
                    i8 = 0;
                }
                i = 1;
                str2 = str4;
            } else {
                i = 1;
                str2 = null;
                arrayList = null;
                z3 = false;
                str3 = null;
            }
            int i11 = end;
            while (true) {
                indexOf = str.indexOf(10, i11);
                if (indexOf >= 0) {
                    if (indexOf < str.length() - i) {
                        int i12 = indexOf + 1;
                        if (str.charAt(i12) == ' ' || str.charAt(i12) == '\t') {
                            i11 = indexOf + 2;
                            i = 1;
                        }
                    }
                    if (!z3) {
                        break;
                    }
                    i2 = 1;
                    if ((indexOf < 1 || str.charAt(indexOf - 1) != '=') && (indexOf < 2 || str.charAt(indexOf - 2) != '=')) {
                        break;
                    }
                    i11 = indexOf + 1;
                    i = 1;
                } else {
                    break;
                }
            }
            i2 = 1;
            if (indexOf < 0) {
                i9 = length;
            } else {
                if (indexOf > end) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(i2);
                    }
                    if (indexOf >= i2 && str.charAt(indexOf - 1) == '\r') {
                        indexOf--;
                    }
                    String substring = str.substring(end, indexOf);
                    if (z) {
                        substring = substring.trim();
                    }
                    if (z3) {
                        replaceAll = decodeQuotedPrintable(substring, str3);
                        if (z2) {
                            replaceAll = UNESCAPED_SEMICOLONS.matcher(replaceAll).replaceAll(new ObfuscatedString(new long[]{-7096356890787517434L, -8394034784156260050L}).toString()).trim();
                        }
                        i3 = 2;
                    } else {
                        if (z2) {
                            substring = UNESCAPED_SEMICOLONS.matcher(substring).replaceAll(new ObfuscatedString(new long[]{-19983953399764252L, 3501791872490957427L}).toString()).trim();
                        }
                        i3 = 2;
                        replaceAll = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(substring).replaceAll(new ObfuscatedString(new long[]{7599602622678700351L}).toString())).replaceAll(new ObfuscatedString(new long[]{7492087132173960805L, 5990295954288659445L}).toString())).replaceAll(new ObfuscatedString(new long[]{-5779817411853552626L, -4303607942561928210L}).toString());
                    }
                    long[] jArr4 = new long[i3];
                    // fill-array-data instruction
                    jArr4[0] = 4880852167748209197L;
                    jArr4[1] = 9069713803738622116L;
                    if (new ObfuscatedString(jArr4).toString().equals(str2)) {
                        try {
                            replaceAll = URI.create(replaceAll).getSchemeSpecificPart();
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                    if (arrayList == null) {
                        i2 = 1;
                        ArrayList arrayList3 = new ArrayList(1);
                        arrayList3.add(replaceAll);
                        arrayList2.add(arrayList3);
                    } else {
                        i2 = 1;
                        arrayList.add(0, replaceAll);
                        arrayList2.add(arrayList);
                    }
                }
                i9 = indexOf + i2;
            }
            i5 = 3;
            i6 = 1;
            i7 = 2;
            i8 = 0;
        }
        return arrayList2;
    }

    private static void maybeAppendComponent(String[] strArr, int i, StringBuilder sb) {
        String str = strArr[i];
        if (str != null && !str.isEmpty()) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(strArr[i]);
        }
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String toPrimaryValue(List<String> list) {
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection != null && !collection.isEmpty()) {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<List<String>> it = collection.iterator();
            while (it.hasNext()) {
                String str = it.next().get(0);
                if (str != null && !str.isEmpty()) {
                    arrayList.add(str);
                }
            }
            return (String[]) arrayList.toArray(ResultParser.EMPTY_STR_ARRAY);
        }
        return null;
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str2 = list.get(0);
            if (str2 != null && !str2.isEmpty()) {
                int i = 1;
                while (true) {
                    if (i < list.size()) {
                        str = list.get(i);
                        int indexOf = str.indexOf(61);
                        if (indexOf < 0) {
                            break;
                        }
                        if (new ObfuscatedString(new long[]{-7238042339981556431L, 5567119973595902673L}).toString().equalsIgnoreCase(str.substring(0, indexOf))) {
                            str = str.substring(indexOf + 1);
                            break;
                        }
                        i++;
                    } else {
                        str = null;
                        break;
                    }
                }
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(ResultParser.EMPTY_STR_ARRAY);
    }

    @Override // com.google.zxing.client.result.ResultParser
    public AddressBookParsedResult parse(Result result) {
        String massagedText = ResultParser.getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> matchVCardPrefixedField = matchVCardPrefixedField(new ObfuscatedString(new long[]{-7570435478215102834L, 7577223269313080893L}).toString(), massagedText, true, false);
        if (matchVCardPrefixedField == null) {
            matchVCardPrefixedField = matchVCardPrefixedField(new ObfuscatedString(new long[]{4545464409736533240L, -4211489055254355752L}).toString(), massagedText, true, false);
            formatNames(matchVCardPrefixedField);
        }
        List<String> matchSingleVCardPrefixedField = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-8063167230967063964L, 8611031336571478484L}).toString(), massagedText, true, false);
        String[] split = matchSingleVCardPrefixedField == null ? null : COMMA.split(matchSingleVCardPrefixedField.get(0));
        List<List<String>> matchVCardPrefixedField2 = matchVCardPrefixedField(new ObfuscatedString(new long[]{-5081913615748338465L, 6893585234475424346L}).toString(), massagedText, true, false);
        List<List<String>> matchVCardPrefixedField3 = matchVCardPrefixedField(new ObfuscatedString(new long[]{7807133386262221846L, -8537400033685169980L}).toString(), massagedText, true, false);
        List<String> matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-3395903483514399120L, -4319133762099098948L}).toString(), massagedText, false, false);
        List<List<String>> matchVCardPrefixedField4 = matchVCardPrefixedField(new ObfuscatedString(new long[]{259589976839211551L, -5548212825408587639L}).toString(), massagedText, true, true);
        List<String> matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-6566247556614708524L, -82413802534320662L}).toString(), massagedText, true, true);
        List<String> matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-2954025303699590915L, 6131013490253076035L}).toString(), massagedText, true, false);
        List<String> list = (matchSingleVCardPrefixedField4 == null || isLikeVCardDate(matchSingleVCardPrefixedField4.get(0))) ? matchSingleVCardPrefixedField4 : null;
        List<String> matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-814130414067227318L, -1502475643814613919L}).toString(), massagedText, true, false);
        List<List<String>> matchVCardPrefixedField5 = matchVCardPrefixedField(new ObfuscatedString(new long[]{-461314166668253240L, -7353180420293390082L}).toString(), massagedText, true, false);
        List<String> matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{8174304652102614503L, 1782131967699749948L}).toString(), massagedText, true, false);
        List<String> matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField(new ObfuscatedString(new long[]{-5816534383643654665L, 893223902491444097L}).toString(), massagedText, true, false);
        String[] split2 = matchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split(matchSingleVCardPrefixedField7.get(0));
        return new AddressBookParsedResult(toPrimaryValues(matchVCardPrefixedField), split, null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField6), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField3), toPrimaryValue(list), toPrimaryValue(matchSingleVCardPrefixedField5), toPrimaryValues(matchVCardPrefixedField5), (split2 == null || split2.length == 2) ? split2 : null);
    }
}
