package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Functions {

    /* loaded from: classes2.dex */
    public static class ConstantFunction<E> implements Function<Object, E>, Serializable {
        private static final long serialVersionUID = 0;

        @ParametricNullness
        private final E value;

        public ConstantFunction(@ParametricNullness E e) {
            this.value = e;
        }

        @Override // com.google.common.base.Function
        @ParametricNullness
        public E apply(@CheckForNull Object obj) {
            return this.value;
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof ConstantFunction) {
                return Objects.equal(this.value, ((ConstantFunction) obj).value);
            }
            return false;
        }

        public int hashCode() {
            E e = this.value;
            if (e == null) {
                return 0;
            }
            return e.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.value);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20);
            sb.append(new ObfuscatedString(new long[]{6445989132154186587L, -3220087609837340360L, 8657055386066009034L, -7739665327343588923L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8109009964200731746L, -6705576679943180285L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static class ForMapWithDefault<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;

        @ParametricNullness
        final V defaultValue;
        final Map<K, ? extends V> map;

        public ForMapWithDefault(Map<K, ? extends V> map, @ParametricNullness V v) {
            this.map = (Map) Preconditions.checkNotNull(map);
            this.defaultValue = v;
        }

        @Override // com.google.common.base.Function
        @ParametricNullness
        public V apply(@ParametricNullness K k) {
            V v = this.map.get(k);
            if (v == null && !this.map.containsKey(k)) {
                return this.defaultValue;
            }
            return (V) NullnessCasts.uncheckedCastNullableTToT(v);
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ForMapWithDefault)) {
                return false;
            }
            ForMapWithDefault forMapWithDefault = (ForMapWithDefault) obj;
            if (!this.map.equals(forMapWithDefault.map) || !Objects.equal(this.defaultValue, forMapWithDefault.defaultValue)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hashCode(this.map, this.defaultValue);
        }

        public String toString() {
            String valueOf = String.valueOf(this.map);
            String valueOf2 = String.valueOf(this.defaultValue);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 33);
            sb.append(new ObfuscatedString(new long[]{2698561727933795130L, -3250657018679975331L, 3378108617176782259L, -513305444853570452L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{4263198414776615809L, 2020705405351450508L, 8955667918604894309L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{544194743117550032L, 1720947546531930029L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static class FunctionComposition<A, B, C> implements Function<A, C>, Serializable {
        private static final long serialVersionUID = 0;
        private final Function<A, ? extends B> f;
        private final Function<B, C> g;

        public FunctionComposition(Function<B, C> function, Function<A, ? extends B> function2) {
            this.g = (Function) Preconditions.checkNotNull(function);
            this.f = (Function) Preconditions.checkNotNull(function2);
        }

        @Override // com.google.common.base.Function
        @ParametricNullness
        public C apply(@ParametricNullness A a) {
            return (C) this.g.apply(this.f.apply(a));
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof FunctionComposition)) {
                return false;
            }
            FunctionComposition functionComposition = (FunctionComposition) obj;
            if (!this.f.equals(functionComposition.f) || !this.g.equals(functionComposition.g)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.f.hashCode() ^ this.g.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.g);
            String valueOf2 = String.valueOf(this.f);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 2, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-7687104556654503058L, 245216155609820611L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5300446628107523387L, -8817204405112570039L}), m2938x1aebc6d9);
        }
    }

    /* loaded from: classes2.dex */
    public static class FunctionForMapNoDefault<K, V> implements Function<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> map;

        public FunctionForMapNoDefault(Map<K, V> map) {
            this.map = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.base.Function
        @ParametricNullness
        public V apply(@ParametricNullness K k) {
            boolean z;
            V v = this.map.get(k);
            if (v == null && !this.map.containsKey(k)) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-3536672321665658638L, 5967267433642752038L, 5627447648546304026L, 1610785050452475202L, 2234271612638999515L}).toString(), k);
            return (V) NullnessCasts.uncheckedCastNullableTToT(v);
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof FunctionForMapNoDefault) {
                return this.map.equals(((FunctionForMapNoDefault) obj).map);
            }
            return false;
        }

        public int hashCode() {
            return this.map.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.map);
            StringBuilder sb = new StringBuilder(valueOf.length() + 18);
            sb.append(new ObfuscatedString(new long[]{1744051623707985945L, -6415256115710015483L, -8872867368227085691L, 5246483816778412001L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{287681146165403027L, -5937242938258112196L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public enum IdentityFunction implements Function<Object, Object> {
        INSTANCE;

        @Override // com.google.common.base.Function
        @CheckForNull
        public Object apply(@CheckForNull Object obj) {
            return obj;
        }

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{-847983636541015898L, -6108475098405117956L, -9018303480348628905L, -9103550167576860897L}).toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class PredicateFunction<T> implements Function<T, Boolean>, Serializable {
        private static final long serialVersionUID = 0;
        private final Predicate<T> predicate;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.base.Function
        public /* bridge */ /* synthetic */ Boolean apply(@ParametricNullness Object obj) {
            return apply((PredicateFunction<T>) obj);
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof PredicateFunction) {
                return this.predicate.equals(((PredicateFunction) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return this.predicate.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.predicate);
            StringBuilder sb = new StringBuilder(valueOf.length() + 24);
            sb.append(new ObfuscatedString(new long[]{9170499577502774210L, -2424805913428265928L, 1784480052786907969L, -5244630685680581152L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5820794464673861857L, -7538021648267911509L}), sb);
        }

        private PredicateFunction(Predicate<T> predicate) {
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Function
        public Boolean apply(@ParametricNullness T t) {
            return Boolean.valueOf(this.predicate.apply(t));
        }
    }

    /* loaded from: classes2.dex */
    public static class SupplierFunction<F, T> implements Function<F, T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Supplier<T> supplier;

        @Override // com.google.common.base.Function
        @ParametricNullness
        public T apply(@ParametricNullness F f) {
            return this.supplier.get();
        }

        @Override // com.google.common.base.Function
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof SupplierFunction) {
                return this.supplier.equals(((SupplierFunction) obj).supplier);
            }
            return false;
        }

        public int hashCode() {
            return this.supplier.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.supplier);
            StringBuilder sb = new StringBuilder(valueOf.length() + 23);
            sb.append(new ObfuscatedString(new long[]{4953053940230668738L, 5793023947544230649L, 5796008380918179662L, 5336025711166311941L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3373893204144850895L, -2578965574199051912L}), sb);
        }

        private SupplierFunction(Supplier<T> supplier) {
            this.supplier = (Supplier) Preconditions.checkNotNull(supplier);
        }
    }

    /* loaded from: classes2.dex */
    public enum ToStringFunction implements Function<Object, String> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{8637270894854530448L, 123033966854734628L, 5429225542645954605L, 2145185982200233576L, 5171587325052966166L}).toString();
        }

        @Override // com.google.common.base.Function
        public String apply(Object obj) {
            Preconditions.checkNotNull(obj);
            return obj.toString();
        }
    }

    private Functions() {
    }

    public static <A, B, C> Function<A, C> compose(Function<B, C> function, Function<A, ? extends B> function2) {
        return new FunctionComposition(function, function2);
    }

    public static <E> Function<Object, E> constant(@ParametricNullness E e) {
        return new ConstantFunction(e);
    }

    public static <K, V> Function<K, V> forMap(Map<K, V> map) {
        return new FunctionForMapNoDefault(map);
    }

    public static <T> Function<T, Boolean> forPredicate(Predicate<T> predicate) {
        return new PredicateFunction(predicate);
    }

    public static <F, T> Function<F, T> forSupplier(Supplier<T> supplier) {
        return new SupplierFunction(supplier);
    }

    public static <E> Function<E, E> identity() {
        return IdentityFunction.INSTANCE;
    }

    public static Function<Object, String> toStringFunction() {
        return ToStringFunction.INSTANCE;
    }

    public static <K, V> Function<K, V> forMap(Map<K, ? extends V> map, @ParametricNullness V v) {
        return new ForMapWithDefault(map, v);
    }
}
