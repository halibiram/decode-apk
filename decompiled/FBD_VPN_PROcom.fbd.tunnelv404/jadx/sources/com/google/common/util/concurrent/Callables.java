package com.google.common.util.concurrent;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import defpackage.CallableC0480x61c0fd8c;
import defpackage.CallableC0482xf90b3f31;
import defpackage.RunnableC0371x742e2fda;
import java.util.concurrent.Callable;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class Callables {
    private Callables() {
    }

    @Beta
    @GwtIncompatible
    public static <T> AsyncCallable<T> asAsyncCallable(final Callable<T> callable, final ListeningExecutorService listeningExecutorService) {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(listeningExecutorService);
        return new AsyncCallable() { // from class: 돴뎹딸든땳듸땠둣땻돼땩뎻돼땨땫땬드딸딹두듸둘딝될땵딎뒉딄든딁둑둡뒈뎬됩돵뎹뎠딎땄될듽듻뒾뎻뒙뒈뒘딟돠딄돼돳된돷들땝뎨딜딜돷땹뎻딅드돵뒋땱땃뒉되딄딜둔뎠땤딽땸땅딨돛뒷땻둣둬뎡땪딤땦둘돝뎻뎹땭딄땋땮땔돼땻드뎡딟돠땮듻돠돼듸땭뒵뒬둑둣됴뒷딨듌딽딽뒹땨둬땠둣뎹땍둠땲뎽
            @Override // com.google.common.util.concurrent.AsyncCallable
            public final ListenableFuture call() {
                ListenableFuture submit;
                submit = ListeningExecutorService.this.submit(callable);
                return submit;
            }
        };
    }

    public static /* synthetic */ Object lambda$returning$0(Object obj) {
        return obj;
    }

    public static /* synthetic */ Object lambda$threadRenaming$2(Supplier supplier, Callable callable) {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean trySetName = trySetName((String) supplier.get(), currentThread);
        try {
            return callable.call();
        } finally {
            if (trySetName) {
                trySetName(name, currentThread);
            }
        }
    }

    public static /* synthetic */ void lambda$threadRenaming$3(Supplier supplier, Runnable runnable) {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean trySetName = trySetName((String) supplier.get(), currentThread);
        try {
            runnable.run();
        } finally {
            if (trySetName) {
                trySetName(name, currentThread);
            }
        }
    }

    public static <T> Callable<T> returning(@ParametricNullness T t) {
        return new CallableC0482xf90b3f31(t, 0);
    }

    @GwtIncompatible
    public static <T> Callable<T> threadRenaming(Callable<T> callable, Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(callable);
        return new CallableC0480x61c0fd8c(supplier, callable, 0);
    }

    @GwtIncompatible
    private static boolean trySetName(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m1288xfbe0c504(Supplier supplier, Runnable runnable) {
        lambda$threadRenaming$3(supplier, runnable);
    }

    @GwtIncompatible
    public static Runnable threadRenaming(Runnable runnable, Supplier<String> supplier) {
        Preconditions.checkNotNull(supplier);
        Preconditions.checkNotNull(runnable);
        return new RunnableC0371x742e2fda(supplier, runnable, 8);
    }
}
