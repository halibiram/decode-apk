package com.airbnb.lottie.utils;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.PaintCompat;
import com.airbnb.lottie.animation.LPaint;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0927x49879c9;

/* loaded from: classes.dex */
public class OffscreenLayer {
    private static final Matrix IDENTITY_MATRIX = new Matrix();

    @Nullable
    private Bitmap bitmap;

    @Nullable
    private Canvas bitmapCanvas;

    @Nullable
    private Rect bitmapSrcRect;

    @Nullable
    private LPaint clearPaint;

    @Nullable
    private Paint composePaint;
    private RenderStrategy currentStrategy;

    @Nullable
    private Rect intRectIncludingShadow;

    @Nullable
    private DropShadow lastRenderNodeShadow;
    private float lastShadowBlurRadius = 0.0f;

    @Nullable
    private ComposeOp op;

    @Nullable
    private Canvas parentCanvas;

    @Nullable
    Matrix parentCanvasMatrix;

    @Nullable
    float[] preExistingTransform;

    @Nullable
    private RectF rectIncludingShadow;

    @Nullable
    private RenderNode renderNode;

    @Nullable
    private RectF scaledBounds;

    @Nullable
    private RectF scaledRectIncludingShadow;

    @Nullable
    private Bitmap shadowBitmap;

    @Nullable
    private Canvas shadowBitmapCanvas;

    @Nullable
    private Rect shadowBitmapSrcRect;

    @Nullable
    private BlurMaskFilter shadowBlurFilter;

    @Nullable
    private Bitmap shadowMaskBitmap;

    @Nullable
    private Canvas shadowMaskBitmapCanvas;

    @Nullable
    private LPaint shadowPaint;

    @Nullable
    private RenderNode shadowRenderNode;

    @Nullable
    private RectF targetRect;

    @Nullable
    private RectF tmpRect;

    /* loaded from: classes.dex */
    public static class ComposeOp {
        public int alpha;

        @Nullable
        public BlendModeCompat blendMode;

        @Nullable
        public ColorFilter colorFilter;

        @Nullable
        public DropShadow shadow;

        public ComposeOp() {
            reset();
        }

        public boolean hasBlendMode() {
            BlendModeCompat blendModeCompat = this.blendMode;
            if (blendModeCompat != null && blendModeCompat != BlendModeCompat.SRC_OVER) {
                return true;
            }
            return false;
        }

        public boolean hasColorFilter() {
            if (this.colorFilter != null) {
                return true;
            }
            return false;
        }

        public boolean hasShadow() {
            if (this.shadow != null) {
                return true;
            }
            return false;
        }

        public boolean isNoop() {
            if (!isTranslucent() && !hasBlendMode() && !hasShadow() && !hasColorFilter()) {
                return true;
            }
            return false;
        }

        public boolean isTranslucent() {
            if (this.alpha < 255) {
                return true;
            }
            return false;
        }

        public void reset() {
            this.alpha = 255;
            this.blendMode = null;
            this.colorFilter = null;
            this.shadow = null;
        }
    }

    /* loaded from: classes.dex */
    public enum RenderStrategy {
        DIRECT,
        SAVE_LAYER,
        BITMAP,
        RENDER_NODE
    }

    private Bitmap allocateBitmap(RectF rectF, Bitmap.Config config2) {
        return Bitmap.createBitmap((int) Math.ceil(rectF.width() * 1.05d), (int) Math.ceil(rectF.height() * 1.05d), config2);
    }

    private RectF calculateRectIncludingShadow(RectF rectF, DropShadow dropShadow) {
        if (this.rectIncludingShadow == null) {
            this.rectIncludingShadow = new RectF();
        }
        if (this.tmpRect == null) {
            this.tmpRect = new RectF();
        }
        this.rectIncludingShadow.set(rectF);
        this.rectIncludingShadow.offsetTo(dropShadow.getDx() + rectF.left, dropShadow.getDy() + rectF.top);
        this.rectIncludingShadow.inset(-dropShadow.getRadius(), -dropShadow.getRadius());
        this.tmpRect.set(rectF);
        this.rectIncludingShadow.union(this.tmpRect);
        return this.rectIncludingShadow;
    }

    private RenderStrategy chooseRenderStrategy(Canvas canvas, ComposeOp composeOp) {
        if (composeOp.isNoop()) {
            return RenderStrategy.DIRECT;
        }
        if (!composeOp.hasShadow()) {
            return RenderStrategy.SAVE_LAYER;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29 && canvas.isHardwareAccelerated()) {
            if (i <= 31) {
                return RenderStrategy.BITMAP;
            }
            return RenderStrategy.RENDER_NODE;
        }
        return RenderStrategy.BITMAP;
    }

