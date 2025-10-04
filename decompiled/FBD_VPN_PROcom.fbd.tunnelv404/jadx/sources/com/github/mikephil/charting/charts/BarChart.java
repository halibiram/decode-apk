package com.github.mikephil.charting.charts;

import android.content.Context;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.highlight.BarHighlighter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider;
import com.github.mikephil.charting.interfaces.datasets.IBarDataSet;
import com.github.mikephil.charting.renderer.BarChartRenderer;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class BarChart extends BarLineChartBase<BarData> implements BarDataProvider {
    private boolean mDrawBarShadow;
    private boolean mDrawValueAboveBar;
    private boolean mFitBars;
    protected boolean mHighlightFullBarEnabled;

    public BarChart(Context context) {
        super(context);
        this.mHighlightFullBarEnabled = false;
        this.mDrawValueAboveBar = true;
        this.mDrawBarShadow = false;
        this.mFitBars = false;
    }

    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    public void calcMinMax() {
        if (this.mFitBars) {
            this.mXAxis.calculate(((BarData) this.mData).getXMin() - (((BarData) this.mData).getBarWidth() / 2.0f), (((BarData) this.mData).getBarWidth() / 2.0f) + ((BarData) this.mData).getXMax());
        } else {
            this.mXAxis.calculate(((BarData) this.mData).getXMin(), ((BarData) this.mData).getXMax());
        }
        YAxis yAxis = this.mAxisLeft;
        BarData barData = (BarData) this.mData;
        YAxis.AxisDependency axisDependency = YAxis.AxisDependency.LEFT;
        yAxis.calculate(barData.getYMin(axisDependency), ((BarData) this.mData).getYMax(axisDependency));
        YAxis yAxis2 = this.mAxisRight;
        BarData barData2 = (BarData) this.mData;
        YAxis.AxisDependency axisDependency2 = YAxis.AxisDependency.RIGHT;
        yAxis2.calculate(barData2.getYMin(axisDependency2), ((BarData) this.mData).getYMax(axisDependency2));
    }

    public RectF getBarBounds(BarEntry barEntry) {
        RectF rectF = new RectF();
        getBarBounds(barEntry, rectF);
        return rectF;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public BarData getBarData() {
        return (BarData) this.mData;
    }

    @Override // com.github.mikephil.charting.charts.Chart
    public Highlight getHighlightByTouchPoint(float f, float f2) {
        if (this.mData == 0) {
            new ObfuscatedString(new long[]{7342119298335695990L, -3330174298658501792L, -8148595511482198418L}).toString();
            new ObfuscatedString(new long[]{8125460155027337554L, -8238816338951166465L, 8856979201171704924L, 3817874533379693908L, 6827655783911147052L, 2438475828492733760L}).toString();
            return null;
        }
        Highlight highlight = getHighlighter().getHighlight(f, f2);
        if (highlight != null && isHighlightFullBarEnabled()) {
            return new Highlight(highlight.getX(), highlight.getY(), highlight.getXPx(), highlight.getYPx(), highlight.getDataSetIndex(), -1, highlight.getAxis());
        }
        return highlight;
    }

    public void groupBars(float f, float f2, float f3) {
        if (getBarData() != null) {
            getBarData().groupBars(f, f2, f3);
            notifyDataSetChanged();
            return;
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{-3526220497820620906L, -5655227303404082473L, 7418042476165576796L, 8586256921687220175L, -7533921386793236020L, 6628104802502648995L, -8458119678431450677L, 8658960213690137816L}).toString());
    }

    public void highlightValue(float f, int i, int i2) {
        highlightValue(new Highlight(f, i, i2), false);
    }

    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mRenderer = new BarChartRenderer(this, this.mAnimator, this.mViewPortHandler);
        setHighlighter(new BarHighlighter(this));
        getXAxis().setSpaceMin(0.5f);
        getXAxis().setSpaceMax(0.5f);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawBarShadowEnabled() {
        return this.mDrawBarShadow;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isDrawValueAboveBarEnabled() {
        return this.mDrawValueAboveBar;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.BarDataProvider
    public boolean isHighlightFullBarEnabled() {
        return this.mHighlightFullBarEnabled;
    }

    public void setDrawBarShadow(boolean z) {
        this.mDrawBarShadow = z;
    }

    public void setDrawValueAboveBar(boolean z) {
        this.mDrawValueAboveBar = z;
    }

    public void setFitBars(boolean z) {
        this.mFitBars = z;
    }

    public void setHighlightFullBarEnabled(boolean z) {
        this.mHighlightFullBarEnabled = z;
    }

    public void getBarBounds(BarEntry barEntry, RectF rectF) {
        IBarDataSet iBarDataSet = (IBarDataSet) ((BarData) this.mData).getDataSetForEntry(barEntry);
        if (iBarDataSet == null) {
            rectF.set(Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE, Float.MIN_VALUE);
            return;
        }
        float y = barEntry.getY();
        float x = barEntry.getX();
        float barWidth = ((BarData) this.mData).getBarWidth() / 2.0f;
        float f = x - barWidth;
        float f2 = x + barWidth;
        float f3 = y >= 0.0f ? y : 0.0f;
        if (y > 0.0f) {
            y = 0.0f;
        }
        rectF.set(f, f3, f2, y);
        getTransformer(iBarDataSet.getAxisDependency()).rectValueToPixel(rectF);
    }

    public BarChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHighlightFullBarEnabled = false;
        this.mDrawValueAboveBar = true;
        this.mDrawBarShadow = false;
        this.mFitBars = false;
    }

    public BarChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHighlightFullBarEnabled = false;
        this.mDrawValueAboveBar = true;
        this.mDrawBarShadow = false;
        this.mFitBars = false;
    }
}
