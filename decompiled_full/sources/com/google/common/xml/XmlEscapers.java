package com.google.common.xml;

import com.google.common.annotations.GwtCompatible;
import com.google.common.escape.Escaper;
import com.google.common.escape.Escapers;
import com.panda912.muddy.ObfuscatedString;
import kotlin.text.Typography;
import okio.Utf8;

@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public class XmlEscapers {
    private static final char MAX_ASCII_CONTROL_CHAR = 31;
    private static final char MIN_ASCII_CONTROL_CHAR = 0;
    private static final Escaper XML_ATTRIBUTE_ESCAPER;
    private static final Escaper XML_CONTENT_ESCAPER;
    private static final Escaper XML_ESCAPER;

    static {
        Escapers.Builder builder = Escapers.builder();
        builder.setSafeRange((char) 0, Utf8.REPLACEMENT_CHARACTER);
        builder.setUnsafeReplacement(new ObfuscatedString(new long[]{5128566354793048410L, -6756185429292586712L}).toString());
        for (char c = 0; c <= 31; c = (char) (c + 1)) {
            if (c != '\t' && c != '\n' && c != '\r') {
                builder.addEscape(c, new ObfuscatedString(new long[]{3289814999822338601L, 7632445797782137870L}).toString());
            }
        }
        builder.addEscape(Typography.amp, new ObfuscatedString(new long[]{4476108106589385825L, -163483732318557025L}).toString());
        builder.addEscape(Typography.less, new ObfuscatedString(new long[]{-1937804672065338736L, -2978052464144804461L}).toString());
        builder.addEscape(Typography.greater, new ObfuscatedString(new long[]{-876870750279216601L, 7048064335605578701L}).toString());
        XML_CONTENT_ESCAPER = builder.build();
        builder.addEscape('\'', new ObfuscatedString(new long[]{-2469001339762170148L, -823400536523223604L}).toString());
        builder.addEscape(Typography.quote, new ObfuscatedString(new long[]{-1101027448367446441L, 3986861765259825563L}).toString());
        XML_ESCAPER = builder.build();
        builder.addEscape('\t', new ObfuscatedString(new long[]{-8675508121825201197L, -9149906452392391045L}).toString());
        builder.addEscape('\n', new ObfuscatedString(new long[]{-3274411700489754083L, 1718755796440708233L}).toString());
        builder.addEscape('\r', new ObfuscatedString(new long[]{-5088886660152984215L, 6426918252091913516L}).toString());
        XML_ATTRIBUTE_ESCAPER = builder.build();
    }

    private XmlEscapers() {
    }

    public static Escaper xmlAttributeEscaper() {
        return XML_ATTRIBUTE_ESCAPER;
    }

    public static Escaper xmlContentEscaper() {
        return XML_CONTENT_ESCAPER;
    }
}
