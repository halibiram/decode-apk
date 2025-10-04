package com.tknetwork.tunnel.view;

import android.animation.Animator;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes3.dex */
public class SwitchButton extends View implements Checkable {
    private final int ANIMATE_STATE_DRAGING;
    private final int ANIMATE_STATE_NONE;
    private final int ANIMATE_STATE_PENDING_DRAG;
    private final int ANIMATE_STATE_PENDING_RESET;
    private final int ANIMATE_STATE_PENDING_SETTLE;
    private final int ANIMATE_STATE_SWITCH;
    private ViewState afterState;
    private int animateState;
    private final Animator.AnimatorListener animatorListener;
    private final ValueAnimator.AnimatorUpdateListener animatorUpdateListener;
    private final ArgbEvaluator argbEvaluator;
    private int background;
    private ViewState beforeState;
    private int borderWidth;
    private float bottom;
    private float buttonMaxX;
    private float buttonMinX;
    private Paint buttonPaint;
    private float buttonRadius;
    private float centerX;
    private float centerY;
    private int checkLineColor;
    private float checkLineLength;
    private int checkLineWidth;
    private int checkedColor;
    private float checkedLineOffsetX;
    private float checkedLineOffsetY;
    private boolean enableEffect;
    private float height;
    private boolean isChecked;
    private boolean isEventBroadcast;
    private boolean isTouchingDown;
    private boolean isUiInited;
    private float left;
    private OnCheckedChangeListener onCheckedChangeListener;
    private Paint paint;
    private final Runnable postPendingDrag;
    private final RectF rect;
    private float right;
    private int shadowColor;
    private boolean shadowEffect;
    private int shadowOffset;
    private int shadowRadius;
    private boolean showIndicator;
    private float top;
    private long touchDownTime;
    private int uncheckCircleColor;
    private float uncheckCircleOffsetX;
    private float uncheckCircleRadius;
    private int uncheckCircleWidth;
    private int uncheckColor;
    private ValueAnimator valueAnimator;
    private float viewRadius;
    private ViewState viewState;
    private float width;
    private static final int DEFAULT_WIDTH = dp2pxInt(58.0f);
    private static final int DEFAULT_HEIGHT = dp2pxInt(36.0f);

