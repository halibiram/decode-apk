package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CheckReturnValue;
import com.google.errorprone.annotations.ForOverride;
import com.google.errorprone.annotations.InlineMe;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.util.Iterator;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class Converter<A, B> implements Function<A, B> {
    private final boolean handleNullAutomatically;

    @RetainedWith
    @CheckForNull
    @LazyInit
    private transient Converter<B, A> reverse;

    /* loaded from: classes2.dex */
    public static final class ConverterComposition<A, B, C> extends Converter<A, C> implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter<A, B> first;
        final Converter<B, C> second;

        public ConverterComposition(Converter<A, B> converter, Converter<B, C> converter2) {
            this.first = converter;
            this.second = converter2;
        }

        @Override // com.google.common.base.Converter
        @CheckForNull
        public A correctedDoBackward(@CheckForNull C c) {
            return (A) this.first.correctedDoBackward(this.second.correctedDoBackward(c));
        }

        @Override // com.google.common.base.Converter
        @CheckForNull
        public C correctedDoForward(@CheckForNull A a) {
            return (C) this.second.correctedDoForward(this.first.correctedDoForward(a));
        }

        @Override // com.google.common.base.Converter
        public A doBackward(C c) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public C doForward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ConverterComposition)) {
                return false;
            }
            ConverterComposition converterComposition = (ConverterComposition) obj;
            if (!this.first.equals(converterComposition.first) || !this.second.equals(converterComposition.second)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.second.hashCode() + (this.first.hashCode() * 31);
        }

        public String toString() {
            String valueOf = String.valueOf(this.first);
            String valueOf2 = String.valueOf(this.second);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 10, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-4405777002042343587L, 5019277738670146618L, 3361999495283010086L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3014065169627884121L, -4632802653508864663L}), m2938x1aebc6d9);
        }
    }

    /* loaded from: classes2.dex */
    public static final class FunctionBasedConverter<A, B> extends Converter<A, B> implements Serializable {
        private final Function<? super B, ? extends A> backwardFunction;
        private final Function<? super A, ? extends B> forwardFunction;

        @Override // com.google.common.base.Converter
        public A doBackward(B b) {
            return this.backwardFunction.apply(b);
        }

        @Override // com.google.common.base.Converter
        public B doForward(A a) {
            return this.forwardFunction.apply(a);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof FunctionBasedConverter)) {
                return false;
            }
            FunctionBasedConverter functionBasedConverter = (FunctionBasedConverter) obj;
            if (!this.forwardFunction.equals(functionBasedConverter.forwardFunction) || !this.backwardFunction.equals(functionBasedConverter.backwardFunction)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.backwardFunction.hashCode() + (this.forwardFunction.hashCode() * 31);
        }

        public String toString() {
            String valueOf = String.valueOf(this.forwardFunction);
            String valueOf2 = String.valueOf(this.backwardFunction);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 18);
            sb.append(new ObfuscatedString(new long[]{-5856367618161161397L, -334601820815741896L, 410484470443032486L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-7763138557814333606L, 3761215978378257193L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3967980351349472261L, -6421429240293524929L}), sb);
        }

        private FunctionBasedConverter(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
            this.forwardFunction = (Function) Preconditions.checkNotNull(function);
            this.backwardFunction = (Function) Preconditions.checkNotNull(function2);
        }
    }

    /* loaded from: classes2.dex */
    public static final class IdentityConverter<T> extends Converter<T, T> implements Serializable {
        static final IdentityConverter<?> INSTANCE = new IdentityConverter<>();
        private static final long serialVersionUID = 0;

        private IdentityConverter() {
        }

        private Object readResolve() {
            return INSTANCE;
        }

        @Override // com.google.common.base.Converter
        public <S> Converter<T, S> doAndThen(Converter<T, S> converter) {
            return (Converter) Preconditions.checkNotNull(converter, new ObfuscatedString(new long[]{-7686867543138661358L, -1372991944918426572L, -3503072392619650320L}).toString());
        }

        @Override // com.google.common.base.Converter
        public T doBackward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public T doForward(T t) {
            return t;
        }

        @Override // com.google.common.base.Converter
        public IdentityConverter<T> reverse() {
            return this;
        }

        public String toString() {
            return new ObfuscatedString(new long[]{-1019615276203288533L, -5008192934761046114L, 8443850254820065170L, -4272490860288234387L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class ReverseConverter<A, B> extends Converter<B, A> implements Serializable {
        private static final long serialVersionUID = 0;
        final Converter<A, B> original;

        public ReverseConverter(Converter<A, B> converter) {
            this.original = converter;
        }

        @Override // com.google.common.base.Converter
        @CheckForNull
        public B correctedDoBackward(@CheckForNull A a) {
            return this.original.correctedDoForward(a);
        }

        @Override // com.google.common.base.Converter
        @CheckForNull
        public A correctedDoForward(@CheckForNull B b) {
            return this.original.correctedDoBackward(b);
        }

        @Override // com.google.common.base.Converter
        public B doBackward(A a) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter
        public A doForward(B b) {
            throw new AssertionError();
        }

        @Override // com.google.common.base.Converter, com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof ReverseConverter) {
                return this.original.equals(((ReverseConverter) obj).original);
            }
            return false;
        }

        public int hashCode() {
            return ~this.original.hashCode();
        }

        @Override // com.google.common.base.Converter
        public Converter<A, B> reverse() {
            return this.original;
        }

        public String toString() {
            String valueOf = String.valueOf(this.original);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6620472068131144351L, -2580554443063612825L, 6320673631392480155L}), AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + 10, valueOf));
        }
    }

    public Converter() {
        this(true);
    }

    public static <A, B> Converter<A, B> from(Function<? super A, ? extends B> function, Function<? super B, ? extends A> function2) {
        return new FunctionBasedConverter(function, function2);
    }

    public static <T> Converter<T, T> identity() {
        return IdentityConverter.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    private A unsafeDoBackward(@CheckForNull B b) {
        return (A) doBackward(NullnessCasts.uncheckedCastNullableTToT(b));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckForNull
    private B unsafeDoForward(@CheckForNull A a) {
        return (B) doForward(NullnessCasts.uncheckedCastNullableTToT(a));
    }

    public final <C> Converter<A, C> andThen(Converter<B, C> converter) {
        return doAndThen(converter);
    }

    @Override // com.google.common.base.Function
    @CheckForNull
    @Deprecated
    @CanIgnoreReturnValue
    @InlineMe(replacement = "this.convert(a)")
    public final B apply(@CheckForNull A a) {
        return convert(a);
    }

    @CanIgnoreReturnValue
    @CheckForNull
    public final B convert(@CheckForNull A a) {
        return correctedDoForward(a);
    }

    @CanIgnoreReturnValue
    public Iterable<B> convertAll(final Iterable<? extends A> iterable) {
        Preconditions.checkNotNull(iterable, new ObfuscatedString(new long[]{-7677572496212195749L, 7032443642220337255L, -6256375400570760224L}).toString());
        return new Iterable<B>() { // from class: com.google.common.base.Converter.1
            @Override // java.lang.Iterable
            public Iterator<B> iterator() {
                return new Iterator<B>() { // from class: com.google.common.base.Converter.1.1
                    private final Iterator<? extends A> fromIterator;

                    {
                        this.fromIterator = iterable.iterator();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return this.fromIterator.hasNext();
                    }

                    @Override // java.util.Iterator
                    @CheckForNull
                    public B next() {
                        return (B) Converter.this.convert(this.fromIterator.next());
                    }

                    @Override // java.util.Iterator
                    public void remove() {
                        this.fromIterator.remove();
                    }
                };
            }
        };
    }

    @CheckForNull
    public A correctedDoBackward(@CheckForNull B b) {
        if (this.handleNullAutomatically) {
            if (b == null) {
                return null;
            }
            return (A) Preconditions.checkNotNull(doBackward(b));
        }
        return unsafeDoBackward(b);
    }

    @CheckForNull
    public B correctedDoForward(@CheckForNull A a) {
        if (this.handleNullAutomatically) {
            if (a == null) {
                return null;
            }
            return (B) Preconditions.checkNotNull(doForward(a));
        }
        return unsafeDoForward(a);
    }

    public <C> Converter<A, C> doAndThen(Converter<B, C> converter) {
        return new ConverterComposition(this, (Converter) Preconditions.checkNotNull(converter));
    }

    @ForOverride
    public abstract A doBackward(B b);

    @ForOverride
    public abstract B doForward(A a);

    @Override // com.google.common.base.Function
    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    @CheckReturnValue
    public Converter<B, A> reverse() {
        Converter<B, A> converter = this.reverse;
        if (converter == null) {
            ReverseConverter reverseConverter = new ReverseConverter(this);
            this.reverse = reverseConverter;
            return reverseConverter;
        }
        return converter;
    }

    public Converter(boolean z) {
        this.handleNullAutomatically = z;
    }
}
