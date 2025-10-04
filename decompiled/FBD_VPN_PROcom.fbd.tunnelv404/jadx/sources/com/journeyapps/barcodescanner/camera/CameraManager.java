package com.journeyapps.barcodescanner.camera;

import android.content.Context;
import android.hardware.Camera;
import android.os.Build;
import android.view.SurfaceHolder;
import com.google.zxing.client.android.AmbientLightManager;
import com.google.zxing.client.android.camera.open.OpenCameraInterface;
import com.journeyapps.barcodescanner.Size;
import com.journeyapps.barcodescanner.SourceData;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class CameraManager {
    private static final String TAG = "CameraManager";
    private AmbientLightManager ambientLightManager;
    private AutoFocusManager autoFocusManager;
    private Camera camera;
    private Camera.CameraInfo cameraInfo;
    private Context context;
    private String defaultParameters;
    private DisplayConfiguration displayConfiguration;
    private Size previewSize;
    private boolean previewing;
    private Size requestedPreviewSize;
    private CameraSettings settings = new CameraSettings();
    private int rotationDegrees = -1;
    private final CameraPreviewCallback cameraPreviewCallback = new CameraPreviewCallback();

    /* loaded from: classes3.dex */
    public final class CameraPreviewCallback implements Camera.PreviewCallback {
        private PreviewCallback callback;
        private Size resolution;

        public CameraPreviewCallback() {
        }

        @Override // android.hardware.Camera.PreviewCallback
        public void onPreviewFrame(byte[] bArr, Camera camera) {
            Size size = this.resolution;
            PreviewCallback previewCallback = this.callback;
            if (size == null || previewCallback == null) {
                String unused = CameraManager.TAG;
                new ObfuscatedString(new long[]{322733120085286077L, -2024725897102198902L, -7820221625891853593L, -8993146462679200936L, -3979132648765045784L, -651655613807658117L, 4744376649205916088L, -760060650689326000L, 487242807193857769L}).toString();
                if (previewCallback != null) {
                    previewCallback.onPreviewError(new Exception(new ObfuscatedString(new long[]{-6600252841575484089L, 3110882411218634928L, -3502274828434233291L, -1361844654867941321L}).toString()));
                    return;
                }
                return;
            }
            try {
                if (bArr != null) {
                    SourceData sourceData = new SourceData(bArr, size.width, size.height, camera.getParameters().getPreviewFormat(), CameraManager.this.getCameraRotation());
                    if (CameraManager.this.cameraInfo.facing == 1) {
                        sourceData.setPreviewMirrored(true);
                    }
                    previewCallback.onPreview(sourceData);
                    return;
                }
                throw new NullPointerException(new ObfuscatedString(new long[]{-4797673067663099931L, 7840037816015782729L, 3950278464243965011L, 5589457869228909310L}).toString());
            } catch (RuntimeException e) {
                String unused2 = CameraManager.TAG;
                new ObfuscatedString(new long[]{2129674481450092252L, 7379270827605836499L, 5477010846974790387L, 6000057579534771534L}).toString();
                previewCallback.onPreviewError(e);
            }
        }

        public void setCallback(PreviewCallback previewCallback) {
            this.callback = previewCallback;
        }

        public void setResolution(Size size) {
            this.resolution = size;
        }
    }

    public CameraManager(Context context) {
        this.context = context;
    }

    private int calculateDisplayRotation() {
        int i;
        int rotation = this.displayConfiguration.getRotation();
        int i2 = 0;
        if (rotation != 0) {
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation == 3) {
                        i2 = 270;
                    }
                } else {
                    i2 = 180;
                }
            } else {
                i2 = 90;
            }
        }
        Camera.CameraInfo cameraInfo = this.cameraInfo;
        if (cameraInfo.facing == 1) {
            i = (360 - ((cameraInfo.orientation + i2) % 360)) % 360;
        } else {
            i = ((cameraInfo.orientation - i2) + 360) % 360;
        }
        new ObfuscatedString(new long[]{-549654617117019132L, 3006225673955135589L, -8424439161627584668L, -1942685675331927200L, -3237945643096381917L}).toString();
        return i;
    }

    private Camera.Parameters getDefaultCameraParameters() {
        Camera.Parameters parameters = this.camera.getParameters();
        String str = this.defaultParameters;
        if (str == null) {
            this.defaultParameters = parameters.flatten();
        } else {
            parameters.unflatten(str);
        }
        return parameters;
    }

    private static List<Size> getPreviewSizes(Camera.Parameters parameters) {
        List<Camera.Size> supportedPreviewSizes = parameters.getSupportedPreviewSizes();
        ArrayList arrayList = new ArrayList();
        if (supportedPreviewSizes == null) {
            Camera.Size previewSize = parameters.getPreviewSize();
            if (previewSize != null) {
                new Size(previewSize.width, previewSize.height);
                arrayList.add(new Size(previewSize.width, previewSize.height));
            }
            return arrayList;
        }
        for (Camera.Size size : supportedPreviewSizes) {
            arrayList.add(new Size(size.width, size.height));
        }
        return arrayList;
    }

    private void setCameraDisplayOrientation(int i) {
        this.camera.setDisplayOrientation(i);
    }

    private void setDesiredParameters(boolean z) {
        Camera.Parameters defaultCameraParameters = getDefaultCameraParameters();
        if (defaultCameraParameters == null) {
            new ObfuscatedString(new long[]{861607289706895090L, -8796930474984634715L, -6789966168166500838L, 7530383504106382703L, 6528548497873750383L, 1621671428495862889L, -3951162890781647648L, 6468761997353871404L, -616527066368501361L, -2446010210291167715L, -2086716265954694530L, -6335054718511092001L}).toString();
            return;
        }
        new ObfuscatedString(new long[]{5396451961641508700L, 3659766633335152351L, -5821974619834087309L, 5800487272190483785L, -1382172956865514184L}).toString();
        defaultCameraParameters.flatten();
        if (z) {
            new ObfuscatedString(new long[]{2662439427017929116L, 6891873494171266289L, 3047624767722378828L, 4078990021544840759L, -3620393441709621090L, 8486243854186708092L, -1849808167744047582L, 8741143122233314624L, 4641544925825321564L}).toString();
        }
        CameraConfigurationUtils.setFocus(defaultCameraParameters, this.settings.getFocusMode(), z);
        if (!z) {
            CameraConfigurationUtils.setTorch(defaultCameraParameters, false);
            if (this.settings.isScanInverted()) {
                CameraConfigurationUtils.setInvertColor(defaultCameraParameters);
            }
            if (this.settings.isBarcodeSceneModeEnabled()) {
                CameraConfigurationUtils.setBarcodeSceneMode(defaultCameraParameters);
            }
            if (this.settings.isMeteringEnabled()) {
                CameraConfigurationUtils.setVideoStabilization(defaultCameraParameters);
                CameraConfigurationUtils.setFocusArea(defaultCameraParameters);
                CameraConfigurationUtils.setMetering(defaultCameraParameters);
            }
        }
        List<Size> previewSizes = getPreviewSizes(defaultCameraParameters);
        if (previewSizes.size() == 0) {
            this.requestedPreviewSize = null;
        } else {
            Size bestPreviewSize = this.displayConfiguration.getBestPreviewSize(previewSizes, isCameraRotated());
            this.requestedPreviewSize = bestPreviewSize;
            defaultCameraParameters.setPreviewSize(bestPreviewSize.width, bestPreviewSize.height);
        }
        if (Build.DEVICE.equals(new ObfuscatedString(new long[]{662093625749093527L, -4115932646250550581L}).toString())) {
            CameraConfigurationUtils.setBestPreviewFPS(defaultCameraParameters);
        }
        new ObfuscatedString(new long[]{-4141281485655014937L, 8273426284081280766L, -5950647563046495391L, 9111806356855389431L, 2754346060060707061L}).toString();
        defaultCameraParameters.flatten();
        this.camera.setParameters(defaultCameraParameters);
    }

    private void setParameters() {
        try {
            int calculateDisplayRotation = calculateDisplayRotation();
            this.rotationDegrees = calculateDisplayRotation;
            setCameraDisplayOrientation(calculateDisplayRotation);
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{-2930458628937963494L, 8275821098627587320L, 3777524524228878963L, 8876333703720230631L}).toString();
        }
        try {
            setDesiredParameters(false);
        } catch (Exception unused2) {
            try {
                setDesiredParameters(true);
            } catch (Exception unused3) {
                new ObfuscatedString(new long[]{-1998882328681676901L, -6325465513430293480L, 4046537530742734137L, 4045906294809025419L, -6361054130780682934L, 669606000659419174L, 1880924477201613080L, -1018902339991827938L, 2723889895682320622L}).toString();
            }
        }
        Camera.Size previewSize = this.camera.getParameters().getPreviewSize();
        if (previewSize == null) {
            this.previewSize = this.requestedPreviewSize;
        } else {
            this.previewSize = new Size(previewSize.width, previewSize.height);
        }
        this.cameraPreviewCallback.setResolution(this.previewSize);
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        Camera camera = this.camera;
        if (camera != null) {
            try {
                camera.setParameters(cameraParametersCallback.changeCameraParameters(camera.getParameters()));
            } catch (RuntimeException unused) {
                new ObfuscatedString(new long[]{-3824556825463474219L, -4240300707080562997L, -7876103074690606415L, -1474454221655848717L, 4788146913693410519L, 2519930686648630939L}).toString();
            }
        }
    }

    public void close() {
        Camera camera = this.camera;
        if (camera != null) {
            camera.release();
            this.camera = null;
        }
    }

    public void configure() {
        if (this.camera != null) {
            setParameters();
            return;
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{7105336103431220069L, 4847720263075952330L, -8446639571053817114L}).toString());
    }

    public Camera getCamera() {
        return this.camera;
    }

    public int getCameraRotation() {
        return this.rotationDegrees;
    }

    public CameraSettings getCameraSettings() {
        return this.settings;
    }

    public DisplayConfiguration getDisplayConfiguration() {
        return this.displayConfiguration;
    }

    public Size getNaturalPreviewSize() {
        return this.previewSize;
    }

    public Size getPreviewSize() {
        if (this.previewSize == null) {
            return null;
        }
        if (isCameraRotated()) {
            return this.previewSize.rotate();
        }
        return this.previewSize;
    }

    public boolean isCameraRotated() {
        int i = this.rotationDegrees;
        if (i != -1) {
            if (i % 180 != 0) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4017009349929352178L, -538317853377664526L, 1616951288865912546L, -5188485217988900461L, 2592093224330109623L, 956568001525333050L, 3803401966045289763L, 5809200622978106824L}).toString());
    }

    public boolean isOpen() {
        if (this.camera != null) {
            return true;
        }
        return false;
    }

    public boolean isTorchOn() {
        String flashMode;
        Camera.Parameters parameters = this.camera.getParameters();
        if (parameters == null || (flashMode = parameters.getFlashMode()) == null) {
            return false;
        }
        if (!new ObfuscatedString(new long[]{4750514182625165736L, -2934868042740479715L}).toString().equals(flashMode) && !new ObfuscatedString(new long[]{861799412518102848L, -5644887370783845160L}).toString().equals(flashMode)) {
            return false;
        }
        return true;
    }

    public void open() {
        Camera open = OpenCameraInterface.open(this.settings.getRequestedCameraId());
        this.camera = open;
        if (open != null) {
            int cameraId = OpenCameraInterface.getCameraId(this.settings.getRequestedCameraId());
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            this.cameraInfo = cameraInfo;
            Camera.getCameraInfo(cameraId, cameraInfo);
            return;
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{965450204974058000L, -5774465498458246353L, 8834022819652856227L, -2720800123483780561L}).toString());
    }

    public void requestPreviewFrame(PreviewCallback previewCallback) {
        Camera camera = this.camera;
        if (camera != null && this.previewing) {
            this.cameraPreviewCallback.setCallback(previewCallback);
            camera.setOneShotPreviewCallback(this.cameraPreviewCallback);
        }
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.settings = cameraSettings;
    }

    public void setDisplayConfiguration(DisplayConfiguration displayConfiguration) {
        this.displayConfiguration = displayConfiguration;
    }

    public void setPreviewDisplay(SurfaceHolder surfaceHolder) {
        setPreviewDisplay(new CameraSurface(surfaceHolder));
    }

    public void setTorch(boolean z) {
        if (this.camera != null) {
            try {
                if (z != isTorchOn()) {
                    AutoFocusManager autoFocusManager = this.autoFocusManager;
                    if (autoFocusManager != null) {
                        autoFocusManager.stop();
                    }
                    Camera.Parameters parameters = this.camera.getParameters();
                    CameraConfigurationUtils.setTorch(parameters, z);
                    if (this.settings.isExposureEnabled()) {
                        CameraConfigurationUtils.setBestExposure(parameters, z);
                    }
                    this.camera.setParameters(parameters);
                    AutoFocusManager autoFocusManager2 = this.autoFocusManager;
                    if (autoFocusManager2 != null) {
                        autoFocusManager2.start();
                    }
                }
            } catch (RuntimeException unused) {
                new ObfuscatedString(new long[]{-6430560986768015535L, 1399503047524865546L, 589971231928711332L, -1472673286271773096L}).toString();
            }
        }
    }

    public void startPreview() {
        Camera camera = this.camera;
        if (camera != null && !this.previewing) {
            camera.startPreview();
            this.previewing = true;
            this.autoFocusManager = new AutoFocusManager(this.camera, this.settings);
            AmbientLightManager ambientLightManager = new AmbientLightManager(this.context, this, this.settings);
            this.ambientLightManager = ambientLightManager;
            ambientLightManager.start();
        }
    }

    public void stopPreview() {
        AutoFocusManager autoFocusManager = this.autoFocusManager;
        if (autoFocusManager != null) {
            autoFocusManager.stop();
            this.autoFocusManager = null;
        }
        AmbientLightManager ambientLightManager = this.ambientLightManager;
        if (ambientLightManager != null) {
            ambientLightManager.stop();
            this.ambientLightManager = null;
        }
        Camera camera = this.camera;
        if (camera != null && this.previewing) {
            camera.stopPreview();
            this.cameraPreviewCallback.setCallback(null);
            this.previewing = false;
        }
    }

    public void setPreviewDisplay(CameraSurface cameraSurface) {
        cameraSurface.setPreview(this.camera);
    }
}
