package com.journeyapps.barcodescanner;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.core.view.ViewCompat;
import com.google.zxing.client.android.R;
import com.journeyapps.barcodescanner.CameraPreview;
import com.journeyapps.barcodescanner.camera.CameraInstance;
import com.journeyapps.barcodescanner.camera.CameraParametersCallback;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.journeyapps.barcodescanner.camera.CameraSurface;
import com.journeyapps.barcodescanner.camera.CenterCropStrategy;
import com.journeyapps.barcodescanner.camera.DisplayConfiguration;
import com.journeyapps.barcodescanner.camera.FitCenterStrategy;
import com.journeyapps.barcodescanner.camera.FitXYStrategy;
import com.journeyapps.barcodescanner.camera.PreviewScalingStrategy;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class CameraPreview extends ViewGroup {
    private static final int ROTATION_LISTENER_DELAY_MS = 250;
    private static final String TAG = "CameraPreview";
    private CameraInstance cameraInstance;
    private CameraSettings cameraSettings;
    private Size containerSize;
    private Size currentSurfaceSize;
    private DisplayConfiguration displayConfiguration;
    private final StateListener fireState;
    private Rect framingRect;
    private Size framingRectSize;
    private double marginFraction;
    private int openedOrientation;
    private boolean previewActive;
    private Rect previewFramingRect;
    private PreviewScalingStrategy previewScalingStrategy;
    private Size previewSize;
    private RotationCallback rotationCallback;
    private RotationListener rotationListener;
    private final Handler.Callback stateCallback;
    private Handler stateHandler;
    private List<StateListener> stateListeners;
    private final SurfaceHolder.Callback surfaceCallback;
    private Rect surfaceRect;
    private SurfaceView surfaceView;
    private TextureView textureView;
    private boolean torchOn;
    private boolean useTextureView;
    private WindowManager windowManager;

    /* renamed from: com.journeyapps.barcodescanner.CameraPreview$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements RotationCallback {
        public AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRotationChanged$0() {
            CameraPreview.this.rotationChanged();
        }

        @Override // com.journeyapps.barcodescanner.RotationCallback
        public void onRotationChanged(int i) {
            CameraPreview.this.stateHandler.postDelayed(new Runnable() { // from class: com.journeyapps.barcodescanner.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                @Override // java.lang.Runnable
                public final void run() {
                    CameraPreview.AnonymousClass4.this.lambda$onRotationChanged$0();
                }
            }, 250L);
        }
    }

    /* loaded from: classes3.dex */
    public interface StateListener {
        void cameraClosed();

        void cameraError(Exception exc);

        void previewSized();

        void previewStarted();

        void previewStopped();
    }

    public CameraPreview(Context context) {
        super(context);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (surfaceHolder == null) {
                    String unused = CameraPreview.TAG;
                    new ObfuscatedString(new long[]{2784119500075692408L, -1122798528815458397L, 4966306147721459647L, -9107088972655638602L, 5834744649292686663L, 8170018625400376003L, -7002854910151155581L, -1955761757359991296L}).toString();
                } else {
                    CameraPreview.this.currentSurfaceSize = new Size(i2, i3);
                    CameraPreview.this.startPreviewIfReady();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (i == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (CameraPreview.this.isActive()) {
                        CameraPreview.this.pause();
                        CameraPreview.this.fireState.cameraError(exc);
                        return false;
                    }
                    return false;
                }
                if (i == R.id.zxing_camera_closed) {
                    CameraPreview.this.fireState.cameraClosed();
                    return false;
                }
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }
        };
        initialize(context, null, 0, 0);
    }

    private void calculateFrames() {
        Size size;
        DisplayConfiguration displayConfiguration;
        Size size2 = this.containerSize;
        if (size2 != null && (size = this.previewSize) != null && (displayConfiguration = this.displayConfiguration) != null) {
            int i = size.width;
            int i2 = size.height;
            int i3 = size2.width;
            int i4 = size2.height;
            Rect scalePreview = displayConfiguration.scalePreview(size);
            if (scalePreview.width() > 0 && scalePreview.height() > 0) {
                this.surfaceRect = scalePreview;
                this.framingRect = calculateFramingRect(new Rect(0, 0, i3, i4), this.surfaceRect);
                Rect rect = new Rect(this.framingRect);
                Rect rect2 = this.surfaceRect;
                rect.offset(-rect2.left, -rect2.top);
                Rect rect3 = new Rect((rect.left * i) / this.surfaceRect.width(), (rect.top * i2) / this.surfaceRect.height(), (rect.right * i) / this.surfaceRect.width(), (rect.bottom * i2) / this.surfaceRect.height());
                this.previewFramingRect = rect3;
                if (rect3.width() > 0 && this.previewFramingRect.height() > 0) {
                    this.fireState.previewSized();
                    return;
                }
                this.previewFramingRect = null;
                this.framingRect = null;
                new ObfuscatedString(new long[]{-6753646280271019517L, -3074710863075053173L, -2485210994000364784L, 2810465244415585439L, 6474863303383231211L}).toString();
                return;
            }
            return;
        }
        this.previewFramingRect = null;
        this.framingRect = null;
        this.surfaceRect = null;
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2264481102181370007L, -229210762004603452L, 1913302325907074876L, -8627733287419843746L, -3025742963294510183L, 3168463108945651940L, -8205153174226799016L}).toString());
    }

    private void containerSized(Size size) {
        this.containerSize = size;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null && cameraInstance.getDisplayConfiguration() == null) {
            DisplayConfiguration displayConfiguration = new DisplayConfiguration(getDisplayRotation(), size);
            this.displayConfiguration = displayConfiguration;
            displayConfiguration.setPreviewScalingStrategy(getPreviewScalingStrategy());
            this.cameraInstance.setDisplayConfiguration(this.displayConfiguration);
            this.cameraInstance.configureCamera();
            boolean z = this.torchOn;
            if (z) {
                this.cameraInstance.setTorch(z);
            }
        }
    }

    private int getDisplayRotation() {
        return this.windowManager.getDefaultDisplay().getRotation();
    }

    private void initCamera() {
        if (this.cameraInstance != null) {
            new ObfuscatedString(new long[]{-7272707034115851776L, 5843589377433641011L, -2372020499866634285L, 7167848709980060592L}).toString();
            return;
        }
        CameraInstance createCameraInstance = createCameraInstance();
        this.cameraInstance = createCameraInstance;
        createCameraInstance.setReadyHandler(this.stateHandler);
        this.cameraInstance.open();
        this.openedOrientation = getDisplayRotation();
    }

    private void initialize(Context context, AttributeSet attributeSet, int i, int i2) {
        if (getBackground() == null) {
            setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        }
        initializeAttributes(attributeSet);
        this.windowManager = (WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-3780048922845137716L, 8575431374745179338L}).toString());
        this.stateHandler = new Handler(this.stateCallback);
        this.rotationListener = new RotationListener();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void previewSized(Size size) {
        this.previewSize = size;
        if (this.containerSize != null) {
            calculateFrames();
            requestLayout();
            startPreviewIfReady();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rotationChanged() {
        if (isActive() && getDisplayRotation() != this.openedOrientation) {
            pause();
            resume();
        }
    }

    private void setupSurfaceView() {
        if (this.useTextureView) {
            TextureView textureView = new TextureView(getContext());
            this.textureView = textureView;
            textureView.setSurfaceTextureListener(surfaceTextureListener());
            addView(this.textureView);
            return;
        }
        SurfaceView surfaceView = new SurfaceView(getContext());
        this.surfaceView = surfaceView;
        surfaceView.getHolder().addCallback(this.surfaceCallback);
        addView(this.surfaceView);
    }

    private void startCameraPreview(CameraSurface cameraSurface) {
        if (!this.previewActive && this.cameraInstance != null) {
            new ObfuscatedString(new long[]{4145726736194362203L, -6922576908320448412L, 4821868054264368904L}).toString();
            this.cameraInstance.setSurface(cameraSurface);
            this.cameraInstance.startPreview();
            this.previewActive = true;
            previewStarted();
            this.fireState.previewStarted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startPreviewIfReady() {
        Rect rect;
        Size size = this.currentSurfaceSize;
        if (size != null && this.previewSize != null && (rect = this.surfaceRect) != null) {
            if (this.surfaceView != null && size.equals(new Size(rect.width(), this.surfaceRect.height()))) {
                startCameraPreview(new CameraSurface(this.surfaceView.getHolder()));
                return;
            }
            TextureView textureView = this.textureView;
            if (textureView != null && textureView.getSurfaceTexture() != null) {
                if (this.previewSize != null) {
                    this.textureView.setTransform(calculateTextureTransform(new Size(this.textureView.getWidth(), this.textureView.getHeight()), this.previewSize));
                }
                startCameraPreview(new CameraSurface(this.textureView.getSurfaceTexture()));
            }
        }
    }

    @TargetApi(14)
    private TextureView.SurfaceTextureListener surfaceTextureListener() {
        return new TextureView.SurfaceTextureListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                CameraPreview.this.currentSurfaceSize = new Size(i, i2);
                CameraPreview.this.startPreviewIfReady();
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
    }

    public void addStateListener(StateListener stateListener) {
        this.stateListeners.add(stateListener);
    }

    public Rect calculateFramingRect(Rect rect, Rect rect2) {
        Rect rect3 = new Rect(rect);
        rect3.intersect(rect2);
        if (this.framingRectSize != null) {
            rect3.inset(Math.max(0, (rect3.width() - this.framingRectSize.width) / 2), Math.max(0, (rect3.height() - this.framingRectSize.height) / 2));
            return rect3;
        }
        int min = (int) Math.min(rect3.width() * this.marginFraction, rect3.height() * this.marginFraction);
        rect3.inset(min, min);
        if (rect3.height() > rect3.width()) {
            rect3.inset(0, (rect3.height() - rect3.width()) / 2);
        }
        return rect3;
    }

    public Matrix calculateTextureTransform(Size size, Size size2) {
        float f;
        float f2 = size.width / size.height;
        float f3 = size2.width / size2.height;
        float f4 = 1.0f;
        if (f2 < f3) {
            f4 = f3 / f2;
            f = 1.0f;
        } else {
            f = f2 / f3;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f4, f);
        int i = size.width;
        int i2 = size.height;
        matrix.postTranslate((i - (i * f4)) / 2.0f, (i2 - (i2 * f)) / 2.0f);
        return matrix;
    }

    public void changeCameraParameters(CameraParametersCallback cameraParametersCallback) {
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.changeCameraParameters(cameraParametersCallback);
        }
    }

    public CameraInstance createCameraInstance() {
        CameraInstance cameraInstance = new CameraInstance(getContext());
        cameraInstance.setCameraSettings(this.cameraSettings);
        return cameraInstance;
    }

    public CameraInstance getCameraInstance() {
        return this.cameraInstance;
    }

    public CameraSettings getCameraSettings() {
        return this.cameraSettings;
    }

    public Rect getFramingRect() {
        return this.framingRect;
    }

    public Size getFramingRectSize() {
        return this.framingRectSize;
    }

    public double getMarginFraction() {
        return this.marginFraction;
    }

    public Rect getPreviewFramingRect() {
        return this.previewFramingRect;
    }

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        PreviewScalingStrategy previewScalingStrategy = this.previewScalingStrategy;
        if (previewScalingStrategy != null) {
            return previewScalingStrategy;
        }
        if (this.textureView != null) {
            return new CenterCropStrategy();
        }
        return new FitCenterStrategy();
    }

    public Size getPreviewSize() {
        return this.previewSize;
    }

    public void initializeAttributes(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.zxing_camera_preview);
        int dimension = (int) obtainStyledAttributes.getDimension(R.styleable.zxing_camera_preview_zxing_framing_rect_width, -1.0f);
        int dimension2 = (int) obtainStyledAttributes.getDimension(R.styleable.zxing_camera_preview_zxing_framing_rect_height, -1.0f);
        if (dimension > 0 && dimension2 > 0) {
            this.framingRectSize = new Size(dimension, dimension2);
        }
        this.useTextureView = obtainStyledAttributes.getBoolean(R.styleable.zxing_camera_preview_zxing_use_texture_view, true);
        int integer = obtainStyledAttributes.getInteger(R.styleable.zxing_camera_preview_zxing_preview_scaling_strategy, -1);
        if (integer == 1) {
            this.previewScalingStrategy = new CenterCropStrategy();
        } else if (integer == 2) {
            this.previewScalingStrategy = new FitCenterStrategy();
        } else if (integer == 3) {
            this.previewScalingStrategy = new FitXYStrategy();
        }
        obtainStyledAttributes.recycle();
    }

    public boolean isActive() {
        if (this.cameraInstance != null) {
            return true;
        }
        return false;
    }

    public boolean isCameraClosed() {
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null && !cameraInstance.isCameraClosed()) {
            return false;
        }
        return true;
    }

    public boolean isPreviewActive() {
        return this.previewActive;
    }

    public boolean isUseTextureView() {
        return this.useTextureView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setupSurfaceView();
    }

    @Override // android.view.ViewGroup, android.view.View
    @SuppressLint({"DrawAllocation"})
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        containerSized(new Size(i3 - i, i4 - i2));
        SurfaceView surfaceView = this.surfaceView;
        if (surfaceView != null) {
            Rect rect = this.surfaceRect;
            if (rect == null) {
                surfaceView.layout(0, 0, getWidth(), getHeight());
                return;
            } else {
                surfaceView.layout(rect.left, rect.top, rect.right, rect.bottom);
                return;
            }
        }
        TextureView textureView = this.textureView;
        if (textureView != null) {
            textureView.layout(0, 0, getWidth(), getHeight());
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof Bundle)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable(new ObfuscatedString(new long[]{9163738539247962285L, -3451023421978337421L}).toString()));
        setTorch(bundle.getBoolean(new ObfuscatedString(new long[]{9063284936680650919L, -4963591551216673561L}).toString()));
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{-7658853249675895570L, 6214868271819764688L}).toString(), onSaveInstanceState);
        bundle.putBoolean(new ObfuscatedString(new long[]{7423972933262386731L, -7730091538070073529L}).toString(), this.torchOn);
        return bundle;
    }

    public void pause() {
        TextureView textureView;
        SurfaceView surfaceView;
        Util.validateMainThread();
        new ObfuscatedString(new long[]{1792101483725459022L, -764582189723083502L}).toString();
        this.openedOrientation = -1;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.close();
            this.cameraInstance = null;
            this.previewActive = false;
        } else {
            this.stateHandler.sendEmptyMessage(R.id.zxing_camera_closed);
        }
        if (this.currentSurfaceSize == null && (surfaceView = this.surfaceView) != null) {
            surfaceView.getHolder().removeCallback(this.surfaceCallback);
        }
        if (this.currentSurfaceSize == null && (textureView = this.textureView) != null) {
            textureView.setSurfaceTextureListener(null);
        }
        this.containerSize = null;
        this.previewSize = null;
        this.previewFramingRect = null;
        this.rotationListener.stop();
        this.fireState.previewStopped();
    }

    public void pauseAndWait() {
        CameraInstance cameraInstance = getCameraInstance();
        pause();
        long nanoTime = System.nanoTime();
        while (cameraInstance != null && !cameraInstance.isCameraClosed() && System.nanoTime() - nanoTime <= 2000000000) {
            try {
                Thread.sleep(1L);
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public void previewStarted() {
    }

    public void resume() {
        Util.validateMainThread();
        new ObfuscatedString(new long[]{7689950500390723617L, 5350050553212638909L}).toString();
        initCamera();
        if (this.currentSurfaceSize != null) {
            startPreviewIfReady();
        } else {
            SurfaceView surfaceView = this.surfaceView;
            if (surfaceView != null) {
                surfaceView.getHolder().addCallback(this.surfaceCallback);
            } else {
                TextureView textureView = this.textureView;
                if (textureView != null) {
                    if (textureView.isAvailable()) {
                        surfaceTextureListener().onSurfaceTextureAvailable(this.textureView.getSurfaceTexture(), this.textureView.getWidth(), this.textureView.getHeight());
                    } else {
                        this.textureView.setSurfaceTextureListener(surfaceTextureListener());
                    }
                }
            }
        }
        requestLayout();
        this.rotationListener.listen(getContext(), this.rotationCallback);
    }

    public void setCameraSettings(CameraSettings cameraSettings) {
        this.cameraSettings = cameraSettings;
    }

    public void setFramingRectSize(Size size) {
        this.framingRectSize = size;
    }

    public void setMarginFraction(double d) {
        if (d < 0.5d) {
            this.marginFraction = d;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{840095198871105482L, 2972326588419900426L, -6746867038458973207L, -1262831817653478675L, -3175739939246661461L, -462355221466187493L, -6698608648398993637L}).toString());
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.previewScalingStrategy = previewScalingStrategy;
    }

    public void setTorch(boolean z) {
        this.torchOn = z;
        CameraInstance cameraInstance = this.cameraInstance;
        if (cameraInstance != null) {
            cameraInstance.setTorch(z);
        }
    }

    public void setUseTextureView(boolean z) {
        this.useTextureView = z;
    }

    public CameraPreview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
                if (surfaceHolder == null) {
                    String unused = CameraPreview.TAG;
                    new ObfuscatedString(new long[]{2784119500075692408L, -1122798528815458397L, 4966306147721459647L, -9107088972655638602L, 5834744649292686663L, 8170018625400376003L, -7002854910151155581L, -1955761757359991296L}).toString();
                } else {
                    CameraPreview.this.currentSurfaceSize = new Size(i2, i3);
                    CameraPreview.this.startPreviewIfReady();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (i == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (CameraPreview.this.isActive()) {
                        CameraPreview.this.pause();
                        CameraPreview.this.fireState.cameraError(exc);
                        return false;
                    }
                    return false;
                }
                if (i == R.id.zxing_camera_closed) {
                    CameraPreview.this.fireState.cameraClosed();
                    return false;
                }
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }
        };
        initialize(context, attributeSet, 0, 0);
    }

    public CameraPreview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.useTextureView = false;
        this.previewActive = false;
        this.openedOrientation = -1;
        this.stateListeners = new ArrayList();
        this.cameraSettings = new CameraSettings();
        this.framingRect = null;
        this.previewFramingRect = null;
        this.framingRectSize = null;
        this.marginFraction = 0.1d;
        this.previewScalingStrategy = null;
        this.torchOn = false;
        this.surfaceCallback = new SurfaceHolder.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.2
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i22, int i3) {
                if (surfaceHolder == null) {
                    String unused = CameraPreview.TAG;
                    new ObfuscatedString(new long[]{2784119500075692408L, -1122798528815458397L, 4966306147721459647L, -9107088972655638602L, 5834744649292686663L, 8170018625400376003L, -7002854910151155581L, -1955761757359991296L}).toString();
                } else {
                    CameraPreview.this.currentSurfaceSize = new Size(i22, i3);
                    CameraPreview.this.startPreviewIfReady();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                CameraPreview.this.currentSurfaceSize = null;
            }
        };
        this.stateCallback = new Handler.Callback() { // from class: com.journeyapps.barcodescanner.CameraPreview.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == R.id.zxing_prewiew_size_ready) {
                    CameraPreview.this.previewSized((Size) message.obj);
                    return true;
                }
                if (i2 == R.id.zxing_camera_error) {
                    Exception exc = (Exception) message.obj;
                    if (CameraPreview.this.isActive()) {
                        CameraPreview.this.pause();
                        CameraPreview.this.fireState.cameraError(exc);
                        return false;
                    }
                    return false;
                }
                if (i2 == R.id.zxing_camera_closed) {
                    CameraPreview.this.fireState.cameraClosed();
                    return false;
                }
                return false;
            }
        };
        this.rotationCallback = new AnonymousClass4();
        this.fireState = new StateListener() { // from class: com.journeyapps.barcodescanner.CameraPreview.5
            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraClosed() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraClosed();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void cameraError(Exception exc) {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).cameraError(exc);
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewSized() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewSized();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStarted() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStarted();
                }
            }

            @Override // com.journeyapps.barcodescanner.CameraPreview.StateListener
            public void previewStopped() {
                Iterator it = CameraPreview.this.stateListeners.iterator();
                while (it.hasNext()) {
                    ((StateListener) it.next()).previewStopped();
                }
            }
        };
        initialize(context, attributeSet, i, 0);
    }
}
