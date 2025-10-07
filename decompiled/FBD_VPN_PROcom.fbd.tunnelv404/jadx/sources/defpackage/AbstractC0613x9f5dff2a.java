package defpackage;

import java.util.Comparator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 둘딀땳둔땪딞땸딟딌땩땁뒾딌듰땮듽땥돼뎹됩돵딌돵뎻됐뒘뒷들둡뒾땮뎹땨뎨듸뒘득땁뒤딹땡땤듻돤땀뒘둣뒋땝뎬듰땋뎨땨되돼둘땲뎽둔땥둔돸딄땡딝돶땠뒷땋들땵듨듨듻돴된딤땮딽땰든딎땃딞땁뎽뒀뒀뒨뒬뒼돤땟돠땦뎡딨땃돛땀듟돝딁돨딃땥드땫뒙딄딝돵딨뒝땀땋땠둑돰땠도듟땃뎽뎰듐땲땀듸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0613x9f5dff2a {
    @NotNull
    public static final <T> Comparator<T> compareBy(@NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length > 0) {
            return new C0612xe466f64(selectors, 0);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static <T extends Comparable<?>> int compareValues(@Nullable T t, @Nullable T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return -1;
        }
        if (t2 == null) {
            return 1;
        }
        return t.compareTo(t2);
    }

    public static final <T> int compareValuesBy(T t, T t2, @NotNull Function1<? super T, ? extends Comparable<?>>... selectors) {
        Intrinsics.checkNotNullParameter(selectors, "selectors");
        if (selectors.length > 0) {
            for (Function1<? super T, ? extends Comparable<?>> function1 : selectors) {
                int compareValues = compareValues(function1.invoke(t), function1.invoke(t2));
                if (compareValues != 0) {
                    return compareValues;
                }
            }
            return 0;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> naturalOrder() {
        C0996x24910731 c0996x24910731 = C0996x24910731.f5180x3271d0aa;
        Intrinsics.checkNotNull(c0996x24910731, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.naturalOrder>");
        return c0996x24910731;
    }

    @NotNull
    public static final <T> Comparator<T> nullsFirst(@NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new C0610x62bd5544(comparator, 1);
    }

    @NotNull
    public static final <T> Comparator<T> nullsLast(@NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new C0610x62bd5544(comparator, 0);
    }

    @NotNull
    public static <T extends Comparable<? super T>> Comparator<T> reverseOrder() {
        C0996x24910731 c0996x24910731 = C0996x24910731.f5181x1378447b;
        Intrinsics.checkNotNull(c0996x24910731, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reverseOrder>");
        return c0996x24910731;
    }

    @NotNull
    public static final <T> Comparator<T> reversed(@NotNull Comparator<T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        if (comparator instanceof C1094x5254129f) {
            return ((C1094x5254129f) comparator).f5390xfbe0c504;
        }
        Comparator<T> comparator2 = C0996x24910731.f5180x3271d0aa;
        boolean areEqual = Intrinsics.areEqual(comparator, comparator2);
        C0996x24910731 c0996x24910731 = C0996x24910731.f5181x1378447b;
        if (areEqual) {
            Intrinsics.checkNotNull(c0996x24910731, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
            return c0996x24910731;
        }
        if (Intrinsics.areEqual(comparator, c0996x24910731)) {
            Intrinsics.checkNotNull(comparator2, "null cannot be cast to non-null type java.util.Comparator<T of kotlin.comparisons.ComparisonsKt__ComparisonsKt.reversed>");
        } else {
            comparator2 = new C1094x5254129f(comparator);
        }
        return comparator2;
    }

    @NotNull
    public static final <T> Comparator<T> then(@NotNull Comparator<T> comparator, @NotNull Comparator<? super T> comparator2) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        Intrinsics.checkNotNullParameter(comparator2, "comparator");
        return new C0611x1d4a4178(comparator, comparator2, 1);
    }

    @NotNull
    public static final <T> Comparator<T> thenDescending(@NotNull Comparator<T> comparator, @NotNull Comparator<? super T> comparator2) {
        Intrinsics.checkNotNullParameter(comparator, "<this>");
        Intrinsics.checkNotNullParameter(comparator2, "comparator");
        return new C0611x1d4a4178(comparator, comparator2, 0);
    }
}
