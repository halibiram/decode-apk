package defpackage;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.internal.CameraUseCaseAdapter;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.video.Recorder;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;

/* renamed from: 돶듻뎻듨딌딄땻될땯듌땃돶딄딽땹돳땹듨땐뒋들땅뒼딞뒾땝땳따듽딟뒈듬뒤땅따땋뎽딹뒵딌됐듰딌돛들딌둑딻둘딹땨딻뒀듔듌돳땅둡땀듬둣땡땳둠돼듌땻딄뎹도뎬디돠돸딠돵딹둬둡딞땧딤득딀뎻둘딐둣듽땔뒷딌뎡뒀뒘듨뒛땰둔돸뎽돶둘딄도딀땵뒬되따도딠뒤두땡뒈됴땥듽땃되땄돰딅뎽땲뎬돶땜땥, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0509xe34f69ff implements Consumer {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4004xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f4005x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f4006x1378447b;

    public /* synthetic */ C0509xe34f69ff(Object obj, Object obj2, int i) {
        this.f4004xfbe0c504 = i;
        this.f4005x3271d0aa = obj;
        this.f4006x1378447b = obj2;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) {
        switch (this.f4004xfbe0c504) {
            case 0:
                CameraUseCaseAdapter.m291x3271d0aa((Surface) this.f4005x3271d0aa, (SurfaceTexture) this.f4006x1378447b, (SurfaceRequest.Result) obj);
                return;
            case 1:
                ((DefaultSurfaceProcessor) this.f4005x3271d0aa).lambda$onOutputSurface$3((SurfaceOutput) this.f4006x1378447b, (SurfaceOutput.Event) obj);
                return;
            case 2:
                ((DualSurfaceProcessor) this.f4005x3271d0aa).lambda$onOutputSurface$2((SurfaceOutput) this.f4006x1378447b, (SurfaceOutput.Event) obj);
                return;
            default:
                ((Recorder) this.f4005x3271d0aa).lambda$updateEncoderCallbacks$11((CallbackToFutureAdapter.Completer) this.f4006x1378447b, (Throwable) obj);
                return;
        }
    }
}
