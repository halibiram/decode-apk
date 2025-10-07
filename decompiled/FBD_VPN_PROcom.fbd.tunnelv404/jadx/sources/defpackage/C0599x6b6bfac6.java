package defpackage;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.flow.internal.AbortFlowException;

/* renamed from: 됴땫땁둔들땬땤둘딁뒬뒵돳땭뒼뎨딞돰땃둑뎬돨땬둘땋뒛된딜두듽둬디뒉뒵땫됴되뒻뒾뎸땤뒻듰땔뒀땹땳뒙딠땁뒷딸둬되딠둑둘땜뒨듔돳뒀땍뎡듽땅둠듔뒹돰뎽듬둡땭뒉딸뒻듼땥뎰뒝뒀땃땁드뒵땔딹딌딎듨듟딀둑딎돤돵딌땪듐돠뒨땝뒐둘땧두돝딄땍둬땦듸땩듸든듻되뒝땦듟땧땱딌땠뒐듽땬뒝듽땹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0599x6b6bfac6 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4321xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4322x3271d0aa;

    public /* synthetic */ C0599x6b6bfac6(Object obj, int i) {
        this.f4321xfbe0c504 = i;
        this.f4322x3271d0aa = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f4322x3271d0aa;
        switch (this.f4321xfbe0c504) {
            case 0:
                CompletableJob completableJob = (CompletableJob) obj2;
                if (completableJob.isActive()) {
                    completableJob.cancel((CancellationException) new AbortFlowException(completableJob));
                }
                return Unit.INSTANCE;
            default:
                Result.Companion companion = Result.INSTANCE;
                Unit unit = Unit.INSTANCE;
                ((CancellableContinuationImpl) obj2).resumeWith(Result.m1764constructorimpl(unit));
                return unit;
        }
    }
}
