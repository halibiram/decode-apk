package com.google.thirdparty.publicsuffix;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;

@Beta
@GwtCompatible
/* loaded from: classes3.dex */
public enum PublicSuffixType {
    PRIVATE(':', ','),
    REGISTRY('!', '?');

    private final char innerNodeCode;
    private final char leafNodeCode;

    PublicSuffixType(char c, char c2) {
        this.innerNodeCode = c;
        this.leafNodeCode = c2;
    }

    public static PublicSuffixType fromCode(char c) {
        for (PublicSuffixType publicSuffixType : values()) {
            if (publicSuffixType.getInnerNodeCode() == c || publicSuffixType.getLeafNodeCode() == c) {
                return publicSuffixType;
            }
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append(new ObfuscatedString(new long[]{-920100306773640367L, -3359689124273405637L, -5453241243116389520L, -3887016057543231700L, -4111461254042453650L, 2763009987659489344L}).toString());
        sb.append(c);
        throw new IllegalArgumentException(sb.toString());
    }

    public char getInnerNodeCode() {
        return this.innerNodeCode;
    }

    public char getLeafNodeCode() {
        return this.leafNodeCode;
    }
}
