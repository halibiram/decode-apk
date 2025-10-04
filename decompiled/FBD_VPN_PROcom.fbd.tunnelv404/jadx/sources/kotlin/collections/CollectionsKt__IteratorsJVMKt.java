package kotlin.collections;

import defpackage.AbstractC0587xb7546d05;
import java.util.Enumeration;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes3.dex */
public abstract class CollectionsKt__IteratorsJVMKt extends AbstractC0587xb7546d05 {
    @NotNull
    public static <T> Iterator<T> iterator(@NotNull Enumeration<T> enumeration) {
        Intrinsics.checkNotNullParameter(enumeration, "<this>");
        return new CollectionsKt__IteratorsJVMKt$iterator$1(enumeration);
    }
}
