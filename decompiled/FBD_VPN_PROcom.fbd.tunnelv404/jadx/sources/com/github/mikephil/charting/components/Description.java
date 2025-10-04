package com.github.mikephil.charting.components;

import android.graphics.Paint;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class Description extends ComponentBase {
    private MPPointF mPosition;
    private String text = new ObfuscatedString(new long[]{1491056694654582563L, -1290826420080437135L, 2361805312843588741L, -7112312495172152920L}).toString();
    private Paint.Align mTextAlign = Paint.Align.RIGHT;

    public Description() {
        this.mTextSize = Utils.convertDpToPixel(8.0f);
    }

    public MPPointF getPosition() {
        return this.mPosition;
    }

    public String getText() {
        return this.text;
    }

    public Paint.Align getTextAlign() {
        return this.mTextAlign;
    }

    public void setPosition(float f, float f2) {
        MPPointF mPPointF = this.mPosition;
        if (mPPointF == null) {
            this.mPosition = MPPointF.getInstance(f, f2);
        } else {
            mPPointF.x = f;
            mPPointF.y = f2;
        }
    }

    public void setText(String str) {
        this.text = str;
    }

    public void setTextAlign(Paint.Align align) {
        this.mTextAlign = align;
    }
}
