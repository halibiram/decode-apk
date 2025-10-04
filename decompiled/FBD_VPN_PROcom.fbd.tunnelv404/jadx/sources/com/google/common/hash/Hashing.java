package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import com.panda912.muddy.ObfuscatedString;
import java.security.Key;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import javax.annotation.CheckForNull;
import javax.crypto.spec.SecretKeySpec;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Hashing {
    static final int GOOD_FAST_HASH_SEED = (int) System.currentTimeMillis();

    @Immutable
    /* loaded from: classes2.dex */
    public enum ChecksumType implements ImmutableSupplier<Checksum> {
        CRC_32(new ObfuscatedString(new long[]{1331200570078326270L, 2990095016336067498L, -1287225822837294414L}).toString()) { // from class: com.google.common.hash.Hashing.ChecksumType.1
            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new CRC32();
            }
        },
        ADLER_32(new ObfuscatedString(new long[]{-6234927074075515692L, -6545533658181053715L, -8262358438462040358L, -4581392849406774516L}).toString()) { // from class: com.google.common.hash.Hashing.ChecksumType.2
            @Override // com.google.common.base.Supplier
            public Checksum get() {
                return new Adler32();
            }
        };

        public final HashFunction hashFunction;

        ChecksumType(String str) {
            this.hashFunction = new ChecksumHashFunction(this, 32, str);
        }
    }

    /* loaded from: classes2.dex */
    public static final class ConcatenatedHashFunction extends AbstractCompositeHashFunction {
        @Override // com.google.common.hash.HashFunction
        public int bits() {
            int i = 0;
            for (HashFunction hashFunction : this.functions) {
                i += hashFunction.bits();
            }
            return i;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof ConcatenatedHashFunction) {
                return Arrays.equals(this.functions, ((ConcatenatedHashFunction) obj).functions);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.functions);
        }

        @Override // com.google.common.hash.AbstractCompositeHashFunction
        public HashCode makeHash(Hasher[] hasherArr) {
            byte[] bArr = new byte[bits() / 8];
            int i = 0;
            for (Hasher hasher : hasherArr) {
                HashCode hash = hasher.hash();
                i += hash.writeBytesTo(bArr, i, hash.bits() / 8);
            }
            return HashCode.fromBytesNoCopy(bArr);
        }

        private ConcatenatedHashFunction(HashFunction... hashFunctionArr) {
            super(hashFunctionArr);
            for (HashFunction hashFunction : hashFunctionArr) {
                Preconditions.checkArgument(hashFunction.bits() % 8 == 0, new ObfuscatedString(new long[]{2653802241967494778L, 2407063693157841503L, -3735124487063481510L, -2462060834361788874L, 4882437438205711000L, -8452181369601472182L, -132387849787345935L, 3930447401848768073L, 4871532710739195081L, 7263450077985247559L}).toString(), hashFunction.bits(), (Object) hashFunction);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class LinearCongruentialGenerator {
        private long state;

        public LinearCongruentialGenerator(long j) {
            this.state = j;
        }

        public double nextDouble() {
            this.state = (this.state * 2862933555777941757L) + 1;
            return (((int) (r2 >>> 33)) + 1) / 2.147483648E9d;
        }
    }

    /* loaded from: classes2.dex */
    public static class Md5Holder {
        static final HashFunction MD5 = new MessageDigestHashFunction(new ObfuscatedString(new long[]{4581249867156040658L, -62265973557235842L}).toString(), new ObfuscatedString(new long[]{-5471402641324891198L, -7892451549081413843L, 2469279187820561938L}).toString());

        private Md5Holder() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Sha1Holder {
        static final HashFunction SHA_1 = new MessageDigestHashFunction(new ObfuscatedString(new long[]{-1121221538949382618L, 3425649397819110587L}).toString(), new ObfuscatedString(new long[]{-419729081475576813L, -1016117394086918865L, -679146607191654580L}).toString());

        private Sha1Holder() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Sha256Holder {
        static final HashFunction SHA_256 = new MessageDigestHashFunction(new ObfuscatedString(new long[]{8792111799352620997L, -1363882945940600860L}).toString(), new ObfuscatedString(new long[]{-8315321250166251809L, 5820926379439959897L, 2233959741517445007L}).toString());

        private Sha256Holder() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Sha384Holder {
        static final HashFunction SHA_384 = new MessageDigestHashFunction(new ObfuscatedString(new long[]{-50988631852388328L, -4695872063410387122L}).toString(), new ObfuscatedString(new long[]{4093742467359643453L, -5729328817535443511L, -3613539909800721745L}).toString());

        private Sha384Holder() {
        }
    }

    /* loaded from: classes2.dex */
    public static class Sha512Holder {
        static final HashFunction SHA_512 = new MessageDigestHashFunction(new ObfuscatedString(new long[]{-2268856139306712979L, 967456559613450830L}).toString(), new ObfuscatedString(new long[]{-8146825506198368354L, -4525149655808299961L, -4716415140030334898L}).toString());

        private Sha512Holder() {
        }
    }

    private Hashing() {
    }

    public static HashFunction adler32() {
        return ChecksumType.ADLER_32.hashFunction;
    }

    public static int checkPositiveAndMakeMultipleOf32(int i) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-386784196941882294L, 6702213013718460880L, -8499412056693916138L, -2411363612536397905L, -4255997211539917228L}).toString());
        return (i + 31) & (-32);
    }

    public static HashCode combineOrdered(Iterable<HashCode> iterable) {
        boolean z;
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), new ObfuscatedString(new long[]{4970315213840034541L, 8643470819819764032L, -8022700425765962679L, 3278951605394543405L, -4968611082784917968L, -7383729947696149101L}).toString());
        int bits = it.next().bits() / 8;
        byte[] bArr = new byte[bits];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] asBytes = it2.next().asBytes();
            if (asBytes.length == bits) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-4164065166581181755L, -1211505416213258290L, 398288459767790164L, 4816934744987320474L, -8986944617278372473L, -6098868972053985525L, 2555549342996441725L}).toString());
            for (int i = 0; i < asBytes.length; i++) {
                bArr[i] = (byte) ((bArr[i] * 37) ^ asBytes[i]);
            }
        }
        return HashCode.fromBytesNoCopy(bArr);
    }

    public static HashCode combineUnordered(Iterable<HashCode> iterable) {
        boolean z;
        Iterator<HashCode> it = iterable.iterator();
        Preconditions.checkArgument(it.hasNext(), new ObfuscatedString(new long[]{8124598578614337162L, -2779895355647040271L, -6404742236545421778L, 8998597712598255841L, 3665956259206410859L, 7914272906469970322L}).toString());
        int bits = it.next().bits() / 8;
        byte[] bArr = new byte[bits];
        Iterator<HashCode> it2 = iterable.iterator();
        while (it2.hasNext()) {
            byte[] asBytes = it2.next().asBytes();
            if (asBytes.length == bits) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-6035626951265875642L, 3925110155598118208L, -4830014637360665888L, -8394666024598499519L, -6809111690730154286L, -657338659999648816L, -6808964527478515214L}).toString());
            for (int i = 0; i < asBytes.length; i++) {
                bArr[i] = (byte) (bArr[i] + asBytes[i]);
            }
        }
        return HashCode.fromBytesNoCopy(bArr);
    }

    public static HashFunction concatenating(HashFunction hashFunction, HashFunction hashFunction2, HashFunction... hashFunctionArr) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(hashFunction);
        arrayList.add(hashFunction2);
        Collections.addAll(arrayList, hashFunctionArr);
        return new ConcatenatedHashFunction((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }

    public static int consistentHash(HashCode hashCode, int i) {
        return consistentHash(hashCode.padToLong(), i);
    }

    public static HashFunction crc32() {
        return ChecksumType.CRC_32.hashFunction;
    }

    public static HashFunction crc32c() {
        return Crc32cHashFunction.CRC_32_C;
    }

    public static HashFunction farmHashFingerprint64() {
        return FarmHashFingerprint64.FARMHASH_FINGERPRINT_64;
    }

    public static HashFunction fingerprint2011() {
        return Fingerprint2011.FINGERPRINT_2011;
    }

    public static HashFunction goodFastHash(int i) {
        int checkPositiveAndMakeMultipleOf32 = checkPositiveAndMakeMultipleOf32(i);
        if (checkPositiveAndMakeMultipleOf32 == 32) {
            return Murmur3_32HashFunction.GOOD_FAST_HASH_32;
        }
        if (checkPositiveAndMakeMultipleOf32 <= 128) {
            return Murmur3_128HashFunction.GOOD_FAST_HASH_128;
        }
        int i2 = (checkPositiveAndMakeMultipleOf32 + 127) / 128;
        HashFunction[] hashFunctionArr = new HashFunction[i2];
        hashFunctionArr[0] = Murmur3_128HashFunction.GOOD_FAST_HASH_128;
        int i3 = GOOD_FAST_HASH_SEED;
        for (int i4 = 1; i4 < i2; i4++) {
            i3 += 1500450271;
            hashFunctionArr[i4] = murmur3_128(i3);
        }
        return new ConcatenatedHashFunction(hashFunctionArr);
    }

    public static HashFunction hmacMd5(Key key) {
        return new MacHashFunction(new ObfuscatedString(new long[]{-2865048473340909282L, 3485795268442851732L}).toString(), key, hmacToString(new ObfuscatedString(new long[]{-6859404288301762216L, 9176594109280221854L}).toString(), key));
    }

    public static HashFunction hmacSha1(Key key) {
        return new MacHashFunction(new ObfuscatedString(new long[]{-8338965790983795490L, 4905507993674043276L}).toString(), key, hmacToString(new ObfuscatedString(new long[]{3315992098480267986L, 8451657221414604997L}).toString(), key));
    }

    public static HashFunction hmacSha256(Key key) {
        return new MacHashFunction(new ObfuscatedString(new long[]{-9060792273519545201L, -8691603835794188571L, 7957876733270762738L}).toString(), key, hmacToString(new ObfuscatedString(new long[]{-2185121339212644216L, -1684914092171285792L, -125158436572963875L}).toString(), key));
    }

    public static HashFunction hmacSha512(Key key) {
        return new MacHashFunction(new ObfuscatedString(new long[]{6135349830760060399L, 4414305535810449878L, 2637229964902785188L}).toString(), key, hmacToString(new ObfuscatedString(new long[]{-4622308609516420876L, 3492782888961242363L, -8917798934272873996L}).toString(), key));
    }

    private static String hmacToString(String str, Key key) {
        return String.format(new ObfuscatedString(new long[]{-1039287527056976731L, 3691649621667933541L, -4439365283298986249L, -5142858300576307596L, 9020804660890488755L, 1639957003369200972L}).toString(), str, key.getAlgorithm(), key.getFormat());
    }

    @Deprecated
    public static HashFunction md5() {
        return Md5Holder.MD5;
    }

    public static HashFunction murmur3_128(int i) {
        return new Murmur3_128HashFunction(i);
    }

    @Deprecated
    public static HashFunction murmur3_32(int i) {
        return new Murmur3_32HashFunction(i, false);
    }

    public static HashFunction murmur3_32_fixed(int i) {
        return new Murmur3_32HashFunction(i, true);
    }

    @Deprecated
    public static HashFunction sha1() {
        return Sha1Holder.SHA_1;
    }

    public static HashFunction sha256() {
        return Sha256Holder.SHA_256;
    }

    public static HashFunction sha384() {
        return Sha384Holder.SHA_384;
    }

    public static HashFunction sha512() {
        return Sha512Holder.SHA_512;
    }

    public static HashFunction sipHash24() {
        return SipHashFunction.SIP_HASH_24;
    }

    public static int consistentHash(long j, int i) {
        int i2 = 0;
        Preconditions.checkArgument(i > 0, new ObfuscatedString(new long[]{2538285587358195824L, 1184907748599296399L, -6803518474962346451L, 3903008658462518628L, -5201182633933444084L}).toString(), i);
        LinearCongruentialGenerator linearCongruentialGenerator = new LinearCongruentialGenerator(j);
        while (true) {
            int nextDouble = (int) ((i2 + 1) / linearCongruentialGenerator.nextDouble());
            if (nextDouble < 0 || nextDouble >= i) {
                break;
            }
            i2 = nextDouble;
        }
        return i2;
    }

    public static HashFunction hmacMd5(byte[] bArr) {
        return hmacMd5(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), new ObfuscatedString(new long[]{9013640716724710380L, 1926027335654921047L}).toString()));
    }

    public static HashFunction hmacSha1(byte[] bArr) {
        return hmacSha1(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), new ObfuscatedString(new long[]{8587985052406020393L, 5047467525117313641L}).toString()));
    }

    public static HashFunction hmacSha256(byte[] bArr) {
        return hmacSha256(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), new ObfuscatedString(new long[]{-4406722188530638101L, -8633180006590758625L, -4029946711272376214L}).toString()));
    }

    public static HashFunction hmacSha512(byte[] bArr) {
        return hmacSha512(new SecretKeySpec((byte[]) Preconditions.checkNotNull(bArr), new ObfuscatedString(new long[]{-4339884329731870106L, 4715479970037975941L, -8124472794779718537L}).toString()));
    }

    public static HashFunction murmur3_128() {
        return Murmur3_128HashFunction.MURMUR3_128;
    }

    @Deprecated
    public static HashFunction murmur3_32() {
        return Murmur3_32HashFunction.MURMUR3_32;
    }

    public static HashFunction murmur3_32_fixed() {
        return Murmur3_32HashFunction.MURMUR3_32_FIXED;
    }

    public static HashFunction sipHash24(long j, long j2) {
        return new SipHashFunction(2, 4, j, j2);
    }

    public static HashFunction concatenating(Iterable<HashFunction> iterable) {
        Preconditions.checkNotNull(iterable);
        ArrayList arrayList = new ArrayList();
        Iterator<HashFunction> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        Preconditions.checkArgument(!arrayList.isEmpty(), new ObfuscatedString(new long[]{6929058422747738526L, 3865366954303621309L, 7779509974315965461L, 8915159436797062671L, -7907031286295646745L, -5758825785958816531L, -6521928013737070045L}).toString(), arrayList.size());
        return new ConcatenatedHashFunction((HashFunction[]) arrayList.toArray(new HashFunction[0]));
    }
}
