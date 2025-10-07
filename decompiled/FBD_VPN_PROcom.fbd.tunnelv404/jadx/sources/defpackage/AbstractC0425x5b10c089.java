package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.SinceKotlin;
import kotlin.concurrent.atomics.ExperimentalAtomicApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 돛땀디딄돨디땻듌땯든뎡땠땵딅뒼땯딁땟뎸뒨뒋둘딄뒼땁됐땧들뒹땬뒀디듻돤딀될뒼둣딅됴땠딁땔딀될땨딠땯땦듌듼둠뒐땱뒀땔땜딽돳땠딨땹땰땄땫딻듔딃땵땯땤돶뎡딤뒝땰땜둡뎡뎠땵돸뎻땔딽땭땱돶됨뒷뎻돰됨땤땩딐돸땧딁되땣땪뎹딎뒛딠돸될뎸딌땦딽땅돸딎땀득됫땨땪땝뎹둑뎻땬땵듼땝딎뒻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0425x5b10c089 extends AbstractC0424xfdcd71e0 {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicBoolean asJavaAtomic(@NotNull AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<this>");
        return atomicBoolean;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicBoolean asKotlinAtomic(@NotNull AtomicBoolean atomicBoolean) {
        Intrinsics.checkNotNullParameter(atomicBoolean, "<this>");
        return atomicBoolean;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicInteger asJavaAtomic(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicInteger asKotlinAtomic(@NotNull AtomicInteger atomicInteger) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        return atomicInteger;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicLong asJavaAtomic(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicLong asKotlinAtomic(@NotNull AtomicLong atomicLong) {
        Intrinsics.checkNotNullParameter(atomicLong, "<this>");
        return atomicLong;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final <T> AtomicReference<T> asJavaAtomic(@NotNull AtomicReference<T> atomicReference) {
        Intrinsics.checkNotNullParameter(atomicReference, "<this>");
        return atomicReference;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final <T> AtomicReference<T> asKotlinAtomic(@NotNull AtomicReference<T> atomicReference) {
        Intrinsics.checkNotNullParameter(atomicReference, "<this>");
        return atomicReference;
    }
}
