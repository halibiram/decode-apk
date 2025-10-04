package com.google.android.gms.common.internal;

import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

@KeepForSdk
/* loaded from: classes2.dex */
public final class Asserts {
    private Asserts() {
        throw new AssertionError(new ObfuscatedString(new long[]{-6670767267319727544L, 8726768515724014310L, -5459083931134995750L}).toString());
    }

    @KeepForSdk
    public static void checkMainThread(@NonNull String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        String.valueOf(Thread.currentThread());
        String.valueOf(Looper.getMainLooper().getThread());
        new ObfuscatedString(new long[]{2802661415856501270L, -31409029433621173L, 5757135926576180222L, 3538873057928007520L, 1646774868392920537L}).toString();
        new ObfuscatedString(new long[]{2400129989698339154L, 7493891828702971241L, -399856488201477105L, -6223156509791689062L}).toString();
        new ObfuscatedString(new long[]{3884704113631145655L, 898064421133731058L}).toString();
        new ObfuscatedString(new long[]{7719615605932453732L, -6043076983102021353L}).toString();
        throw new IllegalStateException(str);
    }

    @KeepForSdk
    public static void checkNotMainThread(@NonNull String str) {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            return;
        }
        String.valueOf(Thread.currentThread());
        String.valueOf(Looper.getMainLooper().getThread());
        new ObfuscatedString(new long[]{6129977655254459887L, -6739374501533475784L, -6351092687471538036L, -328756917022091075L, 7166268446837907440L, -5917780364794235726L}).toString();
        new ObfuscatedString(new long[]{92035565432653922L, 948015558137979881L, 2639714196815488898L, -5857942154533051738L}).toString();
        new ObfuscatedString(new long[]{-7148859631209543933L, -8734746133154015259L}).toString();
        new ObfuscatedString(new long[]{-7834918774581423378L, -2544726030524603027L}).toString();
        throw new IllegalStateException(str);
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    public static void checkNotNull(@Nullable Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8655942843309871658L, -2884594480066985379L, 5026926220356767434L}).toString());
        }
    }

    @KeepForSdk
    public static void checkNull(@Nullable Object obj) {
        if (obj != null) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1949005364608455740L, 7033584826810073638L, 7355209264512166057L, 7897954306693379932L}).toString());
        }
    }

    @KeepForSdk
    public static void checkState(boolean z) {
        if (!z) {
            throw new IllegalStateException();
        }
    }

    @EnsuresNonNull({"#1"})
    @KeepForSdk
    public static void checkNotNull(@Nullable Object obj, @NonNull Object obj2) {
        if (obj == null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    @KeepForSdk
    public static void checkNull(@Nullable Object obj, @NonNull Object obj2) {
        if (obj != null) {
            throw new IllegalArgumentException(String.valueOf(obj2));
        }
    }

    @KeepForSdk
    public static void checkState(boolean z, @NonNull Object obj) {
        if (!z) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
