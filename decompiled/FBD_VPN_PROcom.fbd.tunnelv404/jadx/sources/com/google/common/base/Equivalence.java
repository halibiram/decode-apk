package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.ForOverride;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class Equivalence<T> {

    /* loaded from: classes2.dex */
    public static final class Equals extends Equivalence<Object> implements Serializable {
        static final Equals INSTANCE = new Equals();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return obj.equals(obj2);
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return obj.hashCode();
        }
    }

    /* loaded from: classes2.dex */
    public static final class EquivalentToPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<T> equivalence;

        @CheckForNull
        private final T target;

        public EquivalentToPredicate(Equivalence<T> equivalence, @CheckForNull T t) {
            this.equivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.target = t;
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@CheckForNull T t) {
            return this.equivalence.equivalent(t, this.target);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EquivalentToPredicate)) {
                return false;
            }
            EquivalentToPredicate equivalentToPredicate = (EquivalentToPredicate) obj;
            if (this.equivalence.equals(equivalentToPredicate.equivalence) && Objects.equal(this.target, equivalentToPredicate.target)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hashCode(this.equivalence, this.target);
        }

        public String toString() {
            String valueOf = String.valueOf(this.equivalence);
            String valueOf2 = String.valueOf(this.target);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 15, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{7972330708179916830L, -5528081438948804336L, 5326389191656242252L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9003397927775862374L, -2197037302387431960L}), m2938x1aebc6d9);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Identity extends Equivalence<Object> implements Serializable {
        static final Identity INSTANCE = new Identity();
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Equivalence
        public boolean doEquivalent(Object obj, Object obj2) {
            return false;
        }

        @Override // com.google.common.base.Equivalence
        public int doHash(Object obj) {
            return System.identityHashCode(obj);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Wrapper<T> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Equivalence<? super T> equivalence;

        @ParametricNullness
        private final T reference;

        public boolean equals(@CheckForNull Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof Wrapper) {
                Wrapper wrapper = (Wrapper) obj;
                if (this.equivalence.equals(wrapper.equivalence)) {
                    return this.equivalence.equivalent(this.reference, wrapper.reference);
                }
                return false;
            }
            return false;
        }

        @ParametricNullness
        public T get() {
            return this.reference;
        }

        public int hashCode() {
            return this.equivalence.hash(this.reference);
        }

        public String toString() {
            String valueOf = String.valueOf(this.equivalence);
            String valueOf2 = String.valueOf(this.reference);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 7, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{2278249831615020680L, 7077052186634763982L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-248858525587721284L, 9192597701117519694L}), m2938x1aebc6d9);
        }

        private Wrapper(Equivalence<? super T> equivalence, @ParametricNullness T t) {
            this.equivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
            this.reference = t;
        }
    }

    public static Equivalence<Object> equals() {
        return Equals.INSTANCE;
    }

    public static Equivalence<Object> identity() {
        return Identity.INSTANCE;
    }

    @ForOverride
    public abstract boolean doEquivalent(T t, T t2);

    @ForOverride
    public abstract int doHash(T t);

    public final boolean equivalent(@CheckForNull T t, @CheckForNull T t2) {
        if (t == t2) {
            return true;
        }
        if (t != null && t2 != null) {
            return doEquivalent(t, t2);
        }
        return false;
    }

    public final Predicate<T> equivalentTo(@CheckForNull T t) {
        return new EquivalentToPredicate(this, t);
    }

    public final int hash(@CheckForNull T t) {
        if (t == null) {
            return 0;
        }
        return doHash(t);
    }

    public final <F> Equivalence<F> onResultOf(Function<? super F, ? extends T> function) {
        return new FunctionalEquivalence(function, this);
    }

    @GwtCompatible(serializable = true)
    public final <S extends T> Equivalence<Iterable<S>> pairwise() {
        return new PairwiseEquivalence(this);
    }

    public final <S extends T> Wrapper<S> wrap(@ParametricNullness S s) {
        return new Wrapper<>(s);
    }
}
