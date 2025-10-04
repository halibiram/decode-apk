package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.panda912.muddy.ObfuscatedString;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class DefaultAxisValueFormatter implements IAxisValueFormatter {
    protected int digits;
    protected DecimalFormat mFormat;

    public DefaultAxisValueFormatter(int i) {
        this.digits = i;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(new ObfuscatedString(new long[]{-735082715466163795L, 4509826585294970666L}).toString());
            }
            stringBuffer.append(new ObfuscatedString(new long[]{4493896296845353374L, 8713500038407894860L}).toString());
        }
        this.mFormat = new DecimalFormat(new ObfuscatedString(new long[]{-8923047473459377200L, -122002964249992004L, -7720715927851512486L}).toString() + stringBuffer.toString());
    }

    public int getDecimalDigits() {
        return this.digits;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        return this.mFormat.format(f);
    }
}
