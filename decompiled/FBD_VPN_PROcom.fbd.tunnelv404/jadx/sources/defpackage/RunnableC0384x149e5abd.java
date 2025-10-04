package defpackage;

import android.widget.TextView;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageProcessor;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.InternalImageProcessor;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceProcessorNode;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioStream;
import androidx.camera.video.internal.audio.BufferedAudioStream;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.room.QueryInterceptorDatabase;
import androidx.work.WorkerParameters;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.utils.CancelWorkRunnable;
import com.google.common.util.concurrent.ListenableFuture;
import com.tknetwork.tunnel.activities.ActivityUi;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: 뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class RunnableC0384x149e5abd implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3790xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3791x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Object f3792x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ Object f3793x75d576dc;

    public /* synthetic */ RunnableC0384x149e5abd(Object obj, int i, Object obj2, Object obj3) {
        this.f3790xfbe0c504 = i;
        this.f3791x3271d0aa = obj;
        this.f3792x1378447b = obj2;
        this.f3793x75d576dc = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3790xfbe0c504) {
            case 0:
                ((ActivityUi) this.f3791x3271d0aa).lambda$updateByteCount$8((String) this.f3792x1378447b, (String) this.f3793x75d576dc);
                return;
            case 1:
                ((ActivityUi) this.f3791x3271d0aa).lambda$mIphunt$75((TextView) this.f3792x1378447b, (TextView) this.f3793x75d576dc);
                return;
            case 2:
                ((AudioSource) this.f3791x3271d0aa).lambda$setAudioSourceCallback$6((Executor) this.f3792x1378447b, (AudioSource.AudioSourceCallback) this.f3793x75d576dc);
                return;
            case 3:
                ((BufferedAudioStream) this.f3791x3271d0aa).lambda$setCallback$3((AudioStream.AudioStreamCallback) this.f3792x1378447b, (Executor) this.f3793x75d576dc);
                return;
            case 4:
                ((Camera2CameraControlImpl) this.f3791x3271d0aa).lambda$addSessionCameraCaptureCallback$8((Executor) this.f3792x1378447b, (CameraCaptureCallback) this.f3793x75d576dc);
                return;
            case 5:
                CancelWorkRunnable.m886xfbe0c504((WorkDatabase) this.f3791x3271d0aa, (String) this.f3792x1378447b, (WorkManagerImpl) this.f3793x75d576dc);
                return;
            case 6:
                ((DefaultSurfaceProcessor) this.f3791x3271d0aa).lambda$executeSafely$12((Runnable) this.f3792x1378447b, (Runnable) this.f3793x75d576dc);
                return;
            case 7:
                ((DualSurfaceProcessor) this.f3791x3271d0aa).lambda$executeSafely$8((Runnable) this.f3792x1378447b, (Runnable) this.f3793x75d576dc);
                return;
            case 8:
                ((EncoderImpl) this.f3791x3271d0aa).lambda$stopMediaCodec$12((ArrayList) this.f3792x1378447b, (Runnable) this.f3793x75d576dc);
                return;
            case 9:
                ((ImageCapture) this.f3791x3271d0aa).lambda$takePicture$1((Executor) this.f3792x1378447b, (ImageCapture.OnImageCapturedCallback) this.f3793x75d576dc);
                return;
            case 10:
                ((InternalImageProcessor) this.f3791x3271d0aa).lambda$safeProcess$0((ImageProcessor.Request) this.f3792x1378447b, (CallbackToFutureAdapter.Completer) this.f3793x75d576dc);
                return;
            case 11:
                ((Processor) this.f3791x3271d0aa).lambda$startWork$1((ListenableFuture) this.f3792x1378447b, (WorkerWrapper) this.f3793x75d576dc);
                return;
            case 12:
                QueryInterceptorDatabase.query$lambda$7((QueryInterceptorDatabase) this.f3791x3271d0aa, (String) this.f3792x1378447b, (Object[]) this.f3793x75d576dc);
                return;
            case 13:
                QueryInterceptorDatabase.execSQL$lambda$12((QueryInterceptorDatabase) this.f3791x3271d0aa, (String) this.f3792x1378447b, (List) this.f3793x75d576dc);
                return;
            case 14:
                ((Recorder) this.f3791x3271d0aa).lambda$onSurfaceRequested$0((SurfaceRequest) this.f3792x1378447b, (Timebase) this.f3793x75d576dc);
                return;
            case 15:
                SurfaceProcessorNode.m318xfbe0c504((SurfaceProcessorNode) this.f3791x3271d0aa, (SurfaceEdge) this.f3792x1378447b, (Map.Entry) this.f3793x75d576dc);
                return;
            case 16:
                VideoCapture.lambda$setupSurfaceUpdateNotifier$5((AtomicBoolean) this.f3791x3271d0aa, (SessionConfig.Builder) this.f3792x1378447b, (CameraCaptureCallback) this.f3793x75d576dc);
                return;
            default:
                WorkLauncherImpl.m871xfbe0c504((WorkLauncherImpl) this.f3791x3271d0aa, (StartStopToken) this.f3792x1378447b, (WorkerParameters.RuntimeExtras) this.f3793x75d576dc);
                return;
        }
    }
}
