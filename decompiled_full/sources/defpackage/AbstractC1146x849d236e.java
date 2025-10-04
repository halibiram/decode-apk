package defpackage;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땝딸돨됫땔땁딎딄땠돷땤딁든땫도듨뎨든땲딀딝땳뒼됩땸땸딨딨딽듨됫돵둘딌따딝득돤땵뎽디돳땻둘땻뎽딃땻둡딁땜땋두됫뎨뒛들돸땹둘딽땭듨뎹딄땪딎땠땨딟디딸딅딤뒼땍뎰뎻뎻땨뒉뒾딎되땲뒉딹땮땠딎뒻땲됫됫땰됫땮득뒼뒐돠둔돨돤딸뎽듟됫듼땬뒙딅땦땸뎰딠땟듐땭딀된돵땻들둣듬돴돰뒉땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1146x849d236e extends AbstractC1145xfc271605 {
    @NotNull
    public static final <T> Set<T> minus(@NotNull Set<? extends T> set, T t) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(set.size()));
        boolean z = false;
        for (T t2 : set) {
            boolean z2 = true;
            if (!z && Intrinsics.areEqual(t2, t)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                linkedHashSet.add(t2);
            }
        }
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> plus(@NotNull Set<? extends T> set, T t) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(t);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> plus(@NotNull Set<? extends T> set, @NotNull T[] elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(set.size() + elements.length));
        linkedHashSet.addAll(set);
        AbstractC0590xf7db57e6.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> minus(@NotNull Set<? extends T> set, @NotNull T[] elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        AbstractC0590xf7db57e6.removeAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static <T> Set<T> plus(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        int size;
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Integer collectionSizeOrNull = AbstractC0587xb7546d05.collectionSizeOrNull(elements);
        if (collectionSizeOrNull != null) {
            size = set.size() + collectionSizeOrNull.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(size));
        linkedHashSet.addAll(set);
        AbstractC0590xf7db57e6.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> minus(@NotNull Set<? extends T> set, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<?> convertToListIfNotCollection = AbstractC0590xf7db57e6.convertToListIfNotCollection(elements);
        if (convertToListIfNotCollection.isEmpty()) {
            return CollectionsKt___CollectionsKt.toSet(set);
        }
        if (convertToListIfNotCollection instanceof Set) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (T t : set) {
                if (!((Set) convertToListIfNotCollection).contains(t)) {
                    linkedHashSet.add(t);
                }
            }
            return linkedHashSet;
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(set);
        linkedHashSet2.removeAll(convertToListIfNotCollection);
        return linkedHashSet2;
    }

    @NotNull
    public static final <T> Set<T> plus(@NotNull Set<? extends T> set, @NotNull Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC0961xbc4021d9.mapCapacity(set.size() * 2));
        linkedHashSet.addAll(set);
        AbstractC0590xf7db57e6.addAll(linkedHashSet, elements);
        return linkedHashSet;
    }

    @NotNull
    public static final <T> Set<T> minus(@NotNull Set<? extends T> set, @NotNull Sequence<? extends T> elements) {
        Intrinsics.checkNotNullParameter(set, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        LinkedHashSet linkedHashSet = new LinkedHashSet(set);
        AbstractC0590xf7db57e6.removeAll(linkedHashSet, elements);
        return linkedHashSet;
    }
}
