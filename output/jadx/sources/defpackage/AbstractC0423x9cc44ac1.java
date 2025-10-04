package defpackage;

import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.SinceKotlin;
import kotlin.concurrent.atomics.ExperimentalAtomicApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* renamed from: 돛딝땰될뒹뒈딀땜디딃두딃딎딞땧땀뒷된둘땄뎬듟땀땱땠땵듔뎰뎸됐뎹돨뒤땰돠딤둥돶뒾뎸뒈둠돝듟땔들뎽돷돶딸뒙둘뎸둬딞돨땩뎽딞돳듰득뎨딀돳뎠땡됐뒙됩땀둣뒉듻땸땥땔듰딌됨딁딜뎻딻되돶딐땯땅돝딃돰둠듨도돵뒻된뒘뎹듼둬됨둘땣돼두될뒬딎땭뒀듐돶뒷뒐딸뒵딨뒀뎬듌딟듬땬뎡돸듔땹땫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0423x9cc44ac1 extends AbstractC0422xc5d54716 {
    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray asJavaAtomicArray(@NotNull AtomicIntegerArray atomicIntegerArray) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicIntegerArray asKotlinAtomicArray(@NotNull AtomicIntegerArray atomicIntegerArray) {
        Intrinsics.checkNotNullParameter(atomicIntegerArray, "<this>");
        return atomicIntegerArray;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicLongArray asJavaAtomicArray(@NotNull AtomicLongArray atomicLongArray) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final AtomicLongArray asKotlinAtomicArray(@NotNull AtomicLongArray atomicLongArray) {
        Intrinsics.checkNotNullParameter(atomicLongArray, "<this>");
        return atomicLongArray;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final <T> AtomicReferenceArray<T> asJavaAtomicArray(@NotNull AtomicReferenceArray<T> atomicReferenceArray) {
        Intrinsics.checkNotNullParameter(atomicReferenceArray, "<this>");
        return atomicReferenceArray;
    }

    @ExperimentalAtomicApi
    @SinceKotlin(version = "2.1")
    @NotNull
    public static final <T> AtomicReferenceArray<T> asKotlinAtomicArray(@NotNull AtomicReferenceArray<T> atomicReferenceArray) {
        Intrinsics.checkNotNullParameter(atomicReferenceArray, "<this>");
        return atomicReferenceArray;
    }
}
