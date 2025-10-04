package defpackage;

import androidx.camera.core.imagecapture.TakePictureManager;

/* renamed from: 땩듽돨돠듐땍듬땄듨땥뒋땻둔됩돛딞땃땄뒾돝뒙딎돛땠딞뒀듬둣뎸땻땡딸둠듬뎹딠땬뒝돠듰땰땨되디따돰땻들땬딄뒘뒘땰땳뒝딁딄땨뒾듰땍뎽땯됐땲뎨든돴된땭뒻뒻됐듸땜땲뎨땐땃드뎨딸딌둔땻뒻땥땫뎸땫땟되땔뒻돳뒐돰뒾땯뎡딨둬뒻돼땜땅뒙딐됩돳됐땝듼둠둑따딨돠뒋될딃뎸뒻듨뒉땪땅돴딅딐, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC1223x66fb8c7b implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5628xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ TakePictureManager f5629x3271d0aa;

    public /* synthetic */ RunnableC1223x66fb8c7b(TakePictureManager takePictureManager, int i) {
        this.f5628xfbe0c504 = i;
        this.f5629x3271d0aa = takePictureManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5628xfbe0c504) {
            case 0:
                TakePictureManager.m244xfbe0c504(this.f5629x3271d0aa);
                return;
            default:
                this.f5629x3271d0aa.issueNextRequest();
                return;
        }
    }
}
