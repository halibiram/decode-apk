package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import com.panda912.muddy.ObfuscatedString;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@Beta
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Stats implements Serializable {
    static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    public Stats(long j, double d, double d2, double d3, double d4) {
        this.count = j;
        this.mean = d;
        this.sumOfSquaresOfDeltas = d2;
        this.min = d3;
        this.max = d4;
    }

    public static Stats fromByteArray(byte[] bArr) {
        boolean z;
        Preconditions.checkNotNull(bArr);
        if (bArr.length == 40) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6741869596358695779L, 3197339075688557685L, 7831236662144950284L, -8269833150617156116L, 830258023736293868L, -8477360762741188392L, 1505838828480828841L}).toString(), 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iterable);
        return statsAccumulator.snapshot();
    }

    public static Stats readFrom(ByteBuffer byteBuffer) {
        boolean z;
        Preconditions.checkNotNull(byteBuffer);
        if (byteBuffer.remaining() >= 40) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-2455943884123527294L, -1215225984153233041L, 992753403564169159L, 5681052774426031004L, 6376664091058622494L, 1780259573762369585L, 7288138158899849538L, -2472220910020232200L}).toString(), 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public long count() {
        return this.count;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        if (this.count != stats.count || Double.doubleToLongBits(this.mean) != Double.doubleToLongBits(stats.mean) || Double.doubleToLongBits(this.sumOfSquaresOfDeltas) != Double.doubleToLongBits(stats.sumOfSquaresOfDeltas) || Double.doubleToLongBits(this.min) != Double.doubleToLongBits(stats.min) || Double.doubleToLongBits(this.max) != Double.doubleToLongBits(stats.max)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        boolean z;
        if (this.count != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        return this.max;
    }

    public double mean() {
        boolean z;
        if (this.count != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        return this.mean;
    }

    public double min() {
        boolean z;
        if (this.count != 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        boolean z;
        if (this.count > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / count();
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        boolean z;
        if (this.count > 1) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / (this.count - 1);
    }

    public double sum() {
        return this.mean * this.count;
    }

    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(order);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            return MoreObjects.toStringHelper(this).add(new ObfuscatedString(new long[]{6275928437167321803L, 2546046070868418285L}).toString(), this.count).add(new ObfuscatedString(new long[]{5168722322550984479L, 2886000134677405462L}).toString(), this.mean).add(new ObfuscatedString(new long[]{2804846895619363114L, 4300269005475971688L, 5252190424187126381L, -2351123702593930283L, 7793860879063419780L}).toString(), populationStandardDeviation()).add(new ObfuscatedString(new long[]{-4344964129911764061L, 6714778363444174478L}).toString(), this.min).add(new ObfuscatedString(new long[]{-8979497181994956501L, -4881570707077961230L}).toString(), this.max).toString();
        }
        return MoreObjects.toStringHelper(this).add(new ObfuscatedString(new long[]{9218138452221994767L, 8390765361910319314L}).toString(), this.count).toString();
    }

    public void writeTo(ByteBuffer byteBuffer) {
        boolean z;
        Preconditions.checkNotNull(byteBuffer);
        if (byteBuffer.remaining() >= 40) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{8248693744951660396L, -6789612789451085426L, -1516748857249720697L, 5983162636131793786L, 3202193355030419071L, 4147186171484963085L, -1208157967808265895L, -3046017357730171059L}).toString(), 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static double meanOf(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext());
        double doubleValue = it.next().doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double doubleValue2 = it.next().doubleValue();
            j++;
            doubleValue = (Doubles.isFinite(doubleValue2) && Doubles.isFinite(doubleValue)) ? ((doubleValue2 - doubleValue) / j) + doubleValue : StatsAccumulator.calculateNewMeanNonFinite(doubleValue, doubleValue2);
        }
        return doubleValue;
    }

    public static Stats of(Iterator<? extends Number> it) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(it);
        return statsAccumulator.snapshot();
    }

    public static Stats of(double... dArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(dArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d2 = dArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? ((d2 - d) / (i + 1)) + d : StatsAccumulator.calculateNewMeanNonFinite(d, d2);
        }
        return d;
    }

    public static Stats of(int... iArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(long... jArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(jArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double d = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d2 = iArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? ((d2 - d) / (i + 1)) + d : StatsAccumulator.calculateNewMeanNonFinite(d, d2);
        }
        return d;
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double d = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d2 = jArr[i];
            d = (Doubles.isFinite(d2) && Doubles.isFinite(d)) ? ((d2 - d) / (i + 1)) + d : StatsAccumulator.calculateNewMeanNonFinite(d, d2);
        }
        return d;
    }
}
