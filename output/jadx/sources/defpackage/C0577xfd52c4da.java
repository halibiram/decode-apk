package defpackage;

import kotlin.Result;
import kotlin.Unit;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.JobNode;

/* renamed from: 됫든두들둠듽땮딁될뒙딠둣땜땡뎬돶둥땪땁드듬딄딁딃뒈땁뒝뒙땃땄돷됐땧뒼돛듽듔둡땠뒀돷딠돵딀디땡듔땨땟땳돤뎠듬뒀땱뎡딠땐땁뒛둥뒐땱되땔듌딜뎨됨땋돶된땬딁둔딜뒼땭돼딠땱듻땄디돨뒹땃딝됴땸됫된둣듟딃땯돴드땱뒻땀돝뎽돛듰뎨땧땠땬땤딞됨땬땤돝딝돸드따듽뎽뎨두땫둘듔뒘딝둥땸, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0577xfd52c4da extends JobNode {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ int f4284x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final CancellableContinuationImpl f4285x9738a56c;

    public /* synthetic */ C0577xfd52c4da(CancellableContinuationImpl cancellableContinuationImpl, int i) {
        this.f4284x75d576dc = i;
        this.f4285x9738a56c = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        switch (this.f4284x75d576dc) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        CancellableContinuationImpl cancellableContinuationImpl = this.f4285x9738a56c;
        switch (this.f4284x75d576dc) {
            case 0:
                cancellableContinuationImpl.parentCancelled$kotlinx_coroutines_core(cancellableContinuationImpl.getContinuationCancellationCause(getJob()));
                return;
            default:
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                return;
        }
    }
}
