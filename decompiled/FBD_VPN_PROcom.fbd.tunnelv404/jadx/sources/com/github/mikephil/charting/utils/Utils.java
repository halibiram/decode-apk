package com.github.mikephil.charting.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import com.github.mikephil.charting.formatter.DefaultValueFormatter;
import com.github.mikephil.charting.formatter.IValueFormatter;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public abstract class Utils {
    public static final double DEG2RAD = 0.017453292519943295d;
    public static final float FDEG2RAD = 0.017453292f;
    private static int mMaximumFlingVelocity = 8000;
    private static DisplayMetrics mMetrics = null;
    private static int mMinimumFlingVelocity = 50;
    public static final double DOUBLE_EPSILON = Double.longBitsToDouble(1);
    public static final float FLOAT_EPSILON = Float.intBitsToFloat(1);
    private static Rect mCalcTextHeightRect = new Rect();
    private static Paint.FontMetrics mFontMetrics = new Paint.FontMetrics();
    private static Rect mCalcTextSizeRect = new Rect();
    private static final int[] POW_10 = {1, 10, 100, 1000, 10000, 100000, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, 1000000000};
    private static IValueFormatter mDefaultValueFormatter = generateDefaultValueFormatter();
    private static Rect mDrawableBoundsCache = new Rect();
    private static Rect mDrawTextRectBuffer = new Rect();
    private static Paint.FontMetrics mFontMetricsBuffer = new Paint.FontMetrics();

    public static int calcTextHeight(Paint paint, String str) {
        Rect rect = mCalcTextHeightRect;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        return rect.height();
    }

    public static FSize calcTextSize(Paint paint, String str) {
        FSize fSize = FSize.getInstance(0.0f, 0.0f);
        calcTextSize(paint, str, fSize);
        return fSize;
    }

    public static int calcTextWidth(Paint paint, String str) {
        return (int) paint.measureText(str);
    }

    public static float convertDpToPixel(float f) {
        DisplayMetrics displayMetrics = mMetrics;
        if (displayMetrics == null) {
            new ObfuscatedString(new long[]{-2319463780960963766L, -9159626039472873688L, 6946713122345694063L}).toString();
            new ObfuscatedString(new long[]{-3601405898725310438L, 3507402129367842772L, -1597424545651136955L, -5940904165250767325L, -1773874126373183023L, 8800112134655124466L, -8158320336222482329L, 4507703068668314618L, 1635579540415938010L, 7689570304704042131L, -9064673640621585487L, 1060568706093219981L, -5372067014335104631L, -6907257754616890947L, -5440045843595632793L, 56705709315603412L, 2946307574962566305L, 7992032064483892893L, 4545683132183058638L, 457245889717287776L, -2177928997364449342L}).toString();
            return f;
        }
        return f * displayMetrics.density;
    }

    public static int[] convertIntegers(List<Integer> list) {
        int[] iArr = new int[list.size()];
        copyIntegers(list, iArr);
        return iArr;
    }

    public static float convertPixelsToDp(float f) {
        DisplayMetrics displayMetrics = mMetrics;
        if (displayMetrics == null) {
            new ObfuscatedString(new long[]{-9007533439023367525L, 4988112279963274824L, 1992513826987626948L}).toString();
            new ObfuscatedString(new long[]{2720022766548168672L, -7926817422694862419L, 3116739761749227781L, -2643265506749597864L, -1536445524832365485L, 2868411823166418194L, 554686827939531598L, 3059044859040659939L, 8813938046506200514L, 2711569163077807569L, 1580838299702720970L, -1602316915773601347L, 8528147880941654827L, 2216538991293606190L, -1058340476846127039L, 8772557580338203930L, -5489837548763784031L, -18740391187086229L, -8059031919018834652L, -8541393794345675565L, -2944374521362840464L}).toString();
            return f;
        }
        return f / displayMetrics.density;
    }

    public static String[] convertStrings(List<String> list) {
        int size = list.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = list.get(i);
        }
        return strArr;
    }

    public static void copyIntegers(List<Integer> list, int[] iArr) {
        int size;
        if (iArr.length < list.size()) {
            size = iArr.length;
        } else {
            size = list.size();
        }
        for (int i = 0; i < size; i++) {
            iArr[i] = list.get(i).intValue();
        }
    }

    public static void copyStrings(List<String> list, String[] strArr) {
        int size;
        if (strArr.length < list.size()) {
            size = strArr.length;
        } else {
            size = list.size();
        }
        for (int i = 0; i < size; i++) {
            strArr[i] = list.get(i);
        }
    }

    public static void drawImage(Canvas canvas, Drawable drawable, int i, int i2, int i3, int i4) {
        MPPointF mPPointF = MPPointF.getInstance();
        mPPointF.x = i - (i3 / 2);
        mPPointF.y = i2 - (i4 / 2);
        drawable.copyBounds(mDrawableBoundsCache);
        Rect rect = mDrawableBoundsCache;
        int i5 = rect.left;
        int i6 = rect.top;
        drawable.setBounds(i5, i6, i5 + i3, i3 + i6);
        int save = canvas.save();
        canvas.translate(mPPointF.x, mPPointF.y);
        drawable.draw(canvas);
        canvas.restoreToCount(save);
    }

    public static void drawMultilineText(Canvas canvas, StaticLayout staticLayout, float f, float f2, TextPaint textPaint, MPPointF mPPointF, float f3) {
        float fontMetrics = textPaint.getFontMetrics(mFontMetricsBuffer);
        float width = staticLayout.getWidth();
        float lineCount = staticLayout.getLineCount() * fontMetrics;
        float f4 = 0.0f - mDrawTextRectBuffer.left;
        float f5 = lineCount + 0.0f;
        Paint.Align textAlign = textPaint.getTextAlign();
        textPaint.setTextAlign(Paint.Align.LEFT);
        if (f3 != 0.0f) {
            float f6 = f4 - (width * 0.5f);
            float f7 = f5 - (lineCount * 0.5f);
            if (mPPointF.x != 0.5f || mPPointF.y != 0.5f) {
                FSize sizeOfRotatedRectangleByDegrees = getSizeOfRotatedRectangleByDegrees(width, lineCount, f3);
                f -= (mPPointF.x - 0.5f) * sizeOfRotatedRectangleByDegrees.width;
                f2 -= (mPPointF.y - 0.5f) * sizeOfRotatedRectangleByDegrees.height;
                FSize.recycleInstance(sizeOfRotatedRectangleByDegrees);
            }
            canvas.save();
            canvas.translate(f, f2);
            canvas.rotate(f3);
            canvas.translate(f6, f7);
            staticLayout.draw(canvas);
            canvas.restore();
        } else {
            float f8 = mPPointF.x;
            if (f8 != 0.0f || mPPointF.y != 0.0f) {
                f4 -= width * f8;
                f5 -= lineCount * mPPointF.y;
            }
            canvas.save();
            canvas.translate(f4 + f, f5 + f2);
            staticLayout.draw(canvas);
            canvas.restore();
        }
        textPaint.setTextAlign(textAlign);
    }

    public static void drawXAxisValue(Canvas canvas, String str, float f, float f2, Paint paint, MPPointF mPPointF, float f3) {
        float fontMetrics = paint.getFontMetrics(mFontMetricsBuffer);
        paint.getTextBounds(str, 0, str.length(), mDrawTextRectBuffer);
        float f4 = 0.0f - mDrawTextRectBuffer.left;
        float f5 = (-mFontMetricsBuffer.ascent) + 0.0f;
        Paint.Align textAlign = paint.getTextAlign();
        paint.setTextAlign(Paint.Align.LEFT);
        if (f3 != 0.0f) {
            float width = f4 - (mDrawTextRectBuffer.width() * 0.5f);
            float f6 = f5 - (fontMetrics * 0.5f);
            if (mPPointF.x != 0.5f || mPPointF.y != 0.5f) {
                FSize sizeOfRotatedRectangleByDegrees = getSizeOfRotatedRectangleByDegrees(mDrawTextRectBuffer.width(), fontMetrics, f3);
                f -= (mPPointF.x - 0.5f) * sizeOfRotatedRectangleByDegrees.width;
                f2 -= (mPPointF.y - 0.5f) * sizeOfRotatedRectangleByDegrees.height;
                FSize.recycleInstance(sizeOfRotatedRectangleByDegrees);
            }
            canvas.save();
            canvas.translate(f, f2);
            canvas.rotate(f3);
            canvas.drawText(str, width, f6, paint);
            canvas.restore();
        } else {
            if (mPPointF.x != 0.0f || mPPointF.y != 0.0f) {
                f4 -= mDrawTextRectBuffer.width() * mPPointF.x;
                f5 -= fontMetrics * mPPointF.y;
            }
            canvas.drawText(str, f4 + f, f5 + f2, paint);
        }
        paint.setTextAlign(textAlign);
    }

    public static String formatNumber(float f, int i, boolean z) {
        return formatNumber(f, i, z, '.');
    }

    private static IValueFormatter generateDefaultValueFormatter() {
        return new DefaultValueFormatter(1);
    }

    public static int getDecimals(float f) {
        float roundToNextSignificant = roundToNextSignificant(f);
        if (Float.isInfinite(roundToNextSignificant)) {
            return 0;
        }
        return ((int) Math.ceil(-Math.log10(roundToNextSignificant))) + 2;
    }

    public static IValueFormatter getDefaultValueFormatter() {
        return mDefaultValueFormatter;
    }

    public static float getLineHeight(Paint paint) {
        return getLineHeight(paint, mFontMetrics);
    }

    public static float getLineSpacing(Paint paint) {
        return getLineSpacing(paint, mFontMetrics);
    }

    public static int getMaximumFlingVelocity() {
        return mMaximumFlingVelocity;
    }

    public static int getMinimumFlingVelocity() {
        return mMinimumFlingVelocity;
    }

    public static float getNormalizedAngle(float f) {
        while (f < 0.0f) {
            f += 360.0f;
        }
        return f % 360.0f;
    }

    public static MPPointF getPosition(MPPointF mPPointF, float f, float f2) {
        MPPointF mPPointF2 = MPPointF.getInstance(0.0f, 0.0f);
        getPosition(mPPointF, f, f2, mPPointF2);
        return mPPointF2;
    }

    public static int getSDKInt() {
        return Build.VERSION.SDK_INT;
    }

    public static FSize getSizeOfRotatedRectangleByDegrees(FSize fSize, float f) {
        return getSizeOfRotatedRectangleByRadians(fSize.width, fSize.height, f * 0.017453292f);
    }

    public static FSize getSizeOfRotatedRectangleByRadians(FSize fSize, float f) {
        return getSizeOfRotatedRectangleByRadians(fSize.width, fSize.height, f);
    }

    public static void init(Context context) {
        if (context == null) {
            mMinimumFlingVelocity = ViewConfiguration.getMinimumFlingVelocity();
            mMaximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity();
            new ObfuscatedString(new long[]{3887377959696001888L, 4386074804231807624L, 9000503449553629408L}).toString();
            new ObfuscatedString(new long[]{-3461015141701235807L, -800202081968097204L, 2213422514178322464L, -9042462292779035449L, 6446420424962574217L, 7926085251627364399L, -6517460050158805174L}).toString();
            return;
        }
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        mMinimumFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        mMaximumFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        mMetrics = context.getResources().getDisplayMetrics();
    }

    public static double nextUp(double d) {
        long j;
        if (d == Double.POSITIVE_INFINITY) {
            return d;
        }
        double d2 = d + 0.0d;
        long doubleToRawLongBits = Double.doubleToRawLongBits(d2);
        if (d2 >= 0.0d) {
            j = 1;
        } else {
            j = -1;
        }
        return Double.longBitsToDouble(doubleToRawLongBits + j);
    }

    @SuppressLint({"NewApi"})
    public static void postInvalidateOnAnimation(View view) {
        view.postInvalidateOnAnimation();
    }

    public static float roundToNextSignificant(double d) {
        double d2;
        if (!Double.isInfinite(d) && !Double.isNaN(d) && d != 0.0d) {
            if (d < 0.0d) {
                d2 = -d;
            } else {
                d2 = d;
            }
            float pow = (float) Math.pow(10.0d, 1 - ((int) Math.ceil((float) Math.log10(d2))));
            return ((float) Math.round(d * pow)) / pow;
        }
        return 0.0f;
    }

    public static void velocityTrackerPointerUpCleanUpIfNecessary(MotionEvent motionEvent, VelocityTracker velocityTracker) {
        velocityTracker.computeCurrentVelocity(1000, mMaximumFlingVelocity);
        int actionIndex = motionEvent.getActionIndex();
        int pointerId = motionEvent.getPointerId(actionIndex);
        float xVelocity = velocityTracker.getXVelocity(pointerId);
        float yVelocity = velocityTracker.getYVelocity(pointerId);
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            if (i != actionIndex) {
                int pointerId2 = motionEvent.getPointerId(i);
                if ((velocityTracker.getYVelocity(pointerId2) * yVelocity) + (velocityTracker.getXVelocity(pointerId2) * xVelocity) < 0.0f) {
                    velocityTracker.clear();
                    return;
                }
            }
        }
    }

    public static String formatNumber(float f, int i, boolean z, char c) {
        boolean z2;
        float f2 = f;
        char[] cArr = new char[35];
        if (f2 == 0.0f) {
            return new ObfuscatedString(new long[]{1049806653776617472L, -7946556457612723037L}).toString();
        }
        int i2 = 0;
        boolean z3 = f2 < 1.0f && f2 > -1.0f;
        if (f2 < 0.0f) {
            f2 = -f2;
            z2 = true;
        } else {
            z2 = false;
        }
        int[] iArr = POW_10;
        int length = i > iArr.length ? iArr.length - 1 : i;
        long round = Math.round(f2 * iArr[length]);
        int i3 = 34;
        boolean z4 = false;
        while (true) {
            if (round == 0 && i2 >= length + 1) {
                break;
            }
            int i4 = (int) (round % 10);
            round /= 10;
            int i5 = i3 - 1;
            cArr[i3] = (char) (i4 + 48);
            int i6 = i2 + 1;
            if (i6 == length) {
                i3 -= 2;
                cArr[i5] = ',';
                i2 += 2;
                z4 = true;
            } else {
                if (z && round != 0 && i6 > length) {
                    if (z4) {
                        if ((i6 - length) % 4 == 0) {
                            i3 -= 2;
                            cArr[i5] = c;
                            i2 += 2;
                        }
                    } else if ((i6 - length) % 4 == 3) {
                        i3 -= 2;
                        cArr[i5] = c;
                        i2 += 2;
                    }
                }
                i2 = i6;
                i3 = i5;
            }
        }
        if (z3) {
            cArr[i3] = '0';
            i2++;
            i3--;
        }
        if (z2) {
            cArr[i3] = '-';
            i2++;
        }
        int i7 = 35 - i2;
        return String.valueOf(cArr, i7, 35 - i7);
    }

    public static float getLineHeight(Paint paint, Paint.FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return fontMetrics.descent - fontMetrics.ascent;
    }

    public static float getLineSpacing(Paint paint, Paint.FontMetrics fontMetrics) {
        paint.getFontMetrics(fontMetrics);
        return (fontMetrics.ascent - fontMetrics.top) + fontMetrics.bottom;
    }

    public static FSize getSizeOfRotatedRectangleByDegrees(float f, float f2, float f3) {
        return getSizeOfRotatedRectangleByRadians(f, f2, f3 * 0.017453292f);
    }

    public static FSize getSizeOfRotatedRectangleByRadians(float f, float f2, float f3) {
        double d = f3;
        return FSize.getInstance(Math.abs(((float) Math.sin(d)) * f2) + Math.abs(((float) Math.cos(d)) * f), Math.abs(f2 * ((float) Math.cos(d))) + Math.abs(f * ((float) Math.sin(d))));
    }

    public static void calcTextSize(Paint paint, String str, FSize fSize) {
        Rect rect = mCalcTextSizeRect;
        rect.set(0, 0, 0, 0);
        paint.getTextBounds(str, 0, str.length(), rect);
        fSize.width = rect.width();
        fSize.height = rect.height();
    }

    public static void getPosition(MPPointF mPPointF, float f, float f2, MPPointF mPPointF2) {
        double d = f;
        double d2 = f2;
        mPPointF2.x = (float) ((Math.cos(Math.toRadians(d2)) * d) + mPPointF.x);
        mPPointF2.y = (float) ((Math.sin(Math.toRadians(d2)) * d) + mPPointF.y);
    }

    @Deprecated
    public static void init(Resources resources) {
        mMetrics = resources.getDisplayMetrics();
        mMinimumFlingVelocity = ViewConfiguration.getMinimumFlingVelocity();
        mMaximumFlingVelocity = ViewConfiguration.getMaximumFlingVelocity();
    }

    public static void drawMultilineText(Canvas canvas, String str, float f, float f2, TextPaint textPaint, FSize fSize, MPPointF mPPointF, float f3) {
        drawMultilineText(canvas, new StaticLayout(str, 0, str.length(), textPaint, (int) Math.max(Math.ceil(fSize.width), 1.0d), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false), f, f2, textPaint, mPPointF, f3);
    }
}
