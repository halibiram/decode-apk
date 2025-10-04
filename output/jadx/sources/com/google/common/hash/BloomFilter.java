package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.hash.BloomFilterStrategies;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import javax.annotation.CheckForNull;

@Beta
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private final BloomFilterStrategies.LockFreeBitArray bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    /* loaded from: classes2.dex */
    public static class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<? super T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        public SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.LockFreeBitArray.toPlainArray(((BloomFilter) bloomFilter).bits.data);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        public Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.LockFreeBitArray(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    /* loaded from: classes2.dex */
    public interface Strategy extends Serializable {
        <T> boolean mightContain(@ParametricNullness T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);

        int ordinal();

        <T> boolean put(@ParametricNullness T t, Funnel<? super T> funnel, int i, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i, double d) {
        return create(funnel, i, d);
    }

    @VisibleForTesting
    public static long optimalNumOfBits(long j, double d) {
        if (d == 0.0d) {
            d = Double.MIN_VALUE;
        }
        return (long) ((Math.log(d) * (-j)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    @VisibleForTesting
    public static int optimalNumOfHashFunctions(long j, long j2) {
        return Math.max(1, (int) Math.round(Math.log(2.0d) * (j2 / j)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) {
        int i;
        int i2;
        int readInt;
        Preconditions.checkNotNull(inputStream, new ObfuscatedString(new long[]{7789837399725609780L, -2955125770545963864L, 4819833917085381255L}).toString());
        Preconditions.checkNotNull(funnel, new ObfuscatedString(new long[]{932972139585245216L, -2660049690259381057L}).toString());
        byte b = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte readByte = dataInputStream.readByte();
            try {
                i2 = UnsignedBytes.toInt(dataInputStream.readByte());
            } catch (RuntimeException e) {
                e = e;
                i2 = -1;
            }
            try {
                readInt = dataInputStream.readInt();
            } catch (RuntimeException e2) {
                e = e2;
                b = readByte;
                i = -1;
                StringBuilder sb = new StringBuilder(134);
                sb.append(new ObfuscatedString(new long[]{1738964636447712341L, -2160938373243361948L, -719535555757423886L, -495754731885656796L, -7169038847346347023L, 8629057780995845967L, 6557709425770949296L, 709032223252495457L, -2267935981709534324L, -7338822620332652089L}).toString());
                sb.append((int) b);
                sb.append(new ObfuscatedString(new long[]{-714194195038122022L, 6415969105807215395L, 3073805748461286371L, 4544002249187445826L}).toString());
                sb.append(i2);
                throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1690781342777769233L, 4188805598346309516L, -8139053483342610631L}), sb, i), e);
            }
            try {
                BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[readByte];
                BloomFilterStrategies.LockFreeBitArray lockFreeBitArray = new BloomFilterStrategies.LockFreeBitArray(LongMath.checkedMultiply(readInt, 64L));
                for (int i3 = 0; i3 < readInt; i3++) {
                    lockFreeBitArray.putData(i3, dataInputStream.readLong());
                }
                return new BloomFilter<>(lockFreeBitArray, i2, funnel, bloomFilterStrategies);
            } catch (RuntimeException e3) {
                e = e3;
                b = readByte;
                i = readInt;
                StringBuilder sb2 = new StringBuilder(134);
                sb2.append(new ObfuscatedString(new long[]{1738964636447712341L, -2160938373243361948L, -719535555757423886L, -495754731885656796L, -7169038847346347023L, 8629057780995845967L, 6557709425770949296L, 709032223252495457L, -2267935981709534324L, -7338822620332652089L}).toString());
                sb2.append((int) b);
                sb2.append(new ObfuscatedString(new long[]{-714194195038122022L, 6415969105807215395L, 3073805748461286371L, 4544002249187445826L}).toString());
                sb2.append(i2);
                throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1690781342777769233L, 4188805598346309516L, -8139053483342610631L}), sb2, i), e);
            }
        } catch (RuntimeException e4) {
            e = e4;
            i = -1;
            i2 = -1;
        }
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(@ParametricNullness T t) {
        return mightContain(t);
    }

    public long approximateElementCount() {
        double bitSize = this.bits.bitSize();
        return DoubleMath.roundToLong(((-Math.log1p(-(this.bits.bitCount() / bitSize))) * bitSize) / this.numHashFunctions, RoundingMode.HALF_UP);
    }

    @VisibleForTesting
    public long bitSize() {
        return this.bits.bitSize();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.copy(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        if (this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy)) {
            return true;
        }
        return false;
    }

    public double expectedFpp() {
        return Math.pow(this.bits.bitCount() / bitSize(), this.numHashFunctions);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        if (this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel)) {
            return true;
        }
        return false;
    }

    public boolean mightContain(@ParametricNullness T t) {
        return this.strategy.mightContain(t, this.funnel, this.numHashFunctions, this.bits);
    }

    @CanIgnoreReturnValue
    public boolean put(@ParametricNullness T t) {
        return this.strategy.put(t, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        boolean z;
        boolean z2;
        boolean z3;
        Preconditions.checkNotNull(bloomFilter);
        if (this != bloomFilter) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{3500720104237552932L, -640451888169084329L, -8602387922588412198L, -5828210447339405504L, 1249905111513072285L, -3275525638842661335L, -6327199165107057882L}).toString());
        if (this.numHashFunctions == bloomFilter.numHashFunctions) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2, new ObfuscatedString(new long[]{-612939533004564116L, 7189149201880014818L, 3350223806926932483L, 1682798219273518722L, 648317631530851646L, -2944004307977076857L, 6897921634730111414L, -6027997901758781548L, -9149271926383820184L, 5203597837281594773L}).toString(), this.numHashFunctions, bloomFilter.numHashFunctions);
        if (bitSize() == bloomFilter.bitSize()) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{-592207484406583169L, 2117575540627856934L, -259800060712451943L, -4112218092906719338L, 2039665036628348319L, -7685158166092941006L, 8450501115653531609L, 1157111258611597491L, 5899265404349746052L, 8293859094473487042L}).toString(), bitSize(), bloomFilter.bitSize());
        Preconditions.checkArgument(this.strategy.equals(bloomFilter.strategy), new ObfuscatedString(new long[]{2948390834402153866L, 2322452273297549918L, -2080956187881679820L, -3152712322160963629L, 9201052848355452050L, 2440467795555675889L, 9169179973535942474L, 163049229999123824L}).toString(), this.strategy, bloomFilter.strategy);
        Preconditions.checkArgument(this.funnel.equals(bloomFilter.funnel), new ObfuscatedString(new long[]{8263888685970461754L, 4230994057489043353L, -1434722720091213543L, 8670441437555492448L, -8739092176988189922L, -8175658701529486026L, -7651322818389829594L}).toString(), this.funnel, bloomFilter.funnel);
        this.bits.putAll(bloomFilter.bits);
    }

    public void writeTo(OutputStream outputStream) {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.checkedCast(this.strategy.ordinal()));
        dataOutputStream.writeByte(UnsignedBytes.checkedCast(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.data.length());
        for (int i = 0; i < this.bits.data.length(); i++) {
            dataOutputStream.writeLong(this.bits.data.get(i));
        }
    }

    private BloomFilter(BloomFilterStrategies.LockFreeBitArray lockFreeBitArray, int i, Funnel<? super T> funnel, Strategy strategy) {
        Preconditions.checkArgument(i > 0, new ObfuscatedString(new long[]{-2098073678805439300L, 2029149771017380261L, 93185469929914080L, 7404339465584089870L, 6904382552048507266L, -6841536313382894180L}).toString(), i);
        Preconditions.checkArgument(i <= 255, new ObfuscatedString(new long[]{-17829378846326320L, -8913813495765706613L, 2816491322437651219L, -7299289710105685538L, -1920661257124173708L, 6635947274813232104L}).toString(), i);
        this.bits = (BloomFilterStrategies.LockFreeBitArray) Preconditions.checkNotNull(lockFreeBitArray);
        this.numHashFunctions = i;
        this.funnel = (Funnel) Preconditions.checkNotNull(funnel);
        this.strategy = (Strategy) Preconditions.checkNotNull(strategy);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d) {
        return create(funnel, j, d, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    @VisibleForTesting
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j, double d, Strategy strategy) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j >= 0, new ObfuscatedString(new long[]{-1327315372306572276L, 192172133066587243L, -141275095036162893L, -2301253240810503352L, -3902562025599452666L, 1990892108364034507L}).toString(), j);
        Preconditions.checkArgument(d > 0.0d, new ObfuscatedString(new long[]{-4687029338843527883L, -5408755942747860600L, -6023440580823372434L, 6671448506688438147L, -4838776194353703040L, 5013369532578917894L, 2669978313082623012L}).toString(), Double.valueOf(d));
        Preconditions.checkArgument(d < 1.0d, new ObfuscatedString(new long[]{3171241514458445524L, -1429028442551121634L, -1364076174458854908L, 6523127819031822580L, 9027571951151711361L, -1262658219272896093L, 4910261564812083208L}).toString(), Double.valueOf(d));
        Preconditions.checkNotNull(strategy);
        if (j == 0) {
            j = 1;
        }
        long optimalNumOfBits = optimalNumOfBits(j, d);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.LockFreeBitArray(optimalNumOfBits), optimalNumOfHashFunctions(j, optimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder(57);
            sb.append(new ObfuscatedString(new long[]{-3504130949459467473L, -2120757504841010600L, -1476518638853459279L, -5632889149404096144L, -1440206748199638330L}).toString());
            sb.append(optimalNumOfBits);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2863088446861090054L, 5079305827978535074L}), sb), e);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i) {
        return create(funnel, i);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j) {
        return create(funnel, j, 0.03d);
    }
}
