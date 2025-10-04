package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.os.Handler;
import android.view.SurfaceHolder;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.Size;
import com.journeyapps.barcodescanner.Util;
import com.panda912.muddy.ObfuscatedString;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0395x2fa10a30;
import defpackage.RunnableC0506xec200e51;

/* loaded from: classes3.dex */
public class CameraInstance {
    private static final String TAG = "CameraInstance";
    private CameraManager cameraManager;
    private CameraThread cameraThread;
    private DisplayConfiguration displayConfiguration;
    private Handler mainHandler;
    private Handler readyHandler;
    private CameraSurface surface;
    private boolean open = false;
    private boolean cameraClosed = true;
    private CameraSettings cameraSettings = new CameraSettings();
    private Runnable opener = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.1
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-195434905322654091L, 8218369222706887927L, -6071165446048333926L}).toString();
                CameraInstance.this.cameraManager.open();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-128585870981410642L, 4280632633273597161L, -7089234891751519895L, 6909992836630632952L}).toString();
            }
        }
    };
    private Runnable configure = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.2
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{7616571820440337380L, 3104204683985573036L, 2263704124657080233L, -8554917558696224034L}).toString();
                CameraInstance.this.cameraManager.configure();
                if (CameraInstance.this.readyHandler != null) {
                    CameraInstance.this.readyHandler.obtainMessage(R.id.zxing_prewiew_size_ready, CameraInstance.this.getPreviewSize()).sendToTarget();
                }
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7901055794495328611L, 6418743453319941085L, -3438941433997707147L, -2544246687735741896L, -2717860321268959977L}).toString();
            }
        }
    };
    private Runnable previewStarter = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.3
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7866733084447015246L, -4144920457905583337L, -1493567857081823799L}).toString();
                CameraInstance.this.cameraManager.setPreviewDisplay(CameraInstance.this.surface);
                CameraInstance.this.cameraManager.startPreview();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{618557708873475194L, -445785308141703638L, -5661781339522503643L, -2361203632798209981L}).toString();
            }
        }
    };
    private Runnable closer = new Runnable() { // from class: com.journeyapps.barcodescanner.camera.CameraInstance.4
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{1094158638503623821L, -1431151957585716396L, -8594199117604537854L}).toString();
                CameraInstance.this.cameraManager.stopPreview();
                CameraInstance.this.cameraManager.close();
            } catch (Exception unused2) {
                String unused3 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7853480030893560220L, -4215900646252881787L, -8338493747517101557L, -8664560227451845857L}).toString();
            }
            CameraInstance.this.cameraClosed = true;
            CameraInstance.this.readyHandler.sendEmptyMessage(R.id.zxing_camera_closed);
            CameraInstance.this.cameraThread.decrementInstances();
        }
    };

    /* renamed from: com.journeyapps.barcodescanner.camera.CameraInstance$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-195434905322654091L, 8218369222706887927L, -6071165446048333926L}).toString();
                CameraInstance.this.cameraManager.open();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-128585870981410642L, 4280632633273597161L, -7089234891751519895L, 6909992836630632952L}).toString();
            }
        }
    }

    /* renamed from: com.journeyapps.barcodescanner.camera.CameraInstance$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Runnable {
        public AnonymousClass2() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{7616571820440337380L, 3104204683985573036L, 2263704124657080233L, -8554917558696224034L}).toString();
                CameraInstance.this.cameraManager.configure();
                if (CameraInstance.this.readyHandler != null) {
                    CameraInstance.this.readyHandler.obtainMessage(R.id.zxing_prewiew_size_ready, CameraInstance.this.getPreviewSize()).sendToTarget();
                }
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7901055794495328611L, 6418743453319941085L, -3438941433997707147L, -2544246687735741896L, -2717860321268959977L}).toString();
            }
        }
    }

    /* renamed from: com.journeyapps.barcodescanner.camera.CameraInstance$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements Runnable {
        public AnonymousClass3() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7866733084447015246L, -4144920457905583337L, -1493567857081823799L}).toString();
                CameraInstance.this.cameraManager.setPreviewDisplay(CameraInstance.this.surface);
                CameraInstance.this.cameraManager.startPreview();
            } catch (Exception e) {
                CameraInstance.this.notifyError(e);
                String unused2 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{618557708873475194L, -445785308141703638L, -5661781339522503643L, -2361203632798209981L}).toString();
            }
        }
    }

    /* renamed from: com.journeyapps.barcodescanner.camera.CameraInstance$4 */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements Runnable {
        public AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = CameraInstance.TAG;
                new ObfuscatedString(new long[]{1094158638503623821L, -1431151957585716396L, -8594199117604537854L}).toString();
                CameraInstance.this.cameraManager.stopPreview();
                CameraInstance.this.cameraManager.close();
            } catch (Exception unused2) {
                String unused3 = CameraInstance.TAG;
                new ObfuscatedString(new long[]{-7853480030893560220L, -4215900646252881787L, -8338493747517101557L, -8664560227451845857L}).toString();
            }
            CameraInstance.this.cameraClosed = true;
            CameraInstance.this.readyHandler.sendEmptyMessage(R.id.zxing_camera_closed);
            CameraInstance.this.cameraThread.decrementInstances();
        }
    }

    public CameraInstance(Context context) {
        Util.validateMainThread();
        this.cameraThread = CameraThread.getInstance();
        CameraManager cameraManager = new CameraManager(context);
        this.cameraManager = cameraManager;
        cameraManager.setCameraSettings(this.cameraSettings);
        this.mainHandler = new Handler();
    }

    public Size getPreviewSize() {
        return this.cameraManager.getPreviewSize();
    }

    public /* synthetic */ void lambda$changeCameraParameters$1(CameraParametersCallback cameraParametersCallback) {
        this.cameraManager.changeCameraParameters(cameraParametersCallback);
    }

    public /* synthetic */ void lambda$requestPreview$2(PreviewCallback previewCallback) {
        this.cameraManager.requestPreviewFrame(previewCallback);
    }

    public /* synthetic */ void lambda$requestPreview$3(PreviewCallback previewCallback) {
        if (!this.open) {
            new ObfuscatedString(new long[]{3698682324940902895L, 8492021431854453221L, 8820556142019033895L, -4321356804757525912L, -6186655842617740839L, 3892759651430050765L}).toString();
        } else {
            this.cameraThread.enqueue(new RunnableC0506xec200e51(this, previewCallback, 1));
        }
    }

    public /* synthetic */ void lambda$setTorch$0(boolean z) {
        this.cameraManager.setTorch(z);
    }

    public void notifyError(Exception exc) {
        Handler handler = this.readyHandler;
        if (handler != null) {
            handler.obtainMessage(R.id.zxing_camera_error, exc).sendToTarget();
        }
    }

    private void validateOpen() {
        if (this.open) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-1993374660678716151L, 7077520561633137470L, -1034171184801650963L, -629991806345141128L, 8493542058241417111L}).toString());
        }
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨 */
    public static /* synthetic */ void m1335x75d576dc(CameraInstance cameraInstance, CameraParametersCallback cameraParametersCallback) {
        cameraInstance.lambda$changeCameraParameters$1(cameraParametersCallback);
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        Util.validateMainThread();
        if (this.open) {
            this.cameraThread.enqueue(new RunnableC0371x742e2fda(this, cameraParametersCallback, 12));
        }
    }

    public void close() {
        Util.validateMainThread();
        if (this.open) {
            this.cameraThread.enqueue(this.closer);
        } else {
            this.cameraClosed = true;
        }
        this.open = false;
    }

    public void configureCamera() {
        Util.validateMainThread();
        validateOpen();
        this.cameraThread.enqueue(this.configure);
    }

    public CameraManager getCameraManager() {
        return this.cameraManager;
    }

    public int getCameraRotation() {
        return this.cameraManager.getCameraRotation();
    }

    public CameraSettings getCameraSettings() {
        return this.cameraSettings;
    }

    public CameraThread getCameraThread() {
        return this.cameraThread;
    }

    public DisplayConfiguration getDisplayConfiguration() {
        return this.displayConfiguration;
    }

    public CameraSurface getSurface() {
        return this.surface;
    }

    public boolean isCameraClosed() {
        return this.cameraClosed;
    }

    public boolean isOpen() {
        return this.open;
    }

    public void open() {
        Util.validateMainThread();
        this.open = true;
        this.cameraClosed = false;
        this.cameraThread.incrementAndEnqueue(this.opener);
    }

    public void requestPreview(PreviewCallback previewCallback) {
        this.mainHandler.post(new RunnableC0506xec200e51(this, previewCallback, 0));
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        if (!this.open) {
            this.cameraSettings = cameraSettings;
            this.cameraManager.setCameraSettings(cameraSettings);
        }
    }

    public void setDisplayConfiguration(DisplayConfiguration displayConfiguration) {
        this.displayConfiguration = displayConfiguration;
        this.cameraManager.setDisplayConfiguration(displayConfiguration);
    }

    public void setReadyHandler(Handler handler) {
        this.readyHandler = handler;
    }

    public void setSurface(CameraSurface cameraSurface) {
        this.surface = cameraSurface;
    }

    public void setSurfaceHolder(SurfaceHolder surfaceHolder) {
        setSurface(new CameraSurface(surfaceHolder));
    }

    public void setTorch(boolean z) {
        Util.validateMainThread();
        if (this.open) {
            this.cameraThread.enqueue(new RunnableC0395x2fa10a30(3, this, z));
        }
    }

    public void startPreview() {
        Util.validateMainThread();
        validateOpen();
        this.cameraThread.enqueue(this.previewStarter);
    }

    public CameraInstance(CameraManager cameraManager) {
        Util.validateMainThread();
        this.cameraManager = cameraManager;
    }
}
