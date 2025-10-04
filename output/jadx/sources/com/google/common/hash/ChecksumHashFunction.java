package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.util.zip.Checksum;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class ChecksumHashFunction extends AbstractHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int bits;
    private final ImmutableSupplier<? extends Checksum> checksumSupplier;
    private final String toString;

    /* loaded from: classes2.dex */
    public final class ChecksumHasher extends AbstractByteHasher {
        private final Checksum checksum;

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            long value = this.checksum.getValue();
            if (ChecksumHashFunction.this.bits == 32) {
                return HashCode.fromInt((int) value);
            }
            return HashCode.fromLong(value);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        public void update(byte b) {
            this.checksum.update(b);
        }

        private ChecksumHasher(Checksum checksum) {
            this.checksum = (Checksum) Preconditions.checkNotNull(checksum);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        public void update(byte[] bArr, int i, int i2) {
            this.checksum.update(bArr, i, i2);
        }
    }

    public ChecksumHashFunction(ImmutableSupplier<? extends Checksum> immutableSupplier, int i, String str) {
        boolean z;
        this.checksumSupplier = (ImmutableSupplier) Preconditions.checkNotNull(immutableSupplier);
        if (i != 32 && i != 64) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-1714384498891960851L, -3867411812581049565L, 6627456065325129850L, -7306744299991525420L, -433001958809372196L, -6701519771707737944L}).toString(), i);
        this.bits = i;
        this.toString = (String) Preconditions.checkNotNull(str);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bits;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new ChecksumHasher(this.checksumSupplier.get());
    }

    public String toString() {
        return this.toString;
    }
}
