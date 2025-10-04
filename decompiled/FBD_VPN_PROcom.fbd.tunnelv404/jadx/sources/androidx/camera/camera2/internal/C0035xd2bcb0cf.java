package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;

/* renamed from: androidx.camera.camera2.internal.뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0035xd2bcb0cf implements AsyncFunction {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f91xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f92x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f93x1378447b;

    public /* synthetic */ C0035xd2bcb0cf(Object obj, Object obj2, int i) {
        this.f91xfbe0c504 = i;
        this.f92x3271d0aa = obj;
        this.f93x1378447b = obj2;
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        ListenableFuture lambda$configAndClose$3;
        ListenableFuture lambda$preCapture$7;
        ListenableFuture lambda$startWithDeferrableSurface$1;
        switch (this.f91xfbe0c504) {
            case 0:
                lambda$configAndClose$3 = Camera2CameraImpl.lambda$configAndClose$3((CaptureSession) this.f92x3271d0aa, (ImmediateSurface) this.f93x1378447b, (Void) obj);
                return lambda$configAndClose$3;
            case 1:
                lambda$preCapture$7 = ((Camera2CapturePipeline.ScreenFlashTask) this.f92x3271d0aa).lambda$preCapture$7((ListenableFuture) this.f93x1378447b, obj);
                return lambda$preCapture$7;
            default:
                lambda$startWithDeferrableSurface$1 = ((SynchronizedCaptureSessionBaseImpl) this.f92x3271d0aa).lambda$startWithDeferrableSurface$1((List) this.f93x1378447b, (List) obj);
                return lambda$startWithDeferrableSurface$1;
        }
    }
}
