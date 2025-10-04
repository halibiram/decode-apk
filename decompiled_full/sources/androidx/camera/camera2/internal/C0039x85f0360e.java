package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.camera2.internal.compat.workaround.ForceCloseCaptureSession;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: androidx.camera.camera2.internal.뎨딠땱땯딃땯땪됨땧돛돳뒹됴뎹될디든땣뒐돳돤든둔뒻땰됨뒻땤듰딄됨뒘땀딃둬둥둔딻돴땡땡될딠딨뎰땭됩딀두뒘딠득뒝딞딹땁됩땨땫된둣땳둑땁뒈땳땠도든딹뎡돼되뎸땨뎬딤딐돴땧돝딄땫듬뒉딟땋딐돼뎻딅땀돶둡디돶득되둔딝땪뎬뒛땟뒋돰돤됨돳땭돳됐뎰듻땃듬듻돷듸뒤딟땃도뎸돸딁딹땯뒙듐, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0039x85f0360e implements CallbackToFutureAdapter.Resolver, ForceCloseCaptureSession.OnConfigured {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f99xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f100x3271d0aa;

    public /* synthetic */ C0039x85f0360e(Object obj, int i) {
        this.f99xfbe0c504 = i;
        this.f100x3271d0aa = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$preCapture$0;
        Object lambda$invokePostCapture$1;
        Object lambda$new$0;
        Object lambda$preCapture$5;
        Object lambda$preCapture$1;
        Object lambda$preCapture$02;
        switch (this.f99xfbe0c504) {
            case 0:
                lambda$preCapture$0 = ((Camera2CapturePipeline.AePreCaptureTask) this.f100x3271d0aa).lambda$preCapture$0(completer);
                return lambda$preCapture$0;
            case 1:
                lambda$invokePostCapture$1 = ((Camera2CapturePipeline.CameraCapturePipelineImpl) this.f100x3271d0aa).lambda$invokePostCapture$1(completer);
                return lambda$invokePostCapture$1;
            case 2:
                lambda$new$0 = ((Camera2CapturePipeline.ResultListener) this.f100x3271d0aa).lambda$new$0(completer);
                return lambda$new$0;
            case 3:
                lambda$preCapture$5 = ((Camera2CapturePipeline.ScreenFlashTask) this.f100x3271d0aa).lambda$preCapture$5(completer);
                return lambda$preCapture$5;
            case 4:
                lambda$preCapture$1 = Camera2CapturePipeline.ScreenFlashTask.lambda$preCapture$1((AtomicReference) this.f100x3271d0aa, completer);
                return lambda$preCapture$1;
            default:
                lambda$preCapture$02 = ((Camera2CapturePipeline.TorchTask) this.f100x3271d0aa).lambda$preCapture$0(completer);
                return lambda$preCapture$02;
        }
    }

    @Override // androidx.camera.camera2.internal.compat.workaround.ForceCloseCaptureSession.OnConfigured
    public void run(SynchronizedCaptureSession synchronizedCaptureSession) {
        ((SynchronizedCaptureSessionImpl) this.f100x3271d0aa).lambda$onConfigured$1(synchronizedCaptureSession);
    }
}
