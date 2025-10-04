package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AI013103decoder extends AI013x0xDecoder {
    public AI013103decoder(BitArray bitArray) {
        super(bitArray);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    public void addWeightCode(StringBuilder sb, int i) {
        sb.append(new ObfuscatedString(new long[]{-990181160329078857L, -4264470115962141724L}).toString());
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.AI01weightDecoder
    public int checkWeight(int i) {
        return i;
    }
}
