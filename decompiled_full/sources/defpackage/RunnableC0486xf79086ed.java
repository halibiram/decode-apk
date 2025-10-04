package defpackage;

import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* renamed from: 돴듬딜둥듸딃딻둬뒐뎡듰듽땪둑둠땱돰땜땀뎬뎽듌땟딀따땍돸땐땋뒛땣땥돠뎡둔돷든둘득땥됨딌뎬땁된땠딐딠뎡땻돼땜뒤땜뎻둠뒐땣딨딄뒹둥된된땝뎻땻됩딞땣뒝돰뎽땋듔듬땠듼둥두돷디드둘딎뎨뒾돳둘땪둡딤따뒵딨들딸딠돳딀뒀든딁듼돠땩됐땥땬땫딽되뒾땰듻드땯듰땳딀땰땝땤땥뒀드딹딌뎡돴, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0486xf79086ed implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3978xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Camera2CameraControl f3979x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ CallbackToFutureAdapter.Completer f3980x1378447b;

    public /* synthetic */ RunnableC0486xf79086ed(Camera2CameraControl camera2CameraControl, CallbackToFutureAdapter.Completer completer, int i) {
        this.f3978xfbe0c504 = i;
        this.f3979x3271d0aa = camera2CameraControl;
        this.f3980x1378447b = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3978xfbe0c504) {
            case 0:
                this.f3979x3271d0aa.lambda$clearCaptureRequestOptions$4(this.f3980x1378447b);
                return;
            case 1:
                this.f3979x3271d0aa.lambda$setCaptureRequestOptions$0(this.f3980x1378447b);
                return;
            default:
                this.f3979x3271d0aa.lambda$addCaptureRequestOptions$2(this.f3980x1378447b);
                return;
        }
    }
}
