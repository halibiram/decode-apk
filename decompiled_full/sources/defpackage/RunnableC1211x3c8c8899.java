package defpackage;

import androidx.camera.core.impl.DeferrableSurface;

/* renamed from: 땨뎬됨뎰땔딜딁딞땣딹듨뎻땝땲딎땻뒷돵딤땦땐뒾딞돳땲땫땻듬땐됐돼둬따뒬땀딠듔딅땭땨땣듟뒨땜땨땀뒈땋뎡뎽돝뒵된땹딅땔뒛땲딸딅됐땸딜뒻땣뒐뒛뒛뎸땋돶뎹땩땁돨득돝뎰땟듽땩뎻딸땁딟뎹뎽땐땥땤땸뒼딄되땔됐뒘뎽돰땭땻땳딨돼딀돨됴딌땍땅땤딝뒋뒨딝돷돶됫딄듐땱딞땸땱따돛딞땃땄듽, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC1211x3c8c8899 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5609xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ DeferrableSurface f5610x3271d0aa;

    public /* synthetic */ RunnableC1211x3c8c8899(DeferrableSurface deferrableSurface, int i) {
        this.f5609xfbe0c504 = i;
        this.f5610x3271d0aa = deferrableSurface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5609xfbe0c504) {
            case 0:
                this.f5610x3271d0aa.close();
                return;
            default:
                this.f5610x3271d0aa.decrementUseCount();
                return;
        }
    }
}
