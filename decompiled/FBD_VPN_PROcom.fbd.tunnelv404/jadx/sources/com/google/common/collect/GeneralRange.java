package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.io.Serializable;
import java.util.Comparator;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@GwtCompatible(serializable = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class GeneralRange<T> implements Serializable {
    private final Comparator<? super T> comparator;
    private final boolean hasLowerBound;
    private final boolean hasUpperBound;
    private final BoundType lowerBoundType;

    @CheckForNull
    private final T lowerEndpoint;

    @CheckForNull
    private transient GeneralRange<T> reverse;
    private final BoundType upperBoundType;

    @CheckForNull
    private final T upperEndpoint;

    private GeneralRange(Comparator<? super T> comparator, boolean z, @CheckForNull T t, BoundType boundType, boolean z2, @CheckForNull T t2, BoundType boundType2) {
        boolean z3;
        this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
        this.hasLowerBound = z;
        this.hasUpperBound = z2;
        this.lowerEndpoint = t;
        this.lowerBoundType = (BoundType) Preconditions.checkNotNull(boundType);
        this.upperEndpoint = t2;
        this.upperBoundType = (BoundType) Preconditions.checkNotNull(boundType2);
        if (z) {
            comparator.compare((Object) NullnessCasts.uncheckedCastNullableTToT(t), (Object) NullnessCasts.uncheckedCastNullableTToT(t));
        }
        if (z2) {
            comparator.compare((Object) NullnessCasts.uncheckedCastNullableTToT(t2), (Object) NullnessCasts.uncheckedCastNullableTToT(t2));
        }
        if (z && z2) {
            int compare = comparator.compare((Object) NullnessCasts.uncheckedCastNullableTToT(t), (Object) NullnessCasts.uncheckedCastNullableTToT(t2));
            if (compare <= 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            Preconditions.checkArgument(z3, new ObfuscatedString(new long[]{5023352592972148186L, 6891861406850516072L, -631671891791123310L, 8236716059608981304L, 2041379856880730187L, -1604790738739573004L}).toString(), t, t2);
            if (compare == 0) {
                BoundType boundType3 = BoundType.OPEN;
                Preconditions.checkArgument((boundType == boundType3 && boundType2 == boundType3) ? false : true);
            }
        }
    }

    public static <T> GeneralRange<T> all(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new GeneralRange<>(comparator, false, null, boundType, false, null, boundType);
    }

    public static <T> GeneralRange<T> downTo(Comparator<? super T> comparator, @ParametricNullness T t, BoundType boundType) {
        return new GeneralRange<>(comparator, true, t, boundType, false, null, BoundType.OPEN);
    }

    public static <T extends Comparable> GeneralRange<T> from(Range<T> range) {
        T t;
        BoundType boundType;
        BoundType boundType2;
        T t2 = null;
        if (range.hasLowerBound()) {
            t = range.lowerEndpoint();
        } else {
            t = null;
        }
        if (range.hasLowerBound()) {
            boundType = range.lowerBoundType();
        } else {
            boundType = BoundType.OPEN;
        }
        BoundType boundType3 = boundType;
        if (range.hasUpperBound()) {
            t2 = range.upperEndpoint();
        }
        T t3 = t2;
        if (range.hasUpperBound()) {
            boundType2 = range.upperBoundType();
        } else {
            boundType2 = BoundType.OPEN;
        }
        return new GeneralRange<>(Ordering.natural(), range.hasLowerBound(), t, boundType3, range.hasUpperBound(), t3, boundType2);
    }

    public static <T> GeneralRange<T> range(Comparator<? super T> comparator, @ParametricNullness T t, BoundType boundType, @ParametricNullness T t2, BoundType boundType2) {
        return new GeneralRange<>(comparator, true, t, boundType, true, t2, boundType2);
    }

    public static <T> GeneralRange<T> upTo(Comparator<? super T> comparator, @ParametricNullness T t, BoundType boundType) {
        return new GeneralRange<>(comparator, false, null, BoundType.OPEN, true, t, boundType);
    }

    public Comparator<? super T> comparator() {
        return this.comparator;
    }

    public boolean contains(@ParametricNullness T t) {
        if (!tooLow(t) && !tooHigh(t)) {
            return true;
        }
        return false;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof GeneralRange)) {
            return false;
        }
        GeneralRange generalRange = (GeneralRange) obj;
        if (!this.comparator.equals(generalRange.comparator) || this.hasLowerBound != generalRange.hasLowerBound || this.hasUpperBound != generalRange.hasUpperBound || !getLowerBoundType().equals(generalRange.getLowerBoundType()) || !getUpperBoundType().equals(generalRange.getUpperBoundType()) || !Objects.equal(getLowerEndpoint(), generalRange.getLowerEndpoint()) || !Objects.equal(getUpperEndpoint(), generalRange.getUpperEndpoint())) {
            return false;
        }
        return true;
    }

    public BoundType getLowerBoundType() {
        return this.lowerBoundType;
    }

    @CheckForNull
    public T getLowerEndpoint() {
        return this.lowerEndpoint;
    }

    public BoundType getUpperBoundType() {
        return this.upperBoundType;
    }

    @CheckForNull
    public T getUpperEndpoint() {
        return this.upperEndpoint;
    }

    public boolean hasLowerBound() {
        return this.hasLowerBound;
    }

    public boolean hasUpperBound() {
        return this.hasUpperBound;
    }

    public int hashCode() {
        return Objects.hashCode(this.comparator, getLowerEndpoint(), getLowerBoundType(), getUpperEndpoint(), getUpperBoundType());
    }

    public GeneralRange<T> intersect(GeneralRange<T> generalRange) {
        int compare;
        int compare2;
        T t;
        BoundType boundType;
        BoundType boundType2;
        int compare3;
        BoundType boundType3;
        Preconditions.checkNotNull(generalRange);
        Preconditions.checkArgument(this.comparator.equals(generalRange.comparator));
        boolean z = this.hasLowerBound;
        T lowerEndpoint = getLowerEndpoint();
        BoundType lowerBoundType = getLowerBoundType();
        if (!hasLowerBound()) {
            z = generalRange.hasLowerBound;
            lowerEndpoint = generalRange.getLowerEndpoint();
            lowerBoundType = generalRange.getLowerBoundType();
        } else if (generalRange.hasLowerBound() && ((compare = this.comparator.compare(getLowerEndpoint(), generalRange.getLowerEndpoint())) < 0 || (compare == 0 && generalRange.getLowerBoundType() == BoundType.OPEN))) {
            lowerEndpoint = generalRange.getLowerEndpoint();
            lowerBoundType = generalRange.getLowerBoundType();
        }
        boolean z2 = z;
        boolean z3 = this.hasUpperBound;
        T upperEndpoint = getUpperEndpoint();
        BoundType upperBoundType = getUpperBoundType();
        if (!hasUpperBound()) {
            z3 = generalRange.hasUpperBound;
            upperEndpoint = generalRange.getUpperEndpoint();
            upperBoundType = generalRange.getUpperBoundType();
        } else if (generalRange.hasUpperBound() && ((compare2 = this.comparator.compare(getUpperEndpoint(), generalRange.getUpperEndpoint())) > 0 || (compare2 == 0 && generalRange.getUpperBoundType() == BoundType.OPEN))) {
            upperEndpoint = generalRange.getUpperEndpoint();
            upperBoundType = generalRange.getUpperBoundType();
        }
        boolean z4 = z3;
        T t2 = upperEndpoint;
        if (z2 && z4 && ((compare3 = this.comparator.compare(lowerEndpoint, t2)) > 0 || (compare3 == 0 && lowerBoundType == (boundType3 = BoundType.OPEN) && upperBoundType == boundType3))) {
            boundType = BoundType.OPEN;
            boundType2 = BoundType.CLOSED;
            t = t2;
        } else {
            t = lowerEndpoint;
            boundType = lowerBoundType;
            boundType2 = upperBoundType;
        }
        return new GeneralRange<>(this.comparator, z2, t, boundType, z4, t2, boundType2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean isEmpty() {
        if ((hasUpperBound() && tooLow(NullnessCasts.uncheckedCastNullableTToT(getUpperEndpoint()))) || (hasLowerBound() && tooHigh(NullnessCasts.uncheckedCastNullableTToT(getLowerEndpoint())))) {
            return true;
        }
        return false;
    }

    public GeneralRange<T> reverse() {
        GeneralRange<T> generalRange = this.reverse;
        if (generalRange == null) {
            GeneralRange<T> generalRange2 = new GeneralRange<>(Ordering.from(this.comparator).reverse(), this.hasUpperBound, getUpperEndpoint(), getUpperBoundType(), this.hasLowerBound, getLowerEndpoint(), getLowerBoundType());
            generalRange2.reverse = this;
            this.reverse = generalRange2;
            return generalRange2;
        }
        return generalRange;
    }

    public String toString() {
        char c;
        Object obfuscatedString;
        Object obfuscatedString2;
        char c2;
        String valueOf = String.valueOf(this.comparator);
        BoundType boundType = this.lowerBoundType;
        BoundType boundType2 = BoundType.CLOSED;
        if (boundType == boundType2) {
            c = '[';
        } else {
            c = '(';
        }
        if (this.hasLowerBound) {
            obfuscatedString = this.lowerEndpoint;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3819022298832373466L, -3238111295539264866L}).toString();
        }
        String valueOf2 = String.valueOf(obfuscatedString);
        if (this.hasUpperBound) {
            obfuscatedString2 = this.upperEndpoint;
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{113221640388320264L, 4826412739734040533L}).toString();
        }
        String valueOf3 = String.valueOf(obfuscatedString2);
        if (this.upperBoundType == boundType2) {
            c2 = ']';
        } else {
            c2 = ')';
        }
        StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf3.length() + valueOf2.length() + valueOf.length() + 4, valueOf);
        m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-2862055238401603301L, 2755773760157558511L}).toString());
        m2938x1aebc6d9.append(c);
        m2938x1aebc6d9.append(valueOf2);
        m2938x1aebc6d9.append(',');
        m2938x1aebc6d9.append(valueOf3);
        m2938x1aebc6d9.append(c2);
        return m2938x1aebc6d9.toString();
    }

    public boolean tooHigh(@ParametricNullness T t) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (!hasUpperBound()) {
            return false;
        }
        int compare = this.comparator.compare(t, NullnessCasts.uncheckedCastNullableTToT(getUpperEndpoint()));
        if (compare > 0) {
            z = true;
        } else {
            z = false;
        }
        if (compare == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (getUpperBoundType() == BoundType.OPEN) {
            z3 = true;
        }
        return (z2 & z3) | z;
    }

    public boolean tooLow(@ParametricNullness T t) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (!hasLowerBound()) {
            return false;
        }
        int compare = this.comparator.compare(t, NullnessCasts.uncheckedCastNullableTToT(getLowerEndpoint()));
        if (compare < 0) {
            z = true;
        } else {
            z = false;
        }
        if (compare == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (getLowerBoundType() == BoundType.OPEN) {
            z3 = true;
        }
        return (z2 & z3) | z;
    }
}
