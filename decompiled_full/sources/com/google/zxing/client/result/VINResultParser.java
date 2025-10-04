package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class VINResultParser extends ResultParser {
    private static final Pattern IOQ = Pattern.compile(new ObfuscatedString(new long[]{7498061856307136898L, -3239577924923402520L}).toString());
    private static final Pattern AZ09 = Pattern.compile(new ObfuscatedString(new long[]{6519180855445645721L, -6494791067956996998L, 8525666587377165201L}).toString());

    private static char checkChar(int i) {
        if (i < 10) {
            return (char) (i + 48);
        }
        if (i == 10) {
            return 'X';
        }
        throw new IllegalArgumentException();
    }

    private static boolean checkChecksum(CharSequence charSequence) {
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            int i3 = i + 1;
            i2 += vinPositionWeight(i3) * vinCharValue(charSequence.charAt(i));
            i = i3;
        }
        if (charSequence.charAt(8) != checkChar(i2 % 11)) {
            return false;
        }
        return true;
    }

    private static String countryCode(CharSequence charSequence) {
        char charAt = charSequence.charAt(0);
        char charAt2 = charSequence.charAt(1);
        if (charAt != '9') {
            if (charAt != 'S') {
                if (charAt != 'Z') {
                    switch (charAt) {
                        case '1':
                        case '4':
                        case '5':
                            return new ObfuscatedString(new long[]{-297042838090495308L, -6058058552292897693L}).toString();
                        case '2':
                            return new ObfuscatedString(new long[]{-8799808932844697237L, 3783630347677905827L}).toString();
                        case '3':
                            if (charAt2 >= 'A' && charAt2 <= 'W') {
                                return new ObfuscatedString(new long[]{-5139196896609349088L, -6880624831104332560L}).toString();
                            }
                            return null;
                        default:
                            switch (charAt) {
                                case 'J':
                                    if (charAt2 >= 'A' && charAt2 <= 'T') {
                                        return new ObfuscatedString(new long[]{-1068362808766913448L, -5801464424918447222L}).toString();
                                    }
                                    return null;
                                case 'K':
                                    if (charAt2 >= 'L' && charAt2 <= 'R') {
                                        return new ObfuscatedString(new long[]{4015530093346673153L, 5507184055047931551L}).toString();
                                    }
                                    return null;
                                case 'L':
                                    return new ObfuscatedString(new long[]{-3026720451398672491L, 7379832233882748670L}).toString();
                                case 'M':
                                    if (charAt2 >= 'A' && charAt2 <= 'E') {
                                        return new ObfuscatedString(new long[]{-2905071916059227213L, 8244231502436000885L}).toString();
                                    }
                                    return null;
                                default:
                                    switch (charAt) {
                                        case 'V':
                                            if (charAt2 >= 'F' && charAt2 <= 'R') {
                                                return new ObfuscatedString(new long[]{7294360894615216651L, 1184649156374316384L}).toString();
                                            }
                                            if (charAt2 >= 'S' && charAt2 <= 'W') {
                                                return new ObfuscatedString(new long[]{6680278665590003714L, 7130213841865770114L}).toString();
                                            }
                                            return null;
                                        case 'W':
                                            return new ObfuscatedString(new long[]{2849329320756024613L, -8138532107217157119L}).toString();
                                        case 'X':
                                            if (charAt2 == '0' || (charAt2 >= '3' && charAt2 <= '9')) {
                                                return new ObfuscatedString(new long[]{295035491318622832L, -9034746623161923609L}).toString();
                                            }
                                            return null;
                                        default:
                                            return null;
                                    }
                            }
                    }
                }
                if (charAt2 >= 'A' && charAt2 <= 'R') {
                    return new ObfuscatedString(new long[]{-2006636966922989930L, -9179554988653739875L}).toString();
                }
                return null;
            }
            if (charAt2 >= 'A' && charAt2 <= 'M') {
                return new ObfuscatedString(new long[]{2657156490546633571L, -5235462281336994055L}).toString();
            }
            if (charAt2 >= 'N' && charAt2 <= 'T') {
                return new ObfuscatedString(new long[]{2372015302384078916L, 6441608110908511949L}).toString();
            }
            return null;
        }
        if ((charAt2 >= 'A' && charAt2 <= 'E') || (charAt2 >= '3' && charAt2 <= '9')) {
            return new ObfuscatedString(new long[]{-903437092814119938L, 970384367142206818L}).toString();
        }
        return null;
    }

    private static int modelYear(char c) {
        if (c >= 'E' && c <= 'H') {
            return c + 1915;
        }
        if (c >= 'J' && c <= 'N') {
            return c + 1914;
        }
        if (c == 'P') {
            return 1993;
        }
        if (c >= 'R' && c <= 'T') {
            return c + 1912;
        }
        if (c >= 'V' && c <= 'Y') {
            return c + 1911;
        }
        if (c >= '1' && c <= '9') {
            return c + 1952;
        }
        if (c >= 'A' && c <= 'D') {
            return c + 1945;
        }
        throw new IllegalArgumentException();
    }

    private static int vinCharValue(char c) {
        if (c >= 'A' && c <= 'I') {
            return c - '@';
        }
        if (c >= 'J' && c <= 'R') {
            return c - 'I';
        }
        if (c >= 'S' && c <= 'Z') {
            return c - 'Q';
        }
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        throw new IllegalArgumentException();
    }

    private static int vinPositionWeight(int i) {
        if (i >= 1 && i <= 7) {
            return 9 - i;
        }
        if (i == 8) {
            return 10;
        }
        if (i == 9) {
            return 0;
        }
        if (i >= 10 && i <= 17) {
            return 19 - i;
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.zxing.client.result.ResultParser
    public VINParsedResult parse(Result result) {
        if (result.getBarcodeFormat() != BarcodeFormat.CODE_39) {
            return null;
        }
        String trim = IOQ.matcher(result.getText()).replaceAll(new ObfuscatedString(new long[]{-8596145999556037084L}).toString()).trim();
        if (!AZ09.matcher(trim).matches()) {
            return null;
        }
        try {
            if (!checkChecksum(trim)) {
                return null;
            }
            String substring = trim.substring(0, 3);
            return new VINParsedResult(trim, substring, trim.substring(3, 9), trim.substring(9, 17), countryCode(substring), trim.substring(3, 8), modelYear(trim.charAt(9)), trim.charAt(10), trim.substring(11));
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
