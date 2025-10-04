package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class MessageDigestHashFunction extends AbstractHashFunction implements Serializable {
    private final int bytes;
    private final MessageDigest prototype;
    private final boolean supportsClone;
    private final String toString;

    /* loaded from: classes2.dex */
    public static final class MessageDigestHasher extends AbstractByteHasher {
        private final int bytes;
        private final MessageDigest digest;
        private boolean done;

        private void checkNotDone() {
            Preconditions.checkState(!this.done, new ObfuscatedString(new long[]{-3468934371047686898L, -5495310135808271465L, -8689671449423592015L, -8526327665333468759L, -8199219376562504851L, -2151326549125366359L, -3391670662314401152L, 7580009450311078668L}).toString());
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            checkNotDone();
            this.done = true;
            if (this.bytes == this.digest.getDigestLength()) {
                return HashCode.fromBytesNoCopy(this.digest.digest());
            }
            return HashCode.fromBytesNoCopy(Arrays.copyOf(this.digest.digest(), this.bytes));
        }

        @Override // com.google.common.hash.AbstractByteHasher
        public void update(byte b) {
            checkNotDone();
            this.digest.update(b);
        }

        private MessageDigestHasher(MessageDigest messageDigest, int i) {
            this.digest = messageDigest;
            this.bytes = i;
        }

        @Override // com.google.common.hash.AbstractByteHasher
        public void update(byte[] bArr, int i, int i2) {
            checkNotDone();
            this.digest.update(bArr, i, i2);
        }

        @Override // com.google.common.hash.AbstractByteHasher
        public void update(ByteBuffer byteBuffer) {
            checkNotDone();
            this.digest.update(byteBuffer);
        }
    }

    /* loaded from: classes2.dex */
    public static final class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        private final String algorithmName;
        private final int bytes;
        private final String toString;

        private Object readResolve() {
            return new MessageDigestHashFunction(this.algorithmName, this.bytes, this.toString);
        }

        private SerializedForm(String str, int i, String str2) {
            this.algorithmName = str;
            this.bytes = i;
            this.toString = str2;
        }
    }

    public MessageDigestHashFunction(String str, String str2) {
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        this.bytes = messageDigest.getDigestLength();
        this.toString = (String) Preconditions.checkNotNull(str2);
        this.supportsClone = supportsClone(messageDigest);
    }

    private static MessageDigest getMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    private static boolean supportsClone(MessageDigest messageDigest) {
        try {
            messageDigest.clone();
            return true;
        } catch (CloneNotSupportedException unused) {
            return false;
        }
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return this.bytes * 8;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        if (this.supportsClone) {
            try {
                return new MessageDigestHasher((MessageDigest) this.prototype.clone(), this.bytes);
            } catch (CloneNotSupportedException unused) {
            }
        }
        return new MessageDigestHasher(getMessageDigest(this.prototype.getAlgorithm()), this.bytes);
    }

    public String toString() {
        return this.toString;
    }

    public Object writeReplace() {
        return new SerializedForm(this.prototype.getAlgorithm(), this.bytes, this.toString);
    }

    public MessageDigestHashFunction(String str, int i, String str2) {
        this.toString = (String) Preconditions.checkNotNull(str2);
        MessageDigest messageDigest = getMessageDigest(str);
        this.prototype = messageDigest;
        int digestLength = messageDigest.getDigestLength();
        Preconditions.checkArgument(i >= 4 && i <= digestLength, new ObfuscatedString(new long[]{4451913139079866634L, 5511230930325638939L, -2734356035365990201L, -6299255986941570817L, 6611212785885381026L}).toString(), i, digestLength);
        this.bytes = i;
        this.supportsClone = supportsClone(messageDigest);
    }
}
