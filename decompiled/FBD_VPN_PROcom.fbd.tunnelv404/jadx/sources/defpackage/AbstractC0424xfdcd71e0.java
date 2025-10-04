package defpackage;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.SinceKotlin;
import kotlin.concurrent.atomics.ExperimentalAtomicApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 돛딽득됩땵뒨딸돸따둠딤뒉뒛듰딁땻됐땣듰도땫땔땳듰땟딎되뒛둬딠듟뎨땪땃땧듔뒋땋땋돛돨됨뒤뎠뒈되뎰둬뒀돵듻딃땧딄땲딄둑둡땰땁딽딟뎹딌땵땠뎬됐둥둑도뒹듸돤뎨뎬뒝땯딌돤들따뒙뎬뒈땁듬땤듟땀두딟땤뎻뒻둡돶땲듬돰뒻듽딎땲뒻듰들뒐돤땥땔드둥돶듸뒹돤둠땟뒐디돸땦땹돤딤땟둣땡땯, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0424xfdcd71e0 {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int decrementAndFetch(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger.addAndGet(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndDecrement(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger.getAndAdd(-1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int fetchAndIncrement(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger.getAndAdd(1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final int incrementAndFetch(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger.addAndGet(1);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(@NotNull AtomicInteger atomicInteger, int i) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        atomicInteger.addAndGet(-i);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(@NotNull AtomicInteger atomicInteger, int i) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        atomicInteger.addAndGet(i);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long decrementAndFetch(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong.addAndGet(-1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndDecrement(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong.getAndAdd(-1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long fetchAndIncrement(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong.getAndAdd(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final long incrementAndFetch(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong.addAndGet(1L);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void minusAssign(@NotNull AtomicLong atomicLong, long j) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        atomicLong.addAndGet(-j);
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    public static final void plusAssign(@NotNull AtomicLong atomicLong, long j) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        atomicLong.addAndGet(j);
    }
}
