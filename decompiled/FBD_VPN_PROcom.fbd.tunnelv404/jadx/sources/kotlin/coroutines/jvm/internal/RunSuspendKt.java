package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.SinceKotlin;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a+\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0003H\u0001¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"runSuspend", "", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function1;)V", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RunSuspendKt {
    /* JADX WARN: Type inference failed for: r0v1, types: [땋땫둔둘뒻뒀둣뒙될돳뎨땧뒝딌땅땦뒝뒬땡된뎸듸땄땔땤듼뒵땫돸딁딀된땮될땫땥듔뎨돠땅됫땨딟듽딅땍됨뒾땜둣뒘둔드땡둑될됫듰드땣뒵돴뎨뒙뒨딀땅디듨돼돼딁딸뒙딎뒾돵딟둥듻뒵뒋됐뒨땩둠듌뒉딄돝땠뒙땸땡딤땦둘뎬땣둡듨딝뒨땫딄뒾땻든뎠듔땃됩땔됩딅돴땪뒹돳땀됩뎰듌딠돨땸땰둬딟돝, kotlin.coroutines.Continuation, java.lang.Object] */
    @SinceKotlin(version = "1.3")
    public static final void runSuspend(@NotNull Function1<? super Continuation<? super Unit>, ? extends Object> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ?? obj = new Object();
        ContinuationKt.startCoroutine(block, obj);
        synchronized (obj) {
            while (true) {
                try {
                    Result result = obj.f5395xfbe0c504;
                    if (result == null) {
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Object");
                        obj.wait();
                    } else {
                        ResultKt.throwOnFailure(result.getValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
