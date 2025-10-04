package defpackage;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* renamed from: 땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class RunnableC1238xc7f678f4 extends ScopeCoroutine implements Runnable {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final long f5657x75d576dc;

    public RunnableC1238xc7f678f4(long j, Continuation continuation) {
        super(continuation.getContext(), continuation);
        this.f5657x75d576dc = j;
    }

    @Override // kotlinx.coroutines.AbstractCoroutine, kotlinx.coroutines.JobSupport
    public final String nameString$kotlinx_coroutines_core() {
        return super.nameString$kotlinx_coroutines_core() + "(timeMillis=" + this.f5657x75d576dc + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        cancelCoroutine(TimeoutKt.TimeoutCancellationException(this.f5657x75d576dc, DelayKt.getDelay(getContext()), this));
    }
}
