package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.MurmurHash3;
import com.panda912.muddy.ObfuscatedString;
import java.io.UnsupportedEncodingException;
import java.lang.Character;
import java.util.ArrayList;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzazv {
    public static int zza(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes(new ObfuscatedString(new long[]{-8069715243039164006L, 652938021547234614L}).toString());
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        return MurmurHash3.murmurhash3_x86_32(bytes, 0, bytes.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ee, code lost:
    
        if (true != r4) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f0, code lost:
    
        r5 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f1, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0100, code lost:
    
        if (true != r4) goto L65;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] zzb(@Nullable String str, boolean z) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] charArray = str.toCharArray();
        int i = 0;
        boolean z2 = false;
        int i2 = 0;
        while (i < str.length()) {
            int codePointAt = Character.codePointAt(charArray, i);
            int charCount = Character.charCount(codePointAt);
            if (Character.isLetter(codePointAt)) {
                Character.UnicodeBlock of = Character.UnicodeBlock.of(codePointAt);
                if (of.equals(Character.UnicodeBlock.BOPOMOFO) || of.equals(Character.UnicodeBlock.BOPOMOFO_EXTENDED) || of.equals(Character.UnicodeBlock.CJK_COMPATIBILITY) || of.equals(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS) || of.equals(Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT) || of.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS) || of.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A) || of.equals(Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B) || of.equals(Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS) || of.equals(Character.UnicodeBlock.HANGUL_JAMO) || of.equals(Character.UnicodeBlock.HANGUL_SYLLABLES) || of.equals(Character.UnicodeBlock.HIRAGANA) || of.equals(Character.UnicodeBlock.KATAKANA) || of.equals(Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS) || ((codePointAt >= 65382 && codePointAt <= 65437) || (codePointAt >= 65441 && codePointAt <= 65500))) {
                    if (z2) {
                        arrayList.add(new String(charArray, i2, i - i2));
                    }
                    arrayList.add(new String(charArray, i, charCount));
                    z2 = false;
                    i += charCount;
                }
            }
            if (!Character.isLetterOrDigit(codePointAt) && Character.getType(codePointAt) != 6 && Character.getType(codePointAt) != 8) {
                if (!z || Character.charCount(codePointAt) != 1 || Character.toChars(codePointAt)[0] != '\'') {
                    if (z2) {
                        arrayList.add(new String(charArray, i2, i - i2));
                    }
                    z2 = false;
                }
            }
            i += charCount;
        }
        if (z2) {
            arrayList.add(new String(charArray, i2, i - i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
