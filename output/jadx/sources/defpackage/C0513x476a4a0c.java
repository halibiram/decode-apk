package defpackage;

import java.util.concurrent.Future;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.JobNode;
import kotlinx.coroutines.JobSupportKt;

/* renamed from: 돶땩돨딁듬뎹돰둥되땵둑돷뒙듽뒘뒻뎬딌땀땣돳딄땅뎹땀땝딟뒨듰뎬땝딸되들듻듼드땹돳뎽딎뎡딐뒵뎸딞땻도딁됫두땳땱뒤둬든땍둔뒙딽뎡뎸둬딎둔뒾땧땐뎸땤딽둑돝뒼들뒐딜땫딽땮듻뒙딃땀뒙뒀땀뎬뒼돤땝땃딃돷땃돤듨딸됫됨뎨땡뒋돨땣돷땝듔딽땸둔딨땄둡딌땝뒋뒬돴딁뎨땸돨딠둣뒋땲뎽땟되, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0513x476a4a0c extends JobNode {

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ int f4016x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final Object f4017x9738a56c;

    public /* synthetic */ C0513x476a4a0c(Object obj, int i) {
        this.f4016x75d576dc = i;
        this.f4017x9738a56c = obj;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean getOnCancelling() {
        switch (this.f4016x75d576dc) {
            case 0:
                return false;
            case 1:
                return false;
            case 2:
                return false;
            default:
                return false;
        }
    }

    @Override // kotlinx.coroutines.JobNode
    public final void invoke(Throwable th) {
        Object obj = this.f4017x9738a56c;
        switch (this.f4016x75d576dc) {
            case 0:
                if (th != null) {
                    Future future = (Future) obj;
                    if (!future.isDone()) {
                        future.cancel(false);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                ((DisposableHandle) obj).dispose();
                return;
            case 2:
                ((Function1) obj).invoke(th);
                return;
            default:
                Object state$kotlinx_coroutines_core = getJob().getState$kotlinx_coroutines_core();
                C0902x2a985365 c0902x2a985365 = (C0902x2a985365) obj;
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    Result.Companion companion = Result.INSTANCE;
                    c0902x2a985365.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(((CompletedExceptionally) state$kotlinx_coroutines_core).cause)));
                    return;
                } else {
                    Result.Companion companion2 = Result.INSTANCE;
                    c0902x2a985365.resumeWith(Result.m1764constructorimpl(JobSupportKt.unboxState(state$kotlinx_coroutines_core)));
                    return;
                }
        }
    }
}
