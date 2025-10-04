package kotlin.random;

import defpackage.C0913x86ea8016;
import defpackage.C1037x3d668641;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0004\u001a\u00020\u0000*\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlin/random/Random;", "Ljava/util/Random;", "asJavaRandom", "(Lkotlin/random/Random;)Ljava/util/Random;", "asKotlinRandom", "(Ljava/util/Random;)Lkotlin/random/Random;", "", "hi26", "low27", "", "doubleFromParts", "(II)D", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class PlatformRandomKt {
    @SinceKotlin(version = "1.3")
    @NotNull
    public static final java.util.Random asJavaRandom(@NotNull Random random) {
        AbstractPlatformRandom abstractPlatformRandom;
        java.util.Random impl;
        Intrinsics.checkNotNullParameter(random, "<this>");
        if (random instanceof AbstractPlatformRandom) {
            abstractPlatformRandom = (AbstractPlatformRandom) random;
        } else {
            abstractPlatformRandom = null;
        }
        if (abstractPlatformRandom == null || (impl = abstractPlatformRandom.getImpl()) == null) {
            return new C0913x86ea8016(random);
        }
        return impl;
    }

    @SinceKotlin(version = "1.3")
    @NotNull
    public static final Random asKotlinRandom(@NotNull java.util.Random random) {
        C0913x86ea8016 c0913x86ea8016;
        Random random2;
        Intrinsics.checkNotNullParameter(random, "<this>");
        if (random instanceof C0913x86ea8016) {
            c0913x86ea8016 = (C0913x86ea8016) random;
        } else {
            c0913x86ea8016 = null;
        }
        if (c0913x86ea8016 == null || (random2 = c0913x86ea8016.f5054xfbe0c504) == null) {
            return new C1037x3d668641(random);
        }
        return random2;
    }

    public static final double doubleFromParts(int i, int i2) {
        return ((i << 27) + i2) / 9.007199254740992E15d;
    }
}
