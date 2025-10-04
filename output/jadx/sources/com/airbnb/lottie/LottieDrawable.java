package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieThreadFactory;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import com.google.android.material.color.utilities.Contrast;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0686x24b55628;
import defpackage.RunnableC0953x9df67b6a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    private static final List<String> ALLOWED_REDUCED_MOTION_MARKERS;
    public static final int INFINITE = -1;
    private static final float MAX_DELTA_MS_ASYNC_SET_PROGRESS = 50.0f;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    private static final boolean invalidateSelfOnMainThread;
    private static final Executor setProgressExecutor;
    private int alpha;
    private final LottieValueAnimator animator;

    @Nullable
    private AsyncUpdates asyncUpdates;
    private Rect canvasClipBounds;
    private RectF canvasClipBoundsRectF;
    private boolean clipTextToBoundingBox;
    private boolean clipToCompositionBounds;
    private LottieComposition composition;

    @Nullable
    private CompositionLayer compositionLayer;

    @Nullable
    String defaultFontFileExtension;

    @Nullable
    FontAssetDelegate fontAssetDelegate;

    @Nullable
    private FontAssetManager fontAssetManager;

    @Nullable
    private Map<String, Typeface> fontMap;
    private boolean ignoreSystemAnimationsDisabled;

    @Nullable
    private ImageAssetDelegate imageAssetDelegate;

    @Nullable
    private ImageAssetManager imageAssetManager;

    @Nullable
    private String imageAssetsFolder;
    private Runnable invalidateSelfRunnable;
    private boolean isApplyingOpacityToLayersEnabled;
    private boolean isApplyingShadowToLayersEnabled;
    private boolean isDirty;
    private float lastDrawnProgress;
    private final ArrayList<LazyCompositionTask> lazyCompositionTasks;
    private final LottieFeatureFlags lottieFeatureFlags;
    private Handler mainThreadHandler;
    private boolean maintainOriginalImageBounds;
    private OnVisibleAction onVisibleAction;
    private boolean outlineMasksAndMattes;
    private boolean performanceTrackingEnabled;
    private final ValueAnimator.AnimatorUpdateListener progressUpdateListener;
    private RenderMode renderMode;
    private final Matrix renderingMatrix;
    private boolean safeMode;
    private final Semaphore setProgressDrawLock;
    private Bitmap softwareRenderingBitmap;
    private Canvas softwareRenderingCanvas;
    private Rect softwareRenderingDstBoundsRect;
    private RectF softwareRenderingDstBoundsRectF;
    private Matrix softwareRenderingOriginalCanvasMatrix;
    private float[] softwareRenderingOriginalCanvasMatrixElements;
    private Matrix softwareRenderingOriginalCanvasMatrixInverse;
    private Paint softwareRenderingPaint;
    private Rect softwareRenderingSrcBoundsRect;
    private RectF softwareRenderingTransformedBounds;
    private boolean systemAnimationsEnabled;

    @Nullable
    TextDelegate textDelegate;
    private final Runnable updateProgressRunnable;
    private boolean useSoftwareRendering;

    /* renamed from: com.airbnb.lottie.LottieDrawable$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1<T> extends LottieValueCallback<T> {
        final /* synthetic */ SimpleLottieValueCallback val$callback;

        public AnonymousClass1(SimpleLottieValueCallback simpleLottieValueCallback) {
            r2 = simpleLottieValueCallback;
        }

        @Override // com.airbnb.lottie.value.LottieValueCallback
        public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
            return (T) r2.getValue(lottieFrameInfo);
        }
    }

    /* loaded from: classes.dex */
    public interface LazyCompositionTask {
        void run(LottieComposition lottieComposition);
    }

    /* loaded from: classes.dex */
    public enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface RepeatMode {
    }

    static {
        boolean z;
        if (Build.VERSION.SDK_INT <= 25) {
            z = true;
        } else {
            z = false;
        }
        invalidateSelfOnMainThread = z;
        ALLOWED_REDUCED_MOTION_MARKERS = Arrays.asList(new ObfuscatedString(new long[]{8010617793866545046L, 1730510920557792287L, -3622480199762111655L}).toString(), new ObfuscatedString(new long[]{-962299869743786242L, -586743556385725866L, -4087907067360935954L}).toString(), new ObfuscatedString(new long[]{-8239587830007102191L, 6431251410887018442L, 4694557613565450480L}).toString(), new ObfuscatedString(new long[]{-4372246503432684297L, 904530490421082140L, 4305219046830526298L}).toString());
        setProgressExecutor = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new LottieThreadFactory());
    }

    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        this.animator = lottieValueAnimator;
        this.systemAnimationsEnabled = true;
        this.ignoreSystemAnimationsDisabled = false;
        this.safeMode = false;
        this.onVisibleAction = OnVisibleAction.NONE;
        this.lazyCompositionTasks = new ArrayList<>();
        this.lottieFeatureFlags = new LottieFeatureFlags();
        this.maintainOriginalImageBounds = false;
        this.clipToCompositionBounds = true;
        this.alpha = 255;
        this.clipTextToBoundingBox = false;
        this.renderMode = RenderMode.AUTOMATIC;
        this.useSoftwareRendering = false;
        this.renderingMatrix = new Matrix();
        this.softwareRenderingOriginalCanvasMatrixElements = new float[9];
        this.isDirty = false;
        C0686x24b55628 c0686x24b55628 = new C0686x24b55628(this, 1);
        this.progressUpdateListener = c0686x24b55628;
        this.setProgressDrawLock = new Semaphore(1);
        this.updateProgressRunnable = new RunnableC0953x9df67b6a(this, 1);
        this.lastDrawnProgress = -3.4028235E38f;
        lottieValueAnimator.addUpdateListener(c0686x24b55628);
    }

    private void buildCompositionLayer() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        CompositionLayer compositionLayer = new CompositionLayer(this, LayerParser.parse(lottieComposition), lottieComposition.getLayers(), lottieComposition);
        this.compositionLayer = compositionLayer;
        if (this.outlineMasksAndMattes) {
            compositionLayer.setOutlineMasksAndMattes(true);
        }
        this.compositionLayer.setClipToCompositionBounds(this.clipToCompositionBounds);
    }

    private void computeRenderMode() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return;
        }
        this.useSoftwareRendering = this.renderMode.useSoftwareRendering(Build.VERSION.SDK_INT, lottieComposition.hasDashPattern(), lottieComposition.getMaskAndMatteCount());
    }

    private void convertRect(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void drawDirectlyToCanvas(Canvas canvas) {
        CompositionLayer compositionLayer = this.compositionLayer;
        LottieComposition lottieComposition = this.composition;
        if (compositionLayer != null && lottieComposition != null) {
            this.renderingMatrix.reset();
            if (!getBounds().isEmpty()) {
                this.renderingMatrix.preTranslate(r2.left, r2.top);
                this.renderingMatrix.preScale(r2.width() / lottieComposition.getBounds().width(), r2.height() / lottieComposition.getBounds().height());
            }
            compositionLayer.draw(canvas, this.renderingMatrix, this.alpha, null);
        }
    }

    private void ensureSoftwareRenderingBitmap(int i, int i2) {
        Bitmap bitmap = this.softwareRenderingBitmap;
        if (bitmap != null && bitmap.getWidth() >= i && this.softwareRenderingBitmap.getHeight() >= i2) {
            if (this.softwareRenderingBitmap.getWidth() > i || this.softwareRenderingBitmap.getHeight() > i2) {
                Bitmap createBitmap = Bitmap.createBitmap(this.softwareRenderingBitmap, 0, 0, i, i2);
                this.softwareRenderingBitmap = createBitmap;
                this.softwareRenderingCanvas.setBitmap(createBitmap);
                this.isDirty = true;
                return;
            }
            return;
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        this.softwareRenderingBitmap = createBitmap2;
        this.softwareRenderingCanvas.setBitmap(createBitmap2);
        this.isDirty = true;
    }

    private void ensureSoftwareRenderingObjectsInitialized() {
        if (this.softwareRenderingCanvas != null) {
            return;
        }
        this.softwareRenderingCanvas = new Canvas();
        this.softwareRenderingTransformedBounds = new RectF();
        this.softwareRenderingOriginalCanvasMatrix = new Matrix();
        this.softwareRenderingOriginalCanvasMatrixInverse = new Matrix();
        this.canvasClipBounds = new Rect();
        this.canvasClipBoundsRectF = new RectF();
        this.softwareRenderingPaint = new LPaint();
        this.softwareRenderingSrcBoundsRect = new Rect();
        this.softwareRenderingDstBoundsRect = new Rect();
        this.softwareRenderingDstBoundsRectF = new RectF();
    }

    @Nullable
    private Context getContext() {
        Drawable.Callback callback = getCallback();
        if (callback == null || !(callback instanceof View)) {
            return null;
        }
        return ((View) callback).getContext();
    }

    private FontAssetManager getFontAssetManager() {
        if (getCallback() == null) {
            return null;
        }
        if (this.fontAssetManager == null) {
            FontAssetManager fontAssetManager = new FontAssetManager(getCallback(), this.fontAssetDelegate);
            this.fontAssetManager = fontAssetManager;
            String str = this.defaultFontFileExtension;
            if (str != null) {
                fontAssetManager.setDefaultFontFileExtension(str);
            }
        }
        return this.fontAssetManager;
    }

    private ImageAssetManager getImageAssetManager() {
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null && !imageAssetManager.hasSameContext(getContext())) {
            this.imageAssetManager = null;
        }
        if (this.imageAssetManager == null) {
            this.imageAssetManager = new ImageAssetManager(getCallback(), this.imageAssetsFolder, this.imageAssetDelegate, this.composition.getImages());
        }
        return this.imageAssetManager;
    }

    private boolean ignoreCanvasClipBounds() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        if (!(((View) callback).getParent() instanceof ViewGroup)) {
            return false;
        }
        return !((ViewGroup) r0).getClipChildren();
    }

    public /* synthetic */ void lambda$addValueCallback$17(KeyPath keyPath, Object obj, LottieValueCallback lottieValueCallback, LottieComposition lottieComposition) {
        addValueCallback(keyPath, (KeyPath) obj, (LottieValueCallback<KeyPath>) lottieValueCallback);
    }

    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        if (getAsyncUpdatesEnabled()) {
            invalidateSelf();
            return;
        }
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer != null) {
            compositionLayer.setProgress(this.animator.getAnimatedValueAbsolute());
        }
    }

    public /* synthetic */ void lambda$new$1() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public /* synthetic */ void lambda$new$2() {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer == null) {
            return;
        }
        try {
            this.setProgressDrawLock.acquire();
            compositionLayer.setProgress(this.animator.getAnimatedValueAbsolute());
            if (invalidateSelfOnMainThread && this.isDirty) {
                if (this.mainThreadHandler == null) {
                    this.mainThreadHandler = new Handler(Looper.getMainLooper());
                    this.invalidateSelfRunnable = new RunnableC0953x9df67b6a(this, 0);
                }
                this.mainThreadHandler.post(this.invalidateSelfRunnable);
            }
        } catch (InterruptedException unused) {
        } catch (Throwable th) {
            this.setProgressDrawLock.release();
            throw th;
        }
        this.setProgressDrawLock.release();
    }

    public /* synthetic */ void lambda$playAnimation$3(LottieComposition lottieComposition) {
        playAnimation();
    }

    public /* synthetic */ void lambda$resumeAnimation$4(LottieComposition lottieComposition) {
        resumeAnimation();
    }

    public /* synthetic */ void lambda$setFrame$15(int i, LottieComposition lottieComposition) {
        setFrame(i);
    }

    public /* synthetic */ void lambda$setMaxFrame$10(String str, LottieComposition lottieComposition) {
        setMaxFrame(str);
    }

    public /* synthetic */ void lambda$setMaxFrame$7(int i, LottieComposition lottieComposition) {
        setMaxFrame(i);
    }

    public /* synthetic */ void lambda$setMaxProgress$8(float f, LottieComposition lottieComposition) {
        setMaxProgress(f);
    }

    public /* synthetic */ void lambda$setMinAndMaxFrame$11(String str, LottieComposition lottieComposition) {
        setMinAndMaxFrame(str);
    }

    public /* synthetic */ void lambda$setMinAndMaxFrame$12(String str, String str2, boolean z, LottieComposition lottieComposition) {
        setMinAndMaxFrame(str, str2, z);
    }

    public /* synthetic */ void lambda$setMinAndMaxFrame$13(int i, int i2, LottieComposition lottieComposition) {
        setMinAndMaxFrame(i, i2);
    }

    public /* synthetic */ void lambda$setMinAndMaxProgress$14(float f, float f2, LottieComposition lottieComposition) {
        setMinAndMaxProgress(f, f2);
    }

    public /* synthetic */ void lambda$setMinFrame$5(int i, LottieComposition lottieComposition) {
        setMinFrame(i);
    }

    public /* synthetic */ void lambda$setMinFrame$9(String str, LottieComposition lottieComposition) {
        setMinFrame(str);
    }

    public /* synthetic */ void lambda$setMinProgress$6(float f, LottieComposition lottieComposition) {
        setMinProgress(f);
    }

    public /* synthetic */ void lambda$setProgress$16(float f, LottieComposition lottieComposition) {
        setProgress(f);
    }

    private void renderAndDrawAsBitmap(Canvas canvas, CompositionLayer compositionLayer) {
        if (this.composition != null && compositionLayer != null) {
            ensureSoftwareRenderingObjectsInitialized();
            canvas.getMatrix(this.softwareRenderingOriginalCanvasMatrix);
            canvas.getClipBounds(this.canvasClipBounds);
            convertRect(this.canvasClipBounds, this.canvasClipBoundsRectF);
            this.softwareRenderingOriginalCanvasMatrix.mapRect(this.canvasClipBoundsRectF);
            convertRect(this.canvasClipBoundsRectF, this.canvasClipBounds);
            if (this.clipToCompositionBounds) {
                this.softwareRenderingTransformedBounds.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
            } else {
                compositionLayer.getBounds(this.softwareRenderingTransformedBounds, null, false);
            }
            this.softwareRenderingOriginalCanvasMatrix.mapRect(this.softwareRenderingTransformedBounds);
            Rect bounds = getBounds();
            float width = bounds.width() / getIntrinsicWidth();
            float height = bounds.height() / getIntrinsicHeight();
            scaleRect(this.softwareRenderingTransformedBounds, width, height);
            if (!ignoreCanvasClipBounds()) {
                RectF rectF = this.softwareRenderingTransformedBounds;
                Rect rect = this.canvasClipBounds;
                rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
            }
            int ceil = (int) Math.ceil(this.softwareRenderingTransformedBounds.width());
            int ceil2 = (int) Math.ceil(this.softwareRenderingTransformedBounds.height());
            if (ceil > 0 && ceil2 > 0) {
                ensureSoftwareRenderingBitmap(ceil, ceil2);
                if (this.isDirty) {
                    this.softwareRenderingOriginalCanvasMatrix.getValues(this.softwareRenderingOriginalCanvasMatrixElements);
                    float[] fArr = this.softwareRenderingOriginalCanvasMatrixElements;
                    float f = fArr[0];
                    float f2 = fArr[4];
                    this.renderingMatrix.set(this.softwareRenderingOriginalCanvasMatrix);
                    this.renderingMatrix.preScale(width, height);
                    Matrix matrix = this.renderingMatrix;
                    RectF rectF2 = this.softwareRenderingTransformedBounds;
                    matrix.postTranslate(-rectF2.left, -rectF2.top);
                    this.renderingMatrix.postScale(1.0f / f, 1.0f / f2);
                    this.softwareRenderingBitmap.eraseColor(0);
                    this.softwareRenderingCanvas.setMatrix(Utils.IDENTITY_MATRIX);
                    this.softwareRenderingCanvas.scale(f, f2);
                    compositionLayer.draw(this.softwareRenderingCanvas, this.renderingMatrix, this.alpha, null);
                    this.softwareRenderingOriginalCanvasMatrix.invert(this.softwareRenderingOriginalCanvasMatrixInverse);
                    this.softwareRenderingOriginalCanvasMatrixInverse.mapRect(this.softwareRenderingDstBoundsRectF, this.softwareRenderingTransformedBounds);
                    convertRect(this.softwareRenderingDstBoundsRectF, this.softwareRenderingDstBoundsRect);
                }
                this.softwareRenderingSrcBoundsRect.set(0, 0, ceil, ceil2);
                canvas.drawBitmap(this.softwareRenderingBitmap, this.softwareRenderingSrcBoundsRect, this.softwareRenderingDstBoundsRect, this.softwareRenderingPaint);
            }
        }
    }

    private void scaleRect(RectF rectF, float f, float f2) {
        rectF.set(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
    }

    private boolean shouldSetProgressBeforeDrawing() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return false;
        }
        float f = this.lastDrawnProgress;
        float animatedValueAbsolute = this.animator.getAnimatedValueAbsolute();
        this.lastDrawnProgress = animatedValueAbsolute;
        if (Math.abs(animatedValueAbsolute - f) * lottieComposition.getDuration() < 50.0f) {
            return false;
        }
        return true;
    }

    public void addAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.animator.addListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void addAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.animator.addPauseListener(animatorPauseListener);
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.animator.addUpdateListener(animatorUpdateListener);
    }

    public <T> void addValueCallback(final KeyPath keyPath, final T t, @Nullable final LottieValueCallback<T> lottieValueCallback) {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run(LottieComposition lottieComposition) {
                    LottieDrawable.this.lambda$addValueCallback$17(keyPath, t, lottieValueCallback, lottieComposition);
                }
            });
            return;
        }
        boolean z = true;
        if (keyPath == KeyPath.COMPOSITION) {
            compositionLayer.addValueCallback(t, lottieValueCallback);
        } else if (keyPath.getResolvedElement() != null) {
            keyPath.getResolvedElement().addValueCallback(t, lottieValueCallback);
        } else {
            List<KeyPath> resolveKeyPath = resolveKeyPath(keyPath);
            for (int i = 0; i < resolveKeyPath.size(); i++) {
                resolveKeyPath.get(i).getResolvedElement().addValueCallback(t, lottieValueCallback);
            }
            z = true ^ resolveKeyPath.isEmpty();
        }
        if (z) {
            invalidateSelf();
            if (t == LottieProperty.TIME_REMAP) {
                setProgress(getProgress());
            }
        }
    }

    public boolean animationsEnabled(@Nullable Context context) {
        if (this.ignoreSystemAnimationsDisabled) {
            return true;
        }
        if (this.systemAnimationsEnabled && L.getReducedMotionOption().getCurrentReducedMotionMode(context) == ReducedMotionMode.STANDARD_MOTION) {
            return true;
        }
        return false;
    }

    public void cancelAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.cancel();
        if (!isVisible()) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
    }

    public void clearComposition() {
        if (this.animator.isRunning()) {
            this.animator.cancel();
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
        this.composition = null;
        this.compositionLayer = null;
        this.imageAssetManager = null;
        this.lastDrawnProgress = -3.4028235E38f;
        this.animator.clearComposition();
        invalidateSelf();
    }

    @Deprecated
    public void disableExtraScaleModeInFitXY() {
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer == null) {
            return;
        }
        boolean asyncUpdatesEnabled = getAsyncUpdatesEnabled();
        if (asyncUpdatesEnabled) {
            try {
                this.setProgressDrawLock.acquire();
            } catch (InterruptedException unused) {
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{7900085430011217387L, -3700843050767338539L, 2848251710505209820L}).toString());
                }
                if (!asyncUpdatesEnabled) {
                    return;
                }
                this.setProgressDrawLock.release();
                if (compositionLayer.getProgress() == this.animator.getAnimatedValueAbsolute()) {
                    return;
                }
            } catch (Throwable th) {
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{2706040451273675774L, -2469474825740338271L, 2727864531174422544L}).toString());
                }
                if (asyncUpdatesEnabled) {
                    this.setProgressDrawLock.release();
                    if (compositionLayer.getProgress() != this.animator.getAnimatedValueAbsolute()) {
                        setProgressExecutor.execute(this.updateProgressRunnable);
                    }
                }
                throw th;
            }
        }
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{6964895461747476047L, 2156771529567682792L, -8998733771624043885L}).toString());
        }
        if (asyncUpdatesEnabled && shouldSetProgressBeforeDrawing()) {
            setProgress(this.animator.getAnimatedValueAbsolute());
        }
        if (this.safeMode) {
            try {
                if (this.useSoftwareRendering) {
                    renderAndDrawAsBitmap(canvas, compositionLayer);
                } else {
                    drawDirectlyToCanvas(canvas);
                }
            } catch (Throwable th2) {
                Logger.error(new ObfuscatedString(new long[]{8943019187867241062L, 8070642114528953224L, -5486135995723014730L, 5086480469088542475L}).toString(), th2);
            }
        } else if (this.useSoftwareRendering) {
            renderAndDrawAsBitmap(canvas, compositionLayer);
        } else {
            drawDirectlyToCanvas(canvas);
        }
        this.isDirty = false;
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-2125524243758566898L, 5372311110260961090L, 8687508331358265486L}).toString());
        }
        if (asyncUpdatesEnabled) {
            this.setProgressDrawLock.release();
            if (compositionLayer.getProgress() == this.animator.getAnimatedValueAbsolute()) {
                return;
            }
            setProgressExecutor.execute(this.updateProgressRunnable);
        }
    }

    public void enableFeatureFlag(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        boolean enableFlag = this.lottieFeatureFlags.enableFlag(lottieFeatureFlag, z);
        if (this.composition != null && enableFlag) {
            buildCompositionLayer();
        }
    }

    @Deprecated
    public boolean enableMergePathsForKitKatAndAbove() {
        return this.lottieFeatureFlags.isFlagEnabled(LottieFeatureFlag.MergePathsApi19);
    }

    @MainThread
    public void endAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.endAnimation();
        if (!isVisible()) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    public AsyncUpdates getAsyncUpdates() {
        AsyncUpdates asyncUpdates = this.asyncUpdates;
        if (asyncUpdates != null) {
            return asyncUpdates;
        }
        return L.getDefaultAsyncUpdates();
    }

    public boolean getAsyncUpdatesEnabled() {
        if (getAsyncUpdates() == AsyncUpdates.ENABLED) {
            return true;
        }
        return false;
    }

    @Nullable
    public Bitmap getBitmapForId(String str) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager != null) {
            return imageAssetManager.bitmapForId(str);
        }
        return null;
    }

    public boolean getClipTextToBoundingBox() {
        return this.clipTextToBoundingBox;
    }

    public boolean getClipToCompositionBounds() {
        return this.clipToCompositionBounds;
    }

    public LottieComposition getComposition() {
        return this.composition;
    }

    public int getFrame() {
        return (int) this.animator.getFrame();
    }

    @Nullable
    @Deprecated
    public Bitmap getImageAsset(String str) {
        LottieImageAsset lottieImageAsset;
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager != null) {
            return imageAssetManager.bitmapForId(str);
        }
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            lottieImageAsset = null;
        } else {
            lottieImageAsset = lottieComposition.getImages().get(str);
        }
        if (lottieImageAsset == null) {
            return null;
        }
        return lottieImageAsset.getBitmap();
    }

    @Nullable
    public String getImageAssetsFolder() {
        return this.imageAssetsFolder;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return -1;
        }
        return lottieComposition.getBounds().width();
    }

    @Nullable
    public LottieImageAsset getLottieImageAssetForId(String str) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            return null;
        }
        return lottieComposition.getImages().get(str);
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.maintainOriginalImageBounds;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Marker getMarkerForAnimationsDisabled() {
        Iterator<String> it = ALLOWED_REDUCED_MOTION_MARKERS.iterator();
        Marker marker = null;
        while (it.hasNext()) {
            marker = this.composition.getMarker(it.next());
            if (marker != null) {
                break;
            }
        }
        return marker;
    }

    public float getMaxFrame() {
        return this.animator.getMaxFrame();
    }

    public float getMinFrame() {
        return this.animator.getMinFrame();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    public PerformanceTracker getPerformanceTracker() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            return lottieComposition.getPerformanceTracker();
        }
        return null;
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getProgress() {
        return this.animator.getAnimatedValueAbsolute();
    }

    public RenderMode getRenderMode() {
        if (this.useSoftwareRendering) {
            return RenderMode.SOFTWARE;
        }
        return RenderMode.HARDWARE;
    }

    public int getRepeatCount() {
        return this.animator.getRepeatCount();
    }

    @SuppressLint({"WrongConstant"})
    public int getRepeatMode() {
        return this.animator.getRepeatMode();
    }

    public float getSpeed() {
        return this.animator.getSpeed();
    }

    @Nullable
    public TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Typeface getTypeface(Font font) {
        Map<String, Typeface> map = this.fontMap;
        if (map != null) {
            String family = font.getFamily();
            if (map.containsKey(family)) {
                return map.get(family);
            }
            String name = font.getName();
            if (map.containsKey(name)) {
                return map.get(name);
            }
            String str = font.getFamily() + new ObfuscatedString(new long[]{-5759298213648406371L, -1218049933123528317L}).toString() + font.getStyle();
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        FontAssetManager fontAssetManager = getFontAssetManager();
        if (fontAssetManager != null) {
            return fontAssetManager.getTypeface(font);
        }
        return null;
    }

    public boolean hasMasks() {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer != null && compositionLayer.hasMasks()) {
            return true;
        }
        return false;
    }

    public boolean hasMatte() {
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer != null && compositionLayer.hasMatte()) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.isDirty) {
            return;
        }
        this.isDirty = true;
        if ((!invalidateSelfOnMainThread || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    public boolean isAnimating() {
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.isRunning();
    }

    public boolean isAnimatingOrWillAnimateOnVisible() {
        if (isVisible()) {
            return this.animator.isRunning();
        }
        OnVisibleAction onVisibleAction = this.onVisibleAction;
        if (onVisibleAction != OnVisibleAction.PLAY && onVisibleAction != OnVisibleAction.RESUME) {
            return false;
        }
        return true;
    }

    public boolean isApplyingOpacityToLayersEnabled() {
        return this.isApplyingOpacityToLayersEnabled;
    }

    public boolean isApplyingShadowToLayersEnabled() {
        return this.isApplyingShadowToLayersEnabled;
    }

    public boolean isFeatureFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.lottieFeatureFlags.isFlagEnabled(lottieFeatureFlag);
    }

    public boolean isLooping() {
        if (this.animator.getRepeatCount() == -1) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.lottieFeatureFlags.isFlagEnabled(LottieFeatureFlag.MergePathsApi19);
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return isAnimating();
    }

    @Deprecated
    public void loop(boolean z) {
        int i;
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (z) {
            i = -1;
        } else {
            i = 0;
        }
        lottieValueAnimator.setRepeatCount(i);
    }

    public void pauseAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.pauseAnimation();
        if (!isVisible()) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
    }

    @MainThread
    public void playAnimation() {
        float maxFrame;
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new C0208x34271fae(this, 1));
            return;
        }
        computeRenderMode();
        if (animationsEnabled(getContext()) || getRepeatCount() == 0) {
            if (isVisible()) {
                this.animator.playAnimation();
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.PLAY;
            }
        }
        if (!animationsEnabled(getContext())) {
            Marker markerForAnimationsDisabled = getMarkerForAnimationsDisabled();
            if (markerForAnimationsDisabled != null) {
                setFrame((int) markerForAnimationsDisabled.startFrame);
            } else {
                if (getSpeed() < 0.0f) {
                    maxFrame = getMinFrame();
                } else {
                    maxFrame = getMaxFrame();
                }
                setFrame((int) maxFrame);
            }
            this.animator.endAnimation();
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
    }

    public void removeAllAnimatorListeners() {
        this.animator.removeAllListeners();
    }

    public void removeAllUpdateListeners() {
        this.animator.removeAllUpdateListeners();
        this.animator.addUpdateListener(this.progressUpdateListener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener animatorListener) {
        this.animator.removeListener(animatorListener);
    }

    @RequiresApi(api = 19)
    public void removeAnimatorPauseListener(Animator.AnimatorPauseListener animatorPauseListener) {
        this.animator.removePauseListener(animatorPauseListener);
    }

    public void removeAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.animator.removeUpdateListener(animatorUpdateListener);
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        if (this.compositionLayer == null) {
            Logger.warning(new ObfuscatedString(new long[]{6363639282848309224L, 264460483179932327L, -2288103622222801785L, 4945261328955812267L, -4514957369381805483L, -5727228185337631387L, -8155966475755623952L, -2974633420556536008L}).toString());
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.compositionLayer.resolveKeyPath(keyPath, 0, arrayList, new KeyPath(new String[0]));
        return arrayList;
    }

    @MainThread
    public void resumeAnimation() {
        float maxFrame;
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new C0208x34271fae(this, 0));
            return;
        }
        computeRenderMode();
        if (animationsEnabled(getContext()) || getRepeatCount() == 0) {
            if (isVisible()) {
                this.animator.resumeAnimation();
                this.onVisibleAction = OnVisibleAction.NONE;
            } else {
                this.onVisibleAction = OnVisibleAction.RESUME;
            }
        }
        if (!animationsEnabled(getContext())) {
            if (getSpeed() < 0.0f) {
                maxFrame = getMinFrame();
            } else {
                maxFrame = getMaxFrame();
            }
            setFrame((int) maxFrame);
            this.animator.endAnimation();
            if (!isVisible()) {
                this.onVisibleAction = OnVisibleAction.NONE;
            }
        }
    }

    public void reverseAnimationSpeed() {
        this.animator.reverseAnimationSpeed();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.alpha = i;
        invalidateSelf();
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.isApplyingOpacityToLayersEnabled = z;
    }

    public void setApplyingShadowToLayersEnabled(boolean z) {
        this.isApplyingShadowToLayersEnabled = z;
    }

    public void setAsyncUpdates(@Nullable AsyncUpdates asyncUpdates) {
        this.asyncUpdates = asyncUpdates;
    }

    public void setClipTextToBoundingBox(boolean z) {
        if (z != this.clipTextToBoundingBox) {
            this.clipTextToBoundingBox = z;
            invalidateSelf();
        }
    }

    public void setClipToCompositionBounds(boolean z) {
        if (z != this.clipToCompositionBounds) {
            this.clipToCompositionBounds = z;
            CompositionLayer compositionLayer = this.compositionLayer;
            if (compositionLayer != null) {
                compositionLayer.setClipToCompositionBounds(z);
            }
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Logger.warning(new ObfuscatedString(new long[]{-5535605801734186525L, -8860217180070189044L, -8641384005041699741L, 923238182031589674L, -3378625290406379991L}).toString());
    }

    public boolean setComposition(LottieComposition lottieComposition) {
        if (this.composition == lottieComposition) {
            return false;
        }
        this.isDirty = true;
        clearComposition();
        this.composition = lottieComposition;
        buildCompositionLayer();
        this.animator.setComposition(lottieComposition);
        setProgress(this.animator.getAnimatedFraction());
        Iterator it = new ArrayList(this.lazyCompositionTasks).iterator();
        while (it.hasNext()) {
            LazyCompositionTask lazyCompositionTask = (LazyCompositionTask) it.next();
            if (lazyCompositionTask != null) {
                lazyCompositionTask.run(lottieComposition);
            }
            it.remove();
        }
        this.lazyCompositionTasks.clear();
        lottieComposition.setPerformanceTrackingEnabled(this.performanceTrackingEnabled);
        computeRenderMode();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public void setDefaultFontFileExtension(String str) {
        this.defaultFontFileExtension = str;
        FontAssetManager fontAssetManager = getFontAssetManager();
        if (fontAssetManager != null) {
            fontAssetManager.setDefaultFontFileExtension(str);
        }
    }

    public void setFontAssetDelegate(FontAssetDelegate fontAssetDelegate) {
        this.fontAssetDelegate = fontAssetDelegate;
        FontAssetManager fontAssetManager = this.fontAssetManager;
        if (fontAssetManager != null) {
            fontAssetManager.setDelegate(fontAssetDelegate);
        }
    }

    public void setFontMap(@Nullable Map<String, Typeface> map) {
        if (map == this.fontMap) {
            return;
        }
        this.fontMap = map;
        invalidateSelf();
    }

    public void setFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new C0203x3271d0aa(this, i, 0));
        } else {
            this.animator.setFrame(i);
        }
    }

    @Deprecated
    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.ignoreSystemAnimationsDisabled = z;
    }

    public void setImageAssetDelegate(ImageAssetDelegate imageAssetDelegate) {
        this.imageAssetDelegate = imageAssetDelegate;
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null) {
            imageAssetManager.setDelegate(imageAssetDelegate);
        }
    }

    public void setImagesAssetsFolder(@Nullable String str) {
        this.imageAssetsFolder = str;
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.maintainOriginalImageBounds = z;
    }

    public void setMaxFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new C0203x3271d0aa(this, i, 1));
        } else {
            this.animator.setMaxFrame(i + 0.99f);
        }
    }

    public void setMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new C0202xfbe0c504(this, f, 1));
        } else {
            this.animator.setMaxFrame(MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), f));
        }
    }

    public void setMinAndMaxFrame(String str) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new C0207x9e171bf9(this, str, 0));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker != null) {
            int i = (int) marker.startFrame;
            setMinAndMaxFrame(i, ((int) marker.durationFrames) + i);
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3489215156954682206L, -6513505999132943991L, -3578044464222702581L, 3402764338383845363L, 3512464013882150150L}).toString());
            sb.append(str);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5901020153775628246L, -3432535440731282630L}), sb));
        }
    }

    public void setMinAndMaxProgress(@FloatRange(from = 0.0d, to = 1.0d) final float f, @FloatRange(from = 0.0d, to = 1.0d) final float f2) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run(LottieComposition lottieComposition2) {
                    LottieDrawable.this.lambda$setMinAndMaxProgress$14(f, f2, lottieComposition2);
                }
            });
        } else {
            setMinAndMaxFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), f), (int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), f2));
        }
    }

    public void setMinFrame(int i) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new C0203x3271d0aa(this, i, 2));
        } else {
            this.animator.setMinFrame(i);
        }
    }

    public void setMinProgress(float f) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new C0202xfbe0c504(this, f, 2));
        } else {
            setMinFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), f));
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        if (this.outlineMasksAndMattes == z) {
            return;
        }
        this.outlineMasksAndMattes = z;
        CompositionLayer compositionLayer = this.compositionLayer;
        if (compositionLayer != null) {
            compositionLayer.setOutlineMasksAndMattes(z);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        this.performanceTrackingEnabled = z;
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            lottieComposition.setPerformanceTrackingEnabled(z);
        }
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new C0202xfbe0c504(this, f, 0));
            return;
        }
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-1692216046773541817L, -3019238384971496164L, -8503910794914270179L, -388407387261393389L}).toString());
        }
        this.animator.setFrame(this.composition.getFrameForProgress(f));
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-7752800721182477744L, 6242792076291817648L, 7890352777920908720L, 5497817095261082206L}).toString());
        }
    }

    public void setRenderMode(RenderMode renderMode) {
        this.renderMode = renderMode;
        computeRenderMode();
    }

    public void setRepeatCount(int i) {
        this.animator.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.animator.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.safeMode = z;
    }

    public void setSpeed(float f) {
        this.animator.setSpeed(f);
    }

    @Deprecated
    public void setSystemAnimationsAreEnabled(Boolean bool) {
        this.systemAnimationsEnabled = bool.booleanValue();
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.textDelegate = textDelegate;
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.animator.setUseCompositionFrameRate(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        boolean isVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            OnVisibleAction onVisibleAction = this.onVisibleAction;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                playAnimation();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                resumeAnimation();
            }
        } else if (this.animator.isRunning()) {
            pauseAnimation();
            this.onVisibleAction = OnVisibleAction.RESUME;
        } else if (isVisible) {
            this.onVisibleAction = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        endAnimation();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    @Nullable
    public Bitmap updateBitmap(String str, @Nullable Bitmap bitmap) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager == null) {
            Logger.warning(new ObfuscatedString(new long[]{-619396583120958185L, -1217101834767916462L, 1925691500048259150L, -5573620327758525129L, 8284538817566330079L, -2146456684174756933L, -3589300680331901118L, 5877269710150932140L, -6027609212868015864L, -514417635206351214L, -8924524105697213544L, 1006851853136198661L, -6291093352931585071L, 1845679924629603519L, 3538378506809764609L, 5491780559821408002L}).toString());
            return null;
        }
        Bitmap updateBitmap = imageAssetManager.updateBitmap(str, bitmap);
        invalidateSelf();
        return updateBitmap;
    }

    public boolean useTextGlyphs() {
        if (this.fontMap == null && this.textDelegate == null && this.composition.getCharacters().size() > 0) {
            return true;
        }
        return false;
    }

    @Deprecated
    public void enableMergePathsForKitKatAndAbove(boolean z) {
        boolean enableFlag = this.lottieFeatureFlags.enableFlag(LottieFeatureFlag.MergePathsApi19, z);
        if (this.composition == null || !enableFlag) {
            return;
        }
        buildCompositionLayer();
    }

    public void setMaxFrame(String str) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new C0207x9e171bf9(this, str, 1));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker != null) {
            setMaxFrame((int) (marker.startFrame + marker.durationFrames));
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3615620156308442646L, 5327074961771568L, 3143679685718022109L, 6530171043591074102L, 1411954323029540230L}).toString());
        sb.append(str);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4255034621759367906L, 2088406767794090102L}), sb));
    }

    public void setMinFrame(String str) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new C0207x9e171bf9(this, str, 2));
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker != null) {
            setMinFrame((int) marker.startFrame);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1761686558274751341L, 1889448467306268530L, -2085909735267681970L, -6951268719000223188L, 5332140138542997282L}).toString());
        sb.append(str);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6655882612011042086L, -63273304971707040L}), sb));
    }

    private void convertRect(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setMinAndMaxFrame(final String str, final String str2, final boolean z) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run(LottieComposition lottieComposition2) {
                    LottieDrawable.this.lambda$setMinAndMaxFrame$12(str, str2, z, lottieComposition2);
                }
            });
            return;
        }
        Marker marker = lottieComposition.getMarker(str);
        if (marker != null) {
            int i = (int) marker.startFrame;
            Marker marker2 = this.composition.getMarker(str2);
            if (marker2 != null) {
                setMinAndMaxFrame(i, (int) (marker2.startFrame + (z ? 1.0f : 0.0f)));
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-718733656620422672L, -3603751650353796200L, 3915914185542261411L, -4751776136335469714L, 5644979988136465343L}).toString());
            sb.append(str2);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5686427198077900388L, 3640045872894714315L}), sb));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{3990966411342674466L, 8367600729481215742L, 9196581266310853233L, -2585610518424480201L, -7152733751413371827L}).toString());
        sb2.append(str);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1505607306540276282L, 6578309388203233235L}), sb2));
    }

    public <T> void addValueCallback(KeyPath keyPath, T t, SimpleLottieValueCallback<T> simpleLottieValueCallback) {
        addValueCallback(keyPath, (KeyPath) t, (LottieValueCallback<KeyPath>) new LottieValueCallback<T>() { // from class: com.airbnb.lottie.LottieDrawable.1
            final /* synthetic */ SimpleLottieValueCallback val$callback;

            public AnonymousClass1(SimpleLottieValueCallback simpleLottieValueCallback2) {
                r2 = simpleLottieValueCallback2;
            }

            @Override // com.airbnb.lottie.value.LottieValueCallback
            public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
                return (T) r2.getValue(lottieFrameInfo);
            }
        });
    }

    public void setMinAndMaxFrame(final int i, final int i2) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                public final void run(LottieComposition lottieComposition) {
                    LottieDrawable.this.lambda$setMinAndMaxFrame$13(i, i2, lottieComposition);
                }
            });
        } else {
            this.animator.setMinAndMaxFrames(i, i2 + 0.99f);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void draw(Canvas canvas, Matrix matrix) {
        CompositionLayer compositionLayer = this.compositionLayer;
        LottieComposition lottieComposition = this.composition;
        if (compositionLayer == null || lottieComposition == null) {
            return;
        }
        boolean asyncUpdatesEnabled = getAsyncUpdatesEnabled();
        if (asyncUpdatesEnabled) {
            try {
                this.setProgressDrawLock.acquire();
                if (shouldSetProgressBeforeDrawing()) {
                    setProgress(this.animator.getAnimatedValueAbsolute());
                }
            } catch (InterruptedException unused) {
                if (!asyncUpdatesEnabled) {
                    return;
                }
                this.setProgressDrawLock.release();
                if (compositionLayer.getProgress() == this.animator.getAnimatedValueAbsolute()) {
                    return;
                }
            } catch (Throwable th) {
                if (asyncUpdatesEnabled) {
                    this.setProgressDrawLock.release();
                    if (compositionLayer.getProgress() != this.animator.getAnimatedValueAbsolute()) {
                        setProgressExecutor.execute(this.updateProgressRunnable);
                    }
                }
                throw th;
            }
        }
        if (this.safeMode) {
            try {
                draw(canvas, matrix, compositionLayer, this.alpha);
            } catch (Throwable th2) {
                Logger.error(new ObfuscatedString(new long[]{3617463080156321297L, -3977686692240415788L, 5183269430154060842L, -7251337826829955640L}).toString(), th2);
            }
        } else {
            draw(canvas, matrix, compositionLayer, this.alpha);
        }
        this.isDirty = false;
        if (asyncUpdatesEnabled) {
            this.setProgressDrawLock.release();
            if (compositionLayer.getProgress() == this.animator.getAnimatedValueAbsolute()) {
                return;
            }
            setProgressExecutor.execute(this.updateProgressRunnable);
        }
    }

    private void draw(Canvas canvas, Matrix matrix, CompositionLayer compositionLayer, int i) {
        if (this.useSoftwareRendering) {
            canvas.save();
            canvas.concat(matrix);
            renderAndDrawAsBitmap(canvas, compositionLayer);
            canvas.restore();
            return;
        }
        compositionLayer.draw(canvas, matrix, i, null);
    }
}
