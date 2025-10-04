package com.google.zxing.client.android;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.zxing.DecodeHintType;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class DecodeHintManager {
    private static final Pattern COMMA = Pattern.compile(new ObfuscatedString(new long[]{2801717972229944680L, 3832531505166955626L}).toString());
    private static final String TAG = "DecodeHintManager";

    private DecodeHintManager() {
    }

    public static Map<DecodeHintType, ?> parseDecodeHints(Uri uri) {
        String str;
        String encodedQuery = uri.getEncodedQuery();
        if (encodedQuery == null || encodedQuery.isEmpty()) {
            return null;
        }
        Map<String, String> splitQuery = splitQuery(encodedQuery);
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        for (DecodeHintType decodeHintType : DecodeHintType.values()) {
            if (decodeHintType != DecodeHintType.CHARACTER_SET && decodeHintType != DecodeHintType.NEED_RESULT_POINT_CALLBACK && decodeHintType != DecodeHintType.POSSIBLE_FORMATS && (str = splitQuery.get(decodeHintType.name())) != null) {
                if (decodeHintType.getValueType().equals(Object.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) str);
                } else if (decodeHintType.getValueType().equals(Void.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                } else if (decodeHintType.getValueType().equals(String.class)) {
                    enumMap.put((EnumMap) decodeHintType, (DecodeHintType) str);
                } else if (decodeHintType.getValueType().equals(Boolean.class)) {
                    if (str.isEmpty()) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    } else if (!new ObfuscatedString(new long[]{8084620335569802358L, 6727851834011215214L}).toString().equals(str) && !new ObfuscatedString(new long[]{8124569505862056493L, -8920152096085988263L}).toString().equalsIgnoreCase(str) && !new ObfuscatedString(new long[]{-5706708147764449579L, 3412926465072806905L}).toString().equalsIgnoreCase(str)) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    } else {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.FALSE);
                    }
                } else if (decodeHintType.getValueType().equals(int[].class)) {
                    if (!str.isEmpty() && str.charAt(str.length() - 1) == ',') {
                        str = str.substring(0, str.length() - 1);
                    }
                    String[] split = COMMA.split(str);
                    int[] iArr = new int[split.length];
                    for (int i = 0; i < split.length; i++) {
                        try {
                            iArr[i] = Integer.parseInt(split[i]);
                        } catch (NumberFormatException unused) {
                            new ObfuscatedString(new long[]{2835548817772333634L, -909738738537761384L, -3559821408966788434L, -4650735291334386192L, -911546320158657808L}).toString();
                            decodeHintType.toString();
                            new ObfuscatedString(new long[]{-4549781208326069585L, 2178253961456883412L, -3340825453532610870L, 4146003464126925140L, 5753150497845605310L}).toString();
                            String str2 = split[i];
                            iArr = null;
                        }
                    }
                    if (iArr != null) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) iArr);
                    }
                } else {
                    new ObfuscatedString(new long[]{8566879919406020793L, -6470251902674670565L, 970397655705496487L, 4617325315065060301L}).toString();
                    decodeHintType.toString();
                    new ObfuscatedString(new long[]{-6438565794177822557L, 6186437065279410351L, -2376920020923251453L}).toString();
                    Objects.toString(decodeHintType.getValueType());
                }
            }
        }
        new ObfuscatedString(new long[]{9066378065469226867L, 9075033725685509312L, 5758194326794207000L, -4659324848599320632L}).toString();
        enumMap.toString();
        return enumMap;
    }

    private static Map<String, String> splitQuery(String str) {
        String decode;
        String str2;
        HashMap hashMap = new HashMap();
        int i = 0;
        while (true) {
            if (i >= str.length()) {
                break;
            }
            if (str.charAt(i) == '&') {
                i++;
            } else {
                int indexOf = str.indexOf(38, i);
                int indexOf2 = str.indexOf(61, i);
                if (indexOf < 0) {
                    if (indexOf2 < 0) {
                        str2 = Uri.decode(str.substring(i).replace('+', ' '));
                        decode = new ObfuscatedString(new long[]{4954905299767573083L}).toString();
                    } else {
                        String decode2 = Uri.decode(str.substring(i, indexOf2).replace('+', ' '));
                        decode = Uri.decode(str.substring(indexOf2 + 1).replace('+', ' '));
                        str2 = decode2;
                    }
                    if (!hashMap.containsKey(str2)) {
                        hashMap.put(str2, decode);
                    }
                } else {
                    if (indexOf2 >= 0 && indexOf2 <= indexOf) {
                        String decode3 = Uri.decode(str.substring(i, indexOf2).replace('+', ' '));
                        String decode4 = Uri.decode(str.substring(indexOf2 + 1, indexOf).replace('+', ' '));
                        if (!hashMap.containsKey(decode3)) {
                            hashMap.put(decode3, decode4);
                        }
                    } else {
                        String decode5 = Uri.decode(str.substring(i, indexOf).replace('+', ' '));
                        if (!hashMap.containsKey(decode5)) {
                            hashMap.put(decode5, new ObfuscatedString(new long[]{-8502157181818657004L}).toString());
                        }
                    }
                    i = indexOf + 1;
                }
            }
        }
        return hashMap;
    }

    public static Map<DecodeHintType, Object> parseDecodeHints(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras == null || extras.isEmpty()) {
            return null;
        }
        EnumMap enumMap = new EnumMap(DecodeHintType.class);
        for (DecodeHintType decodeHintType : DecodeHintType.values()) {
            if (decodeHintType != DecodeHintType.CHARACTER_SET && decodeHintType != DecodeHintType.NEED_RESULT_POINT_CALLBACK && decodeHintType != DecodeHintType.POSSIBLE_FORMATS) {
                String name = decodeHintType.name();
                if (extras.containsKey(name)) {
                    if (decodeHintType.getValueType().equals(Void.class)) {
                        enumMap.put((EnumMap) decodeHintType, (DecodeHintType) Boolean.TRUE);
                    } else {
                        Object obj = extras.get(name);
                        if (decodeHintType.getValueType().isInstance(obj)) {
                            enumMap.put((EnumMap) decodeHintType, (DecodeHintType) obj);
                        } else {
                            new ObfuscatedString(new long[]{1895596400749806353L, 7193675671260461324L, -5687662908400022349L}).toString();
                            decodeHintType.toString();
                            new ObfuscatedString(new long[]{2811198186028450753L, -674794627212384732L, 5874692570967088624L, 1288696465192787126L, 4639238724988608593L, -375549980891053065L}).toString();
                            Objects.toString(obj);
                        }
                    }
                }
            }
        }
        new ObfuscatedString(new long[]{756400670967287157L, 3843028046830827590L, -4916200520627851074L, 1374919299698831472L}).toString();
        enumMap.toString();
        return enumMap;
    }
}
