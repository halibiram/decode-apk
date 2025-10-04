package defpackage;

import android.hardware.camera2.CameraDevice;
import android.view.View;
import android.widget.EditText;
import androidx.activity.ComponentActivity;
import androidx.activity.ComponentDialog;
import androidx.activity.FullyDrawnReporter;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.constraintlayout.helper.widget.Carousel;
import androidx.room.InvalidationTracker;
import androidx.work.ListenableFutureKt;
import com.airbnb.lottie.LottieTask;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Utils;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.timepicker.MaterialTimePicker;
import com.google.common.util.concurrent.ListenableFuture;
import com.tknetwork.tunnel.activities.ExportActivity;
import com.tknetwork.tunnel.activities.LauncherActivity;
import com.tknetwork.tunnel.activities.NetworkActivity;
import java.io.InputStream;
import kotlinx.coroutines.Job;
import okio.Source;

/* renamed from: 돨뎠뒤땹땃땅땍딐땯딁딨뎬뒨땣땹땧딸되땠듌뎹듸둡땦땫뒙뎻땱돝디딀뒵땩딀돨땅든뒻됐둥딝땅땱뎽돴둔드뎨땵둬땡둥딐땵땻뒨듌땳땵됨딠뎠땜뒉땦듻딅땁땤듌땁듌땳돳땧뒤따땪땲딅돷땯뒵땄듨둔돤뎬땤따돨땠땜듼땍둬뎸땅딎듐딄돠땍땭됐뎸딞듬뒐둡땄땠둡뒈땤뒨돤땤듸됨디둘땣땩땳땀뒨땳땟뒋, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0450xb2a4f6ac implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3906xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3907x3271d0aa;

    public /* synthetic */ RunnableC0450xb2a4f6ac(Object obj, int i) {
        this.f3906xfbe0c504 = i;
        this.f3907x3271d0aa = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3906xfbe0c504) {
            case 0:
                BottomAppBar.m1028xfbe0c504((View) this.f3907x3271d0aa);
                return;
            case 1:
                ((Camera2CameraControl) this.f3907x3271d0aa).completeInFlightUpdate();
                return;
            case 2:
                ((Camera2CameraControlImpl) this.f3907x3271d0aa).updateSessionConfigSynchronous();
                return;
            case 3:
                ((CameraDevice) this.f3907x3271d0aa).close();
                return;
            case 4:
                ((ImageCapture.ScreenFlash) this.f3907x3271d0aa).clear();
                return;
            case 5:
                ((CameraStateRegistry.OnOpenAvailableListener) this.f3907x3271d0aa).onOpenAvailable();
                return;
            case 6:
                ((CameraStateRegistry.OnConfigureAvailableListener) this.f3907x3271d0aa).onConfigureAvailable();
                return;
            case 7:
                Carousel.m522xfbe0c504((Carousel) this.f3907x3271d0aa);
                return;
            case 8:
                ((CarouselLayoutManager) this.f3907x3271d0aa).refreshKeylineState();
                return;
            case 9:
                ((ComponentActivity) this.f3907x3271d0aa).invalidateMenu();
                return;
            case 10:
                ComponentDialog.m11xfbe0c504((ComponentDialog) this.f3907x3271d0aa);
                return;
            case 11:
                AbstractC0653xb4eb9f2d.m3266x3271d0aa((EditText) this.f3907x3271d0aa);
                return;
            case 12:
                ((DefaultSurfaceProcessor) this.f3907x3271d0aa).lambda$release$5();
                return;
            case 13:
                ((SurfaceOutput) this.f3907x3271d0aa).close();
                return;
            case 14:
                DeferrableSurfaces.m266x3271d0aa((ListenableFuture) this.f3907x3271d0aa);
                return;
            case 15:
                ((DualSurfaceProcessor) this.f3907x3271d0aa).lambda$release$4();
                return;
            case 16:
                DualSurfaceProcessorNode.m332xfbe0c504((DualSurfaceProcessorNode) this.f3907x3271d0aa);
                return;
            case 17:
                ExportActivity.m1468xad53da1a((ExportActivity) this.f3907x3271d0aa);
                return;
            case 18:
                FullyDrawnReporter.reportRunnable$lambda$2((FullyDrawnReporter) this.f3907x3271d0aa);
                return;
            case 19:
                InvalidationTracker.m657xfbe0c504((InvalidationTracker) this.f3907x3271d0aa);
                return;
            case 20:
                LauncherActivity.m1472xad53da1a((LauncherActivity) this.f3907x3271d0aa);
                return;
            case 21:
                ListenableFutureKt.launchFuture$lambda$1$lambda$0((Job) this.f3907x3271d0aa);
                return;
            case 22:
                Utils.closeQuietly((JsonReader) this.f3907x3271d0aa);
                return;
            case 23:
                Utils.closeQuietly((Source) this.f3907x3271d0aa);
                return;
            case 24:
                Utils.closeQuietly((InputStream) this.f3907x3271d0aa);
                return;
            case 25:
                LottieTask.m1024xfbe0c504((LottieTask) this.f3907x3271d0aa);
                return;
            case 26:
                MaterialTimePicker.m1257xfbe0c504((MaterialTimePicker) this.f3907x3271d0aa);
                return;
            case 27:
                ((MaterialBackOrchestrator) this.f3907x3271d0aa).startListeningForBackCallbacksWithPriorityOverlay();
                return;
            case 28:
                ((NetworkActivity) this.f3907x3271d0aa).lambda$onPrepareOptionsMenu$11();
                return;
            default:
                ((Preview) this.f3907x3271d0aa).notifyReset();
                return;
        }
    }
}
