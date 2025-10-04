package kotlin.jvm.internal;

import defpackage.C0405xa77e2178;
import defpackage.C0406xafe1609b;
import defpackage.C0407xd53c5c90;
import defpackage.C0408x72f43c8d;
import defpackage.C0409xb4936f97;
import defpackage.C0410x6b628;
import defpackage.C0411xd01a3ff6;
import defpackage.C0412x29b017aa;
import kotlin.Metadata;
import kotlin.collections.BooleanIterator;
import kotlin.collections.ByteIterator;
import kotlin.collections.CharIterator;
import kotlin.collections.DoubleIterator;
import kotlin.collections.FloatIterator;
import kotlin.collections.IntIterator;
import kotlin.collections.LongIterator;
import kotlin.collections.ShortIterator;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0018\u0002\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0010\u0018\n\u0000\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0000\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0005\u001a\u000e\u0010\u0000\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u0007\u001a\u000e\u0010\u0000\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\t\u001a\u000e\u0010\u0000\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u000b\u001a\u000e\u0010\u0000\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\r\u001a\u000e\u0010\u0000\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000f\u001a\u000e\u0010\u0000\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"iterator", "Lkotlin/collections/ByteIterator;", "array", "", "Lkotlin/collections/CharIterator;", "", "Lkotlin/collections/ShortIterator;", "", "Lkotlin/collections/IntIterator;", "", "Lkotlin/collections/LongIterator;", "", "Lkotlin/collections/FloatIterator;", "", "Lkotlin/collections/DoubleIterator;", "", "Lkotlin/collections/BooleanIterator;", "", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ArrayIteratorsKt {
    @NotNull
    public static final ByteIterator iterator(@NotNull byte[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0406xafe1609b(array);
    }

    @NotNull
    public static final CharIterator iterator(@NotNull char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0407xd53c5c90(array);
    }

    @NotNull
    public static final ShortIterator iterator(@NotNull short[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0412x29b017aa(array);
    }

    @NotNull
    public static final IntIterator iterator(@NotNull int[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0410x6b628(array);
    }

    @NotNull
    public static final LongIterator iterator(@NotNull long[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0411xd01a3ff6(array);
    }

    @NotNull
    public static final FloatIterator iterator(@NotNull float[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0409xb4936f97(array);
    }

    @NotNull
    public static final DoubleIterator iterator(@NotNull double[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0408x72f43c8d(array);
    }

    @NotNull
    public static final BooleanIterator iterator(@NotNull boolean[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return new C0405xa77e2178(array);
    }
}
