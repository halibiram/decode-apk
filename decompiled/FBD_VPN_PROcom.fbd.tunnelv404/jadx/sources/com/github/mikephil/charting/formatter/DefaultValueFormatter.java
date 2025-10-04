package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class DefaultValueFormatter implements IValueFormatter {
    protected int mDecimalDigits;
    protected DecimalFormat mFormat;

    public DefaultValueFormatter(int i) {
        setup(i);
    }

    public int getDecimalDigits() {
        return this.mDecimalDigits;
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return this.mFormat.format(f);
    }

    public void setup(int i) {
        this.mDecimalDigits = i;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(new ObfuscatedString(new long[]{6409343574204288063L, 2607103742486441188L}).toString());
            }
            stringBuffer.append(new ObfuscatedString(new long[]{1541048106473141585L, -5829769784350598302L}).toString());
        }
        this.mFormat = new DecimalFormat(new ObfuscatedString(new long[]{-2288041104060600622L, 3268165675885914179L, 6341618725201770530L}).toString() + stringBuffer.toString());
    }
}
