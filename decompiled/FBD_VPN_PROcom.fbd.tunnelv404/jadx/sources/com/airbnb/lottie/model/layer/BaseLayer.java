package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.core.graphics.PaintCompat;
import androidx.core.view.ViewCompat;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.DrawingContent;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.MaskKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.KeyPathElement;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.content.ShapeData;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseLayer implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElement {
    private static final int CLIP_SAVE_FLAG = 2;
    private static final int CLIP_TO_LAYER_SAVE_FLAG = 16;
    private static final int MATRIX_SAVE_FLAG = 1;
    private static final int SAVE_FLAGS = 19;
    private final List<BaseKeyframeAnimation<?, ?>> animations;

    @Nullable
    BlurMaskFilter blurMaskFilter;
    float blurMaskFilterRadius;
    protected final Matrix boundsMatrix;
    private final RectF canvasBounds;
    private final Paint clearPaint;
    private final String drawTraceName;
    private final Paint dstInPaint;
    private final Paint dstOutPaint;

    @Nullable
    private FloatKeyframeAnimation inOutAnimation;
    final Layer layerModel;
    final LottieDrawable lottieDrawable;

    @Nullable
    private MaskKeyframeAnimation mask;
    private final RectF maskBoundsRect;
    private final RectF matteBoundsRect;

    @Nullable
    private BaseLayer matteLayer;
    private final Paint mattePaint;
    private boolean outlineMasksAndMattes;

    @Nullable
    private Paint outlineMasksAndMattesPaint;

    @Nullable
    private BaseLayer parentLayer;
    private List<BaseLayer> parentLayers;
    private final RectF rect;

    @Nullable
    LPaint solidWhitePaint;
    private final RectF tempMaskBoundsRect;
    public final TransformKeyframeAnimation transform;
    private boolean visible;
    private final Path path = new Path();
    private final Matrix matrix = new Matrix();
    private final Matrix canvasMatrix = new Matrix();
    private final Paint contentPaint = new LPaint(1);

    /* renamed from: com.airbnb.lottie.model.layer.BaseLayer$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode;
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    public BaseLayer(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.dstInPaint = new LPaint(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.dstOutPaint = new LPaint(1, mode2);
        LPaint lPaint = new LPaint(1);
        this.mattePaint = lPaint;
        this.clearPaint = new LPaint(PorterDuff.Mode.CLEAR);
        this.rect = new RectF();
        this.canvasBounds = new RectF();
        this.maskBoundsRect = new RectF();
        this.matteBoundsRect = new RectF();
        this.tempMaskBoundsRect = new RectF();
        this.boundsMatrix = new Matrix();
        this.animations = new ArrayList();
        this.visible = true;
        this.blurMaskFilterRadius = 0.0f;
        this.lottieDrawable = lottieDrawable;
        this.layerModel = layer;
        StringBuilder sb = new StringBuilder();
        sb.append(layer.getName());
        this.drawTraceName = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6784145651909816557L, 3911348434446515651L}), sb);
        if (layer.getMatteType() == Layer.MatteType.INVERT) {
            lPaint.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            lPaint.setXfermode(new PorterDuffXfermode(mode));
        }
        TransformKeyframeAnimation createAnimation = layer.getTransform().createAnimation();
        this.transform = createAnimation;
        createAnimation.addListener(this);
        if (layer.getMasks() != null && !layer.getMasks().isEmpty()) {
            MaskKeyframeAnimation maskKeyframeAnimation = new MaskKeyframeAnimation(layer.getMasks());
            this.mask = maskKeyframeAnimation;
            Iterator<BaseKeyframeAnimation<ShapeData, Path>> it = maskKeyframeAnimation.getMaskAnimations().iterator();
            while (it.hasNext()) {
                it.next().addUpdateListener(this);
            }
            for (BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation : this.mask.getOpacityAnimations()) {
                addAnimation(baseKeyframeAnimation);
                baseKeyframeAnimation.addUpdateListener(this);
            }
        }
        setupInOutAnimations();
    }

    private void applyAddMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.contentPaint);
    }

    private void applyIntersectMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint);
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.contentPaint);
        canvas.restore();
    }

    private void applyInvertedAddMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.contentPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        this.contentPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyInvertedIntersectMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.dstOutPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyInvertedSubtractMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation, BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2) {
        Utils.saveLayerCompat(canvas, this.rect, this.dstOutPaint);
        canvas.drawRect(this.rect, this.contentPaint);
        this.dstOutPaint.setAlpha((int) (baseKeyframeAnimation2.getValue().intValue() * 2.55f));
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
        canvas.restore();
    }

    private void applyMasks(Canvas canvas, Matrix matrix) {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{6798233565727923803L, -1776877337840367166L, 6324050833170431171L}).toString());
        }
        Utils.saveLayerCompat(canvas, this.rect, this.dstInPaint, 19);
        if (Build.VERSION.SDK_INT < 28) {
            clearCanvas(canvas);
        }
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-4022085802581614621L, 6191515042011555918L, -434616447447901674L}).toString());
        }
        for (int i = 0; i < this.mask.getMasks().size(); i++) {
            Mask mask = this.mask.getMasks().get(i);
            BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation = this.mask.getMaskAnimations().get(i);
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation2 = this.mask.getOpacityAnimations().get(i);
            int i2 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[mask.getMaskMode().ordinal()];
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 == 4) {
                            if (mask.isInverted()) {
                                applyInvertedAddMask(canvas, matrix, baseKeyframeAnimation, baseKeyframeAnimation2);
                            } else {
                                applyAddMask(canvas, matrix, baseKeyframeAnimation, baseKeyframeAnimation2);
                            }
                        }
                    } else if (mask.isInverted()) {
                        applyInvertedIntersectMask(canvas, matrix, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        applyIntersectMask(canvas, matrix, baseKeyframeAnimation, baseKeyframeAnimation2);
                    }
                } else {
                    if (i == 0) {
                        this.contentPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.contentPaint.setAlpha(255);
                        canvas.drawRect(this.rect, this.contentPaint);
                    }
                    if (mask.isInverted()) {
                        applyInvertedSubtractMask(canvas, matrix, baseKeyframeAnimation, baseKeyframeAnimation2);
                    } else {
                        applySubtractMask(canvas, matrix, baseKeyframeAnimation);
                    }
                }
            } else if (areAllMasksNone()) {
                this.contentPaint.setAlpha(255);
                canvas.drawRect(this.rect, this.contentPaint);
            }
        }
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-6722609140538406309L, 8178286240200398258L, -8015179446336246311L, -4943399326589963196L}).toString());
        }
        canvas.restore();
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-5482000674527789471L, 7748783709965351051L, 6880207654927170663L, -1449126091857270517L}).toString());
        }
    }

    private void applySubtractMask(Canvas canvas, Matrix matrix, BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimation) {
        this.path.set(baseKeyframeAnimation.getValue());
        this.path.transform(matrix);
        canvas.drawPath(this.path, this.dstOutPaint);
    }

    private boolean areAllMasksNone() {
        if (this.mask.getMaskAnimations().isEmpty()) {
            return false;
        }
        for (int i = 0; i < this.mask.getMasks().size(); i++) {
            if (this.mask.getMasks().get(i).getMaskMode() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void buildParentLayerListIfNeeded() {
        if (this.parentLayers != null) {
            return;
        }
        if (this.parentLayer == null) {
            this.parentLayers = Collections.emptyList();
            return;
        }
        this.parentLayers = new ArrayList();
        for (BaseLayer baseLayer = this.parentLayer; baseLayer != null; baseLayer = baseLayer.parentLayer) {
            this.parentLayers.add(baseLayer);
        }
    }

    private void clearCanvas(Canvas canvas) {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-5210177712749411885L, 6649676172389745180L, 3620233748805882756L}).toString());
        }
        RectF rectF = this.rect;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.clearPaint);
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-7175198740907732128L, 2368467054745465167L, 1162747231797172888L}).toString());
        }
    }

    @Nullable
    public static BaseLayer forModel(CompositionLayer compositionLayer, Layer layer, LottieDrawable lottieDrawable, LottieComposition lottieComposition) {
        switch (AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$layer$Layer$LayerType[layer.getLayerType().ordinal()]) {
            case 1:
                return new ShapeLayer(lottieDrawable, layer, compositionLayer, lottieComposition);
            case 2:
                return new CompositionLayer(lottieDrawable, layer, lottieComposition.getPrecomps(layer.getRefId()), lottieComposition);
            case 3:
                return new SolidLayer(lottieDrawable, layer);
            case 4:
                return new ImageLayer(lottieDrawable, layer);
            case 5:
                return new NullLayer(lottieDrawable, layer);
            case 6:
                return new TextLayer(lottieDrawable, layer);
            default:
                Logger.warning(new ObfuscatedString(new long[]{-4104517737178588328L, -1332543008027501890L, 4742550351862159014L, -2474540430506524373L}).toString() + layer.getLayerType());
                return null;
        }
    }

    private void intersectBoundsWithMask(RectF rectF, Matrix matrix) {
        this.maskBoundsRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (!hasMasksOnThisLayer()) {
            return;
        }
        int size = this.mask.getMasks().size();
        for (int i = 0; i < size; i++) {
            Mask mask = this.mask.getMasks().get(i);
            Path value = this.mask.getMaskAnimations().get(i).getValue();
            if (value != null) {
                this.path.set(value);
                this.path.transform(matrix);
                int i2 = AnonymousClass1.$SwitchMap$com$airbnb$lottie$model$content$Mask$MaskMode[mask.getMaskMode().ordinal()];
                if (i2 != 1 && i2 != 2) {
                    if ((i2 == 3 || i2 == 4) && mask.isInverted()) {
                        return;
                    }
                    this.path.computeBounds(this.tempMaskBoundsRect, false);
                    if (i == 0) {
                        this.maskBoundsRect.set(this.tempMaskBoundsRect);
                    } else {
                        RectF rectF2 = this.maskBoundsRect;
                        rectF2.set(Math.min(rectF2.left, this.tempMaskBoundsRect.left), Math.min(this.maskBoundsRect.top, this.tempMaskBoundsRect.top), Math.max(this.maskBoundsRect.right, this.tempMaskBoundsRect.right), Math.max(this.maskBoundsRect.bottom, this.tempMaskBoundsRect.bottom));
                    }
                } else {
                    return;
                }
            }
        }
        if (!rectF.intersect(this.maskBoundsRect)) {
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void intersectBoundsWithMatte(RectF rectF, Matrix matrix) {
        if (!hasMatteOnThisLayer() || this.layerModel.getMatteType() == Layer.MatteType.INVERT) {
            return;
        }
        this.matteBoundsRect.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.matteLayer.getBounds(this.matteBoundsRect, matrix, true);
        if (!rectF.intersect(this.matteBoundsRect)) {
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void invalidateSelf() {
        this.lottieDrawable.invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupInOutAnimations$0() {
        boolean z;
        if (this.inOutAnimation.getFloatValue() == 1.0f) {
            z = true;
        } else {
            z = false;
        }
        setVisible(z);
    }

    private void recordRenderTime(float f) {
        this.lottieDrawable.getComposition().getPerformanceTracker().recordRenderTime(this.layerModel.getName(), f);
    }

    private void setVisible(boolean z) {
        if (z != this.visible) {
            this.visible = z;
            invalidateSelf();
        }
    }

    private void setupInOutAnimations() {
        boolean z = true;
        if (!this.layerModel.getInOutKeyframes().isEmpty()) {
            FloatKeyframeAnimation floatKeyframeAnimation = new FloatKeyframeAnimation(this.layerModel.getInOutKeyframes());
            this.inOutAnimation = floatKeyframeAnimation;
            floatKeyframeAnimation.setIsDiscrete();
            this.inOutAnimation.addUpdateListener(new BaseKeyframeAnimation.AnimationListener() { // from class: 돠땵땰듰돸뒋딌뒛땐땭됩돷두딨딠둠뒈딞뒼듽둔땃둬뒉땯됫돤듻땦딤듽디땥땩딞딅뒤땀딠땔땄딻딅듔득듌땥됨딸땍딄둑뒾둬땠둑땃돨딃됨딝딟땃땡뎸된돝뎻땐됩딟듻땨딞돨됫뒙땮딅땲뒼둬뒨딁뒉돛땁돰듔뒾땜돸딝뎡둥땩뒀듨딝듔딠땦돨땄땹돷딃돴뒛둔뎹딀땄땬땲둠뒨땻돸될돝땐둣뒹돼딎딽뒻뒀돼
                @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
                public final void onValueChanged() {
                    BaseLayer.this.lambda$setupInOutAnimations$0();
                }
            });
            if (this.inOutAnimation.getValue().floatValue() != 1.0f) {
                z = false;
            }
            setVisible(z);
            addAnimation(this.inOutAnimation);
            return;
        }
        setVisible(true);
    }

    public void addAnimation(@Nullable BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        if (baseKeyframeAnimation == null) {
            return;
        }
        this.animations.add(baseKeyframeAnimation);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    public <T> void addValueCallback(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        this.transform.applyValueCallback(t, lottieValueCallback);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix matrix, int i, @Nullable DropShadow dropShadow) {
        int i2;
        Paint paint;
        Integer value;
        L.beginSection(this.drawTraceName);
        if (this.visible && !this.layerModel.isHidden()) {
            buildParentLayerListIfNeeded();
            if (L.isTraceEnabled()) {
                L.beginSection(new ObfuscatedString(new long[]{-1579282920486042283L, -1397547802793290740L, 8499314707023706917L, 8970701757361667149L}).toString());
            }
            this.matrix.reset();
            this.matrix.set(matrix);
            for (int size = this.parentLayers.size() - 1; size >= 0; size--) {
                this.matrix.preConcat(this.parentLayers.get(size).transform.getMatrix());
            }
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-8627114689451635771L, 5272374009056209923L, -360088159643963663L, -3909826834044900838L}).toString());
            }
            BaseKeyframeAnimation<?, Integer> opacity = this.transform.getOpacity();
            if (opacity != null && (value = opacity.getValue()) != null) {
                i2 = value.intValue();
            } else {
                i2 = 100;
            }
            int i3 = (int) ((((i / 255.0f) * i2) / 100.0f) * 255.0f);
            if (!hasMatteOnThisLayer() && !hasMasksOnThisLayer() && getBlendMode() == LBlendMode.NORMAL) {
                this.matrix.preConcat(this.transform.getMatrix());
                if (L.isTraceEnabled()) {
                    L.beginSection(new ObfuscatedString(new long[]{-338896412374839422L, 2860207153538177300L, 1987332392985620740L}).toString());
                }
                drawLayer(canvas, this.matrix, i3, dropShadow);
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{7381145126537046445L, 3867538328023999884L, -9076285279112934729L}).toString());
                }
                recordRenderTime(L.endSection(this.drawTraceName));
                return;
            }
            if (L.isTraceEnabled()) {
                L.beginSection(new ObfuscatedString(new long[]{575097102398904732L, 6178374252236435734L, 7651979660485383607L, 7775648546346020118L}).toString());
            }
            getBounds(this.rect, this.matrix, false);
            intersectBoundsWithMatte(this.rect, matrix);
            this.matrix.preConcat(this.transform.getMatrix());
            intersectBoundsWithMask(this.rect, this.matrix);
            this.canvasBounds.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            canvas.getMatrix(this.canvasMatrix);
            if (!this.canvasMatrix.isIdentity()) {
                Matrix matrix2 = this.canvasMatrix;
                matrix2.invert(matrix2);
                this.canvasMatrix.mapRect(this.canvasBounds);
            }
            if (!this.rect.intersect(this.canvasBounds)) {
                this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-1066348963169304186L, 4232896555219356980L, -8432677084181118455L, 8040754180940945277L}).toString());
            }
            if (this.rect.width() >= 1.0f && this.rect.height() >= 1.0f) {
                if (L.isTraceEnabled()) {
                    L.beginSection(new ObfuscatedString(new long[]{2869120671961143769L, -4145626008444953510L, -4871514886641183684L}).toString());
                }
                this.contentPaint.setAlpha(255);
                PaintCompat.setBlendMode(this.contentPaint, getBlendMode().toNativeBlendMode());
                Utils.saveLayerCompat(canvas, this.rect, this.contentPaint);
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{-2231806610689301100L, -9161585828827832107L, -3546837354773806134L}).toString());
                }
                if (getBlendMode() != LBlendMode.MULTIPLY) {
                    clearCanvas(canvas);
                } else {
                    if (this.solidWhitePaint == null) {
                        LPaint lPaint = new LPaint();
                        this.solidWhitePaint = lPaint;
                        lPaint.setColor(-1);
                    }
                    RectF rectF = this.rect;
                    canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.solidWhitePaint);
                }
                if (L.isTraceEnabled()) {
                    L.beginSection(new ObfuscatedString(new long[]{1100155376313253463L, 5723744213497566099L, -1795295605524953754L}).toString());
                }
                drawLayer(canvas, this.matrix, i3, dropShadow);
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{-7885835687118595275L, 3568026326959502872L, 3712831402727029583L}).toString());
                }
                if (hasMasksOnThisLayer()) {
                    applyMasks(canvas, this.matrix);
                }
                if (hasMatteOnThisLayer()) {
                    if (L.isTraceEnabled()) {
                        L.beginSection(new ObfuscatedString(new long[]{-620658979699396805L, 3569248558410663295L, 8999533276271781469L}).toString());
                        L.beginSection(new ObfuscatedString(new long[]{7524114224424166849L, -6982761655107566906L, 5214668439004414544L}).toString());
                    }
                    Utils.saveLayerCompat(canvas, this.rect, this.mattePaint, 19);
                    if (L.isTraceEnabled()) {
                        L.endSection(new ObfuscatedString(new long[]{7787414260875693386L, 4636900215923680471L, 8666476868659333491L}).toString());
                    }
                    clearCanvas(canvas);
                    this.matteLayer.draw(canvas, matrix, i3, null);
                    if (L.isTraceEnabled()) {
                        L.beginSection(new ObfuscatedString(new long[]{4679752082846228461L, -5004604441337282993L, 5384455019475565475L, -5364057282351954000L}).toString());
                    }
                    canvas.restore();
                    if (L.isTraceEnabled()) {
                        L.endSection(new ObfuscatedString(new long[]{773426696997512012L, 1486794843132798473L, 123163041981899619L, 8193028880244904297L}).toString());
                        L.endSection(new ObfuscatedString(new long[]{317411472320287391L, -2674822750969117675L, -5889726377566848629L}).toString());
                    }
                }
                if (L.isTraceEnabled()) {
                    L.beginSection(new ObfuscatedString(new long[]{7500601121929048374L, -847871989267115559L, -5059464297814618076L, 8086019224459357931L}).toString());
                }
                canvas.restore();
                if (L.isTraceEnabled()) {
                    L.endSection(new ObfuscatedString(new long[]{-446439660896937865L, -9199894532754980147L, 998993487660858952L, -1554474185526047145L}).toString());
                }
            }
            if (this.outlineMasksAndMattes && (paint = this.outlineMasksAndMattesPaint) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.outlineMasksAndMattesPaint.setColor(-251901);
                this.outlineMasksAndMattesPaint.setStrokeWidth(4.0f);
                canvas.drawRect(this.rect, this.outlineMasksAndMattesPaint);
                this.outlineMasksAndMattesPaint.setStyle(Paint.Style.FILL);
                this.outlineMasksAndMattesPaint.setColor(1357638635);
                canvas.drawRect(this.rect, this.outlineMasksAndMattesPaint);
            }
            recordRenderTime(L.endSection(this.drawTraceName));
            return;
        }
        L.endSection(this.drawTraceName);
    }

    public abstract void drawLayer(Canvas canvas, Matrix matrix, int i, @Nullable DropShadow dropShadow);

    public LBlendMode getBlendMode() {
        return this.layerModel.getBlendMode();
    }

    @Nullable
    public BlurEffect getBlurEffect() {
        return this.layerModel.getBlurEffect();
    }

    public BlurMaskFilter getBlurMaskFilter(float f) {
        if (this.blurMaskFilterRadius == f) {
            return this.blurMaskFilter;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.blurMaskFilter = blurMaskFilter;
        this.blurMaskFilterRadius = f;
        return blurMaskFilter;
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    @CallSuper
    public void getBounds(RectF rectF, Matrix matrix, boolean z) {
        this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
        buildParentLayerListIfNeeded();
        this.boundsMatrix.set(matrix);
        if (z) {
            List<BaseLayer> list = this.parentLayers;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.boundsMatrix.preConcat(this.parentLayers.get(size).transform.getMatrix());
                }
            } else {
                BaseLayer baseLayer = this.parentLayer;
                if (baseLayer != null) {
                    this.boundsMatrix.preConcat(baseLayer.transform.getMatrix());
                }
            }
        }
        this.boundsMatrix.preConcat(this.transform.getMatrix());
    }

    @Nullable
    public DropShadowEffect getDropShadowEffect() {
        return this.layerModel.getDropShadowEffect();
    }

    public Layer getLayerModel() {
        return this.layerModel;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.layerModel.getName();
    }

    public boolean hasMasksOnThisLayer() {
        MaskKeyframeAnimation maskKeyframeAnimation = this.mask;
        if (maskKeyframeAnimation != null && !maskKeyframeAnimation.getMaskAnimations().isEmpty()) {
            return true;
        }
        return false;
    }

    public boolean hasMatteOnThisLayer() {
        if (this.matteLayer != null) {
            return true;
        }
        return false;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidateSelf();
    }

    public void removeAnimation(BaseKeyframeAnimation<?, ?> baseKeyframeAnimation) {
        this.animations.remove(baseKeyframeAnimation);
    }

    public void resolveChildKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        BaseLayer baseLayer = this.matteLayer;
        if (baseLayer != null) {
            KeyPath addKey = keyPath2.addKey(baseLayer.getName());
            if (keyPath.fullyResolvesTo(this.matteLayer.getName(), i)) {
                list.add(addKey.resolve(this.matteLayer));
            }
            if (keyPath.matches(this.matteLayer.getName(), i) && keyPath.propagateToChildren(getName(), i)) {
                this.matteLayer.resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(this.matteLayer.getName(), i) + i, list, addKey);
            }
        }
        if (!keyPath.matches(getName(), i)) {
            return;
        }
        if (!new ObfuscatedString(new long[]{-4715250658672349068L, -2956417767802927597L, -5006731264179409284L}).toString().equals(getName())) {
            keyPath2 = keyPath2.addKey(getName());
            if (keyPath.fullyResolvesTo(getName(), i)) {
                list.add(keyPath2.resolve(this));
            }
        }
        if (keyPath.propagateToChildren(getName(), i)) {
            resolveChildKeyPath(keyPath, keyPath.incrementDepthBy(getName(), i) + i, list, keyPath2);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public void setContents(List<Content> list, List<Content> list2) {
    }

    public void setMatteLayer(@Nullable BaseLayer baseLayer) {
        this.matteLayer = baseLayer;
    }

    public void setOutlineMasksAndMattes(boolean z) {
        if (z && this.outlineMasksAndMattesPaint == null) {
            this.outlineMasksAndMattesPaint = new LPaint();
        }
        this.outlineMasksAndMattes = z;
    }

    public void setParentLayer(@Nullable BaseLayer baseLayer) {
        this.parentLayer = baseLayer;
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-8679776665256967899L, 4214600052530362811L, 8530538669648007939L, 8365465560970604023L}).toString());
            L.beginSection(new ObfuscatedString(new long[]{-4448970940709342841L, 1325773823710412055L, -6809604948764974569L, -2645421927594853803L, 4518680612543491104L}).toString());
        }
        this.transform.setProgress(f);
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{6494153174617282513L, -5205430161410688542L, -3546714783065464909L, -8383305559953084412L, -3743024736220626345L}).toString());
        }
        if (this.mask != null) {
            if (L.isTraceEnabled()) {
                L.beginSection(new ObfuscatedString(new long[]{-917313355879903809L, -1386054727357563840L, 3129254420999573658L, -2363545710067770948L, -3039969214049636241L}).toString());
            }
            for (int i = 0; i < this.mask.getMaskAnimations().size(); i++) {
                this.mask.getMaskAnimations().get(i).setProgress(f);
            }
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-873567439881726127L, -6617931401143808298L, 5799207469907844159L, 3109980454663856315L, 6173125573811851750L}).toString());
            }
        }
        if (this.inOutAnimation != null) {
            if (L.isTraceEnabled()) {
                L.beginSection(new ObfuscatedString(new long[]{3847125021171935665L, -8190817353285823111L, 3414974709782586534L, 3099184110682565147L, 5029539024131904392L}).toString());
            }
            this.inOutAnimation.setProgress(f);
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-6518169630394198719L, -7471552330958737134L, 2589404736507226925L, -6159416301012295414L, -5113425961333263480L}).toString());
            }
        }
        if (this.matteLayer != null) {
            if (L.isTraceEnabled()) {
                L.beginSection(new ObfuscatedString(new long[]{2915674521144569585L, -2986624026800290971L, -7429290894326184973L, 8627878592864587273L, -3010029399652707093L}).toString());
            }
            this.matteLayer.setProgress(f);
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-8558203471397480012L, 4089360394634659528L, 1907613580549691670L, 5852473767304877809L, -1424416012802845794L}).toString());
            }
        }
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-2612688591051432560L, 6122532464496448393L, 8243460220476560494L, 1580607676624224865L, -2424153620963294669L, 7113030607541052887L}).toString() + this.animations.size());
        }
        for (int i2 = 0; i2 < this.animations.size(); i2++) {
            this.animations.get(i2).setProgress(f);
        }
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{6186505002948554110L, -4835545252041292925L, -1061422373042105257L, -5085209372731686032L, -6441047014348863403L, -5913447977227651824L}).toString() + this.animations.size());
            L.endSection(new ObfuscatedString(new long[]{8974510930047897101L, 3163394473713449543L, -3069267940135660870L, 3469791424634624522L}).toString());
        }
    }
}
