package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.MeteringRepeatingSession;
import androidx.concurrent.futures.CallbackToFutureAdapter;

/* renamed from: androidx.camera.camera2.internal.뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0028x9738a56c implements CallbackToFutureAdapter.Resolver, MeteringRepeatingSession.SurfaceResetCallback {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f69xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Camera2CameraImpl f70x3271d0aa;

    public /* synthetic */ C0028x9738a56c(Camera2CameraImpl camera2CameraImpl, int i) {
        this.f69xfbe0c504 = i;
        this.f70x3271d0aa = camera2CameraImpl;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$release$5;
        Object lambda$getOrCreateUserReleaseFuture$6;
        Object lambda$openCameraConfigAndClose$1;
        Object lambda$isMeteringRepeatingAttached$14;
        switch (this.f69xfbe0c504) {
            case 0:
                lambda$release$5 = this.f70x3271d0aa.lambda$release$5(completer);
                return lambda$release$5;
            case 1:
            default:
                lambda$isMeteringRepeatingAttached$14 = this.f70x3271d0aa.lambda$isMeteringRepeatingAttached$14(completer);
                return lambda$isMeteringRepeatingAttached$14;
            case 2:
                lambda$getOrCreateUserReleaseFuture$6 = this.f70x3271d0aa.lambda$getOrCreateUserReleaseFuture$6(completer);
                return lambda$getOrCreateUserReleaseFuture$6;
            case 3:
                lambda$openCameraConfigAndClose$1 = this.f70x3271d0aa.lambda$openCameraConfigAndClose$1(completer);
                return lambda$openCameraConfigAndClose$1;
        }
    }

    @Override // androidx.camera.camera2.internal.MeteringRepeatingSession.SurfaceResetCallback
    public void onSurfaceReset() {
        this.f70x3271d0aa.lambda$addOrRemoveMeteringRepeatingUseCase$17();
    }
}
