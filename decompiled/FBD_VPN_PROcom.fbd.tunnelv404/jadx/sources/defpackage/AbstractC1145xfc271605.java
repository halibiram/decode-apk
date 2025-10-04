package defpackage;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.SinceKotlin;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 땝따땧돴딤듌뎻둣딄뒙뎽뒨땵듼든둬도돠뒵뒘뎹뒬된딜뎠딨둑땔둬둬돼돷둥땜땲뒛돛딤둘뎰땱듸뒨땨뒻뎹둣땣뒋됐딄땻땱돶뒉딠뎨땵땋땀땩듽듼듸뒉땭둣뎠돸딻뒋듻땁됫땱딝돠듸땮뎸뎨딎딎돤돴뎰뎬뒻듻뒝뒈딝땨땯됨돷딠땭딀돤뒀돴뒻뒻돴뒾땀듼땭땻땣땝듰듨땟돼됐뒛돶듼돴득돤돰딌땡됐뎸둑딠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1145xfc271605 extends AbstractC1144x81de89fe {
    @NotNull
    public static <T> Set<T> emptySet() {
        return EmptySet.INSTANCE;
    }

    @NotNull
    public static final <T> HashSet<T> hashSetOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (HashSet) ArraysKt___ArraysKt.toCollection(elements, new HashSet(AbstractC0961xbc4021d9.mapCapacity(elements.length)));
    }

    @NotNull
    public static final <T> LinkedHashSet<T> linkedSetOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (LinkedHashSet) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(elements.length)));
    }

    @NotNull
    public static <T> Set<T> mutableSetOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (Set) ArraysKt___ArraysKt.toCollection(elements, new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(elements.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Set<T> optimizeReadOnlySet(@NotNull Set<? extends T> set) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        int size = set.size();
        if (size != 0) {
            if (size == 1) {
                return AbstractC1144x81de89fe.setOf(set.iterator().next());
            }
            return set;
        }
        return emptySet();
    }

    @NotNull
    public static final <T> Set<T> setOf(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return ArraysKt___ArraysKt.toSet(elements);
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Set<T> setOfNotNull(@Nullable T t) {
        return t != null ? AbstractC1144x81de89fe.setOf(t) : emptySet();
    }

    @SinceKotlin(version = "1.4")
    @NotNull
    public static final <T> Set<T> setOfNotNull(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return (Set) ArraysKt___ArraysKt.filterNotNullTo(elements, new LinkedHashSet());
    }
}
