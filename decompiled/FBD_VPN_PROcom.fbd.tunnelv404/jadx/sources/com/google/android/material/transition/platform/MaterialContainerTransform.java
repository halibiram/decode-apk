package com.google.android.material.transition.platform;

import android.R;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.ArcMotion;
import android.transition.PathMotion;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.color.utilities.Contrast;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* loaded from: classes2.dex */
public final class MaterialContainerTransform extends Transition {
    private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS;
    private static final ProgressThresholdsGroup DEFAULT_RETURN_THRESHOLDS_ARC;
    private static final float ELEVATION_NOT_SET = -1.0f;
    public static final int FADE_MODE_CROSS = 2;
    public static final int FADE_MODE_IN = 0;
    public static final int FADE_MODE_OUT = 1;
    public static final int FADE_MODE_THROUGH = 3;
    public static final int FIT_MODE_AUTO = 0;
    public static final int FIT_MODE_HEIGHT = 2;
    public static final int FIT_MODE_WIDTH = 1;
    public static final int TRANSITION_DIRECTION_AUTO = 0;
    public static final int TRANSITION_DIRECTION_ENTER = 1;
    public static final int TRANSITION_DIRECTION_RETURN = 2;
    private boolean appliedThemeValues;

    @ColorInt
    private int containerColor;
    private boolean drawDebugEnabled;

    @IdRes
    private int drawingViewId;
    private boolean elevationShadowEnabled;

    @ColorInt
    private int endContainerColor;
    private float endElevation;

    @Nullable
    private ShapeAppearanceModel endShapeAppearanceModel;

    @Nullable
    private View endView;

    @IdRes
    private int endViewId;
    private int fadeMode;

    @Nullable
    private ProgressThresholds fadeProgressThresholds;
    private int fitMode;
    private boolean holdAtEndEnabled;
    private boolean pathMotionCustom;

    @Nullable
    private ProgressThresholds scaleMaskProgressThresholds;

    @Nullable
    private ProgressThresholds scaleProgressThresholds;

    @ColorInt
    private int scrimColor;

    @Nullable
    private ProgressThresholds shapeMaskProgressThresholds;

    @ColorInt
    private int startContainerColor;
    private float startElevation;

    @Nullable
    private ShapeAppearanceModel startShapeAppearanceModel;

    @Nullable
    private View startView;

