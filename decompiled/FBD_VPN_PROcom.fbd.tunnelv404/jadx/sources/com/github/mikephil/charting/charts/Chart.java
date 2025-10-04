package com.github.mikephil.charting.charts;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.github.mikephil.charting.animation.ChartAnimator;
import com.github.mikephil.charting.animation.Easing;
import com.github.mikephil.charting.animation.EasingFunction;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.IMarker;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.ChartData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.formatter.DefaultValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.github.mikephil.charting.highlight.ChartHighlighter;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.highlight.IHighlighter;
import com.github.mikephil.charting.interfaces.dataprovider.ChartInterface;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.listener.OnChartGestureListener;
import com.github.mikephil.charting.listener.OnChartValueSelectedListener;
import com.github.mikephil.charting.renderer.DataRenderer;
import com.github.mikephil.charting.renderer.LegendRenderer;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public abstract class Chart<T extends ChartData<? extends IDataSet<? extends Entry>>> extends ViewGroup implements ChartInterface {
    public static final String LOG_TAG = new ObfuscatedString(new long[]{-508530574332029338L, 2135389413739185454L, -4391487664521324857L}).toString();
    public static final int PAINT_CENTER_TEXT = 14;
    public static final int PAINT_DESCRIPTION = 11;
    public static final int PAINT_GRID_BACKGROUND = 4;
    public static final int PAINT_HOLE = 13;
    public static final int PAINT_INFO = 7;
    public static final int PAINT_LEGEND_LABEL = 18;
    protected ChartAnimator mAnimator;
    protected ChartTouchListener mChartTouchListener;
    protected T mData;
    protected DefaultValueFormatter mDefaultValueFormatter;
    protected Paint mDescPaint;
    protected Description mDescription;
    private boolean mDragDecelerationEnabled;
    private float mDragDecelerationFrictionCoef;
    protected boolean mDrawMarkers;
    private float mExtraBottomOffset;
    private float mExtraLeftOffset;
    private float mExtraRightOffset;
    private float mExtraTopOffset;
    private OnChartGestureListener mGestureListener;
    protected boolean mHighLightPerTapEnabled;
    protected IHighlighter mHighlighter;
    protected Highlight[] mIndicesToHighlight;
    protected Paint mInfoPaint;
    protected ArrayList<Runnable> mJobs;
    protected Legend mLegend;
    protected LegendRenderer mLegendRenderer;
    protected boolean mLogEnabled;
    protected IMarker mMarker;
    protected float mMaxHighlightDistance;
    private String mNoDataText;
    private boolean mOffsetsCalculated;
    protected DataRenderer mRenderer;
    protected OnChartValueSelectedListener mSelectionListener;
    protected boolean mTouchEnabled;
    private boolean mUnbind;
    protected ViewPortHandler mViewPortHandler;
    protected XAxis mXAxis;

    /* renamed from: com.github.mikephil.charting.charts.Chart$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$CompressFormat;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            $SwitchMap$android$graphics$Bitmap$CompressFormat = iArr;
            try {
                iArr[Bitmap.CompressFormat.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Chart(Context context) {
        super(context);
        this.mLogEnabled = false;
        this.mData = null;
        this.mHighLightPerTapEnabled = true;
        this.mDragDecelerationEnabled = true;
        this.mDragDecelerationFrictionCoef = 0.9f;
        this.mDefaultValueFormatter = new DefaultValueFormatter(0);
        this.mTouchEnabled = true;
        this.mNoDataText = new ObfuscatedString(new long[]{3170692173173116247L, 418810659530813366L, 1707641372462263206L, -4641891058951804418L}).toString();
        this.mViewPortHandler = new ViewPortHandler();
        this.mExtraTopOffset = 0.0f;
        this.mExtraRightOffset = 0.0f;
        this.mExtraBottomOffset = 0.0f;
        this.mExtraLeftOffset = 0.0f;
        this.mOffsetsCalculated = false;
        this.mMaxHighlightDistance = 0.0f;
        this.mDrawMarkers = true;
        this.mJobs = new ArrayList<>();
        this.mUnbind = false;
        init();
    }

    private void unbindDrawables(View view) {
        if (view.getBackground() != null) {
            view.getBackground().setCallback(null);
        }
        if (view instanceof ViewGroup) {
            int i = 0;
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i < viewGroup.getChildCount()) {
                    unbindDrawables(viewGroup.getChildAt(i));
                    i++;
                } else {
                    viewGroup.removeAllViews();
                    return;
                }
            }
        }
    }

    public void addViewportJob(Runnable runnable) {
        if (this.mViewPortHandler.hasChartDimens()) {
            post(runnable);
        } else {
            this.mJobs.add(runnable);
        }
    }

    public void animateX(int i, EasingFunction easingFunction) {
        this.mAnimator.animateX(i, easingFunction);
    }

    public void animateXY(int i, int i2, EasingFunction easingFunction, EasingFunction easingFunction2) {
        this.mAnimator.animateXY(i, i2, easingFunction, easingFunction2);
    }

    public void animateY(int i, EasingFunction easingFunction) {
        this.mAnimator.animateY(i, easingFunction);
    }

    public abstract void calcMinMax();

    public abstract void calculateOffsets();

    public void clear() {
        this.mData = null;
        this.mOffsetsCalculated = false;
        this.mIndicesToHighlight = null;
        this.mChartTouchListener.setLastHighlighted(null);
        invalidate();
    }

    public void clearAllViewportJobs() {
        this.mJobs.clear();
    }

    public void clearValues() {
        this.mData.clearValues();
        invalidate();
    }

    public void disableScroll() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public void drawDescription(Canvas canvas) {
        float f;
        float f2;
        Description description = this.mDescription;
        if (description != null && description.isEnabled()) {
            MPPointF position = this.mDescription.getPosition();
            this.mDescPaint.setTypeface(this.mDescription.getTypeface());
            this.mDescPaint.setTextSize(this.mDescription.getTextSize());
            this.mDescPaint.setColor(this.mDescription.getTextColor());
            this.mDescPaint.setTextAlign(this.mDescription.getTextAlign());
            if (position == null) {
                f2 = (getWidth() - this.mViewPortHandler.offsetRight()) - this.mDescription.getXOffset();
                f = (getHeight() - this.mViewPortHandler.offsetBottom()) - this.mDescription.getYOffset();
            } else {
                float f3 = position.x;
                f = position.y;
                f2 = f3;
            }
            canvas.drawText(this.mDescription.getText(), f2, f, this.mDescPaint);
        }
    }

    public void drawMarkers(Canvas canvas) {
        if (this.mMarker != null && isDrawMarkersEnabled() && valuesToHighlight()) {
            int i = 0;
            while (true) {
                Highlight[] highlightArr = this.mIndicesToHighlight;
                if (i < highlightArr.length) {
                    Highlight highlight = highlightArr[i];
                    IDataSet dataSetByIndex = this.mData.getDataSetByIndex(highlight.getDataSetIndex());
                    Entry entryForHighlight = this.mData.getEntryForHighlight(this.mIndicesToHighlight[i]);
                    int entryIndex = dataSetByIndex.getEntryIndex(entryForHighlight);
                    if (entryForHighlight != null) {
                        if (entryIndex <= this.mAnimator.getPhaseX() * dataSetByIndex.getEntryCount()) {
                            float[] markerPosition = getMarkerPosition(highlight);
                            if (this.mViewPortHandler.isInBounds(markerPosition[0], markerPosition[1])) {
                                this.mMarker.refreshContent(entryForHighlight, highlight);
                                this.mMarker.draw(canvas, markerPosition[0], markerPosition[1]);
                            }
                        }
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void enableScroll() {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
    }

    public ChartAnimator getAnimator() {
        return this.mAnimator;
    }

    public MPPointF getCenter() {
        return MPPointF.getInstance(getWidth() / 2.0f, getHeight() / 2.0f);
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public MPPointF getCenterOfView() {
        return getCenter();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public MPPointF getCenterOffsets() {
        return this.mViewPortHandler.getContentCenter();
    }

    public Bitmap getChartBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(getWidth(), getHeight(), Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        Drawable background = getBackground();
        if (background != null) {
            background.draw(canvas);
        } else {
            canvas.drawColor(-1);
        }
        draw(canvas);
        return createBitmap;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public RectF getContentRect() {
        return this.mViewPortHandler.getContentRect();
    }

    public T getData() {
        return this.mData;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public IValueFormatter getDefaultValueFormatter() {
        return this.mDefaultValueFormatter;
    }

    public Description getDescription() {
        return this.mDescription;
    }

    public float getDragDecelerationFrictionCoef() {
        return this.mDragDecelerationFrictionCoef;
    }

    public float getExtraBottomOffset() {
        return this.mExtraBottomOffset;
    }

    public float getExtraLeftOffset() {
        return this.mExtraLeftOffset;
    }

    public float getExtraRightOffset() {
        return this.mExtraRightOffset;
    }

    public float getExtraTopOffset() {
        return this.mExtraTopOffset;
    }

    public Highlight getHighlightByTouchPoint(float f, float f2) {
        if (this.mData == null) {
            new ObfuscatedString(new long[]{-6752748095618151909L, 9112864562699403478L, -8868991086535237240L}).toString();
            new ObfuscatedString(new long[]{5231011628474807446L, -4404488321004001643L, -6093646875222255898L, 6836609867201937746L, 2532968208905046072L, -6012177530601033603L}).toString();
            return null;
        }
        return getHighlighter().getHighlight(f, f2);
    }

    public Highlight[] getHighlighted() {
        return this.mIndicesToHighlight;
    }

    public IHighlighter getHighlighter() {
        return this.mHighlighter;
    }

    public ArrayList<Runnable> getJobs() {
        return this.mJobs;
    }

    public Legend getLegend() {
        return this.mLegend;
    }

    public LegendRenderer getLegendRenderer() {
        return this.mLegendRenderer;
    }

    public IMarker getMarker() {
        return this.mMarker;
    }

    public float[] getMarkerPosition(Highlight highlight) {
        return new float[]{highlight.getDrawX(), highlight.getDrawY()};
    }

    @Deprecated
    public IMarker getMarkerView() {
        return getMarker();
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getMaxHighlightDistance() {
        return this.mMaxHighlightDistance;
    }

    public OnChartGestureListener getOnChartGestureListener() {
        return this.mGestureListener;
    }

    public ChartTouchListener getOnTouchListener() {
        return this.mChartTouchListener;
    }

    public Paint getPaint(int i) {
        if (i != 7) {
            if (i != 11) {
                return null;
            }
            return this.mDescPaint;
        }
        return this.mInfoPaint;
    }

    public DataRenderer getRenderer() {
        return this.mRenderer;
    }

    public ViewPortHandler getViewPortHandler() {
        return this.mViewPortHandler;
    }

    public XAxis getXAxis() {
        return this.mXAxis;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getXChartMax() {
        return this.mXAxis.mAxisMaximum;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getXChartMin() {
        return this.mXAxis.mAxisMinimum;
    }

    @Override // com.github.mikephil.charting.interfaces.dataprovider.ChartInterface
    public float getXRange() {
        return this.mXAxis.mAxisRange;
    }

    public float getYMax() {
        return this.mData.getYMax();
    }

    public float getYMin() {
        return this.mData.getYMin();
    }

    public void highlightValue(float f, int i) {
        highlightValue(f, i, true);
    }

    public void highlightValues(Highlight[] highlightArr) {
        this.mIndicesToHighlight = highlightArr;
        setLastHighlighted(highlightArr);
        invalidate();
    }

    public void init() {
        setWillNotDraw(false);
        this.mAnimator = new ChartAnimator(new ValueAnimator.AnimatorUpdateListener() { // from class: com.github.mikephil.charting.charts.Chart.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Chart.this.postInvalidate();
            }
        });
        Utils.init(getContext());
        this.mMaxHighlightDistance = Utils.convertDpToPixel(500.0f);
        this.mDescription = new Description();
        Legend legend = new Legend();
        this.mLegend = legend;
        this.mLegendRenderer = new LegendRenderer(this.mViewPortHandler, legend);
        this.mXAxis = new XAxis();
        this.mDescPaint = new Paint(1);
        Paint paint = new Paint(1);
        this.mInfoPaint = paint;
        paint.setColor(Color.rgb(247, 189, 51));
        this.mInfoPaint.setTextAlign(Paint.Align.CENTER);
        this.mInfoPaint.setTextSize(Utils.convertDpToPixel(12.0f));
        if (this.mLogEnabled) {
            new ObfuscatedString(new long[]{-2848279975603705505L}).toString();
            new ObfuscatedString(new long[]{-2703899474717502605L, 1649227781032045217L, 6215277596409738321L}).toString();
        }
    }

    public boolean isDragDecelerationEnabled() {
        return this.mDragDecelerationEnabled;
    }

    @Deprecated
    public boolean isDrawMarkerViewsEnabled() {
        return isDrawMarkersEnabled();
    }

    public boolean isDrawMarkersEnabled() {
        return this.mDrawMarkers;
    }

    public boolean isEmpty() {
        T t = this.mData;
        if (t == null || t.getEntryCount() <= 0) {
            return true;
        }
        return false;
    }

    public boolean isHighlightPerTapEnabled() {
        return this.mHighLightPerTapEnabled;
    }

    public boolean isLogEnabled() {
        return this.mLogEnabled;
    }

    public abstract void notifyDataSetChanged();

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mUnbind) {
            unbindDrawables(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mData == null) {
            if (!TextUtils.isEmpty(this.mNoDataText)) {
                MPPointF center = getCenter();
                canvas.drawText(this.mNoDataText, center.x, center.y, this.mInfoPaint);
                return;
            }
            return;
        }
        if (!this.mOffsetsCalculated) {
            calculateOffsets();
            this.mOffsetsCalculated = true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            getChildAt(i5).layout(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int convertDpToPixel = (int) Utils.convertDpToPixel(50.0f);
        setMeasuredDimension(Math.max(getSuggestedMinimumWidth(), View.resolveSize(convertDpToPixel, i)), Math.max(getSuggestedMinimumHeight(), View.resolveSize(convertDpToPixel, i2)));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.mLogEnabled) {
            new ObfuscatedString(new long[]{8237321568575409265L, -1872948873885171924L, 3743319258085054616L}).toString();
            new ObfuscatedString(new long[]{3468380410608798923L, 6343736767415768008L, 2907160356543415248L}).toString();
        }
        if (i > 0 && i2 > 0 && i < 10000 && i2 < 10000) {
            if (this.mLogEnabled) {
                new ObfuscatedString(new long[]{3416019286564465960L, -4303569746951971336L, -2407971690254469834L}).toString();
                new ObfuscatedString(new long[]{-1952550783789157148L, -3220915320077930188L, -6764758915142387014L, 7309835275990285290L, 9083028447997705764L}).toString();
                new ObfuscatedString(new long[]{-289511798813647503L, -1567468288867483212L, -5503451301793604377L}).toString();
            }
            this.mViewPortHandler.setChartDimens(i, i2);
        } else if (this.mLogEnabled) {
            new ObfuscatedString(new long[]{2811880039570376474L, 5395720064189933671L, -4233023869679432412L}).toString();
            new ObfuscatedString(new long[]{-2775743103002558243L, -1484969246325536900L, 8917631538754749839L, -2678804430551841890L, -4488541823983695395L, -8471845613934074587L}).toString();
            new ObfuscatedString(new long[]{-8813333960010785276L, -7749586587041612866L, -1475830341596060924L}).toString();
        }
        notifyDataSetChanged();
        Iterator<Runnable> it = this.mJobs.iterator();
        while (it.hasNext()) {
            post(it.next());
        }
        this.mJobs.clear();
        super.onSizeChanged(i, i2, i3, i4);
    }

    public void removeViewportJob(Runnable runnable) {
        this.mJobs.remove(runnable);
    }

    public boolean saveToGallery(String str, String str2, String str3, Bitmap.CompressFormat compressFormat, int i) {
        String obfuscatedString;
        if (i < 0 || i > 100) {
            i = 50;
        }
        long currentTimeMillis = System.currentTimeMillis();
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        StringBuilder sb = new StringBuilder();
        sb.append(externalStorageDirectory.getAbsolutePath());
        File file = new File(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5051556062354102080L, 6813202555444036322L}), sb, str2));
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        new ObfuscatedString(new long[]{-3158643283128744291L}).toString();
        int i2 = AnonymousClass2.$SwitchMap$android$graphics$Bitmap$CompressFormat[compressFormat.ordinal()];
        if (i2 == 1) {
            obfuscatedString = new ObfuscatedString(new long[]{-1093087732573895461L, 6325081796646436972L, 6897694144922273295L}).toString();
            if (!str.endsWith(new ObfuscatedString(new long[]{-1570284342046119397L, -1094275321345697834L}).toString())) {
                str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{531016299830560610L, 383015099342751991L}), AbstractC0749x8313616e.m3341xc20437a5(str));
            }
        } else if (i2 != 2) {
            obfuscatedString = new ObfuscatedString(new long[]{4015004664733359087L, 4699613791047325672L, -2978130888330423078L}).toString();
            if (!str.endsWith(new ObfuscatedString(new long[]{3013851719469090160L, 4247338951816604944L}).toString()) && !str.endsWith(new ObfuscatedString(new long[]{171986298536341191L, -7621726748422196778L}).toString())) {
                str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7673728176614503458L, -5431324037302114435L}), AbstractC0749x8313616e.m3341xc20437a5(str));
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-2303354660759949L, -8376688166494163661L, -7329374386167336148L}).toString();
            if (!str.endsWith(new ObfuscatedString(new long[]{4848223204749962239L, 8735976133104327734L}).toString())) {
                str = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-634069976399875312L, 3047636896400293884L}), AbstractC0749x8313616e.m3341xc20437a5(str));
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath());
        String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1574904344956292499L, -3661396589275584458L}), sb2, str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(m3336x1aebc6d9);
            getChartBitmap().compress(compressFormat, i, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            long length = new File(m3336x1aebc6d9).length();
            ContentValues contentValues = new ContentValues(8);
            contentValues.put(new ObfuscatedString(new long[]{9204581872640056493L, -3252399784750957978L}).toString(), str);
            contentValues.put(new ObfuscatedString(new long[]{6638798151720829885L, 8360519057267743718L, -604578702385368680L}).toString(), str);
            contentValues.put(new ObfuscatedString(new long[]{3815429982063506486L, 3171401030393638728L, -8009480434360915750L}).toString(), Long.valueOf(currentTimeMillis));
            contentValues.put(new ObfuscatedString(new long[]{-3393371056279037788L, 5709469236416245740L, -4954230490842270426L}).toString(), obfuscatedString);
            contentValues.put(new ObfuscatedString(new long[]{3688810376384298263L, -2156075694396807485L, 4887169754100446523L}).toString(), str3);
            contentValues.put(new ObfuscatedString(new long[]{2810713565964846961L, 5353235671758606449L, 6734509884587597777L}).toString(), (Integer) 0);
            contentValues.put(new ObfuscatedString(new long[]{2851440728052257977L, -520749577106093854L}).toString(), m3336x1aebc6d9);
            contentValues.put(new ObfuscatedString(new long[]{-5210511517666111640L, -57767415331483002L}).toString(), Long.valueOf(length));
            return getContext().getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues) != null;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean saveToPath(String str, String str2) {
        Bitmap chartBitmap = getChartBitmap();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(Environment.getExternalStorageDirectory().getPath() + str2 + new ObfuscatedString(new long[]{-7165215073776454677L, 3047992816170602532L}).toString() + str + new ObfuscatedString(new long[]{9017589298671769672L, -8555198116651181161L}).toString());
            chartBitmap.compress(Bitmap.CompressFormat.PNG, 40, fileOutputStream);
            fileOutputStream.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setData(T t) {
        this.mData = t;
        this.mOffsetsCalculated = false;
        if (t == null) {
            return;
        }
        setupDefaultFormatter(t.getYMin(), t.getYMax());
        for (IDataSet iDataSet : this.mData.getDataSets()) {
            if (iDataSet.needsFormatter() || iDataSet.getValueFormatter() == this.mDefaultValueFormatter) {
                iDataSet.setValueFormatter(this.mDefaultValueFormatter);
            }
        }
        notifyDataSetChanged();
        if (this.mLogEnabled) {
            new ObfuscatedString(new long[]{-2481784487814193761L, -2596738216819056997L, 8167354853133456661L}).toString();
            new ObfuscatedString(new long[]{4839003444934244883L, -8467309730289381987L, -8814608323250725068L}).toString();
        }
    }

    public void setDescription(Description description) {
        this.mDescription = description;
    }

    public void setDragDecelerationEnabled(boolean z) {
        this.mDragDecelerationEnabled = z;
    }

    public void setDragDecelerationFrictionCoef(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        if (f >= 1.0f) {
            f = 0.999f;
        }
        this.mDragDecelerationFrictionCoef = f;
    }

    @Deprecated
    public void setDrawMarkerViews(boolean z) {
        setDrawMarkers(z);
    }

    public void setDrawMarkers(boolean z) {
        this.mDrawMarkers = z;
    }

    public void setExtraBottomOffset(float f) {
        this.mExtraBottomOffset = Utils.convertDpToPixel(f);
    }

    public void setExtraLeftOffset(float f) {
        this.mExtraLeftOffset = Utils.convertDpToPixel(f);
    }

    public void setExtraOffsets(float f, float f2, float f3, float f4) {
        setExtraLeftOffset(f);
        setExtraTopOffset(f2);
        setExtraRightOffset(f3);
        setExtraBottomOffset(f4);
    }

    public void setExtraRightOffset(float f) {
        this.mExtraRightOffset = Utils.convertDpToPixel(f);
    }

    public void setExtraTopOffset(float f) {
        this.mExtraTopOffset = Utils.convertDpToPixel(f);
    }

    public void setHardwareAccelerationEnabled(boolean z) {
        if (z) {
            setLayerType(2, null);
        } else {
            setLayerType(1, null);
        }
    }

    public void setHighlightPerTapEnabled(boolean z) {
        this.mHighLightPerTapEnabled = z;
    }

    public void setHighlighter(ChartHighlighter chartHighlighter) {
        this.mHighlighter = chartHighlighter;
    }

    public void setLastHighlighted(Highlight[] highlightArr) {
        Highlight highlight;
        if (highlightArr != null && highlightArr.length > 0 && (highlight = highlightArr[0]) != null) {
            this.mChartTouchListener.setLastHighlighted(highlight);
        } else {
            this.mChartTouchListener.setLastHighlighted(null);
        }
    }

    public void setLogEnabled(boolean z) {
        this.mLogEnabled = z;
    }

    public void setMarker(IMarker iMarker) {
        this.mMarker = iMarker;
    }

    @Deprecated
    public void setMarkerView(IMarker iMarker) {
        setMarker(iMarker);
    }

    public void setMaxHighlightDistance(float f) {
        this.mMaxHighlightDistance = Utils.convertDpToPixel(f);
    }

    public void setNoDataText(String str) {
        this.mNoDataText = str;
    }

    public void setNoDataTextColor(int i) {
        this.mInfoPaint.setColor(i);
    }

    public void setNoDataTextTypeface(Typeface typeface) {
        this.mInfoPaint.setTypeface(typeface);
    }

    public void setOnChartGestureListener(OnChartGestureListener onChartGestureListener) {
        this.mGestureListener = onChartGestureListener;
    }

    public void setOnChartValueSelectedListener(OnChartValueSelectedListener onChartValueSelectedListener) {
        this.mSelectionListener = onChartValueSelectedListener;
    }

    public void setOnTouchListener(ChartTouchListener chartTouchListener) {
        this.mChartTouchListener = chartTouchListener;
    }

    public void setPaint(Paint paint, int i) {
        if (i != 7) {
            if (i == 11) {
                this.mDescPaint = paint;
                return;
            }
            return;
        }
        this.mInfoPaint = paint;
    }

    public void setRenderer(DataRenderer dataRenderer) {
        if (dataRenderer != null) {
            this.mRenderer = dataRenderer;
        }
    }

    public void setTouchEnabled(boolean z) {
        this.mTouchEnabled = z;
    }

    public void setUnbindEnabled(boolean z) {
        this.mUnbind = z;
    }

    public void setupDefaultFormatter(float f, float f2) {
        float max;
        T t = this.mData;
        if (t != null && t.getEntryCount() >= 2) {
            max = Math.abs(f2 - f);
        } else {
            max = Math.max(Math.abs(f), Math.abs(f2));
        }
        this.mDefaultValueFormatter.setup(Utils.getDecimals(max));
    }

    public boolean valuesToHighlight() {
        Highlight[] highlightArr = this.mIndicesToHighlight;
        if (highlightArr == null || highlightArr.length <= 0 || highlightArr[0] == null) {
            return false;
        }
        return true;
    }

    public void animateX(int i, Easing.EasingOption easingOption) {
        this.mAnimator.animateX(i, easingOption);
    }

    public void animateXY(int i, int i2, Easing.EasingOption easingOption, Easing.EasingOption easingOption2) {
        this.mAnimator.animateXY(i, i2, easingOption, easingOption2);
    }

    public void animateY(int i, Easing.EasingOption easingOption) {
        this.mAnimator.animateY(i, easingOption);
    }

    public void highlightValue(float f, float f2, int i) {
        highlightValue(f, f2, i, true);
    }

    public void animateX(int i) {
        this.mAnimator.animateX(i);
    }

    public void animateXY(int i, int i2) {
        this.mAnimator.animateXY(i, i2);
    }

    public void animateY(int i) {
        this.mAnimator.animateY(i);
    }

    public void highlightValue(float f, int i, boolean z) {
        highlightValue(f, Float.NaN, i, z);
    }

    public void highlightValue(float f, float f2, int i, boolean z) {
        if (i >= 0 && i < this.mData.getDataSetCount()) {
            highlightValue(new Highlight(f, f2, i), z);
        } else {
            highlightValue((Highlight) null, z);
        }
    }

    public void highlightValue(Highlight highlight) {
        highlightValue(highlight, false);
    }

    public void highlightValue(Highlight highlight, boolean z) {
        Entry entry = null;
        if (highlight == null) {
            this.mIndicesToHighlight = null;
        } else {
            if (this.mLogEnabled) {
                new ObfuscatedString(new long[]{7132259598003708342L, -4917252954749115709L, -3106568740808925808L}).toString();
                new ObfuscatedString(new long[]{-8631128681729575391L, -3948801659040777193L, -8297547034044554832L}).toString();
                highlight.toString();
            }
            Entry entryForHighlight = this.mData.getEntryForHighlight(highlight);
            if (entryForHighlight == null) {
                this.mIndicesToHighlight = null;
                highlight = null;
            } else {
                this.mIndicesToHighlight = new Highlight[]{highlight};
            }
            entry = entryForHighlight;
        }
        setLastHighlighted(this.mIndicesToHighlight);
        if (z && this.mSelectionListener != null) {
            if (!valuesToHighlight()) {
                this.mSelectionListener.onNothingSelected();
            } else {
                this.mSelectionListener.onValueSelected(entry, highlight);
            }
        }
        invalidate();
    }

    public Chart(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLogEnabled = false;
        this.mData = null;
        this.mHighLightPerTapEnabled = true;
        this.mDragDecelerationEnabled = true;
        this.mDragDecelerationFrictionCoef = 0.9f;
        this.mDefaultValueFormatter = new DefaultValueFormatter(0);
        this.mTouchEnabled = true;
        this.mNoDataText = new ObfuscatedString(new long[]{4976035134722774738L, -6486149686127286748L, -6530893458568867466L, -216424078158784463L}).toString();
        this.mViewPortHandler = new ViewPortHandler();
        this.mExtraTopOffset = 0.0f;
        this.mExtraRightOffset = 0.0f;
        this.mExtraBottomOffset = 0.0f;
        this.mExtraLeftOffset = 0.0f;
        this.mOffsetsCalculated = false;
        this.mMaxHighlightDistance = 0.0f;
        this.mDrawMarkers = true;
        this.mJobs = new ArrayList<>();
        this.mUnbind = false;
        init();
    }

    public Chart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLogEnabled = false;
        this.mData = null;
        this.mHighLightPerTapEnabled = true;
        this.mDragDecelerationEnabled = true;
        this.mDragDecelerationFrictionCoef = 0.9f;
        this.mDefaultValueFormatter = new DefaultValueFormatter(0);
        this.mTouchEnabled = true;
        this.mNoDataText = new ObfuscatedString(new long[]{-5135411482773207459L, -8834685991242338646L, 4817437198126994252L, -7445630132852898569L}).toString();
        this.mViewPortHandler = new ViewPortHandler();
        this.mExtraTopOffset = 0.0f;
        this.mExtraRightOffset = 0.0f;
        this.mExtraBottomOffset = 0.0f;
        this.mExtraLeftOffset = 0.0f;
        this.mOffsetsCalculated = false;
        this.mMaxHighlightDistance = 0.0f;
        this.mDrawMarkers = true;
        this.mJobs = new ArrayList<>();
        this.mUnbind = false;
        init();
    }

    public boolean saveToGallery(String str, int i) {
        return saveToGallery(str, new ObfuscatedString(new long[]{5368843642634006301L}).toString(), new ObfuscatedString(new long[]{-4519787387368453731L, -7084954473745003683L, -1255971302281991130L, -7437505950265756587L, -2163791950951078426L}).toString(), Bitmap.CompressFormat.JPEG, i);
    }
}
