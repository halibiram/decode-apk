package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.CheckForNull;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class SipHashFunction extends AbstractHashFunction implements Serializable {
    static final HashFunction SIP_HASH_24 = new SipHashFunction(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;
    private final int c;
    private final int d;
    private final long k0;
    private final long k1;

    /* loaded from: classes2.dex */
    public static final class SipHasher extends AbstractStreamingHasher {
        private static final int CHUNK_SIZE = 8;
        private long b;
        private final int c;
        private final int d;
        private long finalM;
        private long v0;
        private long v1;
        private long v2;
        private long v3;

        public SipHasher(int i, int i2, long j, long j2) {
            super(8);
            this.b = 0L;
            this.finalM = 0L;
            this.c = i;
            this.d = i2;
            this.v0 = 8317987319222330741L ^ j;
            this.v1 = 7237128888997146477L ^ j2;
            this.v2 = 7816392313619706465L ^ j;
            this.v3 = 8387220255154660723L ^ j2;
        }

        private void processM(long j) {
            this.v3 ^= j;
            sipRound(this.c);
            this.v0 = j ^ this.v0;
        }

        private void sipRound(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.v0;
                long j2 = this.v1;
                this.v0 = j + j2;
                this.v2 += this.v3;
                this.v1 = Long.rotateLeft(j2, 13);
                long rotateLeft = Long.rotateLeft(this.v3, 16);
                long j3 = this.v1;
                long j4 = this.v0;
                this.v1 = j3 ^ j4;
                this.v3 = rotateLeft ^ this.v2;
                long rotateLeft2 = Long.rotateLeft(j4, 32);
                long j5 = this.v2;
                long j6 = this.v1;
                this.v2 = j5 + j6;
                this.v0 = rotateLeft2 + this.v3;
                this.v1 = Long.rotateLeft(j6, 17);
                long rotateLeft3 = Long.rotateLeft(this.v3, 21);
                long j7 = this.v1;
                long j8 = this.v2;
                this.v1 = j7 ^ j8;
                this.v3 = rotateLeft3 ^ this.v0;
                this.v2 = Long.rotateLeft(j8, 32);
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        public HashCode makeHash() {
            long j = this.finalM ^ (this.b << 56);
            this.finalM = j;
            processM(j);
            this.v2 ^= 255;
            sipRound(this.d);
            return HashCode.fromLong(((this.v0 ^ this.v1) ^ this.v2) ^ this.v3);
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        public void process(ByteBuffer byteBuffer) {
            this.b += 8;
            processM(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        public void processRemaining(ByteBuffer byteBuffer) {
            this.b += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.finalM ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }
    }

    public SipHashFunction(int i, int i2, long j, long j2) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3365376338885969597L, -2012649045593953888L, 7706569384250408674L, -7598775752167505259L, -8202745819214692956L, -5941950516042450822L, 5184076794196910788L, -3067076051463792895L, 2223501823265196279L, 4323946941556773422L, -1008965935857868261L}).toString(), i);
        Preconditions.checkArgument(i2 > 0, new ObfuscatedString(new long[]{-8853257127699958573L, -728795794578109694L, 3224100262601826892L, 9047126414006505067L, -6193350174647350586L, -6381982955756453868L, -4146968891893644544L, -6205078992380227320L, -5356768501397312238L, -3994005783120393223L, 2373220482655754696L}).toString(), i2);
        this.c = i;
        this.d = i2;
        this.k0 = j;
        this.k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof SipHashFunction)) {
            return false;
        }
        SipHashFunction sipHashFunction = (SipHashFunction) obj;
        if (this.c != sipHashFunction.c || this.d != sipHashFunction.d || this.k0 != sipHashFunction.k0 || this.k1 != sipHashFunction.k1) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (int) ((((SipHashFunction.class.hashCode() ^ this.c) ^ this.d) ^ this.k0) ^ this.k1);
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new SipHasher(this.c, this.d, this.k0, this.k1);
    }

    public String toString() {
        int i = this.c;
        int i2 = this.d;
        long j = this.k0;
        long j2 = this.k1;
        StringBuilder sb = new StringBuilder(81);
        sb.append(new ObfuscatedString(new long[]{501951955532753012L, 2660054102930538149L, -9136683920553084785L}).toString());
        sb.append(i);
        sb.append(i2);
        sb.append(new ObfuscatedString(new long[]{2670803745144621430L, 3175653628272498636L}).toString());
        sb.append(j);
        sb.append(new ObfuscatedString(new long[]{7841353699534975386L, 5202551975866781360L}).toString());
        sb.append(j2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2580674874416073953L, -5515254114624013570L}), sb);
    }
}
