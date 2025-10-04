package kotlin;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010\u0004\u001a\u00028\u0001\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u0087\u0002¢\u0006\u0004\b\u0004\u0010\u0005*r\b\u0002\u0010\u000b\"5\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\t\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\n25\b\u0001\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\t\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\n¨\u0006\f"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/DeepRecursiveFunction;", "value", "invoke", "(Lkotlin/DeepRecursiveFunction;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/Function3;", "Lkotlin/DeepRecursiveScope;", "", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "DeepRecursiveFunctionBlock", "kotlin-stdlib"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DeepRecursiveKt {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Object f1167xfbe0c504;

    static {
        Result.Companion companion = Result.INSTANCE;
        f1167xfbe0c504 = Result.m1764constructorimpl(AbstractC0892xc141c517.getCOROUTINE_SUSPENDED());
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [kotlin.coroutines.Continuation, 뒈돵둠뒋뒛돠땜땮땤딎뒾뎽듸됫땄딃뎽됫뒻뒻딹딄둬듔땫뎹딝딄될될돷뒨둣돤뎸땩뎽땯뎽둘될땸땬뒐땋뒨돝땁돰든딃돵뒹뒹땣따뎬뎻둔돸딸뎠뒐땪돶뒙드땠돵딟둘돼뒋뎰뒘뒛됴딁뒤딨뒀딤딐땪디딜돝딽될뎸되땋든딃뒈땮돸뒬땬땅땋뒐땪돼딌뒤돴땠땲돳뒘뎬뎰돴땨딅들둑돶듽땜듨됐땰뎰뒹도듸듼땸, java.lang.Object, kotlin.DeepRecursiveScope] */
    @SinceKotlin(version = "1.7")
    @WasExperimental(markerClass = {ExperimentalStdlibApi.class})
    public static final <T, R> R invoke(@NotNull DeepRecursiveFunction<T, R> deepRecursiveFunction, T t) {
        Object invoke;
        Intrinsics.checkNotNullParameter(deepRecursiveFunction, "<this>");
        Function3<DeepRecursiveScope<T, R>, T, Continuation<? super R>, Object> block = deepRecursiveFunction.getBlock$kotlin_stdlib();
        Intrinsics.checkNotNullParameter(block, "block");
        ?? deepRecursiveScope = new DeepRecursiveScope(null);
        deepRecursiveScope.f4462xfbe0c504 = block;
        deepRecursiveScope.f4463x3271d0aa = t;
        Intrinsics.checkNotNull(deepRecursiveScope, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
        deepRecursiveScope.f4464x1378447b = deepRecursiveScope;
        deepRecursiveScope.f4465x75d576dc = f1167xfbe0c504;
        while (true) {
            R r = (R) deepRecursiveScope.f4465x75d576dc;
            Continuation continuation = deepRecursiveScope.f4464x1378447b;
            if (continuation == null) {
                ResultKt.throwOnFailure(r);
                return r;
            }
            if (Result.m1766equalsimpl0(f1167xfbe0c504, r)) {
                try {
                    Function3 function3 = deepRecursiveScope.f4462xfbe0c504;
                    Object obj = deepRecursiveScope.f4463x3271d0aa;
                    if (!(function3 instanceof BaseContinuationImpl)) {
                        invoke = IntrinsicsKt__IntrinsicsJvmKt.wrapWithContinuationImpl(function3, deepRecursiveScope, obj, continuation);
                    } else {
                        invoke = ((Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function3, 3)).invoke(deepRecursiveScope, obj, continuation);
                    }
                    if (invoke != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        continuation.resumeWith(Result.m1764constructorimpl(invoke));
                    }
                } catch (Throwable th) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(th)));
                }
            } else {
                deepRecursiveScope.f4465x75d576dc = f1167xfbe0c504;
                continuation.resumeWith(r);
            }
        }
    }
}
