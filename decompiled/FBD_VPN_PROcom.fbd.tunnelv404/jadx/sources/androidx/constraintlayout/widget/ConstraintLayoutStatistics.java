package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import androidx.constraintlayout.core.Metrics;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public class ConstraintLayoutStatistics {
    public static final int DURATION_OF_CHILD_MEASURES = 5;
    public static final int DURATION_OF_LAYOUT = 7;
    public static final int DURATION_OF_MEASURES = 6;
    private static int MAX_WORD = 25;
    public static final int NUMBER_OF_CHILD_MEASURES = 4;
    public static final int NUMBER_OF_CHILD_VIEWS = 3;
    public static final int NUMBER_OF_EQUATIONS = 9;
    public static final int NUMBER_OF_LAYOUTS = 1;
    public static final int NUMBER_OF_ON_MEASURES = 2;
    public static final int NUMBER_OF_SIMPLE_EQUATIONS = 10;
    public static final int NUMBER_OF_VARIABLES = 8;
    private static final String WORD_PAD = new String(new char[25]).replace((char) 0, ' ');
    ConstraintLayout mConstraintLayout;
    private final Metrics mMetrics;

    public ConstraintLayoutStatistics(ConstraintLayout constraintLayout) {
        this.mMetrics = new Metrics();
        attach(constraintLayout);
    }

    private String compare(DecimalFormat decimalFormat, ConstraintLayoutStatistics constraintLayoutStatistics, int i) {
        String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(AbstractC0362x4440ab85.m2943xc20437a5(fmt(decimalFormat, ((float) getValue(i)) * 1.0E-6f, 7), " -> "), fmt(decimalFormat, ((float) constraintLayoutStatistics.getValue(i)) * 1.0E-6f, 7), "ms");
        String m2936xd2bcb0cf2 = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), WORD_PAD, geName(i));
        return AbstractC0362x4440ab85.m2932x95f25580("CL Perf: ", AbstractC0362x4440ab85.m2931x34271fae(m2936xd2bcb0cf2.substring(m2936xd2bcb0cf2.length() - MAX_WORD), " = "), m2936xd2bcb0cf);
    }

    private String fmt(DecimalFormat decimalFormat, float f, int i) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(new String(new char[i]).replace((char) 0, ' '));
        m3341xc20437a5.append(decimalFormat.format(f));
        String sb = m3341xc20437a5.toString();
        return sb.substring(sb.length() - i);
    }

    @SuppressLint({"LogConditional"})
    private void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        stackTraceElement.getFileName();
        stackTraceElement.getLineNumber();
        DecimalFormat decimalFormat = new DecimalFormat("###.000");
        log(decimalFormat, 5);
        log(decimalFormat, 7);
        log(decimalFormat, 6);
        log(1);
        log(2);
        log(3);
        log(4);
        log(8);
        log(9);
        log(10);
    }

    public void attach(ConstraintLayout constraintLayout) {
        constraintLayout.fillMetrics(this.mMetrics);
        this.mConstraintLayout = constraintLayout;
    }

    public void detach() {
        ConstraintLayout constraintLayout = this.mConstraintLayout;
        if (constraintLayout != null) {
            constraintLayout.fillMetrics(null);
        }
    }

    public String geName(int i) {
        switch (i) {
            case 1:
                return "NumberOfLayouts";
            case 2:
                return "MeasureCalls";
            case 3:
                return "ChildCount";
            case 4:
                return "ChildrenMeasures";
            case 5:
                return "MeasuresWidgetsDuration ";
            case 6:
                return "MeasureDuration";
            case 7:
                return "MeasuresLayoutDuration";
            case 8:
                return "SolverVariables";
            case 9:
                return "SolverEquations";
            case 10:
                return "SimpleEquations";
            default:
                return "";
        }
    }

    public long getValue(int i) {
        switch (i) {
            case 1:
                return this.mMetrics.mNumberOfLayouts;
            case 2:
                return this.mMetrics.mMeasureCalls;
            case 3:
                return this.mMetrics.mChildCount;
            case 4:
                return this.mMetrics.mNumberOfMeasures;
            case 5:
                return this.mMetrics.measuresWidgetsDuration;
            case 6:
                return this.mMetrics.mMeasureDuration;
            case 7:
                return this.mMetrics.measuresLayoutDuration;
            case 8:
                return this.mMetrics.mVariables;
            case 9:
                return this.mMetrics.mEquations;
            case 10:
                return this.mMetrics.mSimpleEquations;
            default:
                return 0L;
        }
    }

    public void logSummary(String str) {
        log(str);
    }

    public void reset() {
        this.mMetrics.reset();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public ConstraintLayoutStatistics m525clone() {
        return new ConstraintLayoutStatistics(this);
    }

    @SuppressLint({"LogConditional"})
    public void logSummary(String str, ConstraintLayoutStatistics constraintLayoutStatistics) {
        if (constraintLayoutStatistics == null) {
            log(str);
            return;
        }
        DecimalFormat decimalFormat = new DecimalFormat("###.000");
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        stackTraceElement.getFileName();
        stackTraceElement.getLineNumber();
        compare(decimalFormat, constraintLayoutStatistics, 5);
        compare(decimalFormat, constraintLayoutStatistics, 7);
        compare(decimalFormat, constraintLayoutStatistics, 6);
        compare(constraintLayoutStatistics, 1);
        compare(constraintLayoutStatistics, 2);
        compare(constraintLayoutStatistics, 3);
        compare(constraintLayoutStatistics, 4);
        compare(constraintLayoutStatistics, 8);
        compare(constraintLayoutStatistics, 9);
        compare(constraintLayoutStatistics, 10);
    }

    public ConstraintLayoutStatistics(ConstraintLayoutStatistics constraintLayoutStatistics) {
        Metrics metrics = new Metrics();
        this.mMetrics = metrics;
        metrics.copy(constraintLayoutStatistics.mMetrics);
    }

    private String log(DecimalFormat decimalFormat, int i) {
        String fmt = fmt(decimalFormat, ((float) getValue(i)) * 1.0E-6f, 7);
        String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), WORD_PAD, geName(i));
        return AbstractC0362x4440ab85.m2932x95f25580("CL Perf: ", AbstractC0362x4440ab85.m2931x34271fae(m2936xd2bcb0cf.substring(m2936xd2bcb0cf.length() - MAX_WORD), " = "), fmt);
    }

    private String compare(ConstraintLayoutStatistics constraintLayoutStatistics, int i) {
        String str = getValue(i) + " -> " + constraintLayoutStatistics.getValue(i);
        String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), WORD_PAD, geName(i));
        return AbstractC0362x4440ab85.m2932x95f25580("CL Perf: ", AbstractC0362x4440ab85.m2931x34271fae(m2936xd2bcb0cf.substring(m2936xd2bcb0cf.length() - MAX_WORD), " = "), str);
    }

    private String log(int i) {
        String l = Long.toString(getValue(i));
        String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), WORD_PAD, geName(i));
        return AbstractC0362x4440ab85.m2932x95f25580("CL Perf: ", AbstractC0362x4440ab85.m2931x34271fae(m2936xd2bcb0cf.substring(m2936xd2bcb0cf.length() - MAX_WORD), " = "), l);
    }
}
