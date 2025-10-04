package defpackage;

import android.animation.Animator;
import android.content.ClipData;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.hardware.camera2.CameraCharacteristics;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.CameraCharacteristicsProvider;
import androidx.camera.core.CameraX;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.resolutionselector.ResolutionFilter;
import androidx.camera.video.Recorder;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.view.CameraController;
import androidx.camera.view.PreviewView;
import androidx.camera.view.RotationProvider;
import androidx.camera.view.impl.ZoomGestureDetector;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import app.tunnel.ssh2.tunnel.SSHThread;
import coil3.EventListener;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.target.Target;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.google.android.material.animation.AnimatableView;
import com.google.android.material.bottomsheet.BottomSheetDragHandleView;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.search.SearchBar;
import com.google.gson.internal.ConstructorConstructor;
import com.google.gson.internal.ObjectConstructor;
import com.tknetwork.tunnel.activities.NetworkActivity;
import com.tknetwork.tunnel.service.c_10;
import com.tknetwork.tunnel.thread.DNSTunnelThread;
import com.tknetwork.tunnel.thread.StreamGobbler;
import com.tknetwork.tunnel.thread.UDPTunnelThread;
import com.tknetwork.tunnel.utils.gen;
import com.tknetwork.tunnel.view.GraphHelper;
import defpackage.C0901xf47f0442;
import io.github.g00fy2.quickie.QRScannerActivity;
import io.github.g00fy2.quickie.QRScannerActivityKt;
import io.github.g00fy2.quickie.extensions.BitmapQrReaderKt;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.AsyncDns;
import okhttp3.Call;
import okhttp3.Dns;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt;
import org.jetbrains.annotations.NotNull;

