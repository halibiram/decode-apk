package defpackage;

import kotlin.ExperimentalStdlibApi;
import kotlin.SinceKotlin;
import kotlin.WasExperimental;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.C0294xfbe0c504;
import kotlin.ranges.C0295x3271d0aa;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.ClosedRange;
import kotlin.ranges.OpenEndRange;
import org.jetbrains.annotations.NotNull;

/* renamed from: 땀뒬디뎰땩뒨딠뎽돸됨땨땀땳도딟땳된뒾딐뒋되땪뎰땐딌돠도뒾딹듼땟딹뎨뒉딄딀듼도득땁딠돶땋딃듻딁땤뒤땩됫돰땥땠땰뒘뒀딽딀딄둠디듸땟돰딹뎨뎠땰딨됫뒾돴땡땃듽딁땔뎡땟둥땮뎡둑땦뒷드둣뎹뒼뎸뒐딨땸됴뎽들뎸땟딄둔땯돛뎠듬딹뒀도땟땵땭두뒙땧땋됩뎽됩둔딐딸됴뎰딨디듐듟돸땮딄땟, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1062x2d520db {
    public static final void checkStepIsPositive(boolean z, @NotNull Number step) {
        Intrinsics.checkNotNullParameter(step, "step");
        if (z) {
            return;
        }
        throw new IllegalArgumentException("Step must be positive, was: " + step + '.');
    }

    @NotNull
    public static final <T extends Comparable<? super T>> ClosedRange<T> rangeTo(@NotNull T t, @NotNull T that) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(that, "that");
        return new C0295x3271d0aa(t, that);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final <T extends Comparable<? super T>> OpenEndRange<T> rangeUntil(@NotNull T t, @NotNull T that) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(that, "that");
        return new C0294xfbe0c504(t, that);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final ClosedFloatingPointRange<Double> rangeTo(double d, double d2) {
        return new C0584x37906f28(d, d2);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final OpenEndRange<Double> rangeUntil(double d, double d2) {
        return new C1010x26cd6427(d, d2);
    }

    @SinceKotlin(version = "1.1")
    @NotNull
    public static final ClosedFloatingPointRange<Float> rangeTo(float f, float f2) {
        return new C0585xf9452bc4(f, f2);
    }

    @SinceKotlin(version = "1.9")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    @NotNull
    public static final OpenEndRange<Float> rangeUntil(float f, float f2) {
        return new C1011xab6cb04d(f, f2);
    }
}
