package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.CheckForNull;

@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class Predicates {

    /* loaded from: classes2.dex */
    public static class AndPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> components;

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (!this.components.get(i).apply(t)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof AndPredicate) {
                return this.components.equals(((AndPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 306654252;
        }

        public String toString() {
            return Predicates.toStringHelper(new ObfuscatedString(new long[]{-137819934568409865L, -33245545827761011L}).toString(), this.components);
        }

        private AndPredicate(List<? extends Predicate<? super T>> list) {
            this.components = list;
        }
    }

    /* loaded from: classes2.dex */
    public static class CompositionPredicate<A, B> implements Predicate<A>, Serializable {
        private static final long serialVersionUID = 0;
        final Function<A, ? extends B> f;
        final Predicate<B> p;

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness A a) {
            return this.p.apply(this.f.apply(a));
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof CompositionPredicate)) {
                return false;
            }
            CompositionPredicate compositionPredicate = (CompositionPredicate) obj;
            if (!this.f.equals(compositionPredicate.f) || !this.p.equals(compositionPredicate.p)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.f.hashCode() ^ this.p.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.p);
            String valueOf2 = String.valueOf(this.f);
            StringBuilder m2938x1aebc6d9 = AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf2.length() + valueOf.length() + 2, valueOf);
            m2938x1aebc6d9.append(new ObfuscatedString(new long[]{-1563919516343130974L, 2482040732682945622L}).toString());
            m2938x1aebc6d9.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7617641650106592370L, 271726445566358879L}), m2938x1aebc6d9);
        }

        private CompositionPredicate(Predicate<B> predicate, Function<A, ? extends B> function) {
            this.p = (Predicate) Preconditions.checkNotNull(predicate);
            this.f = (Function) Preconditions.checkNotNull(function);
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static class ContainsPatternFromStringPredicate extends ContainsPatternPredicate {
        private static final long serialVersionUID = 0;

        public ContainsPatternFromStringPredicate(String str) {
            super(Platform.compilePattern(str));
        }

        @Override // com.google.common.base.Predicates.ContainsPatternPredicate
        public String toString() {
            String pattern = this.pattern.pattern();
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(28, pattern));
            sb.append(new ObfuscatedString(new long[]{4649503233467775267L, -6419233594307320700L, -6485440393380318652L, -7036788217428042575L, -3592308430096088832L}).toString());
            sb.append(pattern);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5022522503068922911L, -6074221907547777187L}), sb);
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static class ContainsPatternPredicate implements Predicate<CharSequence>, Serializable {
        private static final long serialVersionUID = 0;
        final CommonPattern pattern;

        public ContainsPatternPredicate(CommonPattern commonPattern) {
            this.pattern = (CommonPattern) Preconditions.checkNotNull(commonPattern);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ContainsPatternPredicate)) {
                return false;
            }
            ContainsPatternPredicate containsPatternPredicate = (ContainsPatternPredicate) obj;
            if (!Objects.equal(this.pattern.pattern(), containsPatternPredicate.pattern.pattern()) || this.pattern.flags() != containsPatternPredicate.pattern.flags()) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return Objects.hashCode(this.pattern.pattern(), Integer.valueOf(this.pattern.flags()));
        }

        public String toString() {
            String toStringHelper = MoreObjects.toStringHelper(this.pattern).add(new ObfuscatedString(new long[]{-3319479346612463921L, -8600050581643344923L}).toString(), this.pattern.pattern()).add(new ObfuscatedString(new long[]{2454479535428154059L, 4710634001886718224L, 5965074352161602495L}).toString(), this.pattern.flags()).toString();
            StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(21, toStringHelper));
            sb.append(new ObfuscatedString(new long[]{-3043238625766351475L, -8900961403158790341L, -1187524608240691813L, 8500878723713925974L}).toString());
            sb.append(toStringHelper);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1962059826206037014L, -3970476969469383203L}), sb);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(CharSequence charSequence) {
            return this.pattern.matcher(charSequence).find();
        }
    }

    /* loaded from: classes2.dex */
    public static class InPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Collection<?> target;

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness T t) {
            try {
                return this.target.contains(t);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof InPredicate) {
                return this.target.equals(((InPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.target);
            StringBuilder sb = new StringBuilder(valueOf.length() + 15);
            sb.append(new ObfuscatedString(new long[]{8317586740296138943L, 7330828235522837359L, -7801797370683231063L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6081828973637426749L, 1638306742400916876L}), sb);
        }

        private InPredicate(Collection<?> collection) {
            this.target = (Collection) Preconditions.checkNotNull(collection);
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static class InstanceOfPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> clazz;

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness T t) {
            return this.clazz.isInstance(t);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof InstanceOfPredicate) || this.clazz != ((InstanceOfPredicate) obj).clazz) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            String name = this.clazz.getName();
            StringBuilder sb = new StringBuilder(name.length() + 23);
            sb.append(new ObfuscatedString(new long[]{-1458399857080673311L, -8005691155217546533L, 1236764522147751089L, -4997213592244941939L}).toString());
            sb.append(name);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7575015096582674483L, 4601970136893076088L}), sb);
        }

        private InstanceOfPredicate(Class<?> cls) {
            this.clazz = (Class) Preconditions.checkNotNull(cls);
        }
    }

    /* loaded from: classes2.dex */
    public static class IsEqualToPredicate implements Predicate<Object>, Serializable {
        private static final long serialVersionUID = 0;
        private final Object target;

        @Override // com.google.common.base.Predicate
        public boolean apply(@CheckForNull Object obj) {
            return this.target.equals(obj);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof IsEqualToPredicate) {
                return this.target.equals(((IsEqualToPredicate) obj).target);
            }
            return false;
        }

        public int hashCode() {
            return this.target.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.target);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20);
            sb.append(new ObfuscatedString(new long[]{-3393072954153529956L, 6788953806268497222L, 1328971025382967830L, -5784113629318454467L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1802528257967920908L, 4003795737298912267L}), sb);
        }

        public <T> Predicate<T> withNarrowedType() {
            return this;
        }

        private IsEqualToPredicate(Object obj) {
            this.target = obj;
        }
    }

    /* loaded from: classes2.dex */
    public static class NotPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        final Predicate<T> predicate;

        public NotPredicate(Predicate<T> predicate) {
            this.predicate = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness T t) {
            return !this.predicate.apply(t);
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof NotPredicate) {
                return this.predicate.equals(((NotPredicate) obj).predicate);
            }
            return false;
        }

        public int hashCode() {
            return ~this.predicate.hashCode();
        }

        public String toString() {
            String valueOf = String.valueOf(this.predicate);
            StringBuilder sb = new StringBuilder(valueOf.length() + 16);
            sb.append(new ObfuscatedString(new long[]{-8167481091025251088L, 9056843494463779733L, 5518899097916164557L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{486103415691694619L, 8119112073748382657L}), sb);
        }
    }

    /* loaded from: classes2.dex */
    public enum ObjectPredicate implements Predicate<Object> {
        ALWAYS_TRUE { // from class: com.google.common.base.Predicates.ObjectPredicate.1
            @Override // com.google.common.base.Predicate
            public boolean apply(@CheckForNull Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{6028972805933672808L, 8895842232181914666L, 1629044509996291963L, -1516603216754017481L}).toString();
            }
        },
        ALWAYS_FALSE { // from class: com.google.common.base.Predicates.ObjectPredicate.2
            @Override // com.google.common.base.Predicate
            public boolean apply(@CheckForNull Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{3530172028157142568L, -2100698735797574831L, 2968297669889950536L, -3399950552490382476L}).toString();
            }
        },
        IS_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.3
            @Override // com.google.common.base.Predicate
            public boolean apply(@CheckForNull Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{6401455626742495428L, 4724369834362010590L, -5388872881091927308L, 8519305140413539964L}).toString();
            }
        },
        NOT_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.4
            @Override // com.google.common.base.Predicate
            public boolean apply(@CheckForNull Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{7689756386641333756L, -1549043589526574025L, -2557441760808691678L, 2828161517689991263L}).toString();
            }
        };

        public <T> Predicate<T> withNarrowedType() {
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public static class OrPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;
        private final List<? extends Predicate<? super T>> components;

        @Override // com.google.common.base.Predicate
        public boolean apply(@ParametricNullness T t) {
            for (int i = 0; i < this.components.size(); i++) {
                if (this.components.get(i).apply(t)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof OrPredicate) {
                return this.components.equals(((OrPredicate) obj).components);
            }
            return false;
        }

        public int hashCode() {
            return this.components.hashCode() + 87855567;
        }

        public String toString() {
            return Predicates.toStringHelper(new ObfuscatedString(new long[]{4292931630214723303L, 5651814698808791211L}).toString(), this.components);
        }

        private OrPredicate(List<? extends Predicate<? super T>> list) {
            this.components = list;
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static class SubtypeOfPredicate implements Predicate<Class<?>>, Serializable {
        private static final long serialVersionUID = 0;
        private final Class<?> clazz;

        @Override // com.google.common.base.Predicate
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof SubtypeOfPredicate) || this.clazz != ((SubtypeOfPredicate) obj).clazz) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return this.clazz.hashCode();
        }

        public String toString() {
            String name = this.clazz.getName();
            StringBuilder sb = new StringBuilder(name.length() + 22);
            sb.append(new ObfuscatedString(new long[]{-495576152228484963L, -5108199758261082416L, -1530302469853969056L, 5861780857252676983L}).toString());
            sb.append(name);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5489991057300117355L, -9075624456530422557L}), sb);
        }

        private SubtypeOfPredicate(Class<?> cls) {
            this.clazz = (Class) Preconditions.checkNotNull(cls);
        }

        @Override // com.google.common.base.Predicate
        public boolean apply(Class<?> cls) {
            return this.clazz.isAssignableFrom(cls);
        }
    }

    private Predicates() {
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysFalse() {
        return ObjectPredicate.ALWAYS_FALSE.withNarrowedType();
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> alwaysTrue() {
        return ObjectPredicate.ALWAYS_TRUE.withNarrowedType();
    }

    public static <T> Predicate<T> and(Iterable<? extends Predicate<? super T>> iterable) {
        return new AndPredicate(defensiveCopy(iterable));
    }

    private static <T> List<Predicate<? super T>> asList(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return Arrays.asList(predicate, predicate2);
    }

    public static <A, B> Predicate<A> compose(Predicate<B> predicate, Function<A, ? extends B> function) {
        return new CompositionPredicate(predicate, function);
    }

    @GwtIncompatible("java.util.regex.Pattern")
    public static Predicate<CharSequence> contains(Pattern pattern) {
        return new ContainsPatternPredicate(new JdkPattern(pattern));
    }

    @GwtIncompatible
    public static Predicate<CharSequence> containsPattern(String str) {
        return new ContainsPatternFromStringPredicate(str);
    }

    private static <T> List<T> defensiveCopy(T... tArr) {
        return defensiveCopy(Arrays.asList(tArr));
    }

    public static <T> Predicate<T> equalTo(@ParametricNullness T t) {
        if (t == null) {
            return isNull();
        }
        return new IsEqualToPredicate(t).withNarrowedType();
    }

    public static <T> Predicate<T> in(Collection<? extends T> collection) {
        return new InPredicate(collection);
    }

    @GwtIncompatible
    public static <T> Predicate<T> instanceOf(Class<?> cls) {
        return new InstanceOfPredicate(cls);
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> isNull() {
        return ObjectPredicate.IS_NULL.withNarrowedType();
    }

    public static <T> Predicate<T> not(Predicate<T> predicate) {
        return new NotPredicate(predicate);
    }

    @GwtCompatible(serializable = true)
    public static <T> Predicate<T> notNull() {
        return ObjectPredicate.NOT_NULL.withNarrowedType();
    }

    public static <T> Predicate<T> or(Iterable<? extends Predicate<? super T>> iterable) {
        return new OrPredicate(defensiveCopy(iterable));
    }

    @Beta
    @GwtIncompatible
    public static Predicate<Class<?>> subtypeOf(Class<?> cls) {
        return new SubtypeOfPredicate(cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String toStringHelper(String str, Iterable<?> iterable) {
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-7257157315993576073L, 5709181817801952624L, -6672878479146596413L}).toString());
        sb.append(str);
        sb.append('(');
        boolean z = true;
        for (Object obj : iterable) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @SafeVarargs
    public static <T> Predicate<T> and(Predicate<? super T>... predicateArr) {
        return new AndPredicate(defensiveCopy(predicateArr));
    }

    public static <T> List<T> defensiveCopy(Iterable<T> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(Preconditions.checkNotNull(it.next()));
        }
        return arrayList;
    }

    @SafeVarargs
    public static <T> Predicate<T> or(Predicate<? super T>... predicateArr) {
        return new OrPredicate(defensiveCopy(predicateArr));
    }

    public static <T> Predicate<T> and(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new AndPredicate(asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }

    public static <T> Predicate<T> or(Predicate<? super T> predicate, Predicate<? super T> predicate2) {
        return new OrPredicate(asList((Predicate) Preconditions.checkNotNull(predicate), (Predicate) Preconditions.checkNotNull(predicate2)));
    }
}
