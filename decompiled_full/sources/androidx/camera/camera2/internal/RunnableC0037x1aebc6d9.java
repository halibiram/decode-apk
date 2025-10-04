package androidx.camera.camera2.internal;

import androidx.camera.camera2.internal.Camera2CameraImpl;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.core.impl.DeferrableSurface;
import java.util.LinkedHashSet;

/* renamed from: androidx.camera.camera2.internal.뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0037x1aebc6d9 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f96xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f97x3271d0aa;

    public /* synthetic */ RunnableC0037x1aebc6d9(Object obj, int i) {
        this.f96xfbe0c504 = i;
        this.f97x3271d0aa = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f96xfbe0c504) {
            case 0:
                ((Camera2CameraImpl.StateCallback.ScheduledReopen) this.f97x3271d0aa).lambda$run$0();
                return;
            case 1:
                ((Camera2CapturePipeline.Pipeline) this.f97x3271d0aa).executePostCapture();
                return;
            case 2:
                ((CaptureSession) this.f97x3271d0aa).lambda$issuePendingCaptureRequest$2();
                return;
            case 3:
                CaptureSessionRepository.forceOnClosed((LinkedHashSet) this.f97x3271d0aa);
                return;
            case 4:
                ProcessingCaptureSession.m130x9738a56c((ProcessingCaptureSession) this.f97x3271d0aa);
                return;
            case 5:
                ProcessingCaptureSession.m127x3271d0aa((DeferrableSurface) this.f97x3271d0aa);
                return;
            case 6:
                SynchronizedCaptureSessionBaseImpl.m135x9738a56c((SynchronizedCaptureSessionBaseImpl) this.f97x3271d0aa);
                return;
            default:
                ((SynchronizedCaptureSessionImpl) this.f97x3271d0aa).lambda$close$2();
                return;
        }
    }
}
