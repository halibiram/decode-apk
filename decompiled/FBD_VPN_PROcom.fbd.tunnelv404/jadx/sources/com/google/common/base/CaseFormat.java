package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public enum CaseFormat {
    LOWER_HYPHEN(CharMatcher.is('-'), new ObfuscatedString(new long[]{4143956755797730006L, -8046033082343387877L}).toString()) { // from class: com.google.common.base.CaseFormat.1
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return str.replace('-', '_');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str.replace('-', '_'));
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return Ascii.toLowerCase(str);
        }
    },
    LOWER_UNDERSCORE(CharMatcher.is('_'), new ObfuscatedString(new long[]{3028385298966999623L, -8167529242121902970L}).toString()) { // from class: com.google.common.base.CaseFormat.2
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return str.replace('_', '-');
            }
            if (caseFormat == CaseFormat.UPPER_UNDERSCORE) {
                return Ascii.toUpperCase(str);
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return Ascii.toLowerCase(str);
        }
    },
    LOWER_CAMEL(CharMatcher.inRange('A', 'Z'), new ObfuscatedString(new long[]{-65990542568873937L}).toString()) { // from class: com.google.common.base.CaseFormat.3
        @Override // com.google.common.base.CaseFormat
        public String normalizeFirstWord(String str) {
            return Ascii.toLowerCase(str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    },
    UPPER_CAMEL(CharMatcher.inRange('A', 'Z'), new ObfuscatedString(new long[]{3826055782269405653L}).toString()) { // from class: com.google.common.base.CaseFormat.4
        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return CaseFormat.firstCharOnlyToUpper(str);
        }
    },
    UPPER_UNDERSCORE(CharMatcher.is('_'), new ObfuscatedString(new long[]{-7871676660990051560L, 296342356625260562L}).toString()) { // from class: com.google.common.base.CaseFormat.5
        @Override // com.google.common.base.CaseFormat
        public String convert(CaseFormat caseFormat, String str) {
            if (caseFormat == CaseFormat.LOWER_HYPHEN) {
                return Ascii.toLowerCase(str.replace('_', '-'));
            }
            if (caseFormat == CaseFormat.LOWER_UNDERSCORE) {
                return Ascii.toLowerCase(str);
            }
            return super.convert(caseFormat, str);
        }

        @Override // com.google.common.base.CaseFormat
        public String normalizeWord(String str) {
            return Ascii.toUpperCase(str);
        }
    };

    private final CharMatcher wordBoundary;
    private final String wordSeparator;

    /* loaded from: classes2.dex */
    public static final class StringConverter extends Converter<String, String> implements Serializable {
        private static final long serialVersionUID = 0;
        private final CaseFormat sourceFormat;
        private final CaseFormat targetFormat;

        public StringConverter(CaseFormat caseFormat, CaseFormat caseFormat2) {
            this.sourceFormat = (CaseFormat) Preconditions.checkNotNull(caseFormat);
            this.targetFormat = (CaseFormat) Preconditions.checkNotNull(caseFormat2);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof StringConverter)) {
                return false;
            }
            StringConverter stringConverter = (StringConverter) obj;
            if (!this.sourceFormat.equals(stringConverter.sourceFormat) || !this.targetFormat.equals(stringConverter.targetFormat)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.sourceFormat.hashCode() ^ this.targetFormat.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.sourceFormat);
            String valueOf2 = String.valueOf(this.targetFormat);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 14, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{3578412497776288942L, -4807226989916908963L, 4813399590094050307L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6153156983524700087L, -167289020442370871L}), m2938x1aebc6d9);
        }

        @Override // com.google.common.base.Converter
        public String doBackward(String str) {
            return this.targetFormat.to(this.sourceFormat, str);
        }

        @Override // com.google.common.base.Converter
        public String doForward(String str) {
            return this.sourceFormat.to(this.targetFormat, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String firstCharOnlyToUpper(String str) {
        if (!str.isEmpty()) {
            char upperCase = Ascii.toUpperCase(str.charAt(0));
            String lowerCase = Ascii.toLowerCase(str.substring(1));
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(1, lowerCase));
            sb.append(upperCase);
            sb.append(lowerCase);
            return sb.toString();
        }
        return str;
    }

    public String convert(CaseFormat caseFormat, String str) {
        StringBuilder sb = null;
        int i = 0;
        int i2 = -1;
        while (true) {
            i2 = this.wordBoundary.indexIn(str, i2 + 1);
            if (i2 == -1) {
                break;
            }
            if (i == 0) {
                sb = new StringBuilder((caseFormat.wordSeparator.length() * 4) + str.length());
                sb.append(caseFormat.normalizeFirstWord(str.substring(i, i2)));
            } else {
                j$.util.Objects.requireNonNull(sb);
                sb.append(caseFormat.normalizeWord(str.substring(i, i2)));
            }
            sb.append(caseFormat.wordSeparator);
            i = this.wordSeparator.length() + i2;
        }
        if (i == 0) {
            return caseFormat.normalizeFirstWord(str);
        }
        j$.util.Objects.requireNonNull(sb);
        sb.append(caseFormat.normalizeWord(str.substring(i)));
        return sb.toString();
    }

    public Converter<String, String> converterTo(CaseFormat caseFormat) {
        return new StringConverter(this, caseFormat);
    }

    public String normalizeFirstWord(String str) {
        return normalizeWord(str);
    }

    public abstract String normalizeWord(String str);

    public final String to(CaseFormat caseFormat, String str) {
        Preconditions.checkNotNull(caseFormat);
        Preconditions.checkNotNull(str);
        if (caseFormat != this) {
            return convert(caseFormat, str);
        }
        return str;
    }

    CaseFormat(CharMatcher charMatcher, String str) {
        this.wordBoundary = charMatcher;
        this.wordSeparator = str;
    }
}
