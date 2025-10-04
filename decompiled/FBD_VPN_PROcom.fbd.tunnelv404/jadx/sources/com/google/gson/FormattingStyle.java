package com.google.gson;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes.dex */
public class FormattingStyle {
    public static final FormattingStyle COMPACT = new FormattingStyle(new ObfuscatedString(new long[]{635577873295261161L}).toString(), new ObfuscatedString(new long[]{8605786746910837109L}).toString(), false);
    public static final FormattingStyle PRETTY = new FormattingStyle(new ObfuscatedString(new long[]{-2444972257442035458L, -1096443622696004943L}).toString(), new ObfuscatedString(new long[]{5014402331175460086L, 6993357384023952272L}).toString(), true);
    private final String indent;
    private final String newline;
    private final boolean spaceAfterSeparators;

    private FormattingStyle(String str, String str2, boolean z) {
        Objects.requireNonNull(str, new ObfuscatedString(new long[]{-7728486421028407682L, -6847780549322252806L, 5925341200273372170L}).toString());
        Objects.requireNonNull(str2, new ObfuscatedString(new long[]{3492042786550598630L, 7615047702579392401L, -800333494934740181L}).toString());
        if (str.matches(new ObfuscatedString(new long[]{3487958977732530605L, 4652471977756327068L}).toString())) {
            if (str2.matches(new ObfuscatedString(new long[]{-4097786345118911353L, -5051879913641851427L}).toString())) {
                this.newline = str;
                this.indent = str2;
                this.spaceAfterSeparators = z;
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{4132491165346656217L, 3908454251175541503L, -1689085509330827126L, -7582926778379677316L, -913477973639453637L, -9054844445378931431L, -6496526878205538480L, 2685283717118498138L, -3815977808994057114L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{3074973080555927160L, -6289594845833528448L, 3310107643364222975L, -7505724195699754749L, -5017711893384078198L, -8236577870981304506L, 8771118694528223870L, -135676810729045045L}).toString());
    }

    public String getIndent() {
        return this.indent;
    }

    public String getNewline() {
        return this.newline;
    }

    public boolean usesSpaceAfterSeparators() {
        return this.spaceAfterSeparators;
    }

    public FormattingStyle withIndent(String str) {
        return new FormattingStyle(this.newline, str, this.spaceAfterSeparators);
    }

    public FormattingStyle withNewline(String str) {
        return new FormattingStyle(str, this.indent, this.spaceAfterSeparators);
    }

    public FormattingStyle withSpaceAfterSeparators(boolean z) {
        return new FormattingStyle(this.newline, this.indent, z);
    }
}
