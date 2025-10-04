package com.tknetwork.tunnel.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;

/* loaded from: classes3.dex */
public class DurationView extends View {
    private final String DEFAULT_DAYS_LABEL;
    private final float DEFAULT_DIVIDER_TOP_BOTTOM_MARGIN;
    private final float DEFAULT_DIVIDER_WIDTH;
    private final String DEFAULT_HOURS_LABEL;
    private final int DEFAULT_LABEL_POSITION;
    private final float DEFAULT_LABEL_TEXT_SIZE;
    private final float DEFAULT_LABEL_VERTICAL_PADDING;
    private final String DEFAULT_MINS_LABEL;
    private final float DEFAULT_NUMBER_TEXT_SIZE;
    private final String DEFAULT_SECS_LABEL;
    private final boolean DEFAULT_SHOW_DIVIERS;
    private final boolean DEFAULT_SHOW_ITEM;
    private final int DEFAULT_TEXT_COLOR;
    private int mCanvasHeight;
    private int mCanvasWidth;
    private Context mContext;
    private int mDays;
    private int mDaysColor;
    private String mDaysLabel;
    private int mDaysLabelColor;
    private Paint mDaysLabelPaint;
    private Paint mDaysPaint;
    private int mDividersColor;
    private float mDividersMargin;
    private Paint mDividersPaint;
    private float mDividersWidth;
    private int mHours;
    private int mHoursColor;
    private String mHoursLabel;
    private int mHoursLabelColor;
    private Paint mHoursLabelPaint;
    private Paint mHoursPaint;
    private int mLabelPosition;
    private float mLabelTextSize;
    private float mLabelVerticalPadding;
    private int mLabelsColor;
    private int mMins;
    private int mMinsColor;
    private String mMinsLabel;
    private int mMinsLabelColor;
    private Paint mMinsLabelPaint;
    private Paint mMinsPaint;
    private int mNumberColor;
    private float mNumberTextSize;
    private int mSecs;
    private int mSecsColor;
    private String mSecsLabel;
    private int mSecsLabelColor;
    private Paint mSecsLabelPaint;
    private Paint mSecsPaint;
    private boolean mShowDays;
    private boolean mShowDividers;
    private boolean mShowHours;
    private boolean mShowLabels;
    private boolean mShowMins;
    private boolean mShowSecs;
    private boolean[] mShownBooleans;
    private int mTextColor;

    /* loaded from: classes3.dex */
    public enum Label {
        DAYS,
        HOURS,
        MINS,
        SECS
    }

    /* loaded from: classes3.dex */
    public enum LabelPosition {
        TOP,
        BOTTOM
    }

    public DurationView(Context context) {
        this(context, null);
    }

