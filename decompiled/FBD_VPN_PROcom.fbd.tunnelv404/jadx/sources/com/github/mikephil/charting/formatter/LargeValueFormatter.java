package com.github.mikephil.charting.formatter;

import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class LargeValueFormatter implements IValueFormatter, IAxisValueFormatter {
    private static final int MAX_LENGTH = 5;
    private static String[] SUFFIX = {new ObfuscatedString(new long[]{-2304160658270020587L}).toString(), new ObfuscatedString(new long[]{-7487753034224651586L, 7400747775105434576L}).toString(), new ObfuscatedString(new long[]{-6544528311683421777L, 6654750371610941596L}).toString(), new ObfuscatedString(new long[]{-5665704435413475529L, 2418549806574705034L}).toString(), new ObfuscatedString(new long[]{984356064169761784L, 198479691440622692L}).toString()};
    private DecimalFormat mFormat;
    private String mText;

    public LargeValueFormatter() {
        this.mText = new ObfuscatedString(new long[]{-8707622997700054911L}).toString();
        this.mFormat = new DecimalFormat(new ObfuscatedString(new long[]{6210760276656292186L, -8417611834290766405L}).toString());
    }

    private String makePretty(double d) {
        String format = this.mFormat.format(d);
        int numericValue = Character.getNumericValue(format.charAt(format.length() - 1));
        StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(Character.getNumericValue(format.charAt(format.length() - 2)));
        m3340x952a0a9e.append(new ObfuscatedString(new long[]{-7857599069487315902L}).toString());
        m3340x952a0a9e.append(numericValue);
        String replaceAll = format.replaceAll(new ObfuscatedString(new long[]{-8059004316460902954L, 7365687915999214224L, 5209723763848408084L}).toString(), SUFFIX[Integer.valueOf(m3340x952a0a9e.toString()).intValue() / 3]);
        while (true) {
            if (replaceAll.length() <= 5 && !replaceAll.matches(new ObfuscatedString(new long[]{2497334578665472457L, -2592169504887316394L, -8181856969788126733L}).toString())) {
                return replaceAll;
            }
            replaceAll = replaceAll.substring(0, replaceAll.length() - 2) + replaceAll.substring(replaceAll.length() - 1);
        }
    }

    public int getDecimalDigits() {
        return 0;
    }

    @Override // com.github.mikephil.charting.formatter.IValueFormatter
    public String getFormattedValue(float f, Entry entry, int i, ViewPortHandler viewPortHandler) {
        return makePretty(f) + this.mText;
    }

    public void setAppendix(String str) {
        this.mText = str;
    }

    public void setSuffix(String[] strArr) {
        SUFFIX = strArr;
    }

    @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
    public String getFormattedValue(float f, AxisBase axisBase) {
        return makePretty(f) + this.mText;
    }

    public LargeValueFormatter(String str) {
        this();
        this.mText = str;
    }
}