    @IdRes
    private int startViewId;
    private int transitionDirection;
    private static final String PROP_BOUNDS = new ObfuscatedString(new long[]{-6820556693930771246L, 6588347578178394490L, -108671978867608015L, 1091642397053652924L, -7966015677230559719L, 374907706743006339L}).toString();
    private static final String PROP_SHAPE_APPEARANCE = new ObfuscatedString(new long[]{3406039949569446758L, -514928480943668229L, 2699558549814464492L, -4828905256298128525L, -8152844756188533970L, -7258159611591960000L, 121346604765919420L}).toString();
    private static final String TAG = "MaterialContainerTransform";
    private static final String[] TRANSITION_PROPS = {new ObfuscatedString(new long[]{-4298010308645325483L, -7969822893578196579L, -5460170850527813371L, 2254632983944237420L, 8158064855532324258L, -6140789923811478225L}).toString(), new ObfuscatedString(new long[]{-4481707195551122821L, -4195871005973052113L, -1598205236067312279L, -2724553564490719815L, -8413535038729746681L, -6120803643559363821L, -2808694259054791980L}).toString()};
    private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.0f, 0.25f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.75f));
    private static final ProgressThresholdsGroup DEFAULT_ENTER_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.1f, 0.4f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 1.0f), new ProgressThresholds(0.1f, 0.9f));

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface FadeMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface FitMode {
    }

    /* loaded from: classes2.dex */
    public static class ProgressThresholds {

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        private final float end;

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        private final float start;

        public ProgressThresholds(@FloatRange(from = 0.0d, to = 1.0d) float f, @FloatRange(from = 0.0d, to = 1.0d) float f2) {
            this.start = f;
            this.end = f2;
        }

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        public float getEnd() {
            return this.end;
        }

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        public float getStart() {
            return this.start;
        }
    }

    /* loaded from: classes2.dex */
    public static class ProgressThresholdsGroup {

        @NonNull
        private final ProgressThresholds fade;

        @NonNull
        private final ProgressThresholds scale;

        @NonNull
        private final ProgressThresholds scaleMask;

        @NonNull
        private final ProgressThresholds shapeMask;

        private ProgressThresholdsGroup(@NonNull ProgressThresholds progressThresholds, @NonNull ProgressThresholds progressThresholds2, @NonNull ProgressThresholds progressThresholds3, @NonNull ProgressThresholds progressThresholds4) {
            this.fade = progressThresholds;
            this.scale = progressThresholds2;
            this.scaleMask = progressThresholds3;
            this.shapeMask = progressThresholds4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface TransitionDirection {
    }

    /* loaded from: classes2.dex */
    public static final class TransitionDrawable extends Drawable {
        private static final int COMPAT_SHADOW_COLOR = -7829368;
        private static final int SHADOW_COLOR = 754974720;
        private static final float SHADOW_DX_MULTIPLIER_ADJUSTMENT = 0.3f;
        private static final float SHADOW_DY_MULTIPLIER_ADJUSTMENT = 1.5f;
        private final MaterialShapeDrawable compatShadowDrawable;
        private final Paint containerPaint;
        private float currentElevation;
        private float currentElevationDy;
        private final RectF currentEndBounds;
        private final RectF currentEndBoundsMasked;
        private RectF currentMaskBounds;
        private final RectF currentStartBounds;
        private final RectF currentStartBoundsMasked;
        private final Paint debugPaint;
        private final Path debugPath;
        private final float displayHeight;
        private final float displayWidth;
        private final boolean drawDebugEnabled;
        private final boolean elevationShadowEnabled;
        private final RectF endBounds;
        private final Paint endContainerPaint;
        private final float endElevation;
        private final ShapeAppearanceModel endShapeAppearanceModel;
        private final View endView;
        private final boolean entering;
        private final FadeModeEvaluator fadeModeEvaluator;
        private FadeModeResult fadeModeResult;
        private final FitModeEvaluator fitModeEvaluator;
        private FitModeResult fitModeResult;
        private final MaskEvaluator maskEvaluator;
        private final float motionPathLength;
        private final PathMeasure motionPathMeasure;
        private final float[] motionPathPosition;
        private float progress;
        private final ProgressThresholdsGroup progressThresholds;
        private final Paint scrimPaint;
        private final Paint shadowPaint;
        private final RectF startBounds;
        private final Paint startContainerPaint;
        private final float startElevation;
        private final ShapeAppearanceModel startShapeAppearanceModel;
        private final View startView;

        private static float calculateElevationDxMultiplier(RectF rectF, float f) {
            return ((rectF.centerX() / (f / 2.0f)) - 1.0f) * SHADOW_DX_MULTIPLIER_ADJUSTMENT;
        }

        private static float calculateElevationDyMultiplier(RectF rectF, float f) {
            return (rectF.centerY() / f) * SHADOW_DY_MULTIPLIER_ADJUSTMENT;
        }

        private void drawDebugCumulativePath(Canvas canvas, RectF rectF, Path path, @ColorInt int i) {
            PointF motionPathPoint = getMotionPathPoint(rectF);
            if (this.progress == 0.0f) {
                path.reset();
                path.moveTo(motionPathPoint.x, motionPathPoint.y);
            } else {
                path.lineTo(motionPathPoint.x, motionPathPoint.y);
                this.debugPaint.setColor(i);
                canvas.drawPath(path, this.debugPaint);
            }
        }

        private void drawDebugRect(Canvas canvas, RectF rectF, @ColorInt int i) {
            this.debugPaint.setColor(i);
            canvas.drawRect(rectF, this.debugPaint);
        }

        private void drawElevationShadow(Canvas canvas) {
            canvas.save();
            canvas.clipPath(this.maskEvaluator.getPath(), Region.Op.DIFFERENCE);
            if (Build.VERSION.SDK_INT > 28) {
                drawElevationShadowWithPaintShadowLayer(canvas);
            } else {
                drawElevationShadowWithMaterialShapeDrawable(canvas);
            }
            canvas.restore();
        }

        private void drawElevationShadowWithMaterialShapeDrawable(Canvas canvas) {
            MaterialShapeDrawable materialShapeDrawable = this.compatShadowDrawable;
            RectF rectF = this.currentMaskBounds;
            materialShapeDrawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            this.compatShadowDrawable.setElevation(this.currentElevation);
            this.compatShadowDrawable.setShadowVerticalOffset((int) this.currentElevationDy);
            this.compatShadowDrawable.setShapeAppearanceModel(this.maskEvaluator.getCurrentShapeAppearanceModel());
            this.compatShadowDrawable.draw(canvas);
        }

        private void drawElevationShadowWithPaintShadowLayer(Canvas canvas) {
            ShapeAppearanceModel currentShapeAppearanceModel = this.maskEvaluator.getCurrentShapeAppearanceModel();
            if (currentShapeAppearanceModel.isRoundRect(this.currentMaskBounds)) {
                float cornerSize = currentShapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.currentMaskBounds);
                canvas.drawRoundRect(this.currentMaskBounds, cornerSize, cornerSize, this.shadowPaint);
            } else {
                canvas.drawPath(this.maskEvaluator.getPath(), this.shadowPaint);
            }
        }

        private void drawEndView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.endContainerPaint);
            Rect bounds = getBounds();
            RectF rectF = this.currentEndBounds;
            TransitionUtils.transform(canvas, bounds, rectF.left, rectF.top, this.fitModeResult.endScale, this.fadeModeResult.endAlpha, new CanvasCompat.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.2
                @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
                public void run(Canvas canvas2) {
                    TransitionDrawable.this.endView.draw(canvas2);
                }
            });
        }

        private void drawStartView(Canvas canvas) {
            maybeDrawContainerColor(canvas, this.startContainerPaint);
            Rect bounds = getBounds();
            RectF rectF = this.currentStartBounds;
            TransitionUtils.transform(canvas, bounds, rectF.left, rectF.top, this.fitModeResult.startScale, this.fadeModeResult.startAlpha, new CanvasCompat.CanvasOperation() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.TransitionDrawable.1
                @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
                public void run(Canvas canvas2) {
                    TransitionDrawable.this.startView.draw(canvas2);
                }
            });
        }

        private static PointF getMotionPathPoint(RectF rectF) {
            return new PointF(rectF.centerX(), rectF.top);
        }

        private void maybeDrawContainerColor(Canvas canvas, Paint paint) {
            if (paint.getColor() != 0 && paint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), paint);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProgress(float f) {
            if (this.progress != f) {
                updateProgress(f);
            }
        }

        private void updateProgress(float f) {
            float lerp;
            float f2;
            float f3;
            RectF rectF;
            this.progress = f;
            Paint paint = this.scrimPaint;
            if (this.entering) {
                lerp = TransitionUtils.lerp(0.0f, 255.0f, f);
            } else {
                lerp = TransitionUtils.lerp(255.0f, 0.0f, f);
            }
            paint.setAlpha((int) lerp);
            this.motionPathMeasure.getPosTan(this.motionPathLength * f, this.motionPathPosition, null);
            float[] fArr = this.motionPathPosition;
            float f4 = fArr[0];
            float f5 = fArr[1];
            if (f > 1.0f || f < 0.0f) {
                if (f > 1.0f) {
                    f3 = (f - 1.0f) / 0.00999999f;
                    f2 = 0.99f;
                } else {
                    f2 = 0.01f;
                    f3 = (f / 0.01f) * (-1.0f);
                }
                this.motionPathMeasure.getPosTan(this.motionPathLength * f2, fArr, null);
                float[] fArr2 = this.motionPathPosition;
                float f6 = fArr2[0];
                float f7 = fArr2[1];
                f4 = AbstractC0362x4440ab85.m2925xfbe0c504(f4, f6, f3, f4);
                f5 = AbstractC0362x4440ab85.m2925xfbe0c504(f5, f7, f3, f5);
            }
            float f8 = f4;
            float f9 = f5;
            FitModeResult evaluate = this.fitModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scale.end))).floatValue(), this.startBounds.width(), this.startBounds.height(), this.endBounds.width(), this.endBounds.height());
            this.fitModeResult = evaluate;
            RectF rectF2 = this.currentStartBounds;
            float f10 = evaluate.currentStartWidth;
            rectF2.set(f8 - (f10 / 2.0f), f9, (f10 / 2.0f) + f8, evaluate.currentStartHeight + f9);
            RectF rectF3 = this.currentEndBounds;
            FitModeResult fitModeResult = this.fitModeResult;
            float f11 = fitModeResult.currentEndWidth;
            rectF3.set(f8 - (f11 / 2.0f), f9, (f11 / 2.0f) + f8, fitModeResult.currentEndHeight + f9);
            this.currentStartBoundsMasked.set(this.currentStartBounds);
            this.currentEndBoundsMasked.set(this.currentEndBounds);
            float floatValue = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.start))).floatValue();
            float floatValue2 = ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.scaleMask.end))).floatValue();
            boolean shouldMaskStartBounds = this.fitModeEvaluator.shouldMaskStartBounds(this.fitModeResult);
            if (shouldMaskStartBounds) {
                rectF = this.currentStartBoundsMasked;
            } else {
                rectF = this.currentEndBoundsMasked;
            }
            float lerp2 = TransitionUtils.lerp(0.0f, 1.0f, floatValue, floatValue2, f);
            if (!shouldMaskStartBounds) {
                lerp2 = 1.0f - lerp2;
            }
            this.fitModeEvaluator.applyMask(rectF, lerp2, this.fitModeResult);
            this.currentMaskBounds = new RectF(Math.min(this.currentStartBoundsMasked.left, this.currentEndBoundsMasked.left), Math.min(this.currentStartBoundsMasked.top, this.currentEndBoundsMasked.top), Math.max(this.currentStartBoundsMasked.right, this.currentEndBoundsMasked.right), Math.max(this.currentStartBoundsMasked.bottom, this.currentEndBoundsMasked.bottom));
            this.maskEvaluator.evaluate(f, this.startShapeAppearanceModel, this.endShapeAppearanceModel, this.currentStartBounds, this.currentStartBoundsMasked, this.currentEndBoundsMasked, this.progressThresholds.shapeMask);
            this.currentElevation = TransitionUtils.lerp(this.startElevation, this.endElevation, f);
            float calculateElevationDxMultiplier = calculateElevationDxMultiplier(this.currentMaskBounds, this.displayWidth);
            float calculateElevationDyMultiplier = calculateElevationDyMultiplier(this.currentMaskBounds, this.displayHeight);
            float f12 = this.currentElevation;
            float f13 = (int) (calculateElevationDyMultiplier * f12);
            this.currentElevationDy = f13;
            this.shadowPaint.setShadowLayer(f12, (int) (calculateElevationDxMultiplier * f12), f13, SHADOW_COLOR);
            this.fadeModeResult = this.fadeModeEvaluator.evaluate(f, ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.start))).floatValue(), ((Float) Preconditions.checkNotNull(Float.valueOf(this.progressThresholds.fade.end))).floatValue(), 0.35f);
            if (this.startContainerPaint.getColor() != 0) {
                this.startContainerPaint.setAlpha(this.fadeModeResult.startAlpha);
            }
            if (this.endContainerPaint.getColor() != 0) {
                this.endContainerPaint.setAlpha(this.fadeModeResult.endAlpha);
            }
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(@NonNull Canvas canvas) {
            int i;
            if (this.scrimPaint.getAlpha() > 0) {
                canvas.drawRect(getBounds(), this.scrimPaint);
            }
            if (this.drawDebugEnabled) {
                i = canvas.save();
            } else {
                i = -1;
            }
            if (this.elevationShadowEnabled && this.currentElevation > 0.0f) {
                drawElevationShadow(canvas);
            }
            this.maskEvaluator.clip(canvas);
            maybeDrawContainerColor(canvas, this.containerPaint);
            if (this.fadeModeResult.endOnTop) {
                drawStartView(canvas);
                drawEndView(canvas);
            } else {
                drawEndView(canvas);
                drawStartView(canvas);
            }
            if (this.drawDebugEnabled) {
                canvas.restoreToCount(i);
                drawDebugCumulativePath(canvas, this.currentStartBounds, this.debugPath, -65281);
                drawDebugRect(canvas, this.currentStartBoundsMasked, -256);
                drawDebugRect(canvas, this.currentStartBounds, -16711936);
                drawDebugRect(canvas, this.currentEndBoundsMasked, -16711681);
                drawDebugRect(canvas, this.currentEndBounds, -16776961);
            }
        }

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-1769680895478039584L, 1927141734517555349L, 279884593669397555L, -1099605226246647443L, 4849185963508419529L, -3891594431652328934L}).toString());
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(@Nullable ColorFilter colorFilter) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{8743350276695636622L, 9222918964847634522L, 4134673583818072997L, 4830382272152860476L, 1064297459949646848L, -7623535436103770624L}).toString());
        }

        private TransitionDrawable(PathMotion pathMotion, View view, RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float f, View view2, RectF rectF2, ShapeAppearanceModel shapeAppearanceModel2, float f2, @ColorInt int i, @ColorInt int i2, @ColorInt int i3, int i4, boolean z, boolean z2, FadeModeEvaluator fadeModeEvaluator, FitModeEvaluator fitModeEvaluator, ProgressThresholdsGroup progressThresholdsGroup, boolean z3) {
            Paint paint = new Paint();
            this.containerPaint = paint;
            Paint paint2 = new Paint();
            this.startContainerPaint = paint2;
            Paint paint3 = new Paint();
            this.endContainerPaint = paint3;
            this.shadowPaint = new Paint();
            Paint paint4 = new Paint();
            this.scrimPaint = paint4;
            this.maskEvaluator = new MaskEvaluator();
            this.motionPathPosition = r7;
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            this.compatShadowDrawable = materialShapeDrawable;
            Paint paint5 = new Paint();
            this.debugPaint = paint5;
            this.debugPath = new Path();
            this.startView = view;
            this.startBounds = rectF;
            this.startShapeAppearanceModel = shapeAppearanceModel;
            this.startElevation = f;
            this.endView = view2;
            this.endBounds = rectF2;
            this.endShapeAppearanceModel = shapeAppearanceModel2;
            this.endElevation = f2;
            this.entering = z;
            this.elevationShadowEnabled = z2;
            this.fadeModeEvaluator = fadeModeEvaluator;
            this.fitModeEvaluator = fitModeEvaluator;
            this.progressThresholds = progressThresholdsGroup;
            this.drawDebugEnabled = z3;
            WindowManager windowManager = (WindowManager) view.getContext().getSystemService(new ObfuscatedString(new long[]{1421290752447284689L, -8275264906637108488L}).toString());
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            this.displayWidth = r12.widthPixels;
            this.displayHeight = r12.heightPixels;
            paint.setColor(i);
            paint2.setColor(i2);
            paint3.setColor(i3);
            materialShapeDrawable.setFillColor(ColorStateList.valueOf(0));
            materialShapeDrawable.setShadowCompatibilityMode(2);
            materialShapeDrawable.setShadowBitmapDrawingEnable(false);
            materialShapeDrawable.setShadowColor(COMPAT_SHADOW_COLOR);
            RectF rectF3 = new RectF(rectF);
            this.currentStartBounds = rectF3;
            this.currentStartBoundsMasked = new RectF(rectF3);
            RectF rectF4 = new RectF(rectF3);
            this.currentEndBounds = rectF4;
            this.currentEndBoundsMasked = new RectF(rectF4);
            PointF motionPathPoint = getMotionPathPoint(rectF);
            PointF motionPathPoint2 = getMotionPathPoint(rectF2);
            PathMeasure pathMeasure = new PathMeasure(pathMotion.getPath(motionPathPoint.x, motionPathPoint.y, motionPathPoint2.x, motionPathPoint2.y), false);
            this.motionPathMeasure = pathMeasure;
            this.motionPathLength = pathMeasure.getLength();
            float[] fArr = {rectF.centerX(), rectF.top};
            paint4.setStyle(Paint.Style.FILL);
            paint4.setShader(TransitionUtils.createColorShader(i4));
            paint5.setStyle(Paint.Style.STROKE);
            paint5.setStrokeWidth(10.0f);
            updateProgress(0.0f);
        }
    }

    static {
        DEFAULT_RETURN_THRESHOLDS = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 1.0f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.3f, 0.9f));
        DEFAULT_RETURN_THRESHOLDS_ARC = new ProgressThresholdsGroup(new ProgressThresholds(0.6f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.0f, 0.9f), new ProgressThresholds(0.2f, 0.9f));
    }

    public MaterialContainerTransform() {
        this.drawDebugEnabled = false;
        this.holdAtEndEnabled = false;
        this.pathMotionCustom = false;
        this.appliedThemeValues = false;
        this.drawingViewId = R.id.content;
        this.startViewId = -1;
        this.endViewId = -1;
        this.containerColor = 0;
        this.startContainerColor = 0;
        this.endContainerColor = 0;
        this.scrimColor = 1375731712;
        this.transitionDirection = 0;
        this.fadeMode = 0;
        this.fitMode = 0;
        this.elevationShadowEnabled = Build.VERSION.SDK_INT >= 28;
        this.startElevation = -1.0f;
        this.endElevation = -1.0f;
    }

    private ProgressThresholdsGroup buildThresholdsGroup(boolean z) {
        PathMotion pathMotion = getPathMotion();
        if (!(pathMotion instanceof ArcMotion) && !(pathMotion instanceof MaterialArcMotion)) {
            return getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS, DEFAULT_RETURN_THRESHOLDS);
        }
        return getThresholdsOrDefault(z, DEFAULT_ENTER_THRESHOLDS_ARC, DEFAULT_RETURN_THRESHOLDS_ARC);
    }

    private static RectF calculateDrawableBounds(View view, @Nullable View view2, float f, float f2) {
        if (view2 != null) {
            RectF locationOnScreen = TransitionUtils.getLocationOnScreen(view2);
            locationOnScreen.offset(f, f2);
            return locationOnScreen;
        }
        return new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
    }

    private static ShapeAppearanceModel captureShapeAppearance(@NonNull View view, @NonNull RectF rectF, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        return TransitionUtils.convertToRelativeCornerSizes(getShapeAppearance(view, shapeAppearanceModel), rectF);
    }

    private static void captureValues(@NonNull TransitionValues transitionValues, @Nullable View view, @IdRes int i, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        RectF locationOnScreen;
        if (i != -1) {
            transitionValues.view = TransitionUtils.findDescendantOrAncestorById(transitionValues.view, i);
        } else if (view != null) {
            transitionValues.view = view;
        } else {
            View view2 = transitionValues.view;
            int i2 = com.google.android.material.R.id.mtrl_motion_snapshot_view;
            if (view2.getTag(i2) instanceof View) {
                View view3 = (View) transitionValues.view.getTag(i2);
                transitionValues.view.setTag(i2, null);
                transitionValues.view = view3;
            }
        }
        View view4 = transitionValues.view;
        if (ViewCompat.isLaidOut(view4) || view4.getWidth() != 0 || view4.getHeight() != 0) {
            if (view4.getParent() == null) {
                locationOnScreen = TransitionUtils.getRelativeBounds(view4);
            } else {
                locationOnScreen = TransitionUtils.getLocationOnScreen(view4);
            }
            transitionValues.values.put(new ObfuscatedString(new long[]{-7842904457106260240L, 7845603060297213445L, 722330225354457920L, -7942122458119091292L, -886182202354553482L, 2416815813484219584L}).toString(), locationOnScreen);
            transitionValues.values.put(new ObfuscatedString(new long[]{1369158150262218073L, -5279028622321115910L, 281000682152924121L, 7998693671911732439L, -8466954286618010611L, 8786889923896690229L, 7526061145315211295L}).toString(), captureShapeAppearance(view4, locationOnScreen, shapeAppearanceModel));
        }
    }

    private static float getElevationOrDefault(float f, View view) {
        if (f == -1.0f) {
            return ViewCompat.getElevation(view);
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static ShapeAppearanceModel getShapeAppearance(@NonNull View view, @Nullable ShapeAppearanceModel shapeAppearanceModel) {
        if (shapeAppearanceModel != null) {
            return shapeAppearanceModel;
        }
        int i = com.google.android.material.R.id.mtrl_motion_snapshot_view;
        if (view.getTag(i) instanceof ShapeAppearanceModel) {
            return (ShapeAppearanceModel) view.getTag(i);
        }
        Context context = view.getContext();
        int transitionShapeAppearanceResId = getTransitionShapeAppearanceResId(context);
        if (transitionShapeAppearanceResId != -1) {
            return ShapeAppearanceModel.builder(context, transitionShapeAppearanceResId, 0).build();
        }
        if (view instanceof Shapeable) {
            return ((Shapeable) view).getShapeAppearanceModel();
        }
        return ShapeAppearanceModel.builder().build();
    }

    private ProgressThresholdsGroup getThresholdsOrDefault(boolean z, ProgressThresholdsGroup progressThresholdsGroup, ProgressThresholdsGroup progressThresholdsGroup2) {
        if (!z) {
            progressThresholdsGroup = progressThresholdsGroup2;
        }
        return new ProgressThresholdsGroup((ProgressThresholds) TransitionUtils.defaultIfNull(this.fadeProgressThresholds, progressThresholdsGroup.fade), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleProgressThresholds, progressThresholdsGroup.scale), (ProgressThresholds) TransitionUtils.defaultIfNull(this.scaleMaskProgressThresholds, progressThresholdsGroup.scaleMask), (ProgressThresholds) TransitionUtils.defaultIfNull(this.shapeMaskProgressThresholds, progressThresholdsGroup.shapeMask));
    }

    @StyleRes
    private static int getTransitionShapeAppearanceResId(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{com.google.android.material.R.attr.transitionShapeAppearance});
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId;
    }

    private boolean isEntering(@NonNull RectF rectF, @NonNull RectF rectF2) {
        int i = this.transitionDirection;
        if (i != 0) {
            if (i == 1) {
                return true;
            }
            if (i == 2) {
                return false;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6112928712437455119L, -796183843873132406L, 9042549227184910924L, 2628444290680399677L, -5685801713267462872L}).toString() + this.transitionDirection);
        }
        if (TransitionUtils.calculateArea(rectF2) <= TransitionUtils.calculateArea(rectF)) {
            return false;
        }
        return true;
    }

    private void maybeApplyThemeValues(Context context, boolean z) {
        int i;
        TransitionUtils.maybeApplyThemeInterpolator(this, context, com.google.android.material.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
        if (z) {
            i = com.google.android.material.R.attr.motionDurationLong2;
        } else {
            i = com.google.android.material.R.attr.motionDurationMedium4;
        }
        TransitionUtils.maybeApplyThemeDuration(this, context, i);
        if (!this.pathMotionCustom) {
            TransitionUtils.maybeApplyThemePath(this, context, com.google.android.material.R.attr.motionPath);
        }
    }

    @Override // android.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues, this.endView, this.endViewId, this.endShapeAppearanceModel);
    }

    @Override // android.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues, this.startView, this.startViewId, this.startShapeAppearanceModel);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        View view;
        View findAncestorById;
        View view2 = null;
        if (transitionValues != null && transitionValues2 != null) {
            RectF rectF = (RectF) transitionValues.values.get(new ObfuscatedString(new long[]{5666667578613397664L, -137595985968009523L, -4834191098370213475L, 9070624306488385934L, 893670008059197007L, 6000133900164119737L}).toString());
            ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) transitionValues.values.get(new ObfuscatedString(new long[]{8343469304453200864L, -5098181445674914338L, -6040304093623549441L, 4820983510148883680L, -2508657526318504619L, -2537171483446259463L, -6243275540149259093L}).toString());
            if (rectF != null && shapeAppearanceModel != null) {
                RectF rectF2 = (RectF) transitionValues2.values.get(new ObfuscatedString(new long[]{-6837922304028160298L, -6356026927315732143L, -1778948744918326608L, -4448151719974481711L, -5225072469674342548L, 6716442051476744900L}).toString());
                ShapeAppearanceModel shapeAppearanceModel2 = (ShapeAppearanceModel) transitionValues2.values.get(new ObfuscatedString(new long[]{-7655107802144941081L, 3201355476342519542L, -6973557336303325228L, -1817837981437226011L, 4532990659191364351L, -3633685779138152318L, -7513885920756754815L}).toString());
                if (rectF2 != null && shapeAppearanceModel2 != null) {
                    final View view3 = transitionValues.view;
                    final View view4 = transitionValues2.view;
                    if (view4.getParent() != null) {
                        view = view4;
                    } else {
                        view = view3;
                    }
                    if (this.drawingViewId == view.getId()) {
                        findAncestorById = (View) view.getParent();
                        view2 = view;
                    } else {
                        findAncestorById = TransitionUtils.findAncestorById(view, this.drawingViewId);
                    }
                    final View view5 = findAncestorById;
                    RectF locationOnScreen = TransitionUtils.getLocationOnScreen(view5);
                    float f = -locationOnScreen.left;
                    float f2 = -locationOnScreen.top;
                    RectF calculateDrawableBounds = calculateDrawableBounds(view5, view2, f, f2);
                    rectF.offset(f, f2);
                    rectF2.offset(f, f2);
                    boolean isEntering = isEntering(rectF, rectF2);
                    if (!this.appliedThemeValues) {
                        maybeApplyThemeValues(view.getContext(), isEntering);
                    }
                    final TransitionDrawable transitionDrawable = new TransitionDrawable(getPathMotion(), view3, rectF, shapeAppearanceModel, getElevationOrDefault(this.startElevation, view3), view4, rectF2, shapeAppearanceModel2, getElevationOrDefault(this.endElevation, view4), this.containerColor, this.startContainerColor, this.endContainerColor, this.scrimColor, isEntering, this.elevationShadowEnabled, FadeModeEvaluators.get(this.fadeMode, isEntering), FitModeEvaluators.get(this.fitMode, isEntering, rectF, rectF2), buildThresholdsGroup(isEntering), this.drawDebugEnabled);
                    transitionDrawable.setBounds(Math.round(calculateDrawableBounds.left), Math.round(calculateDrawableBounds.top), Math.round(calculateDrawableBounds.right), Math.round(calculateDrawableBounds.bottom));
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            transitionDrawable.setProgress(valueAnimator.getAnimatedFraction());
                        }
                    });
                    addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransform.2
                        @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                        public void onTransitionEnd(@NonNull Transition transition) {
                            MaterialContainerTransform.this.removeListener(this);
                            if (MaterialContainerTransform.this.holdAtEndEnabled) {
                                return;
                            }
                            view3.setAlpha(1.0f);
                            view4.setAlpha(1.0f);
                            ViewUtils.getOverlay(view5).remove(transitionDrawable);
                        }

                        @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                        public void onTransitionStart(@NonNull Transition transition) {
                            ViewUtils.getOverlay(view5).add(transitionDrawable);
                            view3.setAlpha(0.0f);
                            view4.setAlpha(0.0f);
                        }
                    });
                    return ofFloat;
                }
                new ObfuscatedString(new long[]{-7066033602070727428L, -4005219875462723147L, 2172494248829841471L, -5373489559016040235L, -8808198954113501993L, 5357006723121002559L, 6312096761792429120L, -64036400180339313L, -5409720329865133052L, 151051548142921563L, 9073785909957160125L}).toString();
                return null;
            }
            new ObfuscatedString(new long[]{-3968499606236535849L, -5175675077967453805L, 3981805687022332599L, 7170714032804826588L, -9172838227600319076L, -7459939103442152418L, -7829657110787476832L, 4692259941266044336L, -3299001895045939868L, 833632259738812346L, -1804707680474069515L}).toString();
        }
        return null;
    }

    @ColorInt
    public int getContainerColor() {
        return this.containerColor;
    }

    @IdRes
    public int getDrawingViewId() {
        return this.drawingViewId;
    }

    @ColorInt
    public int getEndContainerColor() {
        return this.endContainerColor;
    }

    public float getEndElevation() {
        return this.endElevation;
    }

    @Nullable
    public ShapeAppearanceModel getEndShapeAppearanceModel() {
        return this.endShapeAppearanceModel;
    }

    @Nullable
    public View getEndView() {
        return this.endView;
    }

    @IdRes
    public int getEndViewId() {
        return this.endViewId;
    }

    public int getFadeMode() {
        return this.fadeMode;
    }

    @Nullable
    public ProgressThresholds getFadeProgressThresholds() {
        return this.fadeProgressThresholds;
    }

    public int getFitMode() {
        return this.fitMode;
    }

    @Nullable
    public ProgressThresholds getScaleMaskProgressThresholds() {
        return this.scaleMaskProgressThresholds;
    }

    @Nullable
    public ProgressThresholds getScaleProgressThresholds() {
        return this.scaleProgressThresholds;
    }

    @ColorInt
    public int getScrimColor() {
        return this.scrimColor;
    }

    @Nullable
    public ProgressThresholds getShapeMaskProgressThresholds() {
        return this.shapeMaskProgressThresholds;
    }

    @ColorInt
    public int getStartContainerColor() {
        return this.startContainerColor;
    }

    public float getStartElevation() {
        return this.startElevation;
    }

    @Nullable
    public ShapeAppearanceModel getStartShapeAppearanceModel() {
        return this.startShapeAppearanceModel;
    }

    @Nullable
    public View getStartView() {
        return this.startView;
    }

    @IdRes
    public int getStartViewId() {
        return this.startViewId;
    }

    public int getTransitionDirection() {
        return this.transitionDirection;
    }

    @Override // android.transition.Transition
    @Nullable
    public String[] getTransitionProperties() {
        return TRANSITION_PROPS;
    }

    public boolean isDrawDebugEnabled() {
        return this.drawDebugEnabled;
    }

    public boolean isElevationShadowEnabled() {
        return this.elevationShadowEnabled;
    }

    public boolean isHoldAtEndEnabled() {
        return this.holdAtEndEnabled;
    }

    public void setAllContainerColors(@ColorInt int i) {
        this.containerColor = i;
        this.startContainerColor = i;
        this.endContainerColor = i;
    }

    public void setContainerColor(@ColorInt int i) {
        this.containerColor = i;
    }

    public void setDrawDebugEnabled(boolean z) {
        this.drawDebugEnabled = z;
    }

    public void setDrawingViewId(@IdRes int i) {
        this.drawingViewId = i;
    }

    public void setElevationShadowEnabled(boolean z) {
        this.elevationShadowEnabled = z;
    }

    public void setEndContainerColor(@ColorInt int i) {
        this.endContainerColor = i;
    }

    public void setEndElevation(float f) {
        this.endElevation = f;
    }

    public void setEndShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.endShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setEndView(@Nullable View view) {
        this.endView = view;
    }

    public void setEndViewId(@IdRes int i) {
        this.endViewId = i;
    }

    public void setFadeMode(int i) {
        this.fadeMode = i;
    }

    public void setFadeProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.fadeProgressThresholds = progressThresholds;
    }

    public void setFitMode(int i) {
        this.fitMode = i;
    }

    public void setHoldAtEndEnabled(boolean z) {
        this.holdAtEndEnabled = z;
    }

    @Override // android.transition.Transition
    public void setPathMotion(@Nullable PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.pathMotionCustom = true;
    }

    public void setScaleMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.scaleMaskProgressThresholds = progressThresholds;
    }

    public void setScaleProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.scaleProgressThresholds = progressThresholds;
    }

    public void setScrimColor(@ColorInt int i) {
        this.scrimColor = i;
    }

    public void setShapeMaskProgressThresholds(@Nullable ProgressThresholds progressThresholds) {
        this.shapeMaskProgressThresholds = progressThresholds;
    }

    public void setStartContainerColor(@ColorInt int i) {
        this.startContainerColor = i;
    }

    public void setStartElevation(float f) {
        this.startElevation = f;
    }

    public void setStartShapeAppearanceModel(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.startShapeAppearanceModel = shapeAppearanceModel;
    }

    public void setStartView(@Nullable View view) {
        this.startView = view;
    }

    public void setStartViewId(@IdRes int i) {
        this.startViewId = i;
    }

    public void setTransitionDirection(int i) {
        this.transitionDirection = i;
    }

    public MaterialContainerTransform(@NonNull Context context, boolean z) {
        this.drawDebugEnabled = false;
        this.holdAtEndEnabled = false;
        this.pathMotionCustom = false;
        this.appliedThemeValues = false;
        this.drawingViewId = R.id.content;
        this.startViewId = -1;
        this.endViewId = -1;
        this.containerColor = 0;
        this.startContainerColor = 0;
        this.endContainerColor = 0;
        this.scrimColor = 1375731712;
        this.transitionDirection = 0;
        this.fadeMode = 0;
        this.fitMode = 0;
        this.elevationShadowEnabled = Build.VERSION.SDK_INT >= 28;
        this.startElevation = -1.0f;
        this.endElevation = -1.0f;
        maybeApplyThemeValues(context, z);
        this.appliedThemeValues = true;
    }
}
