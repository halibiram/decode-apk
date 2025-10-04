package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Suppliers {

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class ExpiringMemoizingSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;
        final long durationNanos;
        volatile transient long expirationNanos;

        @CheckForNull
        volatile transient T value;

        public ExpiringMemoizingSupplier(Supplier<T> supplier, long j, TimeUnit timeUnit) {
            boolean z;
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
            this.durationNanos = timeUnit.toNanos(j);
            if (j > 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-2168343315446732653L, 447224298783436594L, -1232534458276212354L, -6203838885101959328L, 4687734412455605419L}).toString(), j, timeUnit);
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            long j = this.expirationNanos;
            long systemNanoTime = Platform.systemNanoTime();
            if (j == 0 || systemNanoTime - j >= 0) {
                synchronized (this) {
                    try {
                        if (j == this.expirationNanos) {
                            T t = this.delegate.get();
                            this.value = t;
                            long j2 = systemNanoTime + this.durationNanos;
                            if (j2 == 0) {
                                j2 = 1;
                            }
                            this.expirationNanos = j2;
                            return t;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return (T) NullnessCasts.uncheckedCastNullableTToT(this.value);
        }

        public String toString() {
            String valueOf = String.valueOf(this.delegate);
            long j = this.durationNanos;
            StringBuilder sb = new StringBuilder(valueOf.length() + 62);
            sb.append(new ObfuscatedString(new long[]{-2418213224980744082L, -1113522167131305125L, 2286966292386477772L, -2645235433200488973L, -3657132335404353462L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-902736531432653985L, -8898837037384183292L}).toString());
            sb.append(j);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3498016443843879541L, -2375794929676994574L}), sb);
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class MemoizingSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;
        volatile transient boolean initialized;

        @CheckForNull
        transient T value;

        public MemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    try {
                        if (!this.initialized) {
                            T t = this.delegate.get();
                            this.value = t;
                            this.initialized = true;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) NullnessCasts.uncheckedCastNullableTToT(this.value);
        }

        public String toString() {
            Object obj;
            if (this.initialized) {
                String valueOf = String.valueOf(this.value);
                StringBuilder sb = new StringBuilder(valueOf.length() + 25);
                sb.append(new ObfuscatedString(new long[]{5581071680953178232L, 8592063541285048592L, 7161323661166059188L, -7023641513481025956L}).toString());
                sb.append(valueOf);
                obj = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8790928330493241698L, 7203577270705987901L}), sb);
            } else {
                obj = this.delegate;
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
            sb2.append(new ObfuscatedString(new long[]{-678739224952415550L, -7516532556122307625L, 1973472791133638775L, -2846826207448199261L}).toString());
            sb2.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3174392283517634728L, 6088747752937975725L}), sb2);
        }
    }

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class NonSerializableMemoizingSupplier<T> implements Supplier<T> {

        @CheckForNull
        volatile Supplier<T> delegate;
        volatile boolean initialized;

        @CheckForNull
        T value;

        public NonSerializableMemoizingSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            if (!this.initialized) {
                synchronized (this) {
                    try {
                        if (!this.initialized) {
                            Supplier<T> supplier = this.delegate;
                            j$.util.Objects.requireNonNull(supplier);
                            T t = supplier.get();
                            this.value = t;
                            this.initialized = true;
                            this.delegate = null;
                            return t;
                        }
                    } finally {
                    }
                }
            }
            return (T) NullnessCasts.uncheckedCastNullableTToT(this.value);
        }

        public String toString() {
            Object obj = this.delegate;
            if (obj == null) {
                String valueOf = String.valueOf(this.value);
                StringBuilder sb = new StringBuilder(valueOf.length() + 25);
                sb.append(new ObfuscatedString(new long[]{-7526537178556737761L, 8389533646247096234L, -5570354539008495939L, 2782416856997963012L}).toString());
                sb.append(valueOf);
                obj = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5601995992447728445L, -3761852272291838475L}), sb);
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
            sb2.append(new ObfuscatedString(new long[]{-2622007272196586860L, -1104546292356450527L, -4179680601009605528L, 3463879414782663074L}).toString());
            sb2.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4970159523210600852L, -1727521621115165152L}), sb2);
        }
    }

    /* loaded from: classes2.dex */
    public static class SupplierComposition<F, T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Function<? super F, T> function;
        final Supplier<F> supplier;

        public SupplierComposition(Function<? super F, T> function, Supplier<F> supplier) {
            this.function = (Function) Preconditions.checkNotNull(function);
            this.supplier = (Supplier) Preconditions.checkNotNull(supplier);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof SupplierComposition)) {
                return false;
            }
            SupplierComposition supplierComposition = (SupplierComposition) obj;
            if (!this.function.equals(supplierComposition.function) || !this.supplier.equals(supplierComposition.supplier)) {
                return false;
            }
            return true;
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            return this.function.apply(this.supplier.get());
        }

        public int hashCode() {
            return Objects.hashCode(this.function, this.supplier);
        }

        public String toString() {
            String valueOf = String.valueOf(this.function);
            String valueOf2 = String.valueOf(this.supplier);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 21);
            sb.append(new ObfuscatedString(new long[]{-2640613536934156036L, 5643812949692004901L, 1678505844693815455L, -2571833462528381680L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-3119675185812351736L, -1223228491024355519L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{329632064296140710L, 2106691078012965833L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public interface SupplierFunction<T> extends Function<Supplier<T>, T> {
    }

    /* loaded from: classes2.dex */
    public enum SupplierFunctionImpl implements SupplierFunction<Object> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{4856510226459995597L, 8690844294464213695L, 7516389990369186498L, 3735813089023559151L, -765302839992224925L}).toString();
        }

        @Override // com.google.common.base.Function
        @CheckForNull
        public Object apply(Supplier<Object> supplier) {
            return supplier.get();
        }
    }

    /* loaded from: classes2.dex */
    public static class SupplierOfInstance<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;

        @ParametricNullness
        final T instance;

        public SupplierOfInstance(@ParametricNullness T t) {
            this.instance = t;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof SupplierOfInstance) {
                return Objects.equal(this.instance, ((SupplierOfInstance) obj).instance);
            }
            return false;
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            return this.instance;
        }

        public int hashCode() {
            return Objects.hashCode(this.instance);
        }

        public String toString() {
            String valueOf = String.valueOf(this.instance);
            StringBuilder sb = new StringBuilder(valueOf.length() + 22);
            sb.append(new ObfuscatedString(new long[]{3693891596314887444L, 3858525905032225630L, 1558888947269028060L, 4381185951877085383L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5729323173571436301L, -8535862938531986899L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public static class ThreadSafeSupplier<T> implements Supplier<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Supplier<T> delegate;

        public ThreadSafeSupplier(Supplier<T> supplier) {
            this.delegate = (Supplier) Preconditions.checkNotNull(supplier);
        }

        @Override // com.google.common.base.Supplier
        @ParametricNullness
        public T get() {
            T t;
            synchronized (this.delegate) {
                t = this.delegate.get();
            }
            return t;
        }

        public String toString() {
            String valueOf = String.valueOf(this.delegate);
            StringBuilder sb = new StringBuilder(valueOf.length() + 32);
            sb.append(new ObfuscatedString(new long[]{-624284306521375504L, -1777271800100928379L, 3883084202676416943L, -6751546677272064068L, -6056140592827545956L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2742461406618319987L, 3722012459157577309L}), sb);
        }
    }

    private Suppliers() {
    }

    public static <F, T> Supplier<T> compose(Function<? super F, T> function, Supplier<F> supplier) {
        return new SupplierComposition(function, supplier);
    }

    public static <T> Supplier<T> memoize(Supplier<T> supplier) {
        if (!(supplier instanceof NonSerializableMemoizingSupplier) && !(supplier instanceof MemoizingSupplier)) {
            if (supplier instanceof Serializable) {
                return new MemoizingSupplier(supplier);
            }
            return new NonSerializableMemoizingSupplier(supplier);
        }
        return supplier;
    }

    public static <T> Supplier<T> memoizeWithExpiration(Supplier<T> supplier, long j, TimeUnit timeUnit) {
        return new ExpiringMemoizingSupplier(supplier, j, timeUnit);
    }

    public static <T> Supplier<T> ofInstance(@ParametricNullness T t) {
        return new SupplierOfInstance(t);
    }

    public static <T> Function<Supplier<T>, T> supplierFunction() {
        return SupplierFunctionImpl.INSTANCE;
    }

    public static <T> Supplier<T> synchronizedSupplier(Supplier<T> supplier) {
        return new ThreadSafeSupplier(supplier);
    }
}
