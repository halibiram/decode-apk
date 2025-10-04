package com.github.mikephil.charting.components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.utils.FSize;
import com.github.mikephil.charting.utils.MPPointF;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class MarkerImage implements IMarker {
    private Context mContext;
    private Drawable mDrawable;
    private WeakReference<Chart> mWeakChart;
    private MPPointF mOffset = new MPPointF();
    private MPPointF mOffset2 = new MPPointF();
    private FSize mSize = new FSize();
    private Rect mDrawableBoundsCache = new Rect();

    public MarkerImage(Context context, int i) {
        this.mContext = context;
        this.mDrawable = context.getResources().getDrawable(i, null);
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void draw(Canvas canvas, float f, float f2) {
        Drawable drawable;
        Drawable drawable2;
        if (this.mDrawable == null) {
            return;
        }
        MPPointF offsetForDrawingAtPoint = getOffsetForDrawingAtPoint(f, f2);
        FSize fSize = this.mSize;
        float f3 = fSize.width;
        float f4 = fSize.height;
        if (f3 == 0.0f && (drawable2 = this.mDrawable) != null) {
            f3 = drawable2.getIntrinsicWidth();
        }
        if (f4 == 0.0f && (drawable = this.mDrawable) != null) {
            f4 = drawable.getIntrinsicHeight();
        }
        this.mDrawable.copyBounds(this.mDrawableBoundsCache);
        Drawable drawable3 = this.mDrawable;
        Rect rect = this.mDrawableBoundsCache;
        int i = rect.left;
        int i2 = rect.top;
        drawable3.setBounds(i, i2, ((int) f3) + i, ((int) f4) + i2);
        int save = canvas.save();
        canvas.translate(f + offsetForDrawingAtPoint.x, f2 + offsetForDrawingAtPoint.y);
        this.mDrawable.draw(canvas);
        canvas.restoreToCount(save);
        this.mDrawable.setBounds(this.mDrawableBoundsCache);
    }

    public Chart getChartView() {
        WeakReference<Chart> weakReference = this.mWeakChart;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffset() {
        return this.mOffset;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public MPPointF getOffsetForDrawingAtPoint(float f, float f2) {
        Drawable drawable;
        Drawable drawable2;
        MPPointF offset = getOffset();
        MPPointF mPPointF = this.mOffset2;
        mPPointF.x = offset.x;
        mPPointF.y = offset.y;
        Chart chartView = getChartView();
        FSize fSize = this.mSize;
        float f3 = fSize.width;
        float f4 = fSize.height;
        if (f3 == 0.0f && (drawable2 = this.mDrawable) != null) {
            f3 = drawable2.getIntrinsicWidth();
        }
        if (f4 == 0.0f && (drawable = this.mDrawable) != null) {
            f4 = drawable.getIntrinsicHeight();
        }
        MPPointF mPPointF2 = this.mOffset2;
        float f5 = mPPointF2.x;
        if (f + f5 < 0.0f) {
            mPPointF2.x = -f;
        } else if (chartView != null && f + f3 + f5 > chartView.getWidth()) {
            this.mOffset2.x = (chartView.getWidth() - f) - f3;
        }
        MPPointF mPPointF3 = this.mOffset2;
        float f6 = mPPointF3.y;
        if (f2 + f6 < 0.0f) {
            mPPointF3.y = -f2;
        } else if (chartView != null && f2 + f4 + f6 > chartView.getHeight()) {
            this.mOffset2.y = (chartView.getHeight() - f2) - f4;
        }
        return this.mOffset2;
    }

    public FSize getSize() {
        return this.mSize;
    }

    @Override // com.github.mikephil.charting.components.IMarker
    public void refreshContent(Entry entry, Highlight highlight) {
    }

    public void setChartView(Chart chart) {
        this.mWeakChart = new WeakReference<>(chart);
    }

    public void setOffset(MPPointF mPPointF) {
        this.mOffset = mPPointF;
        if (mPPointF == null) {
            this.mOffset = new MPPointF();
        }
    }

    public void setSize(FSize fSize) {
        this.mSize = fSize;
        if (fSize == null) {
            this.mSize = new FSize();
        }
    }

    public void setOffset(float f, float f2) {
        MPPointF mPPointF = this.mOffset;
        mPPointF.x = f;
        mPPointF.y = f2;
    }
}