    private int dp2px(float f) {
        return (int) ((f * this.mContext.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private void drawValues(Canvas canvas, int i, boolean z) {
        float f;
        float f2;
        int i2 = 0;
        if (!this.mShowLabels) {
            z = false;
        }
        if (this.mShowDays) {
            if (isEmptyString(this.mDaysLabel)) {
                this.mDaysLabel = new ObfuscatedString(new long[]{8213811761612150864L, 1082035373600874635L}).toString();
            }
            if (this.mShowLabels) {
                String str = this.mDaysLabel;
                float f3 = i / 2;
                float f4 = this.mLabelTextSize;
                if (!z) {
                    f4 = f4 + this.mNumberTextSize + this.mLabelVerticalPadding;
                }
                canvas.drawText(str, f3, f4, this.mDaysLabelPaint);
            }
            String valueOf = String.valueOf(this.mDays);
            float f5 = i / 2;
            if (z) {
                f2 = this.mNumberTextSize + this.mLabelTextSize + this.mLabelVerticalPadding;
            } else {
                f2 = this.mNumberTextSize;
            }
            canvas.drawText(valueOf, f5, f2, this.mDaysPaint);
            i2 = 1;
        }
        if (this.mShowHours) {
            if (isEmptyString(this.mHoursLabel)) {
                this.mHoursLabel = new ObfuscatedString(new long[]{5447498759902822784L, 6971705245531814L}).toString();
            }
            if (this.mShowLabels) {
                String str2 = this.mHoursLabel;
                float f6 = (i * i2) + (i / 2);
                float f7 = this.mLabelTextSize;
                if (!z) {
                    f7 = f7 + this.mNumberTextSize + this.mLabelVerticalPadding;
                }
                canvas.drawText(str2, f6, f7, this.mHoursLabelPaint);
            }
            String valueOf2 = String.valueOf(this.mHours);
            float f8 = (i * i2) + (i / 2);
            float f9 = this.mNumberTextSize;
            if (z) {
                f9 = f9 + this.mLabelTextSize + this.mLabelVerticalPadding;
            }
            canvas.drawText(valueOf2, f8, f9, this.mHoursPaint);
            i2++;
        }
        if (this.mShowMins) {
            if (isEmptyString(this.mMinsLabel)) {
                this.mMinsLabel = new ObfuscatedString(new long[]{-5598058069959584027L, -7183010036318757302L}).toString();
            }
            if (this.mShowLabels) {
                String str3 = this.mMinsLabel;
                float f10 = (i * i2) + (i / 2);
                float f11 = this.mLabelTextSize;
                if (!z) {
                    f11 = f11 + this.mNumberTextSize + this.mLabelVerticalPadding;
                }
                canvas.drawText(str3, f10, f11, this.mMinsLabelPaint);
            }
            String valueOf3 = String.valueOf(this.mMins);
            float f12 = (i * i2) + (i / 2);
            float f13 = this.mNumberTextSize;
            if (z) {
                f13 = f13 + this.mLabelTextSize + this.mLabelVerticalPadding;
            }
            canvas.drawText(valueOf3, f12, f13, this.mMinsPaint);
            i2++;
        }
        if (this.mShowSecs) {
            if (isEmptyString(this.mSecsLabel)) {
                this.mSecsLabel = new ObfuscatedString(new long[]{5004829687981570261L, -6637256367447548411L}).toString();
            }
            if (this.mShowLabels) {
                String str4 = this.mSecsLabel;
                float f14 = (i * i2) + (i / 2);
                float f15 = this.mLabelTextSize;
                if (!z) {
                    f15 = f15 + this.mNumberTextSize + this.mLabelVerticalPadding;
                }
                canvas.drawText(str4, f14, f15, this.mSecsLabelPaint);
            }
            String valueOf4 = String.valueOf(this.mSecs);
            float f16 = (i * i2) + (i / 2);
            if (z) {
                f = this.mNumberTextSize + this.mLabelTextSize + this.mLabelVerticalPadding;
            } else {
                f = this.mNumberTextSize;
            }
            canvas.drawText(valueOf4, f16, f, this.mSecsPaint);
        }
    }

    private void generatePaints() {
        Label label = Label.DAYS;
        this.mDaysPaint = setPaintForValue(label, true);
        Label label2 = Label.HOURS;
        this.mHoursPaint = setPaintForValue(label2, true);
        Label label3 = Label.MINS;
        this.mMinsPaint = setPaintForValue(label3, true);
        Label label4 = Label.SECS;
        this.mSecsPaint = setPaintForValue(label4, true);
        this.mDaysLabelPaint = setPaintForValue(label, false);
        this.mHoursLabelPaint = setPaintForValue(label2, false);
        this.mMinsLabelPaint = setPaintForValue(label3, false);
        this.mSecsLabelPaint = setPaintForValue(label4, false);
        if (this.mShowDividers) {
            this.mDividersPaint = setPaintForDivider();
        }
        this.mShownBooleans = new boolean[]{this.mShowDays, this.mShowHours, this.mShowMins, this.mShowSecs};
    }

    private void init(Context context, AttributeSet attributeSet, int i) {
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DurationView, i, 0);
        this.mDays = obtainStyledAttributes.getInteger(0, 0);
        this.mHours = obtainStyledAttributes.getInteger(7, 0);
        this.mMins = obtainStyledAttributes.getInteger(15, 0);
        this.mSecs = obtainStyledAttributes.getInteger(21, 0);
        this.mDaysLabel = obtainStyledAttributes.getString(2);
        this.mHoursLabel = obtainStyledAttributes.getString(9);
        this.mMinsLabel = obtainStyledAttributes.getString(17);
        this.mSecsLabel = obtainStyledAttributes.getString(23);
        this.mNumberTextSize = obtainStyledAttributes.getDimension(20, dp2px(18.0f));
        this.mLabelTextSize = obtainStyledAttributes.getDimension(13, dp2px(12.0f));
        this.mLabelPosition = obtainStyledAttributes.getInteger(12, this.DEFAULT_LABEL_POSITION);
        this.mLabelVerticalPadding = obtainStyledAttributes.getDimension(14, dp2px(6.0f));
        this.mDaysColor = obtainStyledAttributes.getColor(1, ViewCompat.MEASURED_STATE_MASK);
        this.mHoursColor = obtainStyledAttributes.getColor(8, ViewCompat.MEASURED_STATE_MASK);
        this.mMinsColor = obtainStyledAttributes.getColor(16, ViewCompat.MEASURED_STATE_MASK);
        this.mSecsColor = obtainStyledAttributes.getColor(22, ViewCompat.MEASURED_STATE_MASK);
        this.mDaysLabelColor = obtainStyledAttributes.getColor(3, ViewCompat.MEASURED_STATE_MASK);
        this.mHoursLabelColor = obtainStyledAttributes.getColor(10, ViewCompat.MEASURED_STATE_MASK);
        this.mMinsLabelColor = obtainStyledAttributes.getColor(18, ViewCompat.MEASURED_STATE_MASK);
        this.mSecsLabelColor = obtainStyledAttributes.getColor(24, ViewCompat.MEASURED_STATE_MASK);
        this.mNumberColor = obtainStyledAttributes.getColor(19, ViewCompat.MEASURED_STATE_MASK);
        this.mLabelsColor = obtainStyledAttributes.getColor(11, ViewCompat.MEASURED_STATE_MASK);
        this.mTextColor = obtainStyledAttributes.getColor(31, ViewCompat.MEASURED_STATE_MASK);
        this.mShowDays = obtainStyledAttributes.getBoolean(25, true);
        this.mShowHours = obtainStyledAttributes.getBoolean(27, true);
        this.mShowMins = obtainStyledAttributes.getBoolean(29, true);
        this.mShowSecs = obtainStyledAttributes.getBoolean(30, true);
        this.mShowLabels = obtainStyledAttributes.getBoolean(28, true);
        this.mShowDividers = obtainStyledAttributes.getBoolean(26, false);
        this.mDividersWidth = obtainStyledAttributes.getDimension(6, dp2px(2.0f));
        this.mDividersColor = obtainStyledAttributes.getColor(4, ViewCompat.MEASURED_STATE_MASK);
        this.mDividersMargin = obtainStyledAttributes.getDimension(5, dp2px(4.0f));
        obtainStyledAttributes.recycle();
    }

    private boolean isEmptyString(String str) {
        if (str != null && !str.isEmpty()) {
            return false;
        }
        return true;
    }

    private Paint setPaintForDivider() {
        Paint paint = new Paint();
        paint.setColor(this.mDividersColor);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        return paint;
    }

    private Paint setPaintForValue(Label label, boolean z) {
        int i;
        int i2;
        float f;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        Paint paint = new Paint();
        paint.setColor(this.mTextColor);
        if ((z && (i7 = this.mNumberColor) != -16777216 && i7 != this.mTextColor) || (!z && (i = this.mLabelsColor) != -16777216 && i != this.mTextColor)) {
            if (z) {
                i6 = this.mNumberColor;
            } else {
                i6 = this.mLabelsColor;
            }
            paint.setColor(i6);
        }
        int ordinal = label.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3 && ((z && this.mSecsColor != -16777216) || (!z && this.mSecsLabelColor != -16777216))) {
                        if (z) {
                            i5 = this.mSecsColor;
                        } else {
                            i5 = this.mSecsLabelColor;
                        }
                        paint.setColor(i5);
                    }
                } else if ((z && this.mMinsColor != -16777216) || (!z && this.mMinsLabelColor != -16777216)) {
                    if (z) {
                        i4 = this.mMinsColor;
                    } else {
                        i4 = this.mMinsLabelColor;
                    }
                    paint.setColor(i4);
                }
            } else if ((z && this.mHoursColor != -16777216) || (!z && this.mHoursLabelColor != -16777216)) {
                if (z) {
                    i3 = this.mHoursColor;
                } else {
                    i3 = this.mHoursLabelColor;
                }
                paint.setColor(i3);
            }
        } else if ((z && this.mDaysColor != -16777216) || (!z && this.mDaysLabelColor != -16777216)) {
            if (z) {
                i2 = this.mDaysColor;
            } else {
                i2 = this.mDaysLabelColor;
            }
            paint.setColor(i2);
        }
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        if (z) {
            f = this.mNumberTextSize;
        } else {
            f = this.mLabelTextSize;
        }
        paint.setTextSize(f);
        return paint;
    }

    private int sp2px(float f) {
        return (int) ((f * this.mContext.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public int getDays() {
        return this.mDays;
    }

    public int getDaysColor() {
        return this.mDaysColor;
    }

    public String getDaysLabel() {
        return this.mDaysLabel;
    }

    public int getDaysLabelColor() {
        return this.mDaysLabelColor;
    }

    public int getDividersColor() {
        return this.mDividersColor;
    }

    public float getDividersMargin() {
        return this.mDividersMargin;
    }

    public float getDividersWidth() {
        return this.mDividersWidth;
    }

    public int getHours() {
        return this.mHours;
    }

    public int getHoursColor() {
        return this.mHoursColor;
    }

    public String getHoursLabel() {
        return this.mHoursLabel;
    }

    public int getHoursLabelColor() {
        return this.mHoursLabelColor;
    }

    public int getLabelPosition() {
        return this.mLabelPosition;
    }

    public float getLabelTextSize() {
        return this.mLabelTextSize;
    }

    public float getLabelVerticalPadding() {
        return this.mLabelVerticalPadding;
    }

    public int getLabelsColor() {
        return this.mLabelsColor;
    }

    public int getMins() {
        return this.mMins;
    }

    public int getMinsColor() {
        return this.mMinsColor;
    }

    public String getMinsLabel() {
        return this.mMinsLabel;
    }

    public int getMinsLabelColor() {
        return this.mMinsLabelColor;
    }

    public int getNumberColor() {
        return this.mNumberColor;
    }

    public float getNumberTextSize() {
        return this.mNumberTextSize;
    }

    public int getSecs() {
        return this.mSecs;
    }

    public int getSecsColor() {
        return this.mSecsColor;
    }

    public String getSecsLabel() {
        return this.mSecsLabel;
    }

    public int getSecsLabelColor() {
        return this.mSecsLabelColor;
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public boolean isShowDays() {
        return this.mShowDays;
    }

    public boolean isShowDividers() {
        return this.mShowDividers;
    }

    public boolean isShowHours() {
        return this.mShowHours;
    }

    public boolean isShowLabels() {
        return this.mShowLabels;
    }

    public boolean isShowMins() {
        return this.mShowMins;
    }

    public boolean isShowSecs() {
        return this.mShowSecs;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        generatePaints();
        this.mCanvasWidth = canvas.getWidth();
        this.mCanvasHeight = canvas.getHeight();
        int i = 0;
        int i2 = 0;
        for (boolean z : this.mShownBooleans) {
            i2 += z ? 1 : 0;
        }
        if (i2 != 0) {
            int i3 = this.mCanvasWidth / i2;
            int i4 = this.mLabelPosition;
            if (i4 != 0) {
                if (i4 == 1) {
                    drawValues(canvas, i3, false);
                }
            } else {
                drawValues(canvas, i3, true);
            }
            if (this.mShowDividers && this.mDividersPaint != null) {
                while (i < i2 - 1) {
                    int i5 = this.mCanvasWidth;
                    i++;
                    float f = this.mDividersWidth;
                    float f2 = this.mDividersMargin;
                    canvas.drawRect(((i5 / i2) * i) - (f / 2.0f), f2, (f / 2.0f) + ((i5 / i2) * i), this.mCanvasHeight - f2, this.mDividersPaint);
                }
            }
        }
    }

    public void setDays(int i) {
        this.mDays = i;
        invalidate();
    }

    public void setDaysColor(int i) {
        this.mDaysColor = i;
        invalidate();
    }

    public void setDaysLabel(String str) {
        this.mDaysLabel = str;
        invalidate();
    }

    public void setDaysLabelColor(int i) {
        this.mDaysLabelColor = i;
        invalidate();
    }

    public void setDividersColor(int i) {
        this.mDividersColor = i;
        invalidate();
    }

    public void setDividersMargin(float f) {
        this.mDividersMargin = f;
        invalidate();
    }

    public void setDividersWidth(float f) {
        this.mDividersWidth = f;
        invalidate();
    }

    public void setHours(int i) {
        this.mHours = i;
        invalidate();
    }

    public void setHoursColor(int i) {
        this.mHoursColor = i;
        invalidate();
    }

    public void setHoursLabel(String str) {
        this.mHoursLabel = str;
        invalidate();
    }

    public void setHoursLabelColor(int i) {
        this.mHoursLabelColor = i;
        invalidate();
    }

    public void setLabelPosition(int i) {
        this.mLabelPosition = i;
        invalidate();
    }

    public void setLabelTextSize(float f) {
        this.mLabelTextSize = f;
        invalidate();
    }

    public void setLabelVerticalPadding(float f) {
        this.mLabelVerticalPadding = f;
        invalidate();
    }

    public void setLabelsColor(int i) {
        this.mLabelsColor = i;
        invalidate();
    }

    public void setMins(int i) {
        this.mMins = i;
        invalidate();
    }

    public void setMinsColor(int i) {
        this.mMinsColor = i;
        invalidate();
    }

    public void setMinsLabel(String str) {
        this.mMinsLabel = str;
        invalidate();
    }

    public void setMinsLabelColor(int i) {
        this.mMinsLabelColor = i;
        invalidate();
    }

    public void setNumberColor(int i) {
        this.mNumberColor = i;
        invalidate();
    }

    public void setNumberTextSize(float f) {
        this.mNumberTextSize = f;
        invalidate();
    }

    public void setSecs(int i) {
        this.mSecs = i;
        invalidate();
    }

    public void setSecsColor(int i) {
        this.mSecsColor = i;
        invalidate();
    }

    public void setSecsLabel(String str) {
        this.mSecsLabel = str;
        invalidate();
    }

    public void setSecsLabelColor(int i) {
        this.mSecsLabelColor = i;
        invalidate();
    }

    public void setShowDays(boolean z) {
        this.mShowDays = z;
        invalidate();
    }

    public void setShowDividers(boolean z) {
        this.mShowDividers = z;
        invalidate();
    }

    public void setShowHours(boolean z) {
        this.mShowHours = z;
        invalidate();
    }

    public void setShowLabels(boolean z) {
        this.mShowLabels = z;
        invalidate();
    }

    public void setShowMins(boolean z) {
        this.mShowMins = z;
        invalidate();
    }

    public void setShowSecs(boolean z) {
        this.mShowSecs = z;
        invalidate();
    }

    public void setTextColor(int i) {
        this.mTextColor = i;
        invalidate();
    }

    public DurationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DurationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.DEFAULT_DAYS_LABEL = new ObfuscatedString(new long[]{-6127006849594814617L, -9037886342474255797L}).toString();
        this.DEFAULT_HOURS_LABEL = new ObfuscatedString(new long[]{4992709009732408898L, 1047920886870417596L}).toString();
        this.DEFAULT_MINS_LABEL = new ObfuscatedString(new long[]{-532048166975067992L, -2332158382663881529L}).toString();
        this.DEFAULT_SECS_LABEL = new ObfuscatedString(new long[]{-6753204176687477345L, 4268002944334919189L}).toString();
        this.DEFAULT_NUMBER_TEXT_SIZE = 18.0f;
        this.DEFAULT_LABEL_TEXT_SIZE = 12.0f;
        int ordinal = LabelPosition.BOTTOM.ordinal();
        this.DEFAULT_LABEL_POSITION = ordinal;
        this.DEFAULT_LABEL_VERTICAL_PADDING = 6.0f;
        this.DEFAULT_TEXT_COLOR = ViewCompat.MEASURED_STATE_MASK;
        this.DEFAULT_SHOW_ITEM = true;
        this.DEFAULT_SHOW_DIVIERS = false;
        this.DEFAULT_DIVIDER_WIDTH = 2.0f;
        this.DEFAULT_DIVIDER_TOP_BOTTOM_MARGIN = 4.0f;
        this.mDaysLabel = new ObfuscatedString(new long[]{4807734064894666907L, 2895220636119655925L}).toString();
        this.mHoursLabel = new ObfuscatedString(new long[]{6628298779529321005L, 3127094475041735539L}).toString();
        this.mMinsLabel = new ObfuscatedString(new long[]{4930298282418428411L, 4279309198130413734L}).toString();
        this.mSecsLabel = new ObfuscatedString(new long[]{-8471801499973533100L, 4665861011074929677L}).toString();
        this.mLabelPosition = ordinal;
        this.mDaysColor = ViewCompat.MEASURED_STATE_MASK;
        this.mHoursColor = ViewCompat.MEASURED_STATE_MASK;
        this.mMinsColor = ViewCompat.MEASURED_STATE_MASK;
        this.mSecsColor = ViewCompat.MEASURED_STATE_MASK;
        this.mDaysLabelColor = ViewCompat.MEASURED_STATE_MASK;
        this.mHoursLabelColor = ViewCompat.MEASURED_STATE_MASK;
        this.mMinsLabelColor = ViewCompat.MEASURED_STATE_MASK;
        this.mSecsLabelColor = ViewCompat.MEASURED_STATE_MASK;
        this.mNumberColor = ViewCompat.MEASURED_STATE_MASK;
        this.mLabelsColor = ViewCompat.MEASURED_STATE_MASK;
        this.mTextColor = ViewCompat.MEASURED_STATE_MASK;
        this.mShowDays = true;
        this.mShowHours = true;
        this.mShowMins = true;
        this.mShowSecs = true;
        this.mShowLabels = true;
        this.mShowDividers = false;
        this.mDividersColor = ViewCompat.MEASURED_STATE_MASK;
        init(context, attributeSet, i);
    }
}
