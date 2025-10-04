package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collection;

/* loaded from: classes.dex */
public class IndexAxisValueFormatter implements IAxisValueFormatter {
    private int mValueCount;
    private String[] mValues;

    public IndexAxisValueFormatter() {
        this.mValues = new String[0];
        this.mValueCount = 0;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        int round = Math.round(f);
        if (round >= 0 && round < this.mValueCount && round == ((int) f)) {
            return this.mValues[round];
        }
        return new ObfuscatedString(new long[]{511694259742473085L}).toString();
    }

    public String[] getValues() {
        return this.mValues;
    }

    public void setValues(String[] strArr) {
        if (strArr == null) {
            strArr = new String[0];
        }
        this.mValues = strArr;
        this.mValueCount = strArr.length;
    }

    public IndexAxisValueFormatter(String[] strArr) {
        this.mValues = new String[0];
        this.mValueCount = 0;
        if (strArr != null) {
            setValues(strArr);
        }
    }

    public IndexAxisValueFormatter(Collection<String> collection) {
        this.mValues = new String[0];
        this.mValueCount = 0;
        if (collection != null) {
            setValues((String[]) collection.toArray(new String[collection.size()]));
        }
    }
}
