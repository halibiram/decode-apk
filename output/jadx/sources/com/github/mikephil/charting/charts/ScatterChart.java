package com.github.mikephil.charting.charts;

import android.content.Context;
import android.util.AttributeSet;
import com.github.mikephil.charting.data.ScatterData;
import com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider;
import com.github.mikephil.charting.renderer.ScatterChartRenderer;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class ScatterChart extends BarLineChartBase<ScatterData> implements ScatterDataProvider {

    /* loaded from: classes.dex */
    public enum ScatterShape {
        SQUARE(new ObfuscatedString(new long[]{2565472470806064718L, -7241786639913817472L}).toString()),
        CIRCLE(new ObfuscatedString(new long[]{6524414270497750735L, -1973037738985132064L}).toString()),
        TRIANGLE(new ObfuscatedString(new long[]{7054599909122174523L, 3677883059504396126L}).toString()),
        CROSS(new ObfuscatedString(new long[]{-3549217843800356334L, -6601215815157824743L}).toString()),
        X(new ObfuscatedString(new long[]{-5958159339777508279L, -8673323994897946930L}).toString()),
        CHEVRON_UP(new ObfuscatedString(new long[]{464971977943557023L, 1091786077455840135L, -3990699594696244243L}).toString()),
        CHEVRON_DOWN(new ObfuscatedString(new long[]{-4002427709099778554L, 6679499453506440053L, 3781157700294306033L}).toString());

        private final String shapeIdentifier;

        ScatterShape(String str) {
            this.shapeIdentifier = str;
        }

        public static ScatterShape[] getAllDefaultShapes() {
            return new ScatterShape[]{SQUARE, CIRCLE, TRIANGLE, CROSS, X, CHEVRON_UP, CHEVRON_DOWN};
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.shapeIdentifier;
        }
    }

    public ScatterChart(Context context) {
        super(context);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ScatterDataProvider
    public ScatterData getScatterData() {
        return (ScatterData) this.mData;
    }

    @Override // com.github.mikephil.charting.charts.BarLineChartBase, com.github.mikephil.charting.charts.Chart
    public void init() {
        super.init();
        this.mRenderer = new ScatterChartRenderer(this, this.mAnimator, this.mViewPortHandler);
        getXAxis().setSpaceMin(0.5f);
        getXAxis().setSpaceMax(0.5f);
    }

    public ScatterChart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ScatterChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
