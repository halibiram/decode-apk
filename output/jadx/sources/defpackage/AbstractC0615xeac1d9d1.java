package defpackage;

import java.util.Comparator;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 둘따딨땧돶딐뎹딽뒀둘돵둔둠듔돷땍뒝땄땧됨둠땔뎸땨뒀둠딸뎠땡뎹뎸땦도듰딟딨도둔땲딠땟뎰땨땩돴뒋땧땱듔두돷땯뎬뎹뎠둬돶땲듟땥들땟돼땳둠딜돴뒹딄뎽땵땡땁뒛뒷뒛뎡땫땳됫뒷뒋둣돛땮땦두뎬뎸듬돼딝딄돴뎬뒹뒋뒾뒹땔됫딎땯딤땱뒨땥듼땻땟돤땹들땔뒬딄땸뒬땅땬됩딨됐땵딄득땹뒉뒻딀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0615xeac1d9d1 extends AbstractC0614x40cbcac5 {
    @SinceKotlin(version = "1.1")
    public static final <T> T maxOf(T t, T t2, T t3, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return (T) maxOf(t, maxOf(t2, t3, comparator), comparator);
    }

    @SinceKotlin(version = "1.1")
    public static final <T> T minOf(T t, T t2, T t3, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return (T) minOf(t, minOf(t2, t3, comparator), comparator);
    }

    @SinceKotlin(version = "1.1")
    public static final <T> T maxOf(T t, T t2, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return comparator.compare(t, t2) >= 0 ? t : t2;
    }

    @SinceKotlin(version = "1.1")
    public static final <T> T minOf(T t, T t2, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return comparator.compare(t, t2) <= 0 ? t : t2;
    }

    @SinceKotlin(version = "1.4")
    public static final <T> T maxOf(T t, @NotNull T[] other, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        for (T t2 : other) {
            if (comparator.compare(t, t2) < 0) {
                t = t2;
            }
        }
        return t;
    }

    @SinceKotlin(version = "1.4")
    public static final <T> T minOf(T t, @NotNull T[] other, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        for (T t2 : other) {
            if (comparator.compare(t, t2) > 0) {
                t = t2;
            }
        }
        return t;
    }
}
