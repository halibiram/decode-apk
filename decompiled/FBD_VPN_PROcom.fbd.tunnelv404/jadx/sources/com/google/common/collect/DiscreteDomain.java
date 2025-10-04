package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class DiscreteDomain<C extends Comparable> {
    final boolean supportsFastOffset;

    /* loaded from: classes2.dex */
    public static final class BigIntegerDomain extends DiscreteDomain<BigInteger> implements Serializable {
        private static final long serialVersionUID = 0;
        private static final BigIntegerDomain INSTANCE = new BigIntegerDomain();
        private static final BigInteger MIN_LONG = BigInteger.valueOf(Long.MIN_VALUE);
        private static final BigInteger MAX_LONG = BigInteger.valueOf(Long.MAX_VALUE);

        public BigIntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{2536111102731806885L, -846324219627618281L, 7235097107287167306L, 430598704911795975L, -3795255315926690131L}).toString();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger2.subtract(bigInteger).max(MIN_LONG).min(MAX_LONG).longValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger next(BigInteger bigInteger) {
            return bigInteger.add(BigInteger.ONE);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger offset(BigInteger bigInteger, long j) {
            CollectPreconditions.checkNonnegative(j, new ObfuscatedString(new long[]{-6698676238828851256L, -2736641092851404187L}).toString());
            return bigInteger.add(BigInteger.valueOf(j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        public BigInteger previous(BigInteger bigInteger) {
            return bigInteger.subtract(BigInteger.ONE);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IntegerDomain extends DiscreteDomain<Integer> implements Serializable {
        private static final IntegerDomain INSTANCE = new IntegerDomain();
        private static final long serialVersionUID = 0;

        public IntegerDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-1996731220598261955L, 2200920174854212112L, 3372040730136066544L, 5387269922302228040L, -4526447092652253978L}).toString();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Integer num, Integer num2) {
            return num2.intValue() - num.intValue();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer maxValue() {
            return Integer.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer minValue() {
            return Integer.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Integer next(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MAX_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Integer offset(Integer num, long j) {
            CollectPreconditions.checkNonnegative(j, new ObfuscatedString(new long[]{-3027039623435151104L, 1168853060285369457L}).toString());
            return Integer.valueOf(Ints.checkedCast(num.longValue() + j));
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Integer previous(Integer num) {
            int intValue = num.intValue();
            if (intValue == Integer.MIN_VALUE) {
                return null;
            }
            return Integer.valueOf(intValue - 1);
        }
    }

    /* loaded from: classes2.dex */
    public static final class LongDomain extends DiscreteDomain<Long> implements Serializable {
        private static final LongDomain INSTANCE = new LongDomain();
        private static final long serialVersionUID = 0;

        public LongDomain() {
            super(true);
        }

        private Object readResolve() {
            return INSTANCE;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-5777230653901228671L, -8621099809561394044L, -3450313843723276833L, 4585690778312717338L}).toString();
        }

        @Override // com.google.common.collect.DiscreteDomain
        public long distance(Long l, Long l2) {
            long longValue = l2.longValue() - l.longValue();
            if (l2.longValue() > l.longValue() && longValue < 0) {
                return Long.MAX_VALUE;
            }
            if (l2.longValue() >= l.longValue() || longValue <= 0) {
                return longValue;
            }
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long maxValue() {
            return Long.MAX_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long minValue() {
            return Long.MIN_VALUE;
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Long next(Long l) {
            long longValue = l.longValue();
            if (longValue == Long.MAX_VALUE) {
                return null;
            }
            return Long.valueOf(longValue + 1);
        }

        @Override // com.google.common.collect.DiscreteDomain
        public Long offset(Long l, long j) {
            CollectPreconditions.checkNonnegative(j, new ObfuscatedString(new long[]{7294337923720548722L, -1645217098139501648L}).toString());
            long longValue = l.longValue() + j;
            if (longValue < 0) {
                Preconditions.checkArgument(l.longValue() < 0, new ObfuscatedString(new long[]{-2081522318950156795L, 8443429948540469940L}).toString());
            }
            return Long.valueOf(longValue);
        }

        @Override // com.google.common.collect.DiscreteDomain
        @CheckForNull
        public Long previous(Long l) {
            long longValue = l.longValue();
            if (longValue == Long.MIN_VALUE) {
                return null;
            }
            return Long.valueOf(longValue - 1);
        }
    }

    public static DiscreteDomain<BigInteger> bigIntegers() {
        return BigIntegerDomain.INSTANCE;
    }

    public static DiscreteDomain<Integer> integers() {
        return IntegerDomain.INSTANCE;
    }

    public static DiscreteDomain<Long> longs() {
        return LongDomain.INSTANCE;
    }

    public abstract long distance(C c, C c2);

    @CanIgnoreReturnValue
    public C maxValue() {
        throw new NoSuchElementException();
    }

    @CanIgnoreReturnValue
    public C minValue() {
        throw new NoSuchElementException();
    }

    @CheckForNull
    public abstract C next(C c);

    public C offset(C c, long j) {
        CollectPreconditions.checkNonnegative(j, new ObfuscatedString(new long[]{-2690537434090509864L, 7253238823715013597L}).toString());
        C c2 = c;
        for (long j2 = 0; j2 < j; j2++) {
            c2 = next(c2);
            if (c2 == null) {
                String valueOf = String.valueOf(c);
                StringBuilder sb = new StringBuilder(valueOf.length() + 51);
                sb.append(new ObfuscatedString(new long[]{-5475283406812685033L, 2063650646042886348L, -7161522578958421688L, -9052956041381937066L, 4339826260454077788L}).toString());
                sb.append(valueOf);
                sb.append(new ObfuscatedString(new long[]{-1530208097734573493L, -5397700154240078624L}).toString());
                sb.append(j);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3516764651106069955L, -3801081248867091817L}), sb));
            }
        }
        return c2;
    }

    @CheckForNull
    public abstract C previous(C c);

    public DiscreteDomain() {
        this(false);
    }

    private DiscreteDomain(boolean z) {
        this.supportsFastOffset = z;
    }
}
