package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class UnsignedInteger extends Number implements Comparable<UnsignedInteger> {
    private final int value;
    public static final UnsignedInteger ZERO = fromIntBits(0);
    public static final UnsignedInteger ONE = fromIntBits(1);
    public static final UnsignedInteger MAX_VALUE = fromIntBits(-1);

    private UnsignedInteger(int i) {
        this.value = i;
    }

    public static UnsignedInteger fromIntBits(int i) {
        return new UnsignedInteger(i);
    }

    public static UnsignedInteger valueOf(long j) {
        Preconditions.checkArgument((4294967295L & j) == j, new ObfuscatedString(new long[]{2586412390864782753L, 4680219690409868369L, 2271194366426102241L, -6388149154630237227L, -7891845702253441968L, 7213374312287000090L, -4269919713027804988L, -6657180832032889358L, 3093848090194137550L}).toString(), j);
        return fromIntBits((int) j);
    }

    public BigInteger bigIntegerValue() {
        return BigInteger.valueOf(longValue());
    }

    public UnsignedInteger dividedBy(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.divide(this.value, ((UnsignedInteger) Preconditions.checkNotNull(unsignedInteger)).value));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return longValue();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof UnsignedInteger) || this.value != ((UnsignedInteger) obj).value) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) longValue();
    }

    public int hashCode() {
        return this.value;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return UnsignedInts.toLong(this.value);
    }

    public UnsignedInteger minus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value - ((UnsignedInteger) Preconditions.checkNotNull(unsignedInteger)).value);
    }

    public UnsignedInteger mod(UnsignedInteger unsignedInteger) {
        return fromIntBits(UnsignedInts.remainder(this.value, ((UnsignedInteger) Preconditions.checkNotNull(unsignedInteger)).value));
    }

    public UnsignedInteger plus(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value + ((UnsignedInteger) Preconditions.checkNotNull(unsignedInteger)).value);
    }

    @GwtIncompatible
    public UnsignedInteger times(UnsignedInteger unsignedInteger) {
        return fromIntBits(this.value * ((UnsignedInteger) Preconditions.checkNotNull(unsignedInteger)).value);
    }

    public String toString() {
        return toString(10);
    }

    @Override // java.lang.Comparable
    public int compareTo(UnsignedInteger unsignedInteger) {
        Preconditions.checkNotNull(unsignedInteger);
        return UnsignedInts.compare(this.value, unsignedInteger.value);
    }

    public String toString(int i) {
        return UnsignedInts.toString(this.value, i);
    }

    public static UnsignedInteger valueOf(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        Preconditions.checkArgument(bigInteger.signum() >= 0 && bigInteger.bitLength() <= 32, new ObfuscatedString(new long[]{-1521779493433404340L, -3607337706329385875L, 6807215077718078992L, 7518520230375539544L, -716978237525521001L, 1544501011312600968L, 1923037622880743666L, 7890828969633592453L, -2843591733330132799L}).toString(), bigInteger);
        return fromIntBits(bigInteger.intValue());
    }

    public static UnsignedInteger valueOf(String str) {
        return valueOf(str, 10);
    }

    public static UnsignedInteger valueOf(String str, int i) {
        return fromIntBits(UnsignedInts.parseUnsignedInt(str, i));
    }
}
