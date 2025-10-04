package defpackage;

import androidx.work.WorkInfo;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkLauncher;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 땳뒾됫땻딞뎠딨땔땱두뒙땻듬뒷들땋둬뎨딟둡딞되듰돷뎻땳둠딸땩뎸듼듐듟뎽듼땫뎠딌둔돝땜땣두뒵뎰뒙됴돠둠땩땩땰땧땝돳딁딄됨디뒻땵됐듸땡듻뒻뒙딄돴딤듐뎰딄듻땀뒾딠땧땃듔딤될뒐돠땻땔듨뎨땱땄뒘딻뒋딄될땝땜뎡땩둡땲땤듔듸땋땲뒉둘땤땫돛땡땩들땨뒉뒷돨땭땁땲땟됨딹뒤딻듽둘돶땅, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC1304xab8a98e3 {
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m4331xfbe0c504(WorkLauncher workLauncher, StartStopToken workSpecId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        workLauncher.startWork(workSpecId, null);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static void m4332x3271d0aa(WorkLauncher workLauncher, StartStopToken workSpecId) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        workLauncher.stopWork(workSpecId, WorkInfo.STOP_REASON_UNKNOWN);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static void m4333x1378447b(WorkLauncher workLauncher, StartStopToken workSpecId, int i) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        workLauncher.stopWork(workSpecId, i);
    }
}
