package defpackage;

import androidx.camera.core.ImageCapture;
import androidx.camera.core.SafeCloseImageReaderProxy;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.core.view.ViewKt;
import androidx.lifecycle.ProcessLifecycleOwner;
import androidx.work.multiprocess.RemoteWorkManagerClient;
import app.tunnel.ssh2.tunnel.SSHThread;
import com.google.android.material.search.SearchBar;
import com.google.android.material.textfield.TextInputLayout;
import com.tknetwork.tunnel.activities.ServerActivity;
import com.v2ray.ang.service.V2RayVpnService;
import kotlin.jvm.functions.Function0;

/* renamed from: 딹땲땍땜뎻뎡뎸땦딟뒷된될둥뒷돨돵뒉뎠땮땨땔뒹두땧땐돨땣됫돸딁됨뒬둬딃땤땃돛땯든땱땭듌뎹뒝땔딃땫따땬땨됐됨뒼뎡땦됫땩돰뒈득둡뎠뒋땧뒈돰득땧땝땧땣뒵뎡딤듟땤듰돤땋딹땃듼됫디득땃둑뒤둠땬드땲뎽돰땄딨뎬땦땃디땰땭딟땨딅드딽뒵듨땍땄디딻딃듻돶듰듐땨딄돠뒉딅돼땩돰딄될될됫, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC1044x8c43c726 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5288xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f5289x3271d0aa;

    public /* synthetic */ RunnableC1044x8c43c726(Object obj, int i) {
        this.f5288xfbe0c504 = i;
        this.f5289x3271d0aa = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5288xfbe0c504) {
            case 0:
                ProcessCameraProvider.shutdownAsync$lambda$0((ProcessCameraProvider) this.f5289x3271d0aa);
                return;
            case 1:
                ProcessLifecycleOwner.m634xfbe0c504((ProcessLifecycleOwner) this.f5289x3271d0aa);
                return;
            case 2:
                Recorder.lambda$stopInternal$13((Encoder) this.f5289x3271d0aa);
                return;
            case 3:
                ((RemoteWorkManagerClient) this.f5289x3271d0aa).lambda$execute$3();
                return;
            case 4:
                ((SSHThread) this.f5289x3271d0aa).lambda$stopAll$0();
                return;
            case 5:
                ((ImageCapture.ScreenFlashListener) this.f5289x3271d0aa).onCompleted();
                return;
            case 6:
                SearchBar.m1215x3271d0aa((SearchBar) this.f5289x3271d0aa);
                return;
            case 7:
                ((ServerActivity) this.f5289x3271d0aa).lambda$onPrepareOptionsMenu$10();
                return;
            case 8:
                ((AudioStream.AudioStreamCallback) this.f5289x3271d0aa).onSilenceStateChanged(true);
                return;
            case 9:
                SurfaceProcessorNode.m320x1378447b((SurfaceProcessorNode) this.f5289x3271d0aa);
                return;
            case 10:
                ((TextInputLayout) this.f5289x3271d0aa).lambda$onGlobalLayout$1();
                return;
            case 11:
                V2RayVpnService.runTun2socks$lambda$7((V2RayVpnService) this.f5289x3271d0aa);
                return;
            case 12:
                ((VideoCapture) this.f5289x3271d0aa).notifyReset();
                return;
            case 13:
                ViewKt.m588xfbe0c504((Function0) this.f5289x3271d0aa);
                return;
            default:
                ((SafeCloseImageReaderProxy) this.f5289x3271d0aa).safeClose();
                return;
        }
    }
}
