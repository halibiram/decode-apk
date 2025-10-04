package defpackage;

import kotlinx.coroutines.ChildHandle;
import kotlinx.coroutines.ChildJob;
import kotlinx.coroutines.JobNode;

/* renamed from: 됫딁뒘딞뒝딁땬딌따땃든듐딃딠땁딝따딅뎰됐딀뒻땯돶득뒻땧뎸돠돷돝듟딠땟딜뒙딀도둑듼딸디뎡둡딝돛뒬딟딹딜땁땲땩되딄땨뒻딄듨뒵돸돰딀땅땻듸됐땳딁돰뒼뒐땸땲돴득땬딽된딅듰땠돠들땔듻뎹딝딃딻돸됐딌득둥뒷땥딞딞뒈됩딸딐땳둔땧딅땻뒙뎹땪땅돷돛뎨딹둔땰땅딁딹뒘든땤뒋돵땥듸딃땰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0578x2696c5f2 extends JobNode implements ChildHandle {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final ChildJob f4286x75d576dc;

    public C0578x2696c5f2(ChildJob childJob) {
        this.f4286x75d576dc = childJob;
    }

    @Override // kotlinx.coroutines.ChildHandle
    public final boolean childCancelled(Throwable th) {
        return getJob().childCancelled(th);
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        this.f4286x75d576dc.parentCancelled(getJob());
    }
}
