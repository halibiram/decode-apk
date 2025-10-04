package com.tknetwork.tunnel.view;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
import androidx.core.content.ContextCompat;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class RippleBackground extends RelativeLayout {
    private static final int DEFAULT_DURATION_TIME = 3000;
    private static final int DEFAULT_FILL_TYPE = 0;
    private static final int DEFAULT_RIPPLE_COUNT = 6;
    private static final float DEFAULT_SCALE = 6.0f;
    private boolean animationRunning;
    private ArrayList<Animator> animatorList;
    private AnimatorSet animatorSet;
    private Paint paint;
    private int rippleAmount;
    private int rippleColor;
    private int rippleDelay;
    private int rippleDurationTime;
    private RelativeLayout.LayoutParams rippleParams;
    private float rippleRadius;
    private float rippleScale;
    private float rippleStrokeWidth;
    private int rippleType;
    private ArrayList<RippleView> rippleViewList;

    /* loaded from: classes3.dex */
    public class RippleView extends View {
        public RippleView(Context context) {
            super(context);
            setVisibility(4);
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            RippleBackground.this.paint = new Paint();
            RippleBackground.this.paint.setAntiAlias(true);
            if (RippleBackground.this.rippleType == 0) {
                RippleBackground.this.rippleStrokeWidth = 0.0f;
                RippleBackground.this.paint.setStyle(Paint.Style.FILL);
            } else {
                RippleBackground.this.paint.setStyle(Paint.Style.STROKE);
            }
            RippleBackground.this.paint.setColor(RippleBackground.this.rippleColor);
            float min = Math.min(getWidth(), getHeight()) / 2;
            canvas.drawCircle(min, min, min - RippleBackground.this.rippleStrokeWidth, RippleBackground.this.paint);
        }
    }

    public RippleBackground(Context context) {
        super(context);
        this.animationRunning = false;
        this.rippleViewList = new ArrayList<>();
    }

    private void init(Context context, AttributeSet attributeSet) {
        if (isInEditMode()) {
            return;
        }
        this.rippleDelay = this.rippleDurationTime / this.rippleAmount;
        float f = this.rippleRadius;
        float f2 = this.rippleStrokeWidth;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) ((f + f2) * 2.0f), (int) ((f + f2) * 2.0f));
        this.rippleParams = layoutParams;
        layoutParams.addRule(13, -1);
    }

    public boolean isRippleAnimationRunning() {
        return this.animationRunning;
    }

    public RippleBackground setRippleColor(int i) {
        this.rippleColor = i;
        return this;
    }

    public void startRippleAnimation() {
        if (!isRippleAnimationRunning()) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.animatorSet = animatorSet;
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            ArrayList<Animator> arrayList = new ArrayList<>();
            this.animatorList = arrayList;
            arrayList.clear();
            this.rippleViewList.clear();
            for (int i = 0; i < this.rippleAmount; i++) {
                RippleView rippleView = new RippleView(getContext());
                addView(rippleView, this.rippleParams);
                this.rippleViewList.add(rippleView);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(rippleView, new ObfuscatedString(new long[]{7330089335987975343L, -6442656546217896009L}).toString(), 1.0f, this.rippleScale);
                ofFloat.setRepeatCount(-1);
                ofFloat.setRepeatMode(1);
                ofFloat.setStartDelay(this.rippleDelay * i);
                ofFloat.setDuration(this.rippleDurationTime);
                this.animatorList.add(ofFloat);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(rippleView, new ObfuscatedString(new long[]{-8274105382345308678L, -9091244223144082801L}).toString(), 1.0f, this.rippleScale);
                ofFloat2.setRepeatCount(-1);
                ofFloat2.setRepeatMode(1);
                ofFloat2.setStartDelay(this.rippleDelay * i);
                ofFloat2.setDuration(this.rippleDurationTime);
                this.animatorList.add(ofFloat2);
                ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(rippleView, new ObfuscatedString(new long[]{-7812883353450480633L, -3055831393317652601L}).toString(), 1.0f, 0.0f);
                ofFloat3.setRepeatCount(-1);
                ofFloat3.setRepeatMode(1);
                ofFloat3.setStartDelay(this.rippleDelay * i);
                ofFloat3.setDuration(this.rippleDurationTime);
                this.animatorList.add(ofFloat3);
            }
            this.animatorSet.playTogether(this.animatorList);
            Iterator<RippleView> it = this.rippleViewList.iterator();
            while (it.hasNext()) {
                it.next().setVisibility(0);
            }
            this.animatorSet.start();
            this.animationRunning = true;
        }
    }

    public void stopRippleAnimation() {
        if (isRippleAnimationRunning()) {
            this.animatorSet.end();
            this.animationRunning = false;
        }
    }

    public RippleBackground(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.animationRunning = false;
        this.rippleViewList = new ArrayList<>();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RippleBackground);
        this.rippleColor = obtainStyledAttributes.getColor(0, ContextCompat.getColor(context, com.fbd.tunnel.R.color.rip_color));
        this.rippleStrokeWidth = obtainStyledAttributes.getDimension(5, getResources().getDimension(com.fbd.tunnel.R.dimen.rippleStrokeWidth));
        this.rippleRadius = obtainStyledAttributes.getDimension(2, getResources().getDimension(com.fbd.tunnel.R.dimen.rippleRadius));
        this.rippleDurationTime = obtainStyledAttributes.getInt(1, 3000);
        this.rippleAmount = obtainStyledAttributes.getInt(3, 6);
        this.rippleScale = obtainStyledAttributes.getFloat(4, DEFAULT_SCALE);
        this.rippleType = obtainStyledAttributes.getInt(6, 0);
        obtainStyledAttributes.recycle();
        init(context, attributeSet);
    }

    public RippleBackground(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.animationRunning = false;
        this.rippleViewList = new ArrayList<>();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RippleBackground);
        this.rippleColor = obtainStyledAttributes.getColor(0, ContextCompat.getColor(context, com.fbd.tunnel.R.color.rip_color));
        this.rippleStrokeWidth = obtainStyledAttributes.getDimension(5, getResources().getDimension(com.fbd.tunnel.R.dimen.rippleStrokeWidth));
        this.rippleRadius = obtainStyledAttributes.getDimension(2, getResources().getDimension(com.fbd.tunnel.R.dimen.rippleRadius));
        this.rippleDurationTime = obtainStyledAttributes.getInt(1, 3000);
        this.rippleAmount = obtainStyledAttributes.getInt(3, 6);
        this.rippleScale = obtainStyledAttributes.getFloat(4, DEFAULT_SCALE);
        this.rippleType = obtainStyledAttributes.getInt(6, 0);
        obtainStyledAttributes.recycle();
        init(context, attributeSet);
    }
}
