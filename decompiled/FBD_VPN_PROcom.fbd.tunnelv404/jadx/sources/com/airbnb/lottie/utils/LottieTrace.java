package com.airbnb.lottie.utils;

import androidx.core.os.TraceCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes.dex */
public class LottieTrace {
    private static final int MAX_DEPTH = 5;
    private final String[] sections = new String[5];
    private final long[] startTimeNs = new long[5];
    private int traceDepth = 0;
    private int depthPastMaxDepth = 0;

    public void beginSection(String str) {
        int i = this.traceDepth;
        if (i == 5) {
            this.depthPastMaxDepth++;
            return;
        }
        this.sections[i] = str;
        this.startTimeNs[i] = System.nanoTime();
        TraceCompat.beginSection(str);
        this.traceDepth++;
    }

    public float endSection(String str) {
        int i = this.depthPastMaxDepth;
        if (i > 0) {
            this.depthPastMaxDepth = i - 1;
            return 0.0f;
        }
        int i2 = this.traceDepth - 1;
        this.traceDepth = i2;
        if (i2 != -1) {
            if (str.equals(this.sections[i2])) {
                TraceCompat.endSection();
                return ((float) (System.nanoTime() - this.startTimeNs[this.traceDepth])) / 1000000.0f;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{2360650309518229659L, -8685758083074941813L, 5117287710124711896L, 1698449360296929221L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{-206871965695775421L, 828681149390496327L, 9023328410970236930L}).toString());
            sb.append(this.sections[this.traceDepth]);
            throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4792098008936829563L, 2028081923760561984L}), sb));
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{7877284044340817430L, 7421842616392144196L, -7017609576803324568L, -7171138024969130890L, 5223770786277259996L, -1642518169105340780L}).toString());
    }
}
