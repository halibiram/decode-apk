package defpackage;

import java.util.Collections;
import java.util.Comparator;
import java.util.Set;
import java.util.TreeSet;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땝듌땜땠땲뒉돤둔둥땻든땧땐땜둡딠듸들됴돝땨딸듌뒋딄뒤딐둑됴돤됨돛땁뎡딎둡뒝된듐둔땪따둔땱뒬뒙딃딃딌될딟됐땅뒐땳됩둬땫돛돨땀돶돼딸땬딄둠뒀딄드딐땋듐땩돶땅땹둡도득들땜땫땠딀땡뒉땬딨땐뒈땔뒵딐딹땜뒵딽땡듻뎰뎠땠땪둔딸뒨되돤돵둘땨돤땡돠뎸땳딸딌땬듻땧뎰땜딝돨땣뒹딄땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1144x81de89fe {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <E> Set<E> build(@NotNull Set<E> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        return ((SetBuilder) builder).build();
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <E> Set<E> createSetBuilder() {
        return new SetBuilder();
    }

    @NotNull
    public static <T> Set<T> setOf(T t) {
        Set<T> singleton = Collections.singleton(t);
        Intrinsics.checkNotNullExpressionValue(singleton, "singleton(...)");
        return singleton;
    }

    @NotNull
    public static final <T> TreeSet<T> sortedSetOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (TreeSet) ArraysKt___ArraysKt.toCollection(elements, new TreeSet());
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @NotNull
    public static <E> Set<E> createSetBuilder(int i) {
        return new SetBuilder(i);
    }

    @NotNull
    public static final <T> TreeSet<T> sortedSetOf(@NotNull Comparator<? super T> comparator, @NotNull T... elements) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (TreeSet) ArraysKt___ArraysKt.toCollection(elements, new TreeSet(comparator));
    }
}