    /* loaded from: classes3.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(SwitchButton switchButton, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class ViewState {
        float buttonX;
        int checkStateColor;
        int checkedLineColor;
        float radius;

        /* JADX INFO: Access modifiers changed from: private */
        public void copy(ViewState viewState) {
            this.buttonX = viewState.buttonX;
            this.checkStateColor = viewState.checkStateColor;
            this.checkedLineColor = viewState.checkedLineColor;
            this.radius = viewState.radius;
        }
    }

    public SwitchButton(Context context) {
        super(context);
        this.ANIMATE_STATE_NONE = 0;
        this.ANIMATE_STATE_PENDING_DRAG = 1;
        this.ANIMATE_STATE_DRAGING = 2;
        this.ANIMATE_STATE_PENDING_RESET = 3;
        this.ANIMATE_STATE_PENDING_SETTLE = 4;
        this.ANIMATE_STATE_SWITCH = 5;
        this.rect = new RectF();
        this.animateState = 0;
        this.argbEvaluator = new ArgbEvaluator();
        this.isTouchingDown = false;
        this.isUiInited = false;
        this.isEventBroadcast = false;
        this.postPendingDrag = new Runnable() { // from class: com.tknetwork.tunnel.view.SwitchButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (!SwitchButton.this.isInAnimating()) {
                    SwitchButton.this.pendingDragState();
                }
            }
        };
        this.animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i = SwitchButton.this.animateState;
                if (i == 1 || i == 3 || i == 4) {
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkedLineColor), Integer.valueOf(SwitchButton.this.afterState.checkedLineColor))).intValue();
                    SwitchButton.this.viewState.radius = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.radius, SwitchButton.this.beforeState.radius, floatValue, SwitchButton.this.beforeState.radius);
                    if (SwitchButton.this.animateState != 1) {
                        SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    }
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkStateColor), Integer.valueOf(SwitchButton.this.afterState.checkStateColor))).intValue();
                } else if (i == 5) {
                    SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    float f = (SwitchButton.this.viewState.buttonX - SwitchButton.this.buttonMinX) / (SwitchButton.this.buttonMaxX - SwitchButton.this.buttonMinX);
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, Integer.valueOf(SwitchButton.this.uncheckColor), Integer.valueOf(SwitchButton.this.checkedColor))).intValue();
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius * f;
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, 0, Integer.valueOf(SwitchButton.this.checkLineColor))).intValue();
                }
                SwitchButton.this.postInvalidate();
            }
        };
        this.animatorListener = new Animator.AnimatorListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i = SwitchButton.this.animateState;
                if (i == 1) {
                    SwitchButton.this.animateState = 2;
                    SwitchButton.this.viewState.checkedLineColor = 0;
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i == 3) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i == 4) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                } else if (i == 5) {
                    SwitchButton switchButton = SwitchButton.this;
                    switchButton.isChecked = true ^ switchButton.isChecked;
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        };
        init(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void broadcastEvent() {
        OnCheckedChangeListener onCheckedChangeListener = this.onCheckedChangeListener;
        if (onCheckedChangeListener != null) {
            this.isEventBroadcast = true;
            onCheckedChangeListener.onCheckedChanged(this, isChecked());
        }
        this.isEventBroadcast = false;
    }

    private static float dp2px(float f) {
        return TypedValue.applyDimension(1, f, Resources.getSystem().getDisplayMetrics());
    }

    private static int dp2pxInt(float f) {
        return (int) dp2px(f);
    }

    private void drawArc(Canvas canvas, float f, float f2, float f3, float f4, float f5, float f6, Paint paint) {
        canvas.drawArc(f, f2, f3, f4, f5, f6, true, paint);
    }

    private void drawButton(Canvas canvas, float f, float f2) {
        canvas.drawCircle(f, f2, this.buttonRadius, this.buttonPaint);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(1.0f);
        this.paint.setColor(-2236963);
        canvas.drawCircle(f, f2, this.buttonRadius, this.paint);
    }

    private void drawRoundRect(Canvas canvas, float f, float f2, float f3, float f4, float f5, Paint paint) {
        canvas.drawRoundRect(f, f2, f3, f4, f5, f5, paint);
    }

    private void drawUncheckIndicator(Canvas canvas) {
        drawUncheckIndicator(canvas, this.uncheckCircleColor, this.uncheckCircleWidth, this.right - this.uncheckCircleOffsetX, this.centerY, this.uncheckCircleRadius, this.paint);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArray;
        if (attributeSet != null) {
            typedArray = context.obtainStyledAttributes(attributeSet, R.styleable.SwitchButton);
        } else {
            typedArray = null;
        }
        this.shadowEffect = optBoolean(typedArray, 10, true);
        this.uncheckCircleColor = optColor(typedArray, 15, -5592406);
        this.uncheckCircleWidth = optPixelSize(typedArray, 17, dp2pxInt(1.5f));
        this.uncheckCircleOffsetX = dp2px(10.0f);
        this.uncheckCircleRadius = optPixelSize(typedArray, 16, dp2px(4.0f));
        this.checkedLineOffsetX = dp2px(4.0f);
        this.checkedLineOffsetY = dp2px(4.0f);
        this.shadowRadius = optPixelSize(typedArray, 12, dp2pxInt(2.5f));
        this.shadowOffset = optPixelSize(typedArray, 11, dp2pxInt(1.5f));
        this.shadowColor = optColor(typedArray, 9, 855638016);
        this.uncheckColor = optColor(typedArray, 14, -2236963);
        this.checkedColor = optColor(typedArray, 4, -11414681);
        this.borderWidth = optPixelSize(typedArray, 1, dp2pxInt(1.0f));
        this.checkLineColor = optColor(typedArray, 5, -1);
        this.checkLineWidth = optPixelSize(typedArray, 6, dp2pxInt(1.0f));
        this.checkLineLength = dp2px(6.0f);
        int optColor = optColor(typedArray, 2, -1);
        int optInt = optInt(typedArray, 7, 300);
        this.isChecked = optBoolean(typedArray, 3, false);
        this.showIndicator = optBoolean(typedArray, 13, true);
        this.background = optColor(typedArray, 0, -1);
        this.enableEffect = optBoolean(typedArray, 8, true);
        if (typedArray != null) {
            typedArray.recycle();
        }
        this.paint = new Paint(1);
        Paint paint = new Paint(1);
        this.buttonPaint = paint;
        paint.setColor(optColor);
        if (this.shadowEffect) {
            this.buttonPaint.setShadowLayer(this.shadowRadius, 0.0f, this.shadowOffset, this.shadowColor);
        }
        this.viewState = new ViewState();
        this.beforeState = new ViewState();
        this.afterState = new ViewState();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.valueAnimator = ofFloat;
        ofFloat.setDuration(optInt);
        this.valueAnimator.setRepeatCount(0);
        this.valueAnimator.addUpdateListener(this.animatorUpdateListener);
        this.valueAnimator.addListener(this.animatorListener);
        super.setClickable(true);
        setPadding(0, 0, 0, 0);
        setLayerType(1, null);
    }

    private boolean isDragState() {
        if (this.animateState == 2) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInAnimating() {
        if (this.animateState != 0) {
            return true;
        }
        return false;
    }

    private boolean isPendingDragState() {
        int i = this.animateState;
        if (i == 1 || i == 3) {
            return true;
        }
        return false;
    }

    private static boolean optBoolean(TypedArray typedArray, int i, boolean z) {
        if (typedArray == null) {
            return z;
        }
        return typedArray.getBoolean(i, z);
    }

    private static int optColor(TypedArray typedArray, int i, int i2) {
        if (typedArray == null) {
            return i2;
        }
        return typedArray.getColor(i, i2);
    }

    private static int optInt(TypedArray typedArray, int i, int i2) {
        if (typedArray == null) {
            return i2;
        }
        return typedArray.getInt(i, i2);
    }

    private static float optPixelSize(TypedArray typedArray, int i, float f) {
        return typedArray == null ? f : typedArray.getDimension(i, f);
    }

    private void pendingCancelDragState() {
        if (isDragState() || isPendingDragState()) {
            if (this.valueAnimator.isRunning()) {
                this.valueAnimator.cancel();
            }
            this.animateState = 3;
            this.beforeState.copy(this.viewState);
            if (isChecked()) {
                setCheckedViewState(this.afterState);
            } else {
                setUncheckViewState(this.afterState);
            }
            this.valueAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void pendingDragState() {
        if (isInAnimating() || !this.isTouchingDown) {
            return;
        }
        if (this.valueAnimator.isRunning()) {
            this.valueAnimator.cancel();
        }
        this.animateState = 1;
        this.beforeState.copy(this.viewState);
        this.afterState.copy(this.viewState);
        if (isChecked()) {
            ViewState viewState = this.afterState;
            int i = this.checkedColor;
            viewState.checkStateColor = i;
            viewState.buttonX = this.buttonMaxX;
            viewState.checkedLineColor = i;
        } else {
            ViewState viewState2 = this.afterState;
            viewState2.checkStateColor = this.uncheckColor;
            viewState2.buttonX = this.buttonMinX;
            viewState2.radius = this.viewRadius;
        }
        this.valueAnimator.start();
    }

    private void pendingSettleState() {
        if (this.valueAnimator.isRunning()) {
            this.valueAnimator.cancel();
        }
        this.animateState = 4;
        this.beforeState.copy(this.viewState);
        if (isChecked()) {
            setCheckedViewState(this.afterState);
        } else {
            setUncheckViewState(this.afterState);
        }
        this.valueAnimator.start();
    }

    private void setCheckedViewState(ViewState viewState) {
        viewState.radius = this.viewRadius;
        viewState.checkStateColor = this.checkedColor;
        viewState.checkedLineColor = this.checkLineColor;
        viewState.buttonX = this.buttonMaxX;
    }

    private void setUncheckViewState(ViewState viewState) {
        viewState.radius = 0.0f;
        viewState.checkStateColor = this.uncheckColor;
        viewState.checkedLineColor = 0;
        viewState.buttonX = this.buttonMinX;
    }

    public void drawCheckedIndicator(Canvas canvas) {
        int i = this.viewState.checkedLineColor;
        float f = this.checkLineWidth;
        float f2 = this.left;
        float f3 = this.viewRadius;
        float f4 = (f2 + f3) - this.checkedLineOffsetX;
        float f5 = this.centerY;
        float f6 = this.checkLineLength;
        drawCheckedIndicator(canvas, i, f, f4, f5 - f6, (f2 + f3) - this.checkedLineOffsetY, f5 + f6, this.paint);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.isChecked;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.paint.setStrokeWidth(this.borderWidth);
        Paint paint = this.paint;
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.paint.setColor(this.background);
        drawRoundRect(canvas, this.left, this.top, this.right, this.bottom, this.viewRadius, this.paint);
        Paint paint2 = this.paint;
        Paint.Style style2 = Paint.Style.STROKE;
        paint2.setStyle(style2);
        this.paint.setColor(this.uncheckColor);
        drawRoundRect(canvas, this.left, this.top, this.right, this.bottom, this.viewRadius, this.paint);
        if (this.showIndicator) {
            drawUncheckIndicator(canvas);
        }
        float f = this.viewState.radius * 0.5f;
        this.paint.setStyle(style2);
        this.paint.setColor(this.viewState.checkStateColor);
        this.paint.setStrokeWidth((f * 2.0f) + this.borderWidth);
        drawRoundRect(canvas, this.left + f, this.top + f, this.right - f, this.bottom - f, this.viewRadius, this.paint);
        this.paint.setStyle(style);
        this.paint.setStrokeWidth(1.0f);
        float f2 = this.left;
        float f3 = this.top;
        float f4 = this.viewRadius;
        drawArc(canvas, f2, f3, (f4 * 2.0f) + f2, (f4 * 2.0f) + f3, 90.0f, 180.0f, this.paint);
        float f5 = this.left;
        float f6 = this.viewRadius;
        float f7 = this.top;
        canvas.drawRect(f5 + f6, f7, this.viewState.buttonX, (f6 * 2.0f) + f7, this.paint);
        if (this.showIndicator) {
            drawCheckedIndicator(canvas);
        }
        drawButton(canvas, this.viewState.buttonX, this.centerY);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode == 0 || mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(DEFAULT_WIDTH, 1073741824);
        }
        if (mode2 == 0 || mode2 == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(DEFAULT_HEIGHT, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float max = Math.max(this.shadowRadius + this.shadowOffset, this.borderWidth);
        float f = i2 - max;
        float f2 = f - max;
        this.height = f2;
        float f3 = i - max;
        this.width = f3 - max;
        float f4 = f2 * 0.5f;
        this.viewRadius = f4;
        this.buttonRadius = f4 - this.borderWidth;
        this.left = max;
        this.top = max;
        this.right = f3;
        this.bottom = f;
        this.centerX = (max + f3) * 0.5f;
        this.centerY = (f + max) * 0.5f;
        this.buttonMinX = max + f4;
        this.buttonMaxX = f3 - f4;
        if (isChecked()) {
            setCheckedViewState(this.viewState);
        } else {
            setUncheckViewState(this.viewState);
        }
        this.isUiInited = true;
        postInvalidate();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (!isEnabled()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked == 3) {
                        this.isTouchingDown = false;
                        removeCallbacks(this.postPendingDrag);
                        if (isPendingDragState() || isDragState()) {
                            pendingCancelDragState();
                        }
                    }
                } else {
                    float x = motionEvent.getX();
                    if (isPendingDragState()) {
                        float max = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                        ViewState viewState = this.viewState;
                        float f = this.buttonMinX;
                        viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(this.buttonMaxX, f, max, f);
                    } else if (isDragState()) {
                        float max2 = Math.max(0.0f, Math.min(1.0f, x / getWidth()));
                        ViewState viewState2 = this.viewState;
                        float f2 = this.buttonMinX;
                        viewState2.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(this.buttonMaxX, f2, max2, f2);
                        viewState2.checkStateColor = ((Integer) this.argbEvaluator.evaluate(max2, Integer.valueOf(this.uncheckColor), Integer.valueOf(this.checkedColor))).intValue();
                        postInvalidate();
                    }
                }
            } else {
                this.isTouchingDown = false;
                removeCallbacks(this.postPendingDrag);
                if (System.currentTimeMillis() - this.touchDownTime <= 300) {
                    toggle();
                } else if (isDragState()) {
                    if (Math.max(0.0f, Math.min(1.0f, motionEvent.getX() / getWidth())) > 0.5f) {
                        z = true;
                    }
                    if (z == isChecked()) {
                        pendingCancelDragState();
                    } else {
                        this.isChecked = z;
                        pendingSettleState();
                    }
                } else if (isPendingDragState()) {
                    pendingCancelDragState();
                }
            }
        } else {
            this.isTouchingDown = true;
            this.touchDownTime = System.currentTimeMillis();
            removeCallbacks(this.postPendingDrag);
            postDelayed(this.postPendingDrag, 100L);
        }
        return true;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (z == isChecked()) {
            postInvalidate();
        } else {
            toggle(this.enableEffect, false);
        }
    }

    public void setEnableEffect(boolean z) {
        this.enableEffect = z;
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override // android.view.View
    public final void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override // android.view.View
    public final void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(0, 0, 0, 0);
    }

    public void setShadowEffect(boolean z) {
        if (this.shadowEffect == z) {
            return;
        }
        this.shadowEffect = z;
        if (z) {
            this.buttonPaint.setShadowLayer(this.shadowRadius, 0.0f, this.shadowOffset, this.shadowColor);
        } else {
            this.buttonPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        toggle(true);
    }

    private static int optPixelSize(TypedArray typedArray, int i, int i2) {
        return typedArray == null ? i2 : typedArray.getDimensionPixelOffset(i, i2);
    }

    public void drawCheckedIndicator(Canvas canvas, int i, float f, float f2, float f3, float f4, float f5, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawLine(f2, f3, f4, f5, paint);
    }

    public void drawUncheckIndicator(Canvas canvas, int i, float f, float f2, float f3, float f4, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setColor(i);
        paint.setStrokeWidth(f);
        canvas.drawCircle(f2, f3, f4, paint);
    }

    public void toggle(boolean z) {
        toggle(z, true);
    }

    private void toggle(boolean z, boolean z2) {
        if (isEnabled()) {
            if (!this.isEventBroadcast) {
                if (!this.isUiInited) {
                    this.isChecked = !this.isChecked;
                    if (z2) {
                        broadcastEvent();
                        return;
                    }
                    return;
                }
                if (this.valueAnimator.isRunning()) {
                    this.valueAnimator.cancel();
                }
                if (this.enableEffect && z) {
                    this.animateState = 5;
                    this.beforeState.copy(this.viewState);
                    if (isChecked()) {
                        setUncheckViewState(this.afterState);
                    } else {
                        setCheckedViewState(this.afterState);
                    }
                    this.valueAnimator.start();
                    return;
                }
                this.isChecked = !this.isChecked;
                if (isChecked()) {
                    setCheckedViewState(this.viewState);
                } else {
                    setUncheckViewState(this.viewState);
                }
                postInvalidate();
                if (z2) {
                    broadcastEvent();
                    return;
                }
                return;
            }
            throw new RuntimeException(new ObfuscatedString(new long[]{-5071945487451364261L, -437414601650325549L, -578298587925381611L, -2815433927767547019L, -71373263606514587L, 6945267491950422271L, -6420588775072363756L, -2418754716090518303L, -995003911036000921L}).toString());
        }
    }

    public SwitchButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ANIMATE_STATE_NONE = 0;
        this.ANIMATE_STATE_PENDING_DRAG = 1;
        this.ANIMATE_STATE_DRAGING = 2;
        this.ANIMATE_STATE_PENDING_RESET = 3;
        this.ANIMATE_STATE_PENDING_SETTLE = 4;
        this.ANIMATE_STATE_SWITCH = 5;
        this.rect = new RectF();
        this.animateState = 0;
        this.argbEvaluator = new ArgbEvaluator();
        this.isTouchingDown = false;
        this.isUiInited = false;
        this.isEventBroadcast = false;
        this.postPendingDrag = new Runnable() { // from class: com.tknetwork.tunnel.view.SwitchButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (!SwitchButton.this.isInAnimating()) {
                    SwitchButton.this.pendingDragState();
                }
            }
        };
        this.animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i = SwitchButton.this.animateState;
                if (i == 1 || i == 3 || i == 4) {
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkedLineColor), Integer.valueOf(SwitchButton.this.afterState.checkedLineColor))).intValue();
                    SwitchButton.this.viewState.radius = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.radius, SwitchButton.this.beforeState.radius, floatValue, SwitchButton.this.beforeState.radius);
                    if (SwitchButton.this.animateState != 1) {
                        SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    }
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkStateColor), Integer.valueOf(SwitchButton.this.afterState.checkStateColor))).intValue();
                } else if (i == 5) {
                    SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    float f = (SwitchButton.this.viewState.buttonX - SwitchButton.this.buttonMinX) / (SwitchButton.this.buttonMaxX - SwitchButton.this.buttonMinX);
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, Integer.valueOf(SwitchButton.this.uncheckColor), Integer.valueOf(SwitchButton.this.checkedColor))).intValue();
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius * f;
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, 0, Integer.valueOf(SwitchButton.this.checkLineColor))).intValue();
                }
                SwitchButton.this.postInvalidate();
            }
        };
        this.animatorListener = new Animator.AnimatorListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i = SwitchButton.this.animateState;
                if (i == 1) {
                    SwitchButton.this.animateState = 2;
                    SwitchButton.this.viewState.checkedLineColor = 0;
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i == 3) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i == 4) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                } else if (i == 5) {
                    SwitchButton switchButton = SwitchButton.this;
                    switchButton.isChecked = true ^ switchButton.isChecked;
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        };
        init(context, attributeSet);
    }

    public SwitchButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ANIMATE_STATE_NONE = 0;
        this.ANIMATE_STATE_PENDING_DRAG = 1;
        this.ANIMATE_STATE_DRAGING = 2;
        this.ANIMATE_STATE_PENDING_RESET = 3;
        this.ANIMATE_STATE_PENDING_SETTLE = 4;
        this.ANIMATE_STATE_SWITCH = 5;
        this.rect = new RectF();
        this.animateState = 0;
        this.argbEvaluator = new ArgbEvaluator();
        this.isTouchingDown = false;
        this.isUiInited = false;
        this.isEventBroadcast = false;
        this.postPendingDrag = new Runnable() { // from class: com.tknetwork.tunnel.view.SwitchButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (!SwitchButton.this.isInAnimating()) {
                    SwitchButton.this.pendingDragState();
                }
            }
        };
        this.animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i2 = SwitchButton.this.animateState;
                if (i2 == 1 || i2 == 3 || i2 == 4) {
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkedLineColor), Integer.valueOf(SwitchButton.this.afterState.checkedLineColor))).intValue();
                    SwitchButton.this.viewState.radius = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.radius, SwitchButton.this.beforeState.radius, floatValue, SwitchButton.this.beforeState.radius);
                    if (SwitchButton.this.animateState != 1) {
                        SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    }
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkStateColor), Integer.valueOf(SwitchButton.this.afterState.checkStateColor))).intValue();
                } else if (i2 == 5) {
                    SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    float f = (SwitchButton.this.viewState.buttonX - SwitchButton.this.buttonMinX) / (SwitchButton.this.buttonMaxX - SwitchButton.this.buttonMinX);
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, Integer.valueOf(SwitchButton.this.uncheckColor), Integer.valueOf(SwitchButton.this.checkedColor))).intValue();
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius * f;
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, 0, Integer.valueOf(SwitchButton.this.checkLineColor))).intValue();
                }
                SwitchButton.this.postInvalidate();
            }
        };
        this.animatorListener = new Animator.AnimatorListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i2 = SwitchButton.this.animateState;
                if (i2 == 1) {
                    SwitchButton.this.animateState = 2;
                    SwitchButton.this.viewState.checkedLineColor = 0;
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i2 == 3) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i2 == 4) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                } else if (i2 == 5) {
                    SwitchButton switchButton = SwitchButton.this;
                    switchButton.isChecked = true ^ switchButton.isChecked;
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        };
        init(context, attributeSet);
    }

    @TargetApi(21)
    public SwitchButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.ANIMATE_STATE_NONE = 0;
        this.ANIMATE_STATE_PENDING_DRAG = 1;
        this.ANIMATE_STATE_DRAGING = 2;
        this.ANIMATE_STATE_PENDING_RESET = 3;
        this.ANIMATE_STATE_PENDING_SETTLE = 4;
        this.ANIMATE_STATE_SWITCH = 5;
        this.rect = new RectF();
        this.animateState = 0;
        this.argbEvaluator = new ArgbEvaluator();
        this.isTouchingDown = false;
        this.isUiInited = false;
        this.isEventBroadcast = false;
        this.postPendingDrag = new Runnable() { // from class: com.tknetwork.tunnel.view.SwitchButton.1
            @Override // java.lang.Runnable
            public void run() {
                if (!SwitchButton.this.isInAnimating()) {
                    SwitchButton.this.pendingDragState();
                }
            }
        };
        this.animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                int i22 = SwitchButton.this.animateState;
                if (i22 == 1 || i22 == 3 || i22 == 4) {
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkedLineColor), Integer.valueOf(SwitchButton.this.afterState.checkedLineColor))).intValue();
                    SwitchButton.this.viewState.radius = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.radius, SwitchButton.this.beforeState.radius, floatValue, SwitchButton.this.beforeState.radius);
                    if (SwitchButton.this.animateState != 1) {
                        SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    }
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(floatValue, Integer.valueOf(SwitchButton.this.beforeState.checkStateColor), Integer.valueOf(SwitchButton.this.afterState.checkStateColor))).intValue();
                } else if (i22 == 5) {
                    SwitchButton.this.viewState.buttonX = AbstractC0362x4440ab85.m2925xfbe0c504(SwitchButton.this.afterState.buttonX, SwitchButton.this.beforeState.buttonX, floatValue, SwitchButton.this.beforeState.buttonX);
                    float f = (SwitchButton.this.viewState.buttonX - SwitchButton.this.buttonMinX) / (SwitchButton.this.buttonMaxX - SwitchButton.this.buttonMinX);
                    SwitchButton.this.viewState.checkStateColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, Integer.valueOf(SwitchButton.this.uncheckColor), Integer.valueOf(SwitchButton.this.checkedColor))).intValue();
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius * f;
                    SwitchButton.this.viewState.checkedLineColor = ((Integer) SwitchButton.this.argbEvaluator.evaluate(f, 0, Integer.valueOf(SwitchButton.this.checkLineColor))).intValue();
                }
                SwitchButton.this.postInvalidate();
            }
        };
        this.animatorListener = new Animator.AnimatorListener() { // from class: com.tknetwork.tunnel.view.SwitchButton.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                int i22 = SwitchButton.this.animateState;
                if (i22 == 1) {
                    SwitchButton.this.animateState = 2;
                    SwitchButton.this.viewState.checkedLineColor = 0;
                    SwitchButton.this.viewState.radius = SwitchButton.this.viewRadius;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i22 == 3) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    return;
                }
                if (i22 == 4) {
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                } else if (i22 == 5) {
                    SwitchButton switchButton = SwitchButton.this;
                    switchButton.isChecked = true ^ switchButton.isChecked;
                    SwitchButton.this.animateState = 0;
                    SwitchButton.this.postInvalidate();
                    SwitchButton.this.broadcastEvent();
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        };
        init(context, attributeSet);
    }
}
