package defpackage;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.SinceKotlin;
import kotlin.concurrent.atomics.ExperimentalAtomicApi;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 돛딁뒀듻땥땦됨땟드됴돶딠뒛됫땧딠돸듌땯뒐딨딠땦돝돵땻돠돴땫듌뎽땰뒤뎸드딜둥딻듸돵뎠딌뎠될돝둔둥딄뒐둔뎻뒹됴도땁둥땨땨뒨둬둣돨딝땍땹뎰딄땜땟듼됴딨됐돼딜됫땣돝됩딽돷든딃따땫뒬땃됴듰뒀돸땧돼뒹딀뒹땩딞뎬돨딟돨땪든딜돸땳땍땳땮땩딄뎻뒀듽땄딀뒨뒾땍땄됨딽됩뒐뒉땝땦땲딃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0422xc5d54716 {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final /* synthetic */ <T> AtomicReferenceArray<T> AtomicArray(int i, Function1<? super Integer, ? extends T> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        Intrinsics.reifiedOperationMarker(0, ExifInterface.GPS_DIRECTION_TRUE);
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = init.invoke(Integer.valueOf(i2));
        }
        return new AtomicReferenceArray<>(objArr);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray AtomicIntArray(int i, @NotNull Function1<? super Integer, Integer> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = init.invoke(Integer.valueOf(i2)).intValue();
        }
        return new AtomicIntegerArray(iArr);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicLongArray AtomicLongArray(int i, @NotNull Function1<? super Integer, Long> init) {
        Intrinsics.checkNotNullParameter(init, "init");
        long[] jArr = new long[i];
        for (int i2 = 0; i2 < i; i2++) {
            jArr[i2] = init.invoke(Integer.valueOf(i2)).longValue();
        }
        return new AtomicLongArray(jArr);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int decrementAndFetchAt(@NotNull AtomicIntegerArray atomicIntegerArray, int i) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray.addAndGet(i, -1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndDecrementAt(@NotNull AtomicIntegerArray atomicIntegerArray, int i) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray.getAndAdd(i, -1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndIncrementAt(@NotNull AtomicIntegerArray atomicIntegerArray, int i) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray.getAndAdd(i, 1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int incrementAndFetchAt(@NotNull AtomicIntegerArray atomicIntegerArray, int i) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray.addAndGet(i, 1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long decrementAndFetchAt(@NotNull AtomicLongArray atomicLongArray, int i) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray.addAndGet(i, -1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndDecrementAt(@NotNull AtomicLongArray atomicLongArray, int i) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray.getAndAdd(i, -1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndIncrementAt(@NotNull AtomicLongArray atomicLongArray, int i) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray.getAndAdd(i, 1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long incrementAndFetchAt(@NotNull AtomicLongArray atomicLongArray, int i) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray.addAndGet(i, 1L);
    }
}
