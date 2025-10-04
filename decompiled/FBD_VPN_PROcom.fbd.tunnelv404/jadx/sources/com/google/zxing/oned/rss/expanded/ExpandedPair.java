package com.google.zxing.oned.rss.expanded;

import com.google.zxing.oned.rss.DataCharacter;
import com.google.zxing.oned.rss.FinderPattern;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes3.dex */
final class ExpandedPair {
    private final FinderPattern finderPattern;
    private final DataCharacter leftChar;
    private final DataCharacter rightChar;

    public ExpandedPair(DataCharacter dataCharacter, DataCharacter dataCharacter2, FinderPattern finderPattern) {
        this.leftChar = dataCharacter;
        this.rightChar = dataCharacter2;
        this.finderPattern = finderPattern;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ExpandedPair)) {
            return false;
        }
        ExpandedPair expandedPair = (ExpandedPair) obj;
        if (!Objects.equals(this.leftChar, expandedPair.leftChar) || !Objects.equals(this.rightChar, expandedPair.rightChar) || !Objects.equals(this.finderPattern, expandedPair.finderPattern)) {
            return false;
        }
        return true;
    }

    public FinderPattern getFinderPattern() {
        return this.finderPattern;
    }

    public DataCharacter getLeftChar() {
        return this.leftChar;
    }

    public DataCharacter getRightChar() {
        return this.rightChar;
    }

    public int hashCode() {
        return (Objects.hashCode(this.leftChar) ^ Objects.hashCode(this.rightChar)) ^ Objects.hashCode(this.finderPattern);
    }

    public boolean mustBeLast() {
        if (this.rightChar == null) {
            return true;
        }
        return false;
    }

    public String toString() {
        Object valueOf;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7211324912513369850L, -6047194803940800194L}).toString());
        sb.append(this.leftChar);
        sb.append(new ObfuscatedString(new long[]{-2771689635911132891L, -5780141536918760648L}).toString());
        sb.append(this.rightChar);
        sb.append(new ObfuscatedString(new long[]{-7998201755514323729L, 5296777074977695433L}).toString());
        FinderPattern finderPattern = this.finderPattern;
        if (finderPattern == null) {
            valueOf = new ObfuscatedString(new long[]{8318620467431655014L, -428045696344800093L}).toString();
        } else {
            valueOf = Integer.valueOf(finderPattern.getValue());
        }
        sb.append(valueOf);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2016492089452975301L, -658148323327760861L}), sb);
    }
}
