package defpackage;

import kotlin.Unit;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.JobNode;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.JobSupportKt;
import kotlinx.coroutines.selects.SelectInstance;

/* renamed from: 딁땩돸둣됴듟돨돸뎠땜둣듌땡땡둘뎠뎰도뎸듸딀두땳뒀딜듔땝땩됴듼땮돸되땤딄딐됨듼땲되둠땜두딁뒘뒾듌딻돴도딹땲땅땲둘땬됴땵뎽땤드땮뒘둑땃땹땔뒬땹땍도딅땹딎뎡땰돳디땤뎸땔둔되듽딀든뒋땮땡듐뒙둥돛딝디뒀듻땀땍뎬땭두땤뒵듸따딅땋뎸땬딹듻둘딐땬땤딅딄둑듰둔뒨됐된됨뒙들됫땣땨, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0905x83cf5b7 extends JobNode {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ int f5039x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final SelectInstance f5040x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final /* synthetic */ JobSupport f5041x9e171bf9;

    public /* synthetic */ C0905x83cf5b7(JobSupport jobSupport, SelectInstance selectInstance, int i) {
        this.f5039x75d576dc = i;
        this.f5041x9e171bf9 = jobSupport;
        this.f5040x9738a56c = selectInstance;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        switch (this.f5039x75d576dc) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        switch (this.f5039x75d576dc) {
            case 0:
                JobSupport jobSupport = this.f5041x9e171bf9;
                Object state$kotlinx_coroutines_core = jobSupport.getState$kotlinx_coroutines_core();
                if (!(state$kotlinx_coroutines_core instanceof CompletedExceptionally)) {
                    state$kotlinx_coroutines_core = JobSupportKt.unboxState(state$kotlinx_coroutines_core);
                }
                this.f5040x9738a56c.trySelect(jobSupport, state$kotlinx_coroutines_core);
                return;
            default:
                this.f5040x9738a56c.trySelect(this.f5041x9e171bf9, Unit.INSTANCE);
                return;
        }
    }
}
