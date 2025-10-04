package com.tknetwork.tunnel.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;

/* loaded from: classes3.dex */
public class CircleProgressBar extends View {
    private Paint backgroundPaint;
    private int color;
    private Paint foregroundPaint;
    private int max;
    private int min;
    private float progress;
    private RectF rectF;
    private int startAngle;
    private float strokeWidth;

    public CircleProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.strokeWidth = 4.0f;
        this.progress = 0.0f;
        this.min = 0;
        this.max = 100;
        this.startAngle = -90;
        this.color = -12303292;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.rectF = new RectF();
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.CircleProgressBar, 0, 0);
        try {
            this.strokeWidth = obtainStyledAttributes.getDimension(3, this.strokeWidth);
            this.progress = obtainStyledAttributes.getFloat(2, this.progress);
            this.color = obtainStyledAttributes.getInt(4, this.color);
            this.min = obtainStyledAttributes.getInt(1, this.min);
            this.max = obtainStyledAttributes.getInt(0, this.max);
            obtainStyledAttributes.recycle();
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            paint.setColor(adjustAlpha(this.color, 0.3f));
            Paint paint2 = this.backgroundPaint;
            Paint.Style style = Paint.Style.STROKE;
            paint2.setStyle(style);
            this.backgroundPaint.setStrokeWidth(this.strokeWidth);
            Paint paint3 = new Paint(1);
            this.foregroundPaint = paint3;
            paint3.setColor(this.color);
            this.foregroundPaint.setStyle(style);
            this.foregroundPaint.setStrokeWidth(this.strokeWidth);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public int adjustAlpha(int i, float f) {
        return Color.argb(Math.round(Color.alpha(i) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    public int getColor() {
        return this.color;
    }

    public int getMax() {
        return this.max;
    }

    public int getMin() {
        return this.min;
    }

    public float getProgress() {
        return this.progress;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public int lightenColor(int i, float f) {
        return Color.argb(Color.alpha(i), Math.min(255, (int) (Color.red(i) * f)), Math.min(255, (int) (Color.green(i) * f)), Math.min(255, (int) (Color.blue(i) * f)));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawOval(this.rectF, this.backgroundPaint);
        canvas.drawArc(this.rectF, this.startAngle, (this.progress * 360.0f) / this.max, false, this.foregroundPaint);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int min = Math.min(View.getDefaultSize(getSuggestedMinimumWidth(), i), View.getDefaultSize(getSuggestedMinimumHeight(), i2));
        setMeasuredDimension(min, min);
        RectF rectF = this.rectF;
        float f = this.strokeWidth;
        float f2 = min;
        rectF.set((f / 2.0f) + 0.0f, (f / 2.0f) + 0.0f, f2 - (f / 2.0f), f2 - (f / 2.0f));
    }

    public void setColor(int i) {
        this.color = i;
        this.backgroundPaint.setColor(adjustAlpha(i, 0.3f));
        this.foregroundPaint.setColor(i);
        invalidate();
        requestLayout();
    }

    public void setMax(int i) {
        this.max = i;
        invalidate();
    }

    public void setMin(int i) {
        this.min = i;
        invalidate();
    }

    public void setProgress(float f) {
        this.progress = f;
        invalidate();
    }

    public void setProgressWithAnimation(float f) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, new ObfuscatedString(new long[]{-5195080241968258514L, 5951734508083972354L}).toString(), f);
        ofFloat.setDuration(1500L);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.start();
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        this.backgroundPaint.setStrokeWidth(f);
        this.foregroundPaint.setStrokeWidth(f);
        invalidate();
        requestLayout();
    }
}
