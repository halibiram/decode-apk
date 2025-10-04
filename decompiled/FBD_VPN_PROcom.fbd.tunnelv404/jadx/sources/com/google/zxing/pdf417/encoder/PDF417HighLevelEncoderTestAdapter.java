package com.google.zxing.pdf417.encoder;

import java.nio.charset.Charset;

/* loaded from: classes3.dex */
public final class PDF417HighLevelEncoderTestAdapter {
    private PDF417HighLevelEncoderTestAdapter() {
    }

    public static String encodeHighLevel(String str, Compaction compaction, Charset charset, boolean z) {
        return PDF417HighLevelEncoder.encodeHighLevel(str, compaction, charset, z);
    }
}