    private void deallocateBitmap(Bitmap bitmap) {
        bitmap.recycle();
    }

    private boolean needNewBitmap(@Nullable Bitmap bitmap, RectF rectF) {
        if (bitmap == null || rectF.width() >= bitmap.getWidth() || rectF.height() >= bitmap.getHeight() || rectF.width() < bitmap.getWidth() * 0.75f || rectF.height() < bitmap.getHeight() * 0.75f) {
            return true;
        }
        return false;
    }

    private void renderBitmapShadow(Canvas canvas, DropShadow dropShadow) {
        float f;
        LPaint lPaint;
        RectF rectF = this.targetRect;
        if (rectF != null && this.bitmap != null) {
            RectF calculateRectIncludingShadow = calculateRectIncludingShadow(rectF, dropShadow);
            if (this.intRectIncludingShadow == null) {
                this.intRectIncludingShadow = new Rect();
            }
            this.intRectIncludingShadow.set((int) Math.floor(calculateRectIncludingShadow.left), (int) Math.floor(calculateRectIncludingShadow.top), (int) Math.ceil(calculateRectIncludingShadow.right), (int) Math.ceil(calculateRectIncludingShadow.bottom));
            float[] fArr = this.preExistingTransform;
            float f2 = 1.0f;
            if (fArr != null) {
                f = fArr[0];
            } else {
                f = 1.0f;
            }
            if (fArr != null) {
                f2 = fArr[4];
            }
            if (this.scaledRectIncludingShadow == null) {
                this.scaledRectIncludingShadow = new RectF();
            }
            this.scaledRectIncludingShadow.set(calculateRectIncludingShadow.left * f, calculateRectIncludingShadow.top * f2, calculateRectIncludingShadow.right * f, calculateRectIncludingShadow.bottom * f2);
            if (this.shadowBitmapSrcRect == null) {
                this.shadowBitmapSrcRect = new Rect();
            }
            this.shadowBitmapSrcRect.set(0, 0, Math.round(this.scaledRectIncludingShadow.width()), Math.round(this.scaledRectIncludingShadow.height()));
            if (needNewBitmap(this.shadowBitmap, this.scaledRectIncludingShadow)) {
                Bitmap bitmap = this.shadowBitmap;
                if (bitmap != null) {
                    deallocateBitmap(bitmap);
                }
                Bitmap bitmap2 = this.shadowMaskBitmap;
                if (bitmap2 != null) {
                    deallocateBitmap(bitmap2);
                }
                this.shadowBitmap = allocateBitmap(this.scaledRectIncludingShadow, Bitmap.Config.ARGB_8888);
                this.shadowMaskBitmap = allocateBitmap(this.scaledRectIncludingShadow, Bitmap.Config.ALPHA_8);
                this.shadowBitmapCanvas = new Canvas(this.shadowBitmap);
                this.shadowMaskBitmapCanvas = new Canvas(this.shadowMaskBitmap);
            } else {
                Canvas canvas2 = this.shadowBitmapCanvas;
                if (canvas2 != null && this.shadowMaskBitmapCanvas != null && (lPaint = this.clearPaint) != null) {
                    canvas2.drawRect(this.shadowBitmapSrcRect, lPaint);
                    this.shadowMaskBitmapCanvas.drawRect(this.shadowBitmapSrcRect, this.clearPaint);
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{500200845102703078L, -6585274976124554217L, 5202099764034095705L, 9197743980479387712L, -8651342455438939522L, -7899191189987949295L, -1815796789519279377L, -332709988583460898L, -4535557606164072148L, -3731360693016527115L, 3869256756440234975L}).toString());
                }
            }
            if (this.shadowMaskBitmap != null) {
                if (this.shadowPaint == null) {
                    this.shadowPaint = new LPaint(1);
                }
                RectF rectF2 = this.targetRect;
                this.shadowMaskBitmapCanvas.drawBitmap(this.bitmap, Math.round((rectF2.left - calculateRectIncludingShadow.left) * f), Math.round((rectF2.top - calculateRectIncludingShadow.top) * f2), (Paint) null);
                if (this.shadowBlurFilter == null || this.lastShadowBlurRadius != dropShadow.getRadius()) {
                    float radius = ((f + f2) * dropShadow.getRadius()) / 2.0f;
                    if (radius > 0.0f) {
                        this.shadowBlurFilter = new BlurMaskFilter(radius, BlurMaskFilter.Blur.NORMAL);
                    } else {
                        this.shadowBlurFilter = null;
                    }
                    this.lastShadowBlurRadius = dropShadow.getRadius();
                }
                this.shadowPaint.setColor(dropShadow.getColor());
                if (dropShadow.getRadius() > 0.0f) {
                    this.shadowPaint.setMaskFilter(this.shadowBlurFilter);
                } else {
                    this.shadowPaint.setMaskFilter(null);
                }
                this.shadowPaint.setFilterBitmap(true);
                this.shadowBitmapCanvas.drawBitmap(this.shadowMaskBitmap, Math.round(dropShadow.getDx() * f), Math.round(dropShadow.getDy() * f2), this.shadowPaint);
                canvas.drawBitmap(this.shadowBitmap, this.shadowBitmapSrcRect, this.intRectIncludingShadow, this.composePaint);
                return;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-5881070857875378630L, -9136839966210859460L, 2418402765644230504L, -5445484467662018759L, -6245435999767613331L, 330103332146837166L, -4382551742086517262L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{7358474361015549668L, -2599935351977696190L, 3018692624225692670L, 8412329274143416618L, 858389990647762965L, 3029202532917553574L, 8421824200878062252L, 5798390126243645822L}).toString());
    }

    private void renderHardwareShadow(Canvas canvas, DropShadow dropShadow) {
        float f;
        RenderEffect createColorFilterEffect;
        RecordingCanvas beginRecording;
        if (this.renderNode != null && this.shadowRenderNode != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                float[] fArr = this.preExistingTransform;
                float f2 = 1.0f;
                if (fArr != null) {
                    f = fArr[0];
                } else {
                    f = 1.0f;
                }
                if (fArr != null) {
                    f2 = fArr[4];
                }
                DropShadow dropShadow2 = this.lastRenderNodeShadow;
                if (dropShadow2 == null || !dropShadow.sameAs(dropShadow2)) {
                    createColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(dropShadow.getColor(), PorterDuff.Mode.SRC_IN));
                    if (dropShadow.getRadius() > 0.0f) {
                        float radius = ((f + f2) * dropShadow.getRadius()) / 2.0f;
                        createColorFilterEffect = RenderEffect.createBlurEffect(radius, radius, createColorFilterEffect, Shader.TileMode.CLAMP);
                    }
                    this.shadowRenderNode.setRenderEffect(createColorFilterEffect);
                    this.lastRenderNodeShadow = dropShadow;
                }
                RectF calculateRectIncludingShadow = calculateRectIncludingShadow(this.targetRect, dropShadow);
                RectF rectF = new RectF(calculateRectIncludingShadow.left * f, calculateRectIncludingShadow.top * f2, calculateRectIncludingShadow.right * f, calculateRectIncludingShadow.bottom * f2);
                this.shadowRenderNode.setPosition(0, 0, (int) rectF.width(), (int) rectF.height());
                beginRecording = this.shadowRenderNode.beginRecording((int) rectF.width(), (int) rectF.height());
                beginRecording.translate((dropShadow.getDx() * f) + (-rectF.left), (dropShadow.getDy() * f2) + (-rectF.top));
                beginRecording.drawRenderNode(this.renderNode);
                this.shadowRenderNode.endRecording();
                canvas.save();
                canvas.translate(rectF.left, rectF.top);
                canvas.drawRenderNode(this.shadowRenderNode);
                canvas.restore();
                return;
            }
            throw new RuntimeException(new ObfuscatedString(new long[]{-641183772012503227L, -3875774424674134316L, -7031579599518414628L, 5749887132549555356L, 8514680211089691822L, -1028597563229702291L, 6746680000639649495L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{357507287281988532L, 3202330135062898708L, 5565221842842761181L, -2575417445605150131L, 7550129372868104784L, -4373682381025256415L, -2846731109989929459L, 7447294556130475387L, 6843668082307073131L}).toString());
    }

    public void finish() {
        if (this.parentCanvas != null && this.op != null && this.preExistingTransform != null && this.targetRect != null) {
            int ordinal = this.currentStrategy.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            if (this.renderNode != null) {
                                if (Build.VERSION.SDK_INT >= 29) {
                                    this.parentCanvas.save();
                                    Canvas canvas = this.parentCanvas;
                                    float[] fArr = this.preExistingTransform;
                                    canvas.scale(1.0f / fArr[0], 1.0f / fArr[4]);
                                    this.renderNode.endRecording();
                                    if (this.op.hasShadow()) {
                                        renderHardwareShadow(this.parentCanvas, this.op.shadow);
                                    }
                                    this.parentCanvas.drawRenderNode(this.renderNode);
                                    this.parentCanvas.restore();
                                } else {
                                    throw new IllegalStateException(new ObfuscatedString(new long[]{-8453256794742860119L, 2651849189178150172L, -4720469766969600935L, 4474470152539693877L, -3654842858786650981L, 821063433593076375L, 8631996998305969048L, -4428838072759991903L, 924719373399580217L}).toString());
                                }
                            } else {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{-45148772792827961L, 1232994324101992646L, -1935956660275719640L, -2395092168460701448L, -1769983323898417984L, 1207704960731619754L, -5868172720968985024L, -86752261757888614L, 4945309061507643910L, 765968372716720900L}).toString());
                            }
                        }
                    } else if (this.bitmap != null) {
                        if (this.op.hasShadow()) {
                            renderBitmapShadow(this.parentCanvas, this.op.shadow);
                        }
                        if (this.bitmapSrcRect == null) {
                            this.bitmapSrcRect = new Rect();
                        }
                        this.bitmapSrcRect.set(0, 0, (int) (this.targetRect.width() * this.preExistingTransform[0]), (int) (this.targetRect.height() * this.preExistingTransform[4]));
                        this.parentCanvas.drawBitmap(this.bitmap, this.bitmapSrcRect, this.targetRect, this.composePaint);
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{3685570972708040430L, -3569501516303936784L, -4581103765080303314L, 3429735036257836101L, 8592543388671289333L, -5082923019820122392L, 2694612953069816971L, -8360741111804307771L, -6663417660128958028L}).toString());
                    }
                } else {
                    this.parentCanvas.restore();
                }
            } else {
                this.parentCanvas.restore();
            }
            this.parentCanvas = null;
            return;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2528920871801033062L, 4667469587151346617L, 6565941888682349816L, 5444085461019675048L, 1426884320228539987L, 4883800601585888333L, -7305843714494010734L, -1316834671266170759L}).toString());
    }

    public Canvas start(Canvas canvas, RectF rectF, ComposeOp composeOp) {
        RecordingCanvas beginRecording;
        if (this.parentCanvas == null) {
            if (this.preExistingTransform == null) {
                this.preExistingTransform = new float[9];
            }
            if (this.parentCanvasMatrix == null) {
                this.parentCanvasMatrix = new Matrix();
            }
            canvas.getMatrix(this.parentCanvasMatrix);
            this.parentCanvasMatrix.getValues(this.preExistingTransform);
            float[] fArr = this.preExistingTransform;
            float f = fArr[0];
            float f2 = fArr[4];
            if (this.scaledBounds == null) {
                this.scaledBounds = new RectF();
            }
            this.scaledBounds.set(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
            this.parentCanvas = canvas;
            this.op = composeOp;
            this.currentStrategy = chooseRenderStrategy(canvas, composeOp);
            if (this.targetRect == null) {
                this.targetRect = new RectF();
            }
            this.targetRect.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            if (this.composePaint == null) {
                this.composePaint = new LPaint();
            }
            this.composePaint.reset();
            int ordinal = this.currentStrategy.ordinal();
            if (ordinal != 0) {
                if (ordinal != 1) {
                    if (ordinal != 2) {
                        if (ordinal == 3) {
                            if (Build.VERSION.SDK_INT >= 29) {
                                if (this.renderNode == null) {
                                    AbstractC0927x49879c9.m3483x3db60231();
                                    this.renderNode = AbstractC0927x49879c9.m3482x95f25580(new ObfuscatedString(new long[]{3148492363316571986L, -7718668216107671808L, -5666364087462513083L, 2349539142073254916L}).toString());
                                }
                                if (composeOp.hasShadow() && this.shadowRenderNode == null) {
                                    AbstractC0927x49879c9.m3483x3db60231();
                                    this.shadowRenderNode = AbstractC0927x49879c9.m3482x95f25580(new ObfuscatedString(new long[]{-5792409428802338998L, 3301848966379241356L, 3785657233849403473L, -800682679581931888L}).toString());
                                    this.lastRenderNodeShadow = null;
                                }
                                if (composeOp.hasBlendMode() || composeOp.hasColorFilter()) {
                                    if (this.composePaint == null) {
                                        this.composePaint = new LPaint();
                                    }
                                    this.composePaint.reset();
                                    PaintCompat.setBlendMode(this.composePaint, composeOp.blendMode);
                                    this.composePaint.setColorFilter(composeOp.colorFilter);
                                    this.renderNode.setUseCompositingLayer(true, this.composePaint);
                                    if (composeOp.hasShadow()) {
                                        RenderNode renderNode = this.shadowRenderNode;
                                        if (renderNode != null) {
                                            renderNode.setUseCompositingLayer(true, this.composePaint);
                                        } else {
                                            throw new IllegalStateException(new ObfuscatedString(new long[]{-2304555411918605482L, 6630280602653350381L, 3677048248563559650L, -5535637319065894584L, 9204698643149089906L, 1648706858281494076L, 118725688553352370L, 3092045567779161834L}).toString());
                                        }
                                    }
                                }
                                this.renderNode.setAlpha(composeOp.alpha / 255.0f);
                                if (composeOp.hasShadow()) {
                                    RenderNode renderNode2 = this.shadowRenderNode;
                                    if (renderNode2 != null) {
                                        renderNode2.setAlpha(composeOp.alpha / 255.0f);
                                    } else {
                                        throw new IllegalStateException(new ObfuscatedString(new long[]{-1797358754913586898L, -5177215034044499018L, -4426104938578258197L, 6088703876533417282L, -7410733394988652596L, -2903722136003606478L, 3819772632867673512L, -6427273110307279998L}).toString());
                                    }
                                }
                                this.renderNode.setHasOverlappingRendering(true);
                                RenderNode renderNode3 = this.renderNode;
                                RectF rectF2 = this.scaledBounds;
                                renderNode3.setPosition((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                                beginRecording = this.renderNode.beginRecording((int) this.scaledBounds.width(), (int) this.scaledBounds.height());
                                beginRecording.setMatrix(IDENTITY_MATRIX);
                                beginRecording.scale(f, f2);
                                beginRecording.translate(-rectF.left, -rectF.top);
                                return beginRecording;
                            }
                            throw new IllegalStateException(new ObfuscatedString(new long[]{7130017879446523640L, -4220905854027970491L, 6399649933411857175L, 4687466108726929441L, 1628234396290512522L, -4926107718055255726L, 5523687824793284852L, -6060982743877914381L, 6300400025510477408L}).toString());
                        }
                        throw new RuntimeException(new ObfuscatedString(new long[]{7979295907427645147L, 7923237372723231387L, 2406566286130395682L, -5055743834388254696L, -3782488098033865171L, -3334942894125221813L, -3566024074315645859L}).toString());
                    }
                    if (this.clearPaint == null) {
                        LPaint lPaint = new LPaint();
                        this.clearPaint = lPaint;
                        lPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                    }
                    if (needNewBitmap(this.bitmap, this.scaledBounds)) {
                        Bitmap bitmap = this.bitmap;
                        if (bitmap != null) {
                            deallocateBitmap(bitmap);
                        }
                        this.bitmap = allocateBitmap(this.scaledBounds, Bitmap.Config.ARGB_8888);
                        this.bitmapCanvas = new Canvas(this.bitmap);
                    } else {
                        Canvas canvas2 = this.bitmapCanvas;
                        if (canvas2 != null) {
                            canvas2.setMatrix(IDENTITY_MATRIX);
                            this.bitmapCanvas.drawRect(-1.0f, -1.0f, this.scaledBounds.width() + 1.0f, this.scaledBounds.height() + 1.0f, this.clearPaint);
                        } else {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{326781328919107522L, -3890971605586998608L, -7383201730165359915L, -2608737628843975789L, -3644771380511956010L, -5904269540729040088L, -5050929858372601693L, 8919896518028178822L, 3574220807591230246L}).toString());
                        }
                    }
                    PaintCompat.setBlendMode(this.composePaint, composeOp.blendMode);
                    this.composePaint.setColorFilter(composeOp.colorFilter);
                    this.composePaint.setAlpha(composeOp.alpha);
                    Canvas canvas3 = this.bitmapCanvas;
                    canvas3.scale(f, f2);
                    canvas3.translate(-rectF.left, -rectF.top);
                    return canvas3;
                }
                this.composePaint.setAlpha(composeOp.alpha);
                this.composePaint.setColorFilter(composeOp.colorFilter);
                if (composeOp.hasBlendMode()) {
                    PaintCompat.setBlendMode(this.composePaint, composeOp.blendMode);
                }
                Utils.saveLayerCompat(canvas, rectF, this.composePaint);
                return canvas;
            }
            canvas.save();
            return canvas;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1153873443969260695L, -6334460270692453500L, -7851179449422501785L, 585785348367061476L, 8463922742186640462L, 9063097479485341881L, -7439526753848732098L, -3392592700233857157L, 1389253316581003126L, -3368306953768946865L, 4135005134371286052L}).toString());
    }
}
