package com.tknetwork.tunnel.view;

import android.content.Context;
import android.os.Handler;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import androidx.work.WorkRequest;
import com.fbd.tunnel.R;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.interfaces.datasets.ILineDataSet;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import de.blinkt.openvpn.core.TrafficHistory;
import defpackage.C0370x5ac5058d;
import defpackage.C0419x35cc9f53;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class GraphHelper {
    private static final int TIME_PERIOD_HOURS = 2;
    private static final int TIME_PERIOD_MINUTES = 1;
    private static Handler mHandler;
    private static GraphHelper m_GraphHelper;
    private StatisticsGraphData.DataTransferStats _upDateBytes;
    protected List<Long> dList;
    LinkedList<Entry> dataIn;
    LinkedList<Entry> dataOut;
    private int mColor;
    private int mColourIn;
    private int mColourOut;
    private ConfigUtil mConfig;
    private Context mContext;
    private LineChart mLineChart;
    protected List<Long> uList;
    private String TAG = new ObfuscatedString(new long[]{5300005270919112928L, 5271624605915354L, 8201775743864247120L}).toString();
    private boolean mLogScale = false;
    public Runnable triggerRefresh = new Runnable() { // from class: com.tknetwork.tunnel.view.GraphHelper.1
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GraphHelper.this.getGraphView();
            GraphHelper.mHandler.postDelayed(this, 1000L);
        }
    };

    /* renamed from: com.tknetwork.tunnel.view.GraphHelper$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GraphHelper.this.getGraphView();
            GraphHelper.mHandler.postDelayed(this, 1000L);
        }
    }

    private LineData getDataSet1(int i) {
        LinkedList<TrafficHistory.TrafficDatapoint> minutes;
        long j;
        long j2;
        float f;
        long j3;
        float f2;
        long j4;
        long j5;
        this.dList = this._upDateBytes.getFastReceivedSeries();
        this.uList = this._upDateBytes.getFastSentSeries();
        this.dataIn = new LinkedList<>();
        this.dataOut = new LinkedList<>();
        long j6 = 0;
        if (i != 1) {
            if (i != 2) {
                minutes = TkLogStatus.trafficHistory.getSeconds();
                j2 = 300000;
                j = 2000;
            } else {
                minutes = TkLogStatus.trafficHistory.getHours();
                j = 3600000;
                j2 = 0;
            }
        } else {
            minutes = TkLogStatus.trafficHistory.getMinutes();
            j = 60000;
            j2 = WorkRequest.MAX_BACKOFF_MILLIS;
        }
        if (minutes.size() == 0) {
            minutes = TrafficHistory.getDummyList();
        }
        if (this.mLogScale) {
            f = 2.0f;
        } else {
            f = 0.0f;
        }
        long currentTimeMillis = System.currentTimeMillis();
        Iterator<TrafficHistory.TrafficDatapoint> it = minutes.iterator();
        long j7 = 0;
        long j8 = 0;
        long j9 = 0;
        long j10 = 0;
        while (it.hasNext()) {
            TrafficHistory.TrafficDatapoint next = it.next();
            if (j2 == j6 || currentTimeMillis - next.timestamp <= j2) {
                if (j8 == j6) {
                    long j11 = minutes.peek().timestamp;
                    long j12 = minutes.peek().in;
                    j8 = j11;
                    j10 = minutes.peek().out;
                    j9 = j12;
                }
                float f3 = ((float) (next.timestamp - j8)) / 100.0f;
                long j13 = next.in;
                long j14 = j2;
                float f4 = (float) (j / 1000);
                float f5 = ((float) (j13 - j9)) / f4;
                long j15 = next.out;
                j9 = j13;
                float f6 = ((float) (j15 - j10)) / f4;
                if (this.mLogScale) {
                    float max = Math.max(2.0f, (float) Math.log10(f5 * 8.0f));
                    j3 = j;
                    f6 = Math.max(2.0f, (float) Math.log10(f6 * 8.0f));
                    f5 = max;
                } else {
                    j3 = j;
                }
                if (j7 > 0 && next.timestamp - j7 > 2 * j3) {
                    f2 = f5;
                    float f7 = ((float) ((j7 - j8) + j3)) / 100.0f;
                    this.dataIn.add(new Entry(f7, f));
                    j4 = j15;
                    j5 = j3;
                    float f8 = f3 - (((float) j5) / 100.0f);
                    this.dataIn.add(new Entry(f8, f));
                    this.dataOut.add(new Entry(f7, f));
                    this.dataOut.add(new Entry(f8, f));
                } else {
                    f2 = f5;
                    j4 = j15;
                    j5 = j3;
                }
                long j16 = next.timestamp;
                this.dataIn.add(new Entry(f3, f2));
                this.dataOut.add(new Entry(f3, f6));
                j7 = j16;
                j = j5;
                j10 = j4;
                j2 = j14;
                j6 = 0;
            }
        }
        long j17 = j;
        if (j7 < currentTimeMillis - j17) {
            if (currentTimeMillis - j7 > j17 * 2000) {
                float f9 = ((float) ((j17 * 1000) + (j7 - j8))) / 100.0f;
                this.dataIn.add(new Entry(f9, f));
                this.dataOut.add(new Entry(f9, f));
            }
            float f10 = (float) ((currentTimeMillis - j8) / 100);
            this.dataOut.add(new Entry(f10, f));
            this.dataIn.add(new Entry(f10, f));
        }
        ArrayList arrayList = new ArrayList();
        LineDataSet lineDataSet = new LineDataSet(this.dataOut, new ObfuscatedString(new long[]{6341144163944703450L, 8646688808459401236L, -6340857800046944443L}).toString());
        LineDataSet lineDataSet2 = new LineDataSet(this.dataIn, new ObfuscatedString(new long[]{2080509209175980506L, -8984600046081834358L}).toString());
        lineDataSet2.setColor(ViewCompat.MEASURED_STATE_MASK);
        setLineDataAttributes(lineDataSet, this.mColourOut);
        setLineDataAttributes(lineDataSet2, this.mColourIn);
        arrayList.add(lineDataSet);
        arrayList.add(lineDataSet2);
        return new LineData(arrayList);
    }

    public static synchronized GraphHelper getHelper() {
        GraphHelper graphHelper;
        synchronized (GraphHelper.class) {
            synchronized (GraphHelper.class) {
                try {
                    if (m_GraphHelper == null) {
                        m_GraphHelper = new GraphHelper();
                    }
                    if (mHandler == null) {
                        mHandler = new Handler();
                    }
                    graphHelper = m_GraphHelper;
                } finally {
                }
            }
            return graphHelper;
        }
        return graphHelper;
    }

    private String humanReadableByteCount(long j, boolean z) {
        int i;
        if (z) {
            j *= 8;
        }
        if (z) {
            i = 1000;
        } else {
            i = 1024;
        }
        double d = j;
        double d2 = i;
        int max = Math.max(0, Math.min((int) (Math.log(d) / Math.log(d2)), 3));
        float pow = (float) (d / Math.pow(d2, max));
        if (z) {
            if (max != 0) {
                if (max != 1) {
                    if (max != 2) {
                        return this.mContext.getString(R.string.gbits_per_second, Float.valueOf(pow));
                    }
                    return this.mContext.getString(R.string.mbits_per_second, Float.valueOf(pow));
                }
                return this.mContext.getString(R.string.kbits_per_second, Float.valueOf(pow));
            }
            return this.mContext.getString(R.string.bits_per_second, Float.valueOf(pow));
        }
        return null;
    }

    public static /* synthetic */ String lambda$getGraphView$0(float f, AxisBase axisBase) {
        return String.format(Locale.getDefault(), new ObfuscatedString(new long[]{5550615646271287936L, 3762456221622407547L, 1581799114955156623L}).toString(), Float.valueOf((axisBase.getAxisMaximum() - f) / 10.0f));
    }

    public /* synthetic */ String lambda$getGraphView$1(float f, AxisBase axisBase) {
        boolean z = this.mLogScale;
        if (z && f < 2.1f) {
            return new ObfuscatedString(new long[]{1586387258863995068L, -2842978007047695980L, 4463657863299856464L}).toString();
        }
        if (z) {
            f = ((float) Math.pow(10.0d, f)) / 8.0f;
        }
        return humanReadableByteCount(f, true);
    }

    private void setLineDataAttributes(LineDataSet lineDataSet, int i) {
        lineDataSet.setLineWidth(1.0f);
        lineDataSet.setCircleRadius(1.0f);
        lineDataSet.setDrawCircles(false);
        lineDataSet.setDrawFilled(true);
        lineDataSet.setFillAlpha(80);
        lineDataSet.setFillColor(ContextCompat.getColor(this.mContext, R.color.colorAccent));
        lineDataSet.setColor(i);
        lineDataSet.setMode(LineDataSet.Mode.LINEAR);
        lineDataSet.setDrawHorizontalHighlightIndicator(false);
        lineDataSet.setDrawValues(false);
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ String m1649xfbe0c504(float f, AxisBase axisBase) {
        return lambda$getGraphView$0(f, axisBase);
    }

    public GraphHelper chart(LineChart lineChart) {
        this.mLineChart = lineChart;
        return m_GraphHelper;
    }

    public GraphHelper color(int i) {
        this.mColor = i;
        return m_GraphHelper;
    }

    public void getGraphView() {
        try {
            this.mLineChart.getDescription().setEnabled(false);
            this.mLineChart.setTouchEnabled(false);
            this.mLineChart.setDrawGridBackground(false);
            this.mLineChart.getLegend().setEnabled(true);
            this.mLineChart.getLegend().setTextColor(ViewCompat.MEASURED_STATE_MASK);
            XAxis xAxis = this.mLineChart.getXAxis();
            xAxis.setPosition(XAxis.XAxisPosition.BOTTOM);
            xAxis.setDrawGridLines(false);
            xAxis.setLabelCount(0, false);
            xAxis.setDrawAxisLine(false);
            xAxis.setDrawLabels(true);
            xAxis.setTextSize(7.0f);
            xAxis.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            xAxis.setValueFormatter(new C0370x5ac5058d(15));
            YAxis axisLeft = this.mLineChart.getAxisLeft();
            axisLeft.setLabelCount(5, false);
            axisLeft.setDrawAxisLine(false);
            axisLeft.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            axisLeft.setValueFormatter(new C0419x35cc9f53(this, 11));
            this.mLineChart.getAxisRight().setEnabled(false);
            LineData dataSet1 = getDataSet1(0);
            float yMax = dataSet1.getYMax();
            if (this.mLogScale) {
                axisLeft.setAxisMinimum(2.0f);
                axisLeft.setAxisMaximum((float) Math.ceil(yMax));
                axisLeft.setLabelCount((int) Math.ceil(yMax - 2.0f));
            } else {
                axisLeft.setAxisMinimum(0.0f);
                axisLeft.resetAxisMaximum();
                axisLeft.setLabelCount(5);
            }
            if (((ILineDataSet) dataSet1.getDataSetByIndex(0)).getEntryCount() < 1) {
                this.mLineChart.setData(null);
            } else {
                this.mLineChart.setData(dataSet1);
            }
            this.mLineChart.invalidate();
        } catch (Exception e) {
            e.toString();
        }
    }

    public void start() {
        mHandler.removeCallbacks(this.triggerRefresh);
        getGraphView();
        mHandler.postDelayed(this.triggerRefresh, 1000L);
    }

    public void stop() {
        mHandler.removeCallbacks(this.triggerRefresh);
        this.mLineChart.invalidate();
    }

    public GraphHelper with(Context context) {
        this.mContext = context;
        this.mConfig = ConfigUtil.getInstance(context);
        this.mColourIn = -16711936;
        this.mColourOut = SupportMenu.CATEGORY_MASK;
        this._upDateBytes = StatisticsGraphData.getStatisticData().getDataTransferStats();
        return m_GraphHelper;
    }
}