/* renamed from: 돛돶땠땃뎹땤뒷뒐딃따됩땮듰뒛땲땮뒙딅돠땤뒻디땔듽딃땱둬땁뎨딞뎹둔뎠뒙돼딻뒘듨땅된뒼듸드듽된딽딃뎸땯뎨디땧땬땦딎땫뎠될돝돼듸돵딜땡듸됩돨뒀듨든듬딄딹듼땝뒛뒙땁돤뎽듔땬뒹땔돝돨땪뎨땤돶땦땯땬땱뎬딞딜듌두땔돷딄됫됐될돰돵뒻돸듐듟둠돛땃딁듨둥둣듌딽되듼땮뎠딀돵뒛땡될땯, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0419x35cc9f53 implements Dns, CallbackToFutureAdapter.Resolver, AccessibilityViewCommand, CameraCharacteristicsProvider, RotationProvider.Listener, ObjectConstructor, StreamGobbler.OnLineListener, IAxisValueFormatter, ImageAnalysis.Analyzer, ResolutionFilter, EventListener.Factory, InputConnectionCompat.OnCommitContentListener, CanvasCompat.CanvasOperation, gen.OnGenerateListener, ZoomGestureDetector.OnZoomGestureListener, ActivityResultCallback, SurfaceRequest.TransformationInfoListener, AccessibilityManagerCompat.TouchExplorationStateChangeListener, AnimatableView.Listener, EventListener.Factory, SSHThread.OnStopCliente {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f3863xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Object f3864x3271d0aa;

    public /* synthetic */ C0419x35cc9f53(Object obj, int i) {
        this.f3863xfbe0c504 = i;
        this.f3864x3271d0aa = obj;
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public void analyze(ImageProxy imageProxy) {
        ((ImageAnalysis.Analyzer) this.f3864x3271d0aa).analyze(imageProxy);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        Object lambda$release$5;
        Object lambda$updateSessionConfigAsync$7;
        Object lambda$deinit$0;
        Object lambda$shutdownInternal$4;
        Object lambda$fetchData$1;
        switch (this.f3863xfbe0c504) {
            case 1:
                lambda$release$5 = ((AudioSource) this.f3864x3271d0aa).lambda$release$5(completer);
                return lambda$release$5;
            case 2:
            case 4:
            case 5:
            default:
                lambda$fetchData$1 = ((LiveDataObservable) this.f3864x3271d0aa).lambda$fetchData$1(completer);
                return lambda$fetchData$1;
            case 3:
                lambda$updateSessionConfigAsync$7 = ((Camera2CameraControlImpl) this.f3864x3271d0aa).lambda$updateSessionConfigAsync$7(completer);
                return lambda$updateSessionConfigAsync$7;
            case 6:
                lambda$deinit$0 = ((CameraRepository) this.f3864x3271d0aa).lambda$deinit$0(completer);
                return lambda$deinit$0;
            case 7:
                lambda$shutdownInternal$4 = ((CameraX) this.f3864x3271d0aa).lambda$shutdownInternal$4(completer);
                return lambda$shutdownInternal$4;
        }
    }

    @Override // com.google.gson.internal.ObjectConstructor
    public Object construct() {
        Object lambda$newUnsafeAllocator$18;
        Object lambda$newDefaultConstructor$8;
        switch (this.f3863xfbe0c504) {
            case 8:
                lambda$newUnsafeAllocator$18 = ConstructorConstructor.lambda$newUnsafeAllocator$18((Class) this.f3864x3271d0aa);
                return lambda$newUnsafeAllocator$18;
            default:
                lambda$newDefaultConstructor$8 = ConstructorConstructor.lambda$newDefaultConstructor$8((Constructor) this.f3864x3271d0aa);
                return lambda$newDefaultConstructor$8;
        }
    }

    @Override // coil3.EventListener.Factory
    public coil3.EventListener create(ImageRequest imageRequest) {
        return (coil3.EventListener) this.f3864x3271d0aa;
    }

    @Override // androidx.camera.core.resolutionselector.ResolutionFilter
    public List filter(List list, int i) {
        List lambda$onMergeConfig$0;
        lambda$onMergeConfig$0 = ImageAnalysis.lambda$onMergeConfig$0((Size) this.f3864x3271d0aa, list, i);
        return lambda$onMergeConfig$0;
    }

    @Override // androidx.camera.camera2.internal.compat.workaround.CameraCharacteristicsProvider
    public Object get(CameraCharacteristics.Key key) {
        return ((CameraCharacteristicsCompat) this.f3864x3271d0aa).get(key);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public /* synthetic */ Size getDefaultTargetResolution() {
        return AbstractC0872x30ada666.m3433xfbe0c504(this);
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        return GraphHelper.m1650x3271d0aa((GraphHelper) this.f3864x3271d0aa, f, axisBase);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public /* synthetic */ int getTargetCoordinateSystem() {
        return AbstractC0872x30ada666.m3434x3271d0aa(this);
    }

    @Override // okhttp3.Dns
    public List lookup(String hostname) {
        AsyncDns[] asyncDns = (AsyncDns[]) this.f3864x3271d0aa;
        Intrinsics.checkNotNullParameter(asyncDns, "$asyncDns");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final CountDownLatch countDownLatch = new CountDownLatch(asyncDns.length);
        for (AsyncDns asyncDns2 : asyncDns) {
            asyncDns2.query(hostname, new AsyncDns.Callback() { // from class: okhttp3.AsyncDns$Companion$toDns$1$1$1
                @Override // okhttp3.AsyncDns.Callback
                public void onFailure(@NotNull String hostname2, @NotNull IOException e) {
                    Intrinsics.checkNotNullParameter(hostname2, "hostname");
                    Intrinsics.checkNotNullParameter(e, "e");
                    ArrayList arrayList3 = arrayList2;
                    synchronized (arrayList3) {
                        arrayList3.add(e);
                    }
                    countDownLatch.countDown();
                }

                @Override // okhttp3.AsyncDns.Callback
                public void onResponse(@NotNull String hostname2, @NotNull List<? extends InetAddress> addresses) {
                    Intrinsics.checkNotNullParameter(hostname2, "hostname");
                    Intrinsics.checkNotNullParameter(addresses, "addresses");
                    ArrayList arrayList3 = arrayList;
                    synchronized (arrayList3) {
                        arrayList3.addAll(addresses);
                    }
                    countDownLatch.countDown();
                }
            });
        }
        countDownLatch.await();
        if (arrayList.isEmpty()) {
            Throwable th = (IOException) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList2);
            if (th == null) {
                th = new UnknownHostException(AbstractC0362x4440ab85.m2952x5ac5058d("No results for ", hostname));
            }
            Iterator it = CollectionsKt___CollectionsKt.drop(arrayList2, 1).iterator();
            while (it.hasNext()) {
                AbstractC0720xaa9ccb5a.addSuppressed(th, (IOException) it.next());
            }
            throw th;
        }
        return arrayList;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ClipData clipData;
        String str;
        Object obj2;
        Object obj3;
        Object parcelableExtra;
        Object m1764constructorimpl;
        ArrayList parcelableArrayListExtra;
        Object data;
        Object obj4 = this.f3864x3271d0aa;
        switch (this.f3863xfbe0c504) {
            case 21:
                QRScannerActivity.Companion companion = QRScannerActivity.INSTANCE;
                Intent data2 = ((ActivityResult) obj).getData();
                Object obj5 = null;
                if (data2 != null) {
                    clipData = data2.getClipData();
                } else {
                    clipData = null;
                }
                if (clipData != null) {
                    obj5 = (Uri) CollectionsKt___CollectionsKt.firstOrNull(QRScannerActivityKt.access$clipList(clipData));
                } else if (data2 != null && (data = data2.getData()) != null) {
                    obj5 = data;
                } else {
                    if (data2 != null) {
                        str = data2.getAction();
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        int hashCode = str.hashCode();
                        if (hashCode != -1173264947) {
                            if (hashCode == -58484670 && str.equals("android.intent.action.SEND_MULTIPLE")) {
                                try {
                                    Result.Companion companion2 = Result.INSTANCE;
                                    if (Build.VERSION.SDK_INT >= 33) {
                                        parcelableArrayListExtra = data2.getParcelableArrayListExtra("android.intent.extra.STREAM", Uri.class);
                                    } else {
                                        parcelableArrayListExtra = data2.getParcelableArrayListExtra("android.intent.extra.STREAM");
                                    }
                                    m1764constructorimpl = Result.m1764constructorimpl(parcelableArrayListExtra);
                                } catch (Throwable th) {
                                    Result.Companion companion3 = Result.INSTANCE;
                                    m1764constructorimpl = Result.m1764constructorimpl(ResultKt.createFailure(th));
                                }
                                if (Result.m1769isFailureimpl(m1764constructorimpl)) {
                                    m1764constructorimpl = null;
                                }
                                ArrayList arrayList = (ArrayList) m1764constructorimpl;
                                if (arrayList != null) {
                                    obj5 = (Uri) CollectionsKt___CollectionsKt.firstOrNull((List) arrayList);
                                }
                            }
                        } else if (str.equals("android.intent.action.SEND")) {
                            try {
                                Result.Companion companion4 = Result.INSTANCE;
                                if (Build.VERSION.SDK_INT >= 33) {
                                    parcelableExtra = data2.getParcelableExtra("android.intent.extra.STREAM", Uri.class);
                                    obj3 = (Parcelable) parcelableExtra;
                                } else {
                                    Parcelable parcelableExtra2 = data2.getParcelableExtra("android.intent.extra.STREAM");
                                    if (!(parcelableExtra2 instanceof Uri)) {
                                        parcelableExtra2 = null;
                                    }
                                    obj3 = (Uri) parcelableExtra2;
                                }
                                obj2 = Result.m1764constructorimpl(obj3);
                            } catch (Throwable th2) {
                                Result.Companion companion5 = Result.INSTANCE;
                                obj2 = Result.m1764constructorimpl(ResultKt.createFailure(th2));
                            }
                            if (!Result.m1769isFailureimpl(obj2)) {
                                obj5 = obj2;
                            }
                            obj5 = (Uri) ((Parcelable) obj5);
                        }
                    }
                }
                if (obj5 != null) {
                    final QRScannerActivity qRScannerActivity = (QRScannerActivity) obj4;
                    SingletonImageLoader.get(qRScannerActivity).enqueue(ImageRequests_androidKt.allowHardware(new ImageRequest.Builder(qRScannerActivity).data(obj5).size(1500, 1500), false).target(new Target() { // from class: io.github.g00fy2.quickie.QRScannerActivity$pickImageLauncher$lambda$2$lambda$1$$inlined$target$default$1
                        @Override // coil3.target.Target
                        public void onError(Image error) {
                        }

                        @Override // coil3.target.Target
                        public void onStart(Image placeholder) {
                        }

                        @Override // coil3.target.Target
                        public void onSuccess(Image result) {
                            int[] iArr;
                            Bitmap bitmap$default = Image_androidKt.toBitmap$default(result, 0, 0, 3, null);
                            QRScannerActivity qRScannerActivity2 = QRScannerActivity.this;
                            iArr = qRScannerActivity2.f1096x75d576dc;
                            BitmapQrReaderKt.readQrCode(bitmap$default, iArr, new C0901xf47f0442(qRScannerActivity2, 1), new C0901xf47f0442(qRScannerActivity2, 2));
                        }
                    }).build());
                    return;
                }
                return;
            default:
                Boolean bool = (Boolean) obj;
                QRScannerActivity.Companion companion6 = QRScannerActivity.INSTANCE;
                Intrinsics.checkNotNull(bool);
                ((C1052x3eba90a4) obj4).invoke(bool);
                return;
        }
    }

    @Override // com.google.android.material.animation.AnimatableView.Listener
    public void onAnimationEnd() {
        ((Animator) this.f3864x3271d0aa).start();
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        return InputConnectionCompat.m591xfbe0c504((View) this.f3864x3271d0aa, inputContentInfoCompat, i, bundle);
    }

    @Override // com.tknetwork.tunnel.utils.gen.OnGenerateListener
    public void onGenerate(String str) {
        ((NetworkActivity) this.f3864x3271d0aa).lambda$dialogAddPayload$4(str);
    }

    @Override // com.tknetwork.tunnel.thread.StreamGobbler.OnLineListener
    public void onLine(String str) {
        switch (this.f3863xfbe0c504) {
            case 10:
                DNSTunnelThread.m1608xfbe0c504((DNSTunnelThread) this.f3864x3271d0aa, str);
                return;
            default:
                UDPTunnelThread.m1609xfbe0c504((UDPTunnelThread) this.f3864x3271d0aa, str);
                return;
        }
    }

    @Override // androidx.camera.view.RotationProvider.Listener
    public void onRotationChanged(int i) {
        ((CameraController) this.f3864x3271d0aa).lambda$new$1(i);
    }

    @Override // app.tunnel.ssh2.tunnel.SSHThread.OnStopCliente
    public void onStop() {
        ((c_10) this.f3864x3271d0aa).endTunnelService();
    }

    @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z) {
        SearchBar.m1214xfbe0c504((SearchBar) this.f3864x3271d0aa, z);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(SurfaceRequest.TransformationInfo transformationInfo) {
        ((Recorder) this.f3864x3271d0aa).lambda$configureInternal$7(transformationInfo);
    }

    @Override // androidx.camera.view.impl.ZoomGestureDetector.OnZoomGestureListener
    public boolean onZoomEvent(ZoomGestureDetector.ZoomEvent zoomEvent) {
        boolean lambda$new$1;
        lambda$new$1 = ((PreviewView) this.f3864x3271d0aa).lambda$new$1(zoomEvent);
        return lambda$new$1;
    }

    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
        return BottomSheetDragHandleView.m1029xfbe0c504((BottomSheetDragHandleView) this.f3864x3271d0aa, view, commandArguments);
    }

    @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
    public void run(Canvas canvas) {
        switch (this.f3863xfbe0c504) {
            case 17:
                MaskableFrameLayout.m1034x3271d0aa((MaskableFrameLayout) this.f3864x3271d0aa, canvas);
                return;
            default:
                NavigationView.m1213xfbe0c504((NavigationView) this.f3864x3271d0aa, canvas);
                return;
        }
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public /* synthetic */ void updateTransform(Matrix matrix) {
        AbstractC0872x30ada666.m3435x1378447b(this, matrix);
    }

    @Override // okhttp3.EventListener.Factory
    public okhttp3.EventListener create(Call it) {
        Headers headers = _UtilJvmKt.EMPTY_HEADERS;
        okhttp3.EventListener this_asFactory = (okhttp3.EventListener) this.f3864x3271d0aa;
        Intrinsics.checkNotNullParameter(this_asFactory, "$this_asFactory");
        Intrinsics.checkNotNullParameter(it, "it");
        return this_asFactory;
    }
}
