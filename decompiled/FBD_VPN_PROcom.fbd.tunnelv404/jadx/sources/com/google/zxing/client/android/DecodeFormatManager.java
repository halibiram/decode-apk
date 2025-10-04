package com.google.zxing.client.android;

import android.content.Intent;
import com.google.zxing.BarcodeFormat;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class DecodeFormatManager {
    static final Set<BarcodeFormat> AZTEC_FORMATS;
    private static final Pattern COMMA_PATTERN = Pattern.compile(new ObfuscatedString(new long[]{-8172156642612672679L, 1426430833728543L}).toString());
    static final Set<BarcodeFormat> DATA_MATRIX_FORMATS;
    private static final Map<String, Set<BarcodeFormat>> FORMATS_FOR_MODE;
    static final Set<BarcodeFormat> INDUSTRIAL_FORMATS;
    private static final Set<BarcodeFormat> ONE_D_FORMATS;
    static final Set<BarcodeFormat> PDF417_FORMATS;
    static final Set<BarcodeFormat> PRODUCT_FORMATS;
    static final Set<BarcodeFormat> QR_CODE_FORMATS;

    static {
        EnumSet of = EnumSet.of(BarcodeFormat.QR_CODE);
        QR_CODE_FORMATS = of;
        EnumSet of2 = EnumSet.of(BarcodeFormat.DATA_MATRIX);
        DATA_MATRIX_FORMATS = of2;
        EnumSet of3 = EnumSet.of(BarcodeFormat.AZTEC);
        AZTEC_FORMATS = of3;
        EnumSet of4 = EnumSet.of(BarcodeFormat.PDF_417);
        PDF417_FORMATS = of4;
        EnumSet of5 = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14, BarcodeFormat.RSS_EXPANDED);
        PRODUCT_FORMATS = of5;
        EnumSet of6 = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
        INDUSTRIAL_FORMATS = of6;
        EnumSet copyOf = EnumSet.copyOf((Collection) of5);
        ONE_D_FORMATS = copyOf;
        copyOf.addAll(of6);
        HashMap hashMap = new HashMap();
        FORMATS_FOR_MODE = hashMap;
        hashMap.put(new ObfuscatedString(new long[]{-8841238830135849904L, -1562195518035563590L, 7235606280740353252L}).toString(), copyOf);
        hashMap.put(new ObfuscatedString(new long[]{5514761829475456267L, 8396453225451555287L, 7009445166358541186L}).toString(), of5);
        hashMap.put(new ObfuscatedString(new long[]{4770586861749252573L, 7717132767497540718L, -2583819905916096976L}).toString(), of);
        hashMap.put(new ObfuscatedString(new long[]{-1268286762194741786L, 3800225360674094247L, -8268168523850727404L}).toString(), of2);
        hashMap.put(new ObfuscatedString(new long[]{-6790620307185847083L, -1669224941576958212L, -7013420125885402473L}).toString(), of3);
        hashMap.put(new ObfuscatedString(new long[]{6882095845645337083L, -1287018763967095794L, -4649323649017019054L}).toString(), of4);
    }

    private DecodeFormatManager() {
    }

    public static Set<BarcodeFormat> parseDecodeFormats(Intent intent) {
        String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{-2980862790300981066L, -1678332270942222374L, -7731166291045079274L}).toString());
        return parseDecodeFormats(stringExtra != null ? Arrays.asList(COMMA_PATTERN.split(stringExtra)) : null, intent.getStringExtra(new ObfuscatedString(new long[]{-6272569009785418174L, 556056854883274906L, 6650677455998321152L}).toString()));
    }

    private static Set<BarcodeFormat> parseDecodeFormats(Iterable<String> iterable, String str) {
        if (iterable != null) {
            EnumSet noneOf = EnumSet.noneOf(BarcodeFormat.class);
            try {
                Iterator<String> it = iterable.iterator();
                while (it.hasNext()) {
                    noneOf.add(BarcodeFormat.valueOf(it.next()));
                }
                return noneOf;
            } catch (IllegalArgumentException unused) {
            }
        }
        if (str != null) {
            return FORMATS_FOR_MODE.get(str);
        }
        return null;
    }
}
