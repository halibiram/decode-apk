package org.junit;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class ComparisonFailure extends AssertionError {
    private static final int MAX_CONTEXT_LENGTH = 20;
    private static final long serialVersionUID = 1;
    private String fActual;
    private String fExpected;

    /* loaded from: classes3.dex */
    public static class ComparisonCompactor {
        private static final String DIFF_END = "]";
        private static final String DIFF_START = "[";
        private static final String ELLIPSIS = "...";
        private final String actual;
        private final int contextLength;
        private final String expected;

        /* loaded from: classes3.dex */
        public class DiffExtractor {
            private final String sharedPrefix;
            private final String sharedSuffix;

            private String extractDiff(String str) {
                return ComparisonCompactor.DIFF_START + str.substring(this.sharedPrefix.length(), str.length() - this.sharedSuffix.length()) + ComparisonCompactor.DIFF_END;
            }

            public String actualDiff() {
                return extractDiff(ComparisonCompactor.this.actual);
            }

            public String compactPrefix() {
                if (this.sharedPrefix.length() <= ComparisonCompactor.this.contextLength) {
                    return this.sharedPrefix;
                }
                StringBuilder sb = new StringBuilder(ComparisonCompactor.ELLIPSIS);
                String str = this.sharedPrefix;
                sb.append(str.substring(str.length() - ComparisonCompactor.this.contextLength));
                return sb.toString();
            }

            public String compactSuffix() {
                if (this.sharedSuffix.length() <= ComparisonCompactor.this.contextLength) {
                    return this.sharedSuffix;
                }
                return this.sharedSuffix.substring(0, ComparisonCompactor.this.contextLength) + ComparisonCompactor.ELLIPSIS;
            }

            public String expectedDiff() {
                return extractDiff(ComparisonCompactor.this.expected);
            }

            private DiffExtractor() {
                String sharedPrefix = ComparisonCompactor.this.sharedPrefix();
                this.sharedPrefix = sharedPrefix;
                this.sharedSuffix = ComparisonCompactor.this.sharedSuffix(sharedPrefix);
            }
        }

        public ComparisonCompactor(int i, String str, String str2) {
            this.contextLength = i;
            this.expected = str;
            this.actual = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String sharedPrefix() {
            int min = Math.min(this.expected.length(), this.actual.length());
            for (int i = 0; i < min; i++) {
                if (this.expected.charAt(i) != this.actual.charAt(i)) {
                    return this.expected.substring(0, i);
                }
            }
            return this.expected.substring(0, min);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String sharedSuffix(String str) {
            int min = Math.min(this.expected.length() - str.length(), this.actual.length() - str.length()) - 1;
            int i = 0;
            while (i <= min) {
                if (this.expected.charAt((r1.length() - 1) - i) != this.actual.charAt((r2.length() - 1) - i)) {
                    break;
                }
                i++;
            }
            String str2 = this.expected;
            return str2.substring(str2.length() - i);
        }

        public String compact(String str) {
            String str2;
            String str3 = this.expected;
            if (str3 != null && (str2 = this.actual) != null && !str3.equals(str2)) {
                DiffExtractor diffExtractor = new DiffExtractor();
                String compactPrefix = diffExtractor.compactPrefix();
                String compactSuffix = diffExtractor.compactSuffix();
                String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(AbstractC0749x8313616e.m3341xc20437a5(compactPrefix), diffExtractor.expectedDiff(), compactSuffix);
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(compactPrefix);
                m3341xc20437a5.append(diffExtractor.actualDiff());
                m3341xc20437a5.append(compactSuffix);
                return Assert.format(str, m2936xd2bcb0cf, m3341xc20437a5.toString());
            }
            return Assert.format(str, this.expected, this.actual);
        }
    }

    public ComparisonFailure(String str, String str2, String str3) {
        super(str);
        this.fExpected = str2;
        this.fActual = str3;
    }

    public String getActual() {
        return this.fActual;
    }

    public String getExpected() {
        return this.fExpected;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return new ComparisonCompactor(20, this.fExpected, this.fActual).compact(super.getMessage());
    }
}
