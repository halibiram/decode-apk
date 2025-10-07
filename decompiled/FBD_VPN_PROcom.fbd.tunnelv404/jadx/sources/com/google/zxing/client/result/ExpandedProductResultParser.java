package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == '(') {
                if (findAIvalue(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:155:0x03de, code lost:
    
        if (r2.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-2664667398876265793L, 1204330703487829196L}).toString()) != false) goto L136;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x0412. Please report as an issue. */
    @Override // com.google.zxing.client.result.ResultParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ExpandedProductParsedResult parse(Result result) {
        char c;
        String obfuscatedString;
        String substring;
        ExpandedProductParsedResult expandedProductParsedResult = null;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = ResultParser.getMassagedText(result);
        HashMap hashMap = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        int i = 0;
        while (i < massagedText.length()) {
            String findAIvalue = findAIvalue(i, massagedText);
            if (findAIvalue == null) {
                return expandedProductParsedResult;
            }
            int length = findAIvalue.length() + 2 + i;
            String findValue = findValue(length, massagedText);
            int length2 = findValue.length() + length;
            int hashCode = findAIvalue.hashCode();
            String str14 = str10;
            if (hashCode == 1536) {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{1910599778869341974L, -3743265996976496253L}).toString())) {
                    c = 0;
                }
                c = 65535;
            } else if (hashCode == 1537) {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{4198873959332773649L, 7190976531792030045L}).toString())) {
                    c = 1;
                }
                c = 65535;
            } else if (hashCode == 1567) {
                c = 2;
            } else if (hashCode == 1568) {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{-3491903441753480072L, -3315700785342998375L}).toString())) {
                    c = 3;
                }
                c = 65535;
            } else if (hashCode == 1570) {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{6507526056350300684L, -4682121296137237137L}).toString())) {
                    c = 4;
                }
                c = 65535;
            } else if (hashCode == 1572) {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{5373204621893113030L, -8823904082140656348L}).toString())) {
                    c = 5;
                }
                c = 65535;
            } else if (hashCode != 1574) {
                switch (hashCode) {
                    case 1567966:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-5082927037022819682L, -1920618214518909349L}).toString())) {
                            c = 7;
                            break;
                        }
                        break;
                    case 1567967:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{1519362123084902980L, -3365700201258465555L}).toString())) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 1567968:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-4575716591735596789L, -729083518063008966L}).toString())) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1567969:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-8309049876944277855L, -3476882674758756511L}).toString())) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1567970:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{5724582203574022091L, 293443409193836540L}).toString())) {
                            c = 11;
                            break;
                        }
                        break;
                    case 1567971:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-678292365095967119L, 831380885199658052L}).toString())) {
                            c = '\f';
                            break;
                        }
                        break;
                    case 1567972:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{4902019282475625455L, -3435596270053629229L}).toString())) {
                            c = '\r';
                            break;
                        }
                        break;
                    case 1567973:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-5609114754025799776L, -8468800077638144280L}).toString())) {
                            c = 14;
                            break;
                        }
                        break;
                    case 1567974:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-8321416687897330473L, 4392451160882967950L}).toString())) {
                            c = 15;
                            break;
                        }
                        break;
                    case 1567975:
                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-6268982914784953067L, -5187717753992693531L}).toString())) {
                            c = 16;
                            break;
                        }
                        break;
                    default:
                        switch (hashCode) {
                            case 1568927:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-1648639215732909024L, 3908791155324361046L}).toString())) {
                                    c = 17;
                                    break;
                                }
                                break;
                            case 1568928:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-3140914854323516105L, -3571011766911893032L}).toString())) {
                                    c = 18;
                                    break;
                                }
                                break;
                            case 1568929:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{781873186469538409L, -4438927785933667827L}).toString())) {
                                    c = 19;
                                    break;
                                }
                                break;
                            case 1568930:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-5307521302096025462L, -4530554243660732773L}).toString())) {
                                    c = 20;
                                    break;
                                }
                                break;
                            case 1568931:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{5306538534824145627L, 5288518157690624608L}).toString())) {
                                    c = 21;
                                    break;
                                }
                                break;
                            case 1568932:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{6605899316985037804L, 870277385095653094L}).toString())) {
                                    c = 22;
                                    break;
                                }
                                break;
                            case 1568933:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{7884830368996365255L, 7593792023110493788L}).toString())) {
                                    c = 23;
                                    break;
                                }
                                break;
                            case 1568934:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{5576960686171445880L, 5649916225382396363L}).toString())) {
                                    c = 24;
                                    break;
                                }
                                break;
                            case 1568935:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-1178698597236708363L, -5376989772975619212L}).toString())) {
                                    c = 25;
                                    break;
                                }
                                break;
                            case 1568936:
                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-6219029422314447954L, 5103960876436762558L}).toString())) {
                                    c = 26;
                                    break;
                                }
                                break;
                            default:
                                switch (hashCode) {
                                    case 1575716:
                                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-1918981065160727061L, -3092294422434857623L}).toString())) {
                                            c = 27;
                                            break;
                                        }
                                        break;
                                    case 1575717:
                                        if (findAIvalue.equals(new ObfuscatedString(new long[]{-2629238141779515902L, -5598184768727079949L}).toString())) {
                                            c = 28;
                                            break;
                                        }
                                        break;
                                    case 1575718:
                                        if (findAIvalue.equals(new ObfuscatedString(new long[]{735715185447950114L, -2020078030898398432L}).toString())) {
                                            c = 29;
                                            break;
                                        }
                                        break;
                                    case 1575719:
                                        if (findAIvalue.equals(new ObfuscatedString(new long[]{3806846832850514546L, -2711381252270065431L}).toString())) {
                                            c = 30;
                                            break;
                                        }
                                        break;
                                    default:
                                        switch (hashCode) {
                                            case 1575747:
                                                if (findAIvalue.equals(new ObfuscatedString(new long[]{2841223796710808952L, -3084450166503893053L}).toString())) {
                                                    c = 31;
                                                    break;
                                                }
                                                break;
                                            case 1575748:
                                                if (findAIvalue.equals(new ObfuscatedString(new long[]{-8026474920920852920L, -635609522283151814L}).toString())) {
                                                    c = ' ';
                                                    break;
                                                }
                                                break;
                                            case 1575749:
                                                if (findAIvalue.equals(new ObfuscatedString(new long[]{6804860962274666546L, 3729179569839605087L}).toString())) {
                                                    c = '!';
                                                    break;
                                                }
                                                break;
                                            case 1575750:
                                                if (findAIvalue.equals(new ObfuscatedString(new long[]{5089865361531338962L, 6157602034075904395L}).toString())) {
                                                    c = Typography.quote;
                                                    break;
                                                }
                                                break;
                                        }
                                }
                        }
                }
                c = 65535;
            } else {
                if (findAIvalue.equals(new ObfuscatedString(new long[]{9040390377044861685L, 5983770990197432933L}).toString())) {
                    c = 6;
                }
                c = 65535;
            }
            switch (c) {
                case 0:
                    str2 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 1:
                    str = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 2:
                    str3 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 3:
                    str4 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 4:
                    str5 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 5:
                    str6 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 6:
                    str7 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                    obfuscatedString = new ObfuscatedString(new long[]{8048002570451993771L, -3649299881876093824L}).toString();
                    substring = findAIvalue.substring(3);
                    str9 = obfuscatedString;
                    str14 = substring;
                    str8 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    obfuscatedString = new ObfuscatedString(new long[]{9017690822900473364L, -6402178672143192802L}).toString();
                    substring = findAIvalue.substring(3);
                    str9 = obfuscatedString;
                    str14 = substring;
                    str8 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 27:
                case 28:
                case 29:
                case 30:
                    str12 = findAIvalue.substring(3);
                    str11 = findValue;
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                case 31:
                case ' ':
                case '!':
                case '\"':
                    if (findValue.length() < 4) {
                        return null;
                    }
                    str11 = findValue.substring(3);
                    str13 = findValue.substring(0, 3);
                    str12 = findAIvalue.substring(3);
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
                default:
                    hashMap.put(findAIvalue, findValue);
                    i = length2;
                    str10 = str14;
                    expandedProductParsedResult = null;
            }
        }
        return new ExpandedProductParsedResult(massagedText, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
    }
}
