package androidx.camera.camera2.internal;

import androidx.camera.core.ZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* renamed from: androidx.camera.camera2.internal.뎻됩듌뎡듼둔땁뒷땨땱땀땪뒹듌뒼둣딁딐둑뒨땬뒙딨땹듻땦두땮된뒙딎딄딸둣뎡듸둣뒐돤뒀뎰뎡될땋땳뒵뒀땳땱뒹땣땥딀듔둡둘땟듬뒷돳뒷딟뒵둥땫땨땅딨땅듨땅돵땵뒐됐땹땠득둬드땭딌돷땍뒐땀땲땭뎡뎰땄됫뒨땡뎹땜딨뎹뒐돠디돛딤딨뎰딁땟딤됴땸뎬뒾듐뒹돸뒤듐돵땸땨뎹뒈뎽따됨돵둔돴듻땸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0068xcd6c59d4 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f166xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ZoomControl f167x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ CallbackToFutureAdapter.Completer f168x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ ZoomState f169x75d576dc;

    public /* synthetic */ RunnableC0068xcd6c59d4(ZoomControl zoomControl, CallbackToFutureAdapter.Completer completer, ZoomState zoomState, int i) {
        this.f166xfbe0c504 = i;
        this.f167x3271d0aa = zoomControl;
        this.f168x1378447b = completer;
        this.f169x75d576dc = zoomState;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f166xfbe0c504) {
            case 0:
                ZoomControl.m145xfbe0c504(this.f167x3271d0aa, this.f169x75d576dc, this.f168x1378447b);
                return;
            default:
                ZoomControl.m146x3271d0aa(this.f167x3271d0aa, this.f169x75d576dc, this.f168x1378447b);
                return;
        }
    }
}
