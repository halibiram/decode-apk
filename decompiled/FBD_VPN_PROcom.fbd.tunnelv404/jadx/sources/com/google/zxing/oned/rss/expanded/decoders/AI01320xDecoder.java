package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
final class AI01320xDecoder extends AI013x0xDecoder {
    public AI01320xDecoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    public void addWeightCode(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append(new ObfuscatedString(new long[]{-6166516176684030427L, 6871137353597988461L}).toString());
        } else {
            sb.append(new ObfuscatedString(new long[]{-8521868939943866048L, -4349819750832793171L}).toString());
        }
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    public int checkWeight(int i) {
        return i < 10000 ? i : i - 10000;
    }
}
