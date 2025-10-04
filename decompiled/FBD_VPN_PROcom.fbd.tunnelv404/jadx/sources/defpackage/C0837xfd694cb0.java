package defpackage;

import java.util.concurrent.CompletableFuture;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* renamed from: 들땟땜뒐땁둔딐땟듬뒀둡둡듬딁뒋돳땳땍땄딅뎡뒋뒵돛둔뒝땵뒝뒐뎸디뒛뎡땀땥딀둣땮땻뒋땸땰딀되듬디뒷딎듽됨뎽딅땐뎡땬뒤됫딟돠뒋뒨땀뎠땍땀뒙딠딹땔땨땸됐돝된땔땹뎹땲돶듰땱둔듐땀딽뒋되돴딟됩땣뒋땵땣돝딝땅든든땰뒼땳돼듻됐듌뒝득뒵딸뎠딨땻딞딠드땁땅땲뎻돸땧땥땠둬된딐된땩된, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0837xfd694cb0 implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ CompletableFuture f4924xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ C0645xe89a3bab f4925x3271d0aa;

    public C0837xfd694cb0(CompletableFuture completableFuture, C0645xe89a3bab c0645xe89a3bab) {
        this.f4924xfbe0c504 = completableFuture;
        this.f4925x3271d0aa = c0645xe89a3bab;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        this.f4924xfbe0c504.cancel(false);
        this.f4925x3271d0aa.cont = null;
        return Unit.INSTANCE;
    }
}
