package defpackage;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.selects.SelectClause1;

/* renamed from: 뒉땍둘뒨되뒝땜될돝뒛둣딐땫디둬돴땣돼되땥땳땤둠땁도딁딞듽딄뎸뎽딝듼됩드땣뎹땯땧땄됩딝뒵뎹딤땦돝돼땐땔듟든딨듬뒤딌땲딤돝딄딽듸딟뒼됩땔딨돵될뒾딌딎뒷뒀듻된땥둡듬땦둠뒛뒋뎸듽땐둬땀돵땝뒈딸딌뒀땡딞디듻돳둬디딨땪듟돨됴듻둬땋땮뒀딝됨돵땫뒙둣딝듬땅둥뎠둑땅땮됫땄딹뒘뎡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public class C0670x29e4231 extends AbstractCoroutine implements Deferred {
    @Override // kotlinx.coroutines.Deferred
    public final Object await(Continuation continuation) {
        Object awaitInternal = awaitInternal(continuation);
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        return awaitInternal;
    }

    @Override // kotlinx.coroutines.Deferred
    public final SelectClause1 getOnAwait() {
        SelectClause1<?> onAwaitInternal = getOnAwaitInternal();
        Intrinsics.checkNotNull(onAwaitInternal, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectClause1<T of kotlinx.coroutines.DeferredCoroutine>");
        return onAwaitInternal;
    }
}
