package defpackage;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt$WhenMappings;
import kotlin.LazyThreadSafetyMode;
import kotlin.NoWhenBranchMatchedException;
import kotlin.UNINITIALIZED_VALUE;
import kotlin.UnsafeLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: 딄뒘듰둡땨돸된땀도땡딄듽땩됨돴뒬돛땁됨듸도듽땳돝뒀땡듟둡될들뒼땟딹뒋땀듐둡딞딨둔땅딅딤땜듬뎨땔됨뒀땪뎹뒻땠딜딝딨땀딤땸됐따땄딹따돼땄딸돝둣디두뒘땡딨둘땟돳돼뒼땬둘뒉돛딅듐땦돷둘딎됴뒻땣뒨땱뒻땳돨딤딟뎨땄땲듔듸딻땔땜듔딸딸뒙땅뒹땰듽뒛딟뒈땨땧땦뎹땸디딞땍됩뎽됩돤, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0919x86d1e2e2 {
    @NotNull
    public static <T> Lazy<T> lazy(@NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new C1219xd72e1567(null, initializer);
    }

    @NotNull
    public static <T> Lazy<T> lazy(@NotNull LazyThreadSafetyMode mode, @NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        int i = LazyKt__LazyJVMKt$WhenMappings.$EnumSwitchMapping$0[mode.ordinal()];
        if (i == 1) {
            return new C1219xd72e1567(null, initializer);
        }
        if (i != 2) {
            if (i == 3) {
                return new UnsafeLazyImpl(initializer);
            }
            throw new NoWhenBranchMatchedException();
        }
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        C1105xbdfa0dbf c1105xbdfa0dbf = (Lazy<T>) new Object();
        c1105xbdfa0dbf.f5401xfbe0c504 = initializer;
        c1105xbdfa0dbf.f5402x3271d0aa = UNINITIALIZED_VALUE.INSTANCE;
        return c1105xbdfa0dbf;
    }

    @NotNull
    public static final <T> Lazy<T> lazy(@Nullable Object obj, @NotNull Function0<? extends T> initializer) {
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        return new C1219xd72e1567(obj, initializer);
    }
}
