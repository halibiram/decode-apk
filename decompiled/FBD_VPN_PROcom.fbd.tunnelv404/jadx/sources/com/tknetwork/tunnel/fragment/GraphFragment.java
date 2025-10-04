package com.tknetwork.tunnel.fragment;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.fbd.tunnel.R;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.LimitLine;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.RetrieveData;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class GraphFragment extends Fragment {
    public static final String color_download_graph = new ObfuscatedString(new long[]{-1315790262191881600L, -2833104763030629243L}).toString();
    public static final String color_graph_text = new ObfuscatedString(new long[]{-1237101802920397669L, 1640645900938199838L}).toString();
    public static final String color_upload_graph = new ObfuscatedString(new long[]{4919868496145769263L, 5135776796189506943L}).toString();
    protected List<Long> dList;
    private DecimalFormat df;
    private ArrayList<Entry> e1;
    private ArrayList<Entry> e2;
    private boolean isRunning = false;
    private LineChart mChart;
    private StatisticsGraphData.DataTransferStats mGraphStats;
    private Thread mGraphThread;
    protected List<Long> uList;

    @SuppressLint({"RestrictedApi"})
    private void setGraph() {
        this.df = new DecimalFormat(new ObfuscatedString(new long[]{-8170651603562398209L, 3933754015882739748L}).toString());
        this.dList = new ArrayList();
        this.uList = new ArrayList();
        setSpeed();
        this.e1 = new ArrayList<>();
        this.e2 = new ArrayList<>();
        float f = 0.0f;
        for (int i = 0; i < this.dList.size(); i++) {
            toString();
            float longValue = ((float) this.dList.get(i).longValue()) / 1024.0f;
            float longValue2 = ((float) this.uList.get(i).longValue()) / 1024.0f;
            float f2 = i;
            this.e1.add(new Entry(f2, longValue));
            this.e2.add(new Entry(f2, longValue2));
            if (f < longValue) {
                f = longValue;
            }
            if (f < longValue2) {
                f = longValue2;
            }
        }
        LineDataSet lineDataSet = new LineDataSet(this.e1, new ObfuscatedString(new long[]{-5412049219114393901L, -4577092553059938673L}).toString());
        lineDataSet.setLineWidth(0.0f);
        lineDataSet.setCircleRadius(0.0f);
        lineDataSet.setDrawValues(false);
        lineDataSet.setColor(-16711936);
        lineDataSet.setCircleColor(0);
        LineDataSet lineDataSet2 = new LineDataSet(this.e2, new ObfuscatedString(new long[]{3579328627554670333L, -150598326021927606L}).toString());
        lineDataSet2.setLineWidth(0.0f);
        lineDataSet2.setCircleRadius(0.0f);
        lineDataSet2.setDrawValues(false);
        lineDataSet2.setColor(SupportMenu.CATEGORY_MASK);
        lineDataSet2.setCircleColor(0);
        ArrayList arrayList = new ArrayList();
        arrayList.add(lineDataSet2);
        arrayList.add(lineDataSet);
        StringBuilder sb = new StringBuilder();
        toString();
        sb.append(this.df.format(f));
        sb.append(new ObfuscatedString(new long[]{4280438412901811583L, 4997752444340338880L}).toString());
        LimitLine limitLine = new LimitLine(f, sb.toString());
        limitLine.setLineWidth(1.0f);
        limitLine.enableDashedLine(10.0f, 10.0f, 0.0f);
        limitLine.setLabelPosition(LimitLine.LimitLabelPosition.LEFT_TOP);
        limitLine.setTextSize(6.0f);
        limitLine.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        limitLine.setTypeface(Typeface.DEFAULT);
        limitLine.setEnabled(false);
        XAxis xAxis = this.mChart.getXAxis();
        xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
        xAxis.setAxisLineColor(-16711936);
        this.mChart.getAxisLeft().setEnabled(false);
        this.mChart.getAxisRight().setEnabled(false);
        this.mChart.setData(new LineData(arrayList));
        this.mChart.setDrawGridBackground(true);
        this.mChart.setGridBackgroundColor(0);
        this.mChart.setTouchEnabled(false);
        this.mChart.getViewPortHandler().setMaximumScaleX(5.0f);
        this.mChart.getViewPortHandler().setMaximumScaleY(5.0f);
        this.mChart.getDescription().setEnabled(false);
        this.mChart.getLegend().setEnabled(false);
    }

    private void updateByteCount() {
        this.isRunning = true;
        Thread thread = new Thread(new Runnable() { // from class: com.tknetwork.tunnel.fragment.GraphFragment.1
            @Override // java.lang.Runnable
            public void run() {
                while (GraphFragment.this.isRunning && GraphFragment.this.getActivity() != null) {
                    List<Long> findData = RetrieveData.findData();
                    Long l = findData.get(0);
                    Long l2 = findData.get(1);
                    l.getClass();
                    l2.getClass();
                    GraphFragment.this.mGraphStats.addBytesReceived(l.longValue());
                    GraphFragment.this.mGraphStats.addBytesSent(l2.longValue());
                    GraphFragment.this.getActivity().runOnUiThread(new Runnable() { // from class: com.tknetwork.tunnel.fragment.GraphFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                GraphFragment.this.addDataSet();
                            } catch (Exception unused) {
                            }
                        }
                    });
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        });
        this.mGraphThread = thread;
        thread.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void addDataSet() {
        LineData lineData = (LineData) this.mChart.getData();
        toString();
        if (lineData != null) {
            this.dList = this.mGraphStats.getFastReceivedSeries();
            this.uList = this.mGraphStats.getFastSentSeries();
            this.e1 = new ArrayList<>();
            this.e2 = new ArrayList<>();
            setSpeed();
            float f = 0.0f;
            for (int i = 0; i < this.dList.size(); i++) {
                float longValue = ((float) this.dList.get(i).longValue()) / 1024.0f;
                float longValue2 = ((float) this.uList.get(i).longValue()) / 1024.0f;
                float f2 = i;
                this.e1.add(new Entry(f2, longValue));
                this.e2.add(new Entry(f2, longValue2));
                if (f < longValue) {
                    f = longValue;
                }
                if (f < longValue2) {
                    f = longValue2;
                }
            }
            String obfuscatedString = new ObfuscatedString(new long[]{-5084772022037563476L, -3370859589218571068L}).toString();
            float f3 = 256.0f;
            if (f > 224.0f) {
                if (f <= 256.0f) {
                    f3 = 512.0f;
                } else if (f <= 896.0f) {
                    f3 = 1024.0f;
                } else {
                    float f4 = 2048.0f;
                    if (f >= 1024.0f) {
                        if (f >= 1792.0f) {
                            if (f < 3584.0f) {
                                f4 = 4096.0f;
                            } else if (f < 7168.0f) {
                                f4 = 8192.0f;
                            } else if (f < 14336.0f) {
                                f4 = 16384.0f;
                            } else {
                                f4 = 32768.0f;
                            }
                        }
                        obfuscatedString = new ObfuscatedString(new long[]{868697206492116647L, 4258260286917298581L}).toString();
                        f3 = f4;
                    } else {
                        f3 = 2048.0f;
                    }
                }
            }
            LineDataSet lineDataSet = new LineDataSet(this.e2, new ObfuscatedString(new long[]{-2253449669158664869L, 1290690632851364297L}).toString());
            LineDataSet.Mode mode = LineDataSet.Mode.CUBIC_BEZIER;
            lineDataSet.setMode(mode);
            lineDataSet.setCubicIntensity(0.2f);
            lineDataSet.setDrawFilled(true);
            lineDataSet.setDrawValues(false);
            lineDataSet.setFillColor(Color.parseColor(new ObfuscatedString(new long[]{4290618354677128609L, -7805868293562864681L}).toString()));
            lineDataSet.setFillAlpha(5000);
            lineDataSet.setLineWidth(0.5f);
            lineDataSet.setCircleRadius(0.5f);
            lineDataSet.setDrawValues(false);
            lineDataSet.setColor(Color.parseColor(new ObfuscatedString(new long[]{1928895483500816092L, -7429513365101491881L}).toString()));
            lineDataSet.setCircleColor(0);
            lineDataSet.setDrawCircleHole(false);
            LineDataSet lineDataSet2 = new LineDataSet(this.e1, new ObfuscatedString(new long[]{-5801282368259647197L, 3611300258287631193L}).toString());
            lineDataSet2.setMode(mode);
            lineDataSet2.setCubicIntensity(0.2f);
            lineDataSet2.setDrawFilled(true);
            lineDataSet2.setDrawValues(false);
            lineDataSet2.setFillColor(Color.parseColor(new ObfuscatedString(new long[]{7189572777640446199L, 2806782815145356361L}).toString()));
            lineDataSet2.setFillAlpha(5000);
            lineDataSet2.setLineWidth(0.5f);
            lineDataSet2.setCircleRadius(0.5f);
            lineDataSet2.setColor(Color.parseColor(new ObfuscatedString(new long[]{-1283301545750825465L, 8639426175103216592L}).toString()));
            lineDataSet2.setCircleColor(0);
            lineDataSet2.setHighLightColor(Color.rgb(0, 102, 0));
            lineDataSet2.setDrawValues(false);
            lineDataSet2.setDrawCircleHole(false);
            StringBuilder sb = new StringBuilder();
            toString();
            sb.append(this.df.format(f));
            sb.append(obfuscatedString);
            LimitLine limitLine = new LimitLine(f, sb.toString());
            limitLine.setLineWidth(1.0f);
            limitLine.enableDashedLine(10.0f, 10.0f, 0.0f);
            limitLine.setLabelPosition(LimitLine.LimitLabelPosition.LEFT_TOP);
            limitLine.setTextSize(6.0f);
            limitLine.setTextColor(Color.parseColor(new ObfuscatedString(new long[]{5539135960611538536L, 3449901064052183469L}).toString()));
            limitLine.setLineColor(0);
            Typeface typeface = Typeface.DEFAULT;
            limitLine.setTypeface(typeface);
            XAxis xAxis = this.mChart.getXAxis();
            xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
            xAxis.setDrawGridLines(true);
            xAxis.setDrawAxisLine(true);
            xAxis.setLabelCount(0, true);
            xAxis.setTextSize(6.0f);
            xAxis.setAxisMinValue(0.0f);
            xAxis.setDrawLabels(true);
            xAxis.setTypeface(typeface);
            xAxis.setTextColor(Color.parseColor(new ObfuscatedString(new long[]{4684316633214366954L, -171125482489346488L}).toString()));
            xAxis.setEnabled(false);
            xAxis.enableGridDashedLine(5.0f, 5.0f, 1.0f);
            YAxis axisLeft = this.mChart.getAxisLeft();
            axisLeft.setLabelCount(0, true);
            axisLeft.setAxisMaxValue(f3);
            axisLeft.setAxisMinValue(0.0f);
            axisLeft.enableGridDashedLine(5.0f, 5.0f, 1.0f);
            axisLeft.removeAllLimitLines();
            axisLeft.addLimitLine(limitLine);
            axisLeft.setDrawLimitLinesBehindData(true);
            axisLeft.setTextColor(Color.parseColor(new ObfuscatedString(new long[]{-1224169329391695701L, -681046586711902954L}).toString()));
            axisLeft.setTextSize(6.0f);
            axisLeft.setEnabled(false);
            this.mChart.getAxisRight().setEnabled(true);
            YAxis axisRight = this.mChart.getAxisRight();
            axisRight.setLabelCount(10, true);
            axisRight.setAxisMaxValue(f3 / 1024.0f);
            axisRight.setAxisMinValue(0.0f);
            axisRight.enableGridDashedLine(5.0f, 5.0f, 1.0f);
            axisRight.setDrawGridLines(false);
            axisRight.setTextSize(6.0f);
            axisRight.setTextColor(Color.parseColor(new ObfuscatedString(new long[]{-3151572512949817147L, -6143151321813860146L}).toString()));
            lineData.removeDataSet(0);
            lineData.removeDataSet(1);
            lineData.clearValues();
            lineData.addDataSet(lineDataSet2);
            lineData.addDataSet(lineDataSet);
            lineData.notifyDataChanged();
            Legend legend = this.mChart.getLegend();
            legend.setTextSize(6.0f);
            legend.setTypeface(Typeface.SERIF);
            legend.setTextColor(0);
            this.mChart.getDescription().setEnabled(false);
            this.mChart.setData(lineData);
            this.mChart.getViewPortHandler().setMaximumScaleX(5.0f);
            this.mChart.getViewPortHandler().setMaximumScaleY(5.0f);
            this.mChart.notifyDataSetChanged();
            this.mChart.invalidate();
        }
    }

    @Override // android.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.graph, viewGroup, false);
        this.mChart = (LineChart) inflate.findViewById(R.id.chart);
        this.mGraphStats = StatisticsGraphData.getStatisticData().getDataTransferStats();
        try {
            setGraph();
            updateByteCount();
        } catch (Exception unused) {
        }
        return inflate;
    }

    public void setSpeed() {
    }
}
