package com.google.common.hash;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class HashCode {
    private static final char[] hexDigits = new ObfuscatedString(new long[]{-4555569387025083253L, -1886239425301885332L, 8719285659763666912L}).toString().toCharArray();

    /* loaded from: classes2.dex */
    public static final class BytesHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] bytes;

        public BytesHashCode(byte[] bArr) {
            this.bytes = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return (byte[]) this.bytes.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            boolean z;
            if (this.bytes.length >= 4) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-3557438084373125082L, -7256462136722157391L, 738197424643007249L, 6602842414921345290L, -3132118714744474683L, 2945407214890807806L, -5036147079277150508L, -8472282526661583279L, 7885024595840431413L}).toString(), this.bytes.length);
            byte[] bArr = this.bytes;
            return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            boolean z;
            if (this.bytes.length >= 8) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, new ObfuscatedString(new long[]{-1003856545842656827L, 7141398547303504545L, 1243801441541229642L, 1579752583582584693L, -5040633164056907627L, -242453778791967637L, -4702817551657532262L, 2536292931080962133L, 3568194516272917894L}).toString(), this.bytes.length);
            return padToLong();
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return this.bytes.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        public boolean equalsSameBits(HashCode hashCode) {
            boolean z;
            if (this.bytes.length != hashCode.getBytesInternal().length) {
                return false;
            }
            int i = 0;
            boolean z2 = true;
            while (true) {
                byte[] bArr = this.bytes;
                if (i < bArr.length) {
                    if (bArr[i] == hashCode.getBytesInternal()[i]) {
                        z = true;
                    } else {
                        z = false;
                    }
                    z2 &= z;
                    i++;
                } else {
                    return z2;
                }
            }
        }

        @Override // com.google.common.hash.HashCode
        public byte[] getBytesInternal() {
            return this.bytes;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            long j = this.bytes[0] & 255;
            for (int i = 1; i < Math.min(this.bytes.length, 8); i++) {
                j |= (this.bytes[i] & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.HashCode
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            System.arraycopy(this.bytes, 0, bArr, i, i2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IntHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int hash;

        public IntHashCode(int i) {
            this.hash = i;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            int i = this.hash;
            return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            throw new IllegalStateException(new ObfuscatedString(new long[]{2006584328626687475L, 8958067568439551587L, -993152056327397941L, -1049657373234059692L, -5822060423487722141L, -8430812151419211749L, -8718478793263695715L, 4416541758224010731L}).toString());
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 32;
        }

        @Override // com.google.common.hash.HashCode
        public boolean equalsSameBits(HashCode hashCode) {
            if (this.hash == hashCode.asInt()) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return UnsignedInts.toLong(this.hash);
        }

        @Override // com.google.common.hash.HashCode
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class LongHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long hash;

        public LongHashCode(long j) {
            this.hash = j;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return new byte[]{(byte) this.hash, (byte) (r0 >> 8), (byte) (r0 >> 16), (byte) (r0 >> 24), (byte) (r0 >> 32), (byte) (r0 >> 40), (byte) (r0 >> 48), (byte) (r0 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return (int) this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        public boolean equalsSameBits(HashCode hashCode) {
            if (this.hash == hashCode.asLong()) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }
    }

    private static int decode(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'a' && c <= 'f') {
            return c - 'W';
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append(new ObfuscatedString(new long[]{7123422949058324787L, 4333871380829829873L, 5895122448468882589L, -804982832593719500L, -1724350086141069449L}).toString());
        sb.append(c);
        throw new IllegalArgumentException(sb.toString());
    }

    public static HashCode fromBytes(byte[] bArr) {
        boolean z = true;
        if (bArr.length < 1) {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{2116266718116943836L, 4808254974532735649L, -3007949630162807632L, 3373842233800783166L, 1636301749318742679L, 439971895941250218L}).toString());
        return fromBytesNoCopy((byte[]) bArr.clone());
    }

    public static HashCode fromBytesNoCopy(byte[] bArr) {
        return new BytesHashCode(bArr);
    }

    public static HashCode fromInt(int i) {
        return new IntHashCode(i);
    }

    public static HashCode fromLong(long j) {
        return new LongHashCode(j);
    }

    public static HashCode fromString(String str) {
        boolean z;
        boolean z2;
        if (str.length() >= 2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{2771616429996664551L, -2837778315515840933L, -6979931158132265696L, -6570352680727388950L, -3778395107420950708L, 2025236748005817127L, 2147930436884270493L, -5385253471708305158L}).toString(), str);
        if (str.length() % 2 == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{7128723139011745535L, -8158114886651222704L, 8604466300960079007L, 5872693396437514943L, -697885997501797944L, -4262650984093219051L, 8077003124747942391L, 8065096765648681273L}).toString(), str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((decode(str.charAt(i)) << 4) + decode(str.charAt(i + 1)));
        }
        return fromBytesNoCopy(bArr);
    }

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract int bits();

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        if (bits() != hashCode.bits() || !equalsSameBits(hashCode)) {
            return false;
        }
        return true;
    }

    public abstract boolean equalsSameBits(HashCode hashCode);

    public byte[] getBytesInternal() {
        return asBytes();
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bytesInternal = getBytesInternal();
        int i = bytesInternal[0] & 255;
        for (int i2 = 1; i2 < bytesInternal.length; i2++) {
            i |= (bytesInternal[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public abstract long padToLong();

    public final String toString() {
        byte[] bytesInternal = getBytesInternal();
        StringBuilder sb = new StringBuilder(bytesInternal.length * 2);
        for (byte b : bytesInternal) {
            char[] cArr = hexDigits;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & Ascii.SI]);
        }
        return sb.toString();
    }

    @CanIgnoreReturnValue
    public int writeBytesTo(byte[] bArr, int i, int i2) {
        int min = Ints.min(i2, bits() / 8);
        Preconditions.checkPositionIndexes(i, i + min, bArr.length);
        writeBytesToImpl(bArr, i, min);
        return min;
    }

    public abstract void writeBytesToImpl(byte[] bArr, int i, int i2);
}
