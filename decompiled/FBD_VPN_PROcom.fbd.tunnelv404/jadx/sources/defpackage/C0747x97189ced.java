package defpackage;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.flow.internal.ChildCancelledException;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* renamed from: 뒵뒷뎹뎹딻딄듻되땩돵딽뒛뒝될딀뎰돳돰뒻땋뒉땭땧땜뒝땰드땦도뒼뒙뒨땰듔둠딐뒀뎽들뒋뒋땳땪땰듽뎨땋땳땁됩뒷뒨딐돸딁땰둠딟뎨뒐들땀돤뎨뎡뎬땮듽땐땫둡뒛뎨뒨돷땩됴땥돳땮딹듬뎠듸뎽뒹뒋땬땟뒋뒬딐땠땜뎰둘땁딟돤됨땡됫드뎰땫뒙듻땥땳땜됩뒈땭뒼뒨든딀둡돛드땅뒼따돸땮뎹돳뎹든듬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0747x97189ced extends ScopeCoroutine {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ int f4659x75d576dc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0747x97189ced(CoroutineContext coroutineContext, Continuation continuation, int i) {
        super(coroutineContext, continuation);
        this.f4659x75d576dc = i;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean childCancelled(Throwable th) {
        switch (this.f4659x75d576dc) {
            case 0:
                if (th instanceof ChildCancelledException) {
                    return true;
                }
                return cancelImpl$kotlinx_coroutines_core(th);
            default:
                return false;
        }
    }
}
