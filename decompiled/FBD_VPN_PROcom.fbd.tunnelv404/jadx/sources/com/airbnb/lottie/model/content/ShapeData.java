package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import com.airbnb.lottie.model.CubicCurveData;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.MiscUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeData {
    private boolean closed;
    private final List<CubicCurveData> curves;
    private PointF initialPoint;

    public ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.initialPoint = pointF;
        this.closed = z;
        this.curves = new ArrayList(list);
    }

    public List<CubicCurveData> getCurves() {
        return this.curves;
    }

    public PointF getInitialPoint() {
        return this.initialPoint;
    }

    public void interpolateBetween(ShapeData shapeData, ShapeData shapeData2, @FloatRange(from = 0.0d, to = 1.0d) float f) {
        boolean z;
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        if (!shapeData.isClosed() && !shapeData2.isClosed()) {
            z = false;
        } else {
            z = true;
        }
        this.closed = z;
        if (shapeData.getCurves().size() != shapeData2.getCurves().size()) {
            Logger.warning(new ObfuscatedString(new long[]{-1590025764472809571L, 5682852141158026266L, -7055555473081367604L, -3327442407290655972L, 6983872558799282494L, -3015181220189910994L, 4179417708611393747L, -2854535778962827902L, -213634862957151158L}).toString() + shapeData.getCurves().size() + new ObfuscatedString(new long[]{2579810638526692302L, 2559908559844449980L, 8566316587357938465L}).toString() + shapeData2.getCurves().size());
        }
        int min = Math.min(shapeData.getCurves().size(), shapeData2.getCurves().size());
        if (this.curves.size() < min) {
            for (int size = this.curves.size(); size < min; size++) {
                this.curves.add(new CubicCurveData());
            }
        } else if (this.curves.size() > min) {
            for (int size2 = this.curves.size() - 1; size2 >= min; size2--) {
                List<CubicCurveData> list = this.curves;
                list.remove(list.size() - 1);
            }
        }
        PointF initialPoint = shapeData.getInitialPoint();
        PointF initialPoint2 = shapeData2.getInitialPoint();
        setInitialPoint(MiscUtils.lerp(initialPoint.x, initialPoint2.x, f), MiscUtils.lerp(initialPoint.y, initialPoint2.y, f));
        for (int size3 = this.curves.size() - 1; size3 >= 0; size3--) {
            CubicCurveData cubicCurveData = shapeData.getCurves().get(size3);
            CubicCurveData cubicCurveData2 = shapeData2.getCurves().get(size3);
            PointF controlPoint1 = cubicCurveData.getControlPoint1();
            PointF controlPoint2 = cubicCurveData.getControlPoint2();
            PointF vertex = cubicCurveData.getVertex();
            PointF controlPoint12 = cubicCurveData2.getControlPoint1();
            PointF controlPoint22 = cubicCurveData2.getControlPoint2();
            PointF vertex2 = cubicCurveData2.getVertex();
            this.curves.get(size3).setControlPoint1(MiscUtils.lerp(controlPoint1.x, controlPoint12.x, f), MiscUtils.lerp(controlPoint1.y, controlPoint12.y, f));
            this.curves.get(size3).setControlPoint2(MiscUtils.lerp(controlPoint2.x, controlPoint22.x, f), MiscUtils.lerp(controlPoint2.y, controlPoint22.y, f));
            this.curves.get(size3).setVertex(MiscUtils.lerp(vertex.x, vertex2.x, f), MiscUtils.lerp(vertex.y, vertex2.y, f));
        }
    }

    public boolean isClosed() {
        return this.closed;
    }

    public void setClosed(boolean z) {
        this.closed = z;
    }

    public void setInitialPoint(float f, float f2) {
        if (this.initialPoint == null) {
            this.initialPoint = new PointF();
        }
        this.initialPoint.set(f, f2);
    }

    public String toString() {
        return new ObfuscatedString(new long[]{6105115884407409783L, 8680298537231642209L, -3910565606092123780L, -5308248648494483306L}).toString() + this.curves.size() + new ObfuscatedString(new long[]{7083090862488755804L, -3096970404614249211L}).toString() + this.closed + '}';
    }

    public ShapeData() {
        this.curves = new ArrayList();
    }
}
