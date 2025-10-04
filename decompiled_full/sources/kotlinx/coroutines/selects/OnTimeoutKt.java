package kotlinx.coroutines.selects;

import defpackage.C1008x4ea39335;
import defpackage.C1009x7e4e4697;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aC\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0007¢\u0006\u0002\u0010\n\u001aE\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u000b\u001a\u00020\f2\u001c\u0010\u0006\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0007H\u0007¢\u0006\u0004\b\r\u0010\n¨\u0006\u000e"}, d2 = {"onTimeout", "", "R", "Lkotlinx/coroutines/selects/SelectBuilder;", "timeMillis", "", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlinx/coroutines/selects/SelectBuilder;JLkotlin/jvm/functions/Function1;)V", "timeout", "Lkotlin/time/Duration;", "onTimeout-8Mi8wO0", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class OnTimeoutKt {
    /* JADX WARN: Multi-variable type inference failed */
    @ExperimentalCoroutinesApi
    public static final <R> void onTimeout(@NotNull SelectBuilder<? super R> selectBuilder, long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        C1009x7e4e4697 c1009x7e4e4697 = new C1009x7e4e4697(j);
        C1008x4ea39335 c1008x4ea39335 = C1008x4ea39335.f5200xfbe0c504;
        Intrinsics.checkNotNull(c1008x4ea39335, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        selectBuilder.invoke((SelectClause0) new SelectClause0Impl(c1009x7e4e4697, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c1008x4ea39335, 3), null, 4, null), (Function1<? super Continuation<? super Object>, ? extends Object>) function1);
    }

    @ExperimentalCoroutinesApi
    /* renamed from: onTimeout-8Mi8wO0, reason: not valid java name */
    public static final <R> void m2373onTimeout8Mi8wO0(@NotNull SelectBuilder<? super R> selectBuilder, long j, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        onTimeout(selectBuilder, DelayKt.m2225toDelayMillisLRDsOJo(j), function1);
    }
}
