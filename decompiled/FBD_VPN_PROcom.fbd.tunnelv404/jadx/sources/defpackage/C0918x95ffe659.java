package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.intrinsics.CancellableKt;

/* renamed from: 딄돴뒻됐뒈든뒀뒨뒾땦딅딟딜돳뎹뒀땨딠드듐딄뒐땵뒙뎨둣돸땣딐뒐뎡딨땀둥땨디돝딀듟땔땰땤땟디땫땜드돶듸둑딐뒨돨땧듬딜뒼될듟땯딌땡돛든땨뒤듟딎둑듨뎨됫듐된디듼됨땫둥땯땧듽땥둬둔듼듻됩뎹땮뒤딤땦돤돝돷땭듽딟딽땄듬둔둘딜땍둠땭돴뒷뒵뒾딃딝뒛딃뎠땰뒀땭땸뒀땃땸땡됐땦뒬땸뎽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0918x95ffe659 extends C0670x29e4231 {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Continuation f5060x75d576dc;

    public C0918x95ffe659(CoroutineContext coroutineContext, Function2 function2) {
        super(coroutineContext, true, false);
        this.f5060x75d576dc = IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, this, this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void onStart() {
        CancellableKt.startCoroutineCancellable((Continuation<? super Unit>) this.f5060x75d576dc, this);
    }
}
