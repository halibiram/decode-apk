package defpackage;

import j$.util.function.BiFunction$CC;
import java.util.concurrent.CompletionException;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

/* renamed from: 둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0645xe89a3bab implements BiFunction {

    @JvmField
    @Nullable
    public volatile Continuation<Object> cont;

    public final /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
    
        r2 = r2.getCause();
     */
    @Override // java.util.function.BiFunction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object apply(Object obj, Object obj2) {
        CompletionException completionException;
        Throwable cause;
        Throwable th = (Throwable) obj2;
        Continuation<Object> continuation = this.cont;
        if (continuation != null) {
            if (th == null) {
                continuation.resumeWith(Result.m1764constructorimpl(obj));
            } else {
                if (AbstractC0617xd23d8a2a.m3217xec92ba90(th)) {
                    completionException = AbstractC0617xd23d8a2a.m3206x8c6fc18a(th);
                } else {
                    completionException = null;
                }
                if (completionException != null && cause != null) {
                    th = cause;
                }
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(th)));
            }
        }
        return Unit.INSTANCE;
    }
}
