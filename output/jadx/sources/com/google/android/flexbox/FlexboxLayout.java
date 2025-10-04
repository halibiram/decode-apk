package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.FlexboxHelper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlexboxLayout extends ViewGroup implements FlexContainer {
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    private int mAlignContent;
    private int mAlignItems;

    @Nullable
    private Drawable mDividerDrawableHorizontal;

    @Nullable
    private Drawable mDividerDrawableVertical;
    private int mDividerHorizontalHeight;
    private int mDividerVerticalWidth;
    private int mFlexDirection;
    private List<FlexLine> mFlexLines;
    private FlexboxHelper.FlexLinesResult mFlexLinesResult;
    private int mFlexWrap;
    private FlexboxHelper mFlexboxHelper;
    private int mJustifyContent;
    private int mMaxLine;
    private SparseIntArray mOrderCache;
    private int[] mReorderedIndices;
    private int mShowDividerHorizontal;
    private int mShowDividerVertical;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DividerMode {
    }

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    private boolean allFlexLinesAreDummyBefore(int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (this.mFlexLines.get(i2).getItemCountNotGone() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean allViewsAreGoneBefore(int i, int i2) {
        for (int i3 = 1; i3 <= i2; i3++) {
            View reorderedChildAt = getReorderedChildAt(i - i3);
            if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void drawDividersHorizontal(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.mFlexLines.size();
        for (int i3 = 0; i3 < size; i3++) {
            FlexLine flexLine = this.mFlexLines.get(i3);
            for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                int i5 = flexLine.mFirstIndex + i4;
                View reorderedChildAt = getReorderedChildAt(i5);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i5, i4)) {
                        if (z) {
                            left = reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        } else {
                            left = (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.mDividerVerticalWidth;
                        }
                        drawVerticalDivider(canvas, left, flexLine.mTop, flexLine.mCrossSize);
                    }
                    if (i4 == flexLine.mItemCount - 1 && (this.mShowDividerVertical & 4) > 0) {
                        if (z) {
                            right = (reorderedChildAt.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.mDividerVerticalWidth;
                        } else {
                            right = reorderedChildAt.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        }
                        drawVerticalDivider(canvas, right, flexLine.mTop, flexLine.mCrossSize);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i3)) {
                if (z2) {
                    i2 = flexLine.mBottom;
                } else {
                    i2 = flexLine.mTop - this.mDividerHorizontalHeight;
                }
                drawHorizontalDivider(canvas, paddingLeft, i2, max);
            }
            if (hasEndDividerAfterFlexLine(i3) && (this.mShowDividerHorizontal & 4) > 0) {
                if (z2) {
                    i = flexLine.mTop - this.mDividerHorizontalHeight;
                } else {
                    i = flexLine.mBottom;
                }
                drawHorizontalDivider(canvas, paddingLeft, i, max);
            }
        }
    }

    private void drawDividersVertical(Canvas canvas, boolean z, boolean z2) {
        int i;
        int i2;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.mFlexLines.size();
        for (int i3 = 0; i3 < size; i3++) {
            FlexLine flexLine = this.mFlexLines.get(i3);
            for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                int i5 = flexLine.mFirstIndex + i4;
                View reorderedChildAt = getReorderedChildAt(i5);
                if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                    if (hasDividerBeforeChildAtAlongMainAxis(i5, i4)) {
                        if (z2) {
                            top = reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        } else {
                            top = (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.mDividerHorizontalHeight;
                        }
                        drawHorizontalDivider(canvas, flexLine.mLeft, top, flexLine.mCrossSize);
                    }
                    if (i4 == flexLine.mItemCount - 1 && (this.mShowDividerHorizontal & 4) > 0) {
                        if (z2) {
                            bottom = (reorderedChildAt.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.mDividerHorizontalHeight;
                        } else {
                            bottom = reorderedChildAt.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        drawHorizontalDivider(canvas, flexLine.mLeft, bottom, flexLine.mCrossSize);
                    }
                }
            }
            if (hasDividerBeforeFlexLine(i3)) {
                if (z) {
                    i2 = flexLine.mRight;
                } else {
                    i2 = flexLine.mLeft - this.mDividerVerticalWidth;
                }
                drawVerticalDivider(canvas, i2, paddingTop, max);
            }
            if (hasEndDividerAfterFlexLine(i3) && (this.mShowDividerVertical & 4) > 0) {
                if (z) {
                    i = flexLine.mLeft - this.mDividerVerticalWidth;
                } else {
                    i = flexLine.mRight;
                }
                drawVerticalDivider(canvas, i, paddingTop, max);
            }
        }
    }

    private void drawHorizontalDivider(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.mDividerDrawableHorizontal;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, i3 + i, this.mDividerHorizontalHeight + i2);
        this.mDividerDrawableHorizontal.draw(canvas);
    }

    private void drawVerticalDivider(Canvas canvas, int i, int i2, int i3) {
        Drawable drawable = this.mDividerDrawableVertical;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i, i2, this.mDividerVerticalWidth + i, i3 + i2);
        this.mDividerDrawableVertical.draw(canvas);
    }

    private boolean hasDividerBeforeChildAtAlongMainAxis(int i, int i2) {
        if (allViewsAreGoneBefore(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                if ((this.mShowDividerVertical & 1) == 0) {
                    return false;
                }
                return true;
            }
            if ((this.mShowDividerHorizontal & 1) == 0) {
                return false;
            }
            return true;
        }
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerVertical & 2) == 0) {
                return false;
            }
            return true;
        }
        if ((this.mShowDividerHorizontal & 2) == 0) {
            return false;
        }
        return true;
    }

    private boolean hasDividerBeforeFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        if (allFlexLinesAreDummyBefore(i)) {
            if (isMainAxisDirectionHorizontal()) {
                if ((this.mShowDividerHorizontal & 1) == 0) {
                    return false;
                }
                return true;
            }
            if ((this.mShowDividerVertical & 1) == 0) {
                return false;
            }
            return true;
        }
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerHorizontal & 2) == 0) {
                return false;
            }
            return true;
        }
        if ((this.mShowDividerVertical & 2) == 0) {
            return false;
        }
        return true;
    }

    private boolean hasEndDividerAfterFlexLine(int i) {
        if (i < 0 || i >= this.mFlexLines.size()) {
            return false;
        }
        for (int i2 = i + 1; i2 < this.mFlexLines.size(); i2++) {
            if (this.mFlexLines.get(i2).getItemCountNotGone() > 0) {
                return false;
            }
        }
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerHorizontal & 4) == 0) {
                return false;
            }
            return true;
        }
        if ((this.mShowDividerVertical & 4) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutHorizontal(boolean z, int i, int i2, int i3, int i4) {
        float f;
        int i5;
        float f2;
        float f3;
        int i6;
        int i7;
        float f4;
        int i8;
        int i9;
        float f5;
        int i10 = 5;
        int i11 = 1;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int i12 = i3 - i;
        int paddingBottom = (i4 - i2) - getPaddingBottom();
        int paddingTop = getPaddingTop();
        int size = this.mFlexLines.size();
        int i13 = 0;
        while (i13 < size) {
            FlexLine flexLine = this.mFlexLines.get(i13);
            if (hasDividerBeforeFlexLine(i13)) {
                int i14 = this.mDividerHorizontalHeight;
                paddingBottom -= i14;
                paddingTop += i14;
            }
            int i15 = this.mJustifyContent;
            if (i15 != 0) {
                if (i15 != i11) {
                    if (i15 != 2) {
                        if (i15 != 3) {
                            if (i15 != 4) {
                                if (i15 == i10) {
                                    if (flexLine.getItemCountNotGone() != 0) {
                                        f3 = (i12 - flexLine.mMainSize) / (r9 + i11);
                                    } else {
                                        f3 = 0.0f;
                                    }
                                    f = paddingLeft + f3;
                                    f2 = (i12 - paddingRight) - f3;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    long[] jArr = new long[i10];
                                    // fill-array-data instruction
                                    jArr[0] = -4997556764273829122L;
                                    jArr[1] = 1285545955902005092L;
                                    jArr[2] = 8981928689698265688L;
                                    jArr[3] = -9123301205973324128L;
                                    jArr[4] = -4072340076613994797L;
                                    sb.append(new ObfuscatedString(jArr).toString());
                                    sb.append(this.mJustifyContent);
                                    throw new IllegalStateException(sb.toString());
                                }
                            } else {
                                int itemCountNotGone = flexLine.getItemCountNotGone();
                                if (itemCountNotGone != 0) {
                                    f3 = (i12 - flexLine.mMainSize) / itemCountNotGone;
                                } else {
                                    f3 = 0.0f;
                                }
                                float f6 = f3 / 2.0f;
                                f = paddingLeft + f6;
                                f2 = (i12 - paddingRight) - f6;
                            }
                        } else {
                            f = paddingLeft;
                            int itemCountNotGone2 = flexLine.getItemCountNotGone();
                            if (itemCountNotGone2 != i11) {
                                f5 = itemCountNotGone2 - i11;
                            } else {
                                f5 = 1.0f;
                            }
                            f3 = (i12 - flexLine.mMainSize) / f5;
                            f2 = i12 - paddingRight;
                        }
                        float max = Math.max(f3, 0.0f);
                        i6 = 0;
                        while (i6 < flexLine.mItemCount) {
                            int i16 = flexLine.mFirstIndex + i6;
                            View reorderedChildAt = getReorderedChildAt(i16);
                            if (reorderedChildAt == null || reorderedChildAt.getVisibility() == 8) {
                                i7 = i6;
                            } else {
                                LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                                float f7 = f + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                                float f8 = f2 - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                if (hasDividerBeforeChildAtAlongMainAxis(i16, i6)) {
                                    int i17 = this.mDividerVerticalWidth;
                                    float f9 = i17;
                                    f7 += f9;
                                    i8 = i17;
                                    f4 = f8 - f9;
                                } else {
                                    f4 = f8;
                                    i8 = 0;
                                }
                                if (i6 == flexLine.mItemCount - 1 && (this.mShowDividerVertical & 4) > 0) {
                                    i9 = this.mDividerVerticalWidth;
                                    if (this.mFlexWrap != 2) {
                                        if (z) {
                                            i7 = i6;
                                            this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f4) - reorderedChildAt.getMeasuredWidth(), paddingBottom - reorderedChildAt.getMeasuredHeight(), Math.round(f4), paddingBottom);
                                        } else {
                                            i7 = i6;
                                            this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f7), paddingBottom - reorderedChildAt.getMeasuredHeight(), reorderedChildAt.getMeasuredWidth() + Math.round(f7), paddingBottom);
                                        }
                                    } else {
                                        i7 = i6;
                                        if (z) {
                                            this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f4) - reorderedChildAt.getMeasuredWidth(), paddingTop, Math.round(f4), reorderedChildAt.getMeasuredHeight() + paddingTop);
                                        } else {
                                            this.mFlexboxHelper.layoutSingleChildHorizontal(reorderedChildAt, flexLine, Math.round(f7), paddingTop, reorderedChildAt.getMeasuredWidth() + Math.round(f7), reorderedChildAt.getMeasuredHeight() + paddingTop);
                                        }
                                    }
                                    f = f7 + reorderedChildAt.getMeasuredWidth() + max + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                    float measuredWidth = f4 - ((reorderedChildAt.getMeasuredWidth() + max) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
                                    if (!z) {
                                        flexLine.updatePositionFromView(reorderedChildAt, i9, 0, i8, 0);
                                    } else {
                                        flexLine.updatePositionFromView(reorderedChildAt, i8, 0, i9, 0);
                                    }
                                    f2 = measuredWidth;
                                }
                                i9 = 0;
                                if (this.mFlexWrap != 2) {
                                }
                                f = f7 + reorderedChildAt.getMeasuredWidth() + max + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                                float measuredWidth2 = f4 - ((reorderedChildAt.getMeasuredWidth() + max) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
                                if (!z) {
                                }
                                f2 = measuredWidth2;
                            }
                            i11 = 1;
                            i6 = i7 + 1;
                        }
                        int i18 = flexLine.mCrossSize;
                        paddingTop += i18;
                        paddingBottom -= i18;
                        i13 += i11;
                        i10 = 5;
                    } else {
                        int i19 = flexLine.mMainSize;
                        f2 = (i12 - paddingRight) - ((i12 - i19) / 2.0f);
                        f = paddingLeft + ((i12 - i19) / 2.0f);
                        f3 = 0.0f;
                        float max2 = Math.max(f3, 0.0f);
                        i6 = 0;
                        while (i6 < flexLine.mItemCount) {
                        }
                        int i182 = flexLine.mCrossSize;
                        paddingTop += i182;
                        paddingBottom -= i182;
                        i13 += i11;
                        i10 = 5;
                    }
                } else {
                    int i20 = flexLine.mMainSize;
                    f = (i12 - i20) + paddingRight;
                    i5 = i20 - paddingLeft;
                }
            } else {
                f = paddingLeft;
                i5 = i12 - paddingRight;
            }
            f2 = i5;
            f3 = 0.0f;
            float max22 = Math.max(f3, 0.0f);
            i6 = 0;
            while (i6 < flexLine.mItemCount) {
            }
            int i1822 = flexLine.mCrossSize;
            paddingTop += i1822;
            paddingBottom -= i1822;
            i13 += i11;
            i10 = 5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x017e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void layoutVertical(boolean z, boolean z2, int i, int i2, int i3, int i4) {
        float f;
        int i5;
        float f2;
        float f3;
        int i6;
        int i7;
        float f4;
        int i8;
        int i9;
        float f5;
        int i10 = 5;
        int i11 = 1;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingRight = getPaddingRight();
        int paddingLeft = getPaddingLeft();
        int i12 = i4 - i2;
        int i13 = (i3 - i) - paddingRight;
        int size = this.mFlexLines.size();
        int i14 = 0;
        while (i14 < size) {
            FlexLine flexLine = this.mFlexLines.get(i14);
            if (hasDividerBeforeFlexLine(i14)) {
                int i15 = this.mDividerVerticalWidth;
                paddingLeft += i15;
                i13 -= i15;
            }
            int i16 = this.mJustifyContent;
            if (i16 != 0) {
                if (i16 != i11) {
                    if (i16 != 2) {
                        if (i16 != 3) {
                            if (i16 != 4) {
                                if (i16 == i10) {
                                    if (flexLine.getItemCountNotGone() != 0) {
                                        f3 = (i12 - flexLine.mMainSize) / (r12 + i11);
                                    } else {
                                        f3 = 0.0f;
                                    }
                                    f = paddingTop + f3;
                                    f2 = (i12 - paddingBottom) - f3;
                                } else {
                                    StringBuilder sb = new StringBuilder();
                                    long[] jArr = new long[i10];
                                    // fill-array-data instruction
                                    jArr[0] = 8643480289661253108L;
                                    jArr[1] = 9002728206611242882L;
                                    jArr[2] = 1735063171640437135L;
                                    jArr[3] = -3943523668553476479L;
                                    jArr[4] = 1339292951249353912L;
                                    sb.append(new ObfuscatedString(jArr).toString());
                                    sb.append(this.mJustifyContent);
                                    throw new IllegalStateException(sb.toString());
                                }
                            } else {
                                int itemCountNotGone = flexLine.getItemCountNotGone();
                                if (itemCountNotGone != 0) {
                                    f3 = (i12 - flexLine.mMainSize) / itemCountNotGone;
                                } else {
                                    f3 = 0.0f;
                                }
                                float f6 = f3 / 2.0f;
                                float f7 = (i12 - paddingBottom) - f6;
                                f = paddingTop + f6;
                                f2 = f7;
                            }
                        } else {
                            f = paddingTop;
                            int itemCountNotGone2 = flexLine.getItemCountNotGone();
                            if (itemCountNotGone2 != i11) {
                                f5 = itemCountNotGone2 - i11;
                            } else {
                                f5 = 1.0f;
                            }
                            f3 = (i12 - flexLine.mMainSize) / f5;
                            f2 = i12 - paddingBottom;
                        }
                        float max = Math.max(f3, 0.0f);
                        i6 = 0;
                        while (i6 < flexLine.mItemCount) {
                            int i17 = flexLine.mFirstIndex + i6;
                            View reorderedChildAt = getReorderedChildAt(i17);
                            if (reorderedChildAt == null || reorderedChildAt.getVisibility() == 8) {
                                i7 = i6;
                            } else {
                                LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                                float f8 = f + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                                float f9 = f2 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                                if (hasDividerBeforeChildAtAlongMainAxis(i17, i6)) {
                                    int i18 = this.mDividerHorizontalHeight;
                                    float f10 = i18;
                                    f9 -= f10;
                                    f4 = f8 + f10;
                                    i8 = i18;
                                } else {
                                    f4 = f8;
                                    i8 = 0;
                                }
                                if (i6 == flexLine.mItemCount - 1 && (this.mShowDividerHorizontal & 4) > 0) {
                                    i9 = this.mDividerHorizontalHeight;
                                    if (!z) {
                                        if (z2) {
                                            i7 = i6;
                                            this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, true, i13 - reorderedChildAt.getMeasuredWidth(), Math.round(f9) - reorderedChildAt.getMeasuredHeight(), i13, Math.round(f9));
                                        } else {
                                            i7 = i6;
                                            this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, true, i13 - reorderedChildAt.getMeasuredWidth(), Math.round(f4), i13, reorderedChildAt.getMeasuredHeight() + Math.round(f4));
                                        }
                                    } else {
                                        i7 = i6;
                                        if (z2) {
                                            this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, false, paddingLeft, Math.round(f9) - reorderedChildAt.getMeasuredHeight(), reorderedChildAt.getMeasuredWidth() + paddingLeft, Math.round(f9));
                                        } else {
                                            this.mFlexboxHelper.layoutSingleChildVertical(reorderedChildAt, flexLine, false, paddingLeft, Math.round(f4), reorderedChildAt.getMeasuredWidth() + paddingLeft, reorderedChildAt.getMeasuredHeight() + Math.round(f4));
                                        }
                                    }
                                    float measuredHeight = reorderedChildAt.getMeasuredHeight() + max + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + f4;
                                    f2 = f9 - ((reorderedChildAt.getMeasuredHeight() + max) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                                    if (!z2) {
                                        flexLine.updatePositionFromView(reorderedChildAt, 0, i9, 0, i8);
                                    } else {
                                        flexLine.updatePositionFromView(reorderedChildAt, 0, i8, 0, i9);
                                    }
                                    f = measuredHeight;
                                }
                                i9 = 0;
                                if (!z) {
                                }
                                float measuredHeight2 = reorderedChildAt.getMeasuredHeight() + max + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + f4;
                                f2 = f9 - ((reorderedChildAt.getMeasuredHeight() + max) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                                if (!z2) {
                                }
                                f = measuredHeight2;
                            }
                            i11 = 1;
                            i6 = i7 + 1;
                        }
                        int i19 = flexLine.mCrossSize;
                        paddingLeft += i19;
                        i13 -= i19;
                        i14 += i11;
                        i10 = 5;
                    } else {
                        int i20 = flexLine.mMainSize;
                        f = ((i12 - i20) / 2.0f) + paddingTop;
                        f2 = (i12 - paddingBottom) - ((i12 - i20) / 2.0f);
                        f3 = 0.0f;
                        float max2 = Math.max(f3, 0.0f);
                        i6 = 0;
                        while (i6 < flexLine.mItemCount) {
                        }
                        int i192 = flexLine.mCrossSize;
                        paddingLeft += i192;
                        i13 -= i192;
                        i14 += i11;
                        i10 = 5;
                    }
                } else {
                    int i21 = flexLine.mMainSize;
                    f = (i12 - i21) + paddingBottom;
                    i5 = i21 - paddingTop;
                }
            } else {
                f = paddingTop;
                i5 = i12 - paddingBottom;
            }
            f2 = i5;
            f3 = 0.0f;
            float max22 = Math.max(f3, 0.0f);
            i6 = 0;
            while (i6 < flexLine.mItemCount) {
            }
            int i1922 = flexLine.mCrossSize;
            paddingLeft += i1922;
            i13 -= i1922;
            i14 += i11;
            i10 = 5;
        }
    }

    private void measureHorizontal(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.reset();
        this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(i, i2);
        if (this.mAlignItems == 3) {
            for (FlexLine flexLine : this.mFlexLines) {
                int i3 = Integer.MIN_VALUE;
                for (int i4 = 0; i4 < flexLine.mItemCount; i4++) {
                    View reorderedChildAt = getReorderedChildAt(flexLine.mFirstIndex + i4);
                    if (reorderedChildAt != null && reorderedChildAt.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) reorderedChildAt.getLayoutParams();
                        if (this.mFlexWrap != 2) {
                            i3 = Math.max(i3, reorderedChildAt.getMeasuredHeight() + Math.max(flexLine.mMaxBaseline - reorderedChildAt.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        } else {
                            i3 = Math.max(i3, reorderedChildAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max(reorderedChildAt.getBaseline() + (flexLine.mMaxBaseline - reorderedChildAt.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                        }
                    }
                }
                flexLine.mCrossSize = i3;
            }
        }
        this.mFlexboxHelper.determineCrossSize(i, i2, getPaddingBottom() + getPaddingTop());
        this.mFlexboxHelper.stretchViews();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.mChildState);
    }

    private void measureVertical(int i, int i2) {
        this.mFlexLines.clear();
        this.mFlexLinesResult.reset();
        this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, i, i2);
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(i, i2);
        this.mFlexboxHelper.determineCrossSize(i, i2, getPaddingRight() + getPaddingLeft());
        this.mFlexboxHelper.stretchViews();
        setMeasuredDimensionForFlex(this.mFlexDirection, i, i2, this.mFlexLinesResult.mChildState);
    }

    private void setMeasuredDimensionForFlex(int i, int i2, int i3, int i4) {
        int paddingBottom;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (i != 0 && i != 1) {
            if (i != 2 && i != 3) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2417752631196157356L, 4170791662853117775L, -1256569442561457136L, 672102118990339978L}), new StringBuilder(), i));
            }
            paddingBottom = getLargestMainSize();
            largestMainSize = getPaddingRight() + getPaddingLeft() + getSumOfCrossSize();
        } else {
            paddingBottom = getPaddingBottom() + getPaddingTop() + getSumOfCrossSize();
            largestMainSize = getLargestMainSize();
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    if (size < largestMainSize) {
                        i4 = View.combineMeasuredStates(i4, 16777216);
                    }
                    resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
                } else {
                    throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8244729539467174018L, -5227527366896170444L, -2596441976520602742L, 6526248944928979647L, 3337600930088993279L}), new StringBuilder(), mode));
                }
            } else {
                resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i2, i4);
            }
        } else {
            if (size < largestMainSize) {
                i4 = View.combineMeasuredStates(i4, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i2, i4);
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                if (mode2 == 1073741824) {
                    if (size2 < paddingBottom) {
                        i4 = View.combineMeasuredStates(i4, 256);
                    }
                    resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
                } else {
                    throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2120028248156446203L, 6033417519909172374L, 3833746057168027347L, -2820623109515065284L, -6172504829916461330L}), new StringBuilder(), mode2));
                }
            } else {
                resolveSizeAndState2 = View.resolveSizeAndState(paddingBottom, i3, i4);
            }
        } else {
            if (size2 < paddingBottom) {
                i4 = View.combineMeasuredStates(i4, 256);
            } else {
                size2 = paddingBottom;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i3, i4);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    private void setWillNotDrawFlag() {
        if (this.mDividerDrawableHorizontal == null && this.mDividerDrawableVertical == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(view, i, layoutParams, this.mOrderCache);
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignContent() {
        return this.mAlignContent;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return ViewGroup.getChildMeasureSpec(i, i2, i3);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        return 0;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int i3;
        int i4 = 0;
        if (isMainAxisDirectionHorizontal()) {
            if (hasDividerBeforeChildAtAlongMainAxis(i, i2)) {
                i4 = this.mDividerVerticalWidth;
            }
            if ((this.mShowDividerVertical & 4) > 0) {
                i3 = this.mDividerVerticalWidth;
            } else {
                return i4;
            }
        } else {
            if (hasDividerBeforeChildAtAlongMainAxis(i, i2)) {
                i4 = this.mDividerHorizontalHeight;
            }
            if ((this.mShowDividerHorizontal & 4) > 0) {
                i3 = this.mDividerHorizontalHeight;
            } else {
                return i4;
            }
        }
        return i4 + i3;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.mDividerDrawableHorizontal;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.mDividerDrawableVertical;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        return getChildAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexItemCount() {
        return getChildCount();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.mFlexLines.size());
        for (FlexLine flexLine : this.mFlexLines) {
            if (flexLine.getItemCountNotGone() != 0) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public List<FlexLine> getFlexLinesInternal() {
        return this.mFlexLines;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexWrap() {
        return this.mFlexWrap;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getJustifyContent() {
        return this.mJustifyContent;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getLargestMainSize() {
        Iterator<FlexLine> it = this.mFlexLines.iterator();
        int i = Integer.MIN_VALUE;
        while (it.hasNext()) {
            i = Math.max(i, it.next().mMainSize);
        }
        return i;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getMaxLine() {
        return this.mMaxLine;
    }

    public View getReorderedChildAt(int i) {
        if (i >= 0) {
            int[] iArr = this.mReorderedIndices;
            if (i < iArr.length) {
                return getChildAt(iArr[i]);
            }
            return null;
        }
        return null;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getReorderedChildAt(i);
    }

    public int getShowDividerHorizontal() {
        return this.mShowDividerHorizontal;
    }

    public int getShowDividerVertical() {
        return this.mShowDividerVertical;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int i;
        int i2;
        int size = this.mFlexLines.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            FlexLine flexLine = this.mFlexLines.get(i4);
            if (hasDividerBeforeFlexLine(i4)) {
                if (isMainAxisDirectionHorizontal()) {
                    i2 = this.mDividerHorizontalHeight;
                } else {
                    i2 = this.mDividerVerticalWidth;
                }
                i3 += i2;
            }
            if (hasEndDividerAfterFlexLine(i4)) {
                if (isMainAxisDirectionHorizontal()) {
                    i = this.mDividerHorizontalHeight;
                } else {
                    i = this.mDividerVerticalWidth;
                }
                i3 += i;
            }
            i3 += flexLine.mCrossSize;
        }
        return i3;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.mFlexDirection;
        if (i == 0 || i == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        boolean z;
        boolean z2;
        if (this.mDividerDrawableVertical == null && this.mDividerDrawableHorizontal == null) {
            return;
        }
        if (this.mShowDividerHorizontal == 0 && this.mShowDividerVertical == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i = this.mFlexDirection;
        boolean z3 = false;
        boolean z4 = true;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (layoutDirection == 1) {
                            z3 = true;
                        }
                        if (this.mFlexWrap == 2) {
                            z3 = !z3;
                        }
                        drawDividersVertical(canvas, z3, true);
                        return;
                    }
                    return;
                }
                if (layoutDirection != 1) {
                    z4 = false;
                }
                if (this.mFlexWrap == 2) {
                    z4 = !z4;
                }
                drawDividersVertical(canvas, z4, false);
                return;
            }
            if (layoutDirection != 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (this.mFlexWrap == 2) {
                z3 = true;
            }
            drawDividersHorizontal(canvas, z2, z3);
            return;
        }
        if (layoutDirection == 1) {
            z = true;
        } else {
            z = false;
        }
        if (this.mFlexWrap == 2) {
            z3 = true;
        }
        drawDividersHorizontal(canvas, z, z3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i5 = this.mFlexDirection;
        boolean z6 = false;
        if (i5 != 0) {
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 == 3) {
                        if (layoutDirection == 1) {
                            z6 = true;
                        }
                        if (this.mFlexWrap == 2) {
                            z5 = true ^ z6;
                        } else {
                            z5 = z6;
                        }
                        layoutVertical(z5, true, i, i2, i3, i4);
                        return;
                    }
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-7623677495260191567L, -4983841184787600219L, 125185786493991071L, 3454946624050030281L, -2707248293370145991L}).toString() + this.mFlexDirection);
                }
                if (layoutDirection == 1) {
                    z6 = true;
                }
                if (this.mFlexWrap == 2) {
                    z4 = true ^ z6;
                } else {
                    z4 = z6;
                }
                layoutVertical(z4, false, i, i2, i3, i4);
                return;
            }
            if (layoutDirection != 1) {
                z3 = true;
            } else {
                z3 = false;
            }
            layoutHorizontal(z3, i, i2, i3, i4);
            return;
        }
        if (layoutDirection == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        layoutHorizontal(z2, i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrderCache == null) {
            this.mOrderCache = new SparseIntArray(getChildCount());
        }
        if (this.mFlexboxHelper.isOrderChangedFromLastMeasurement(this.mOrderCache)) {
            this.mReorderedIndices = this.mFlexboxHelper.createReorderedIndices(this.mOrderCache);
        }
        int i3 = this.mFlexDirection;
        if (i3 != 0 && i3 != 1) {
            if (i3 != 2 && i3 != 3) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-6059674483033278527L, -2389063571132787990L, -2502430549255682456L, -6828859060584089392L, -5249556647297477983L, -8005823676117266911L, -7009581505376893000L}).toString() + this.mFlexDirection);
            }
            measureVertical(i, i2);
            return;
        }
        measureHorizontal(i, i2);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, FlexLine flexLine) {
        if (hasDividerBeforeChildAtAlongMainAxis(i, i2)) {
            if (isMainAxisDirectionHorizontal()) {
                int i3 = flexLine.mMainSize;
                int i4 = this.mDividerVerticalWidth;
                flexLine.mMainSize = i3 + i4;
                flexLine.mDividerLengthInMainSize += i4;
                return;
            }
            int i5 = flexLine.mMainSize;
            int i6 = this.mDividerHorizontalHeight;
            flexLine.mMainSize = i5 + i6;
            flexLine.mDividerLengthInMainSize += i6;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexLineAdded(FlexLine flexLine) {
        if (isMainAxisDirectionHorizontal()) {
            if ((this.mShowDividerVertical & 4) > 0) {
                int i = flexLine.mMainSize;
                int i2 = this.mDividerVerticalWidth;
                flexLine.mMainSize = i + i2;
                flexLine.mDividerLengthInMainSize += i2;
                return;
            }
            return;
        }
        if ((this.mShowDividerHorizontal & 4) > 0) {
            int i3 = flexLine.mMainSize;
            int i4 = this.mDividerHorizontalHeight;
            flexLine.mMainSize = i3 + i4;
            flexLine.mDividerLengthInMainSize += i4;
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignContent(int i) {
        if (this.mAlignContent != i) {
            this.mAlignContent = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignItems(int i) {
        if (this.mAlignItems != i) {
            this.mAlignItems = i;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableHorizontal) {
            return;
        }
        this.mDividerDrawableHorizontal = drawable;
        if (drawable != null) {
            this.mDividerHorizontalHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerHorizontalHeight = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.mDividerDrawableVertical) {
            return;
        }
        this.mDividerDrawableVertical = drawable;
        if (drawable != null) {
            this.mDividerVerticalWidth = drawable.getIntrinsicWidth();
        } else {
            this.mDividerVerticalWidth = 0;
        }
        setWillNotDrawFlag();
        requestLayout();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            this.mFlexDirection = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexLines(List<FlexLine> list) {
        this.mFlexLines = list;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (this.mFlexWrap != i) {
            this.mFlexWrap = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setJustifyContent(int i) {
        if (this.mJustifyContent != i) {
            this.mJustifyContent = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setMaxLine(int i) {
        if (this.mMaxLine != i) {
            this.mMaxLine = i;
            requestLayout();
        }
    }

    public void setShowDivider(int i) {
        setShowDividerVertical(i);
        setShowDividerHorizontal(i);
    }

    public void setShowDividerHorizontal(int i) {
        if (i != this.mShowDividerHorizontal) {
            this.mShowDividerHorizontal = i;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i) {
        if (i != this.mShowDividerVertical) {
            this.mShowDividerVertical = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mMaxLine = -1;
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mFlexLines = new ArrayList();
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout, i, 0);
        this.mFlexDirection = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexDirection, 0);
        this.mFlexWrap = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_flexWrap, 0);
        this.mJustifyContent = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_justifyContent, 0);
        this.mAlignItems = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignItems, 0);
        this.mAlignContent = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_alignContent, 0);
        this.mMaxLine = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_maxLine, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawable);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableHorizontal);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.FlexboxLayout_dividerDrawableVertical);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i2 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDivider, 0);
        if (i2 != 0) {
            this.mShowDividerVertical = i2;
            this.mShowDividerHorizontal = i2;
        }
        int i3 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerVertical, 0);
        if (i3 != 0) {
            this.mShowDividerVertical = i3;
        }
        int i4 = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_showDividerHorizontal, 0);
        if (i4 != 0) {
            this.mShowDividerHorizontal = i4;
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator<LayoutParams>() { // from class: com.google.android.flexbox.FlexboxLayout.LayoutParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        };
        private int mAlignSelf;
        private float mFlexBasisPercent;
        private float mFlexGrow;
        private float mFlexShrink;
        private int mMaxHeight;
        private int mMaxWidth;
        private int mMinHeight;
        private int mMinWidth;
        private int mOrder;
        private boolean mWrapBefore;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlexboxLayout_Layout);
            this.mOrder = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_order, 1);
            this.mFlexGrow = obtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexGrow, 0.0f);
            this.mFlexShrink = obtainStyledAttributes.getFloat(R.styleable.FlexboxLayout_Layout_layout_flexShrink, 1.0f);
            this.mAlignSelf = obtainStyledAttributes.getInt(R.styleable.FlexboxLayout_Layout_layout_alignSelf, -1);
            this.mFlexBasisPercent = obtainStyledAttributes.getFraction(R.styleable.FlexboxLayout_Layout_layout_flexBasisPercent, 1, 1, -1.0f);
            this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minWidth, -1);
            this.mMinHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_minHeight, -1);
            this.mMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxWidth, 16777215);
            this.mMaxHeight = obtainStyledAttributes.getDimensionPixelSize(R.styleable.FlexboxLayout_Layout_layout_maxHeight, 16777215);
            this.mWrapBefore = obtainStyledAttributes.getBoolean(R.styleable.FlexboxLayout_Layout_layout_wrapBefore, false);
            obtainStyledAttributes.recycle();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getAlignSelf() {
            return this.mAlignSelf;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexBasisPercent() {
            return this.mFlexBasisPercent;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexGrow() {
            return this.mFlexGrow;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float getFlexShrink() {
            return this.mFlexShrink;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginBottom() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginLeft() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginRight() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMarginTop() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxHeight() {
            return this.mMaxHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMaxWidth() {
            return this.mMaxWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinHeight() {
            return this.mMinHeight;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getMinWidth() {
            return this.mMinWidth;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return this.mOrder;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean isWrapBefore() {
            return this.mWrapBefore;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setAlignSelf(int i) {
            this.mAlignSelf = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexBasisPercent(float f) {
            this.mFlexBasisPercent = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexGrow(float f) {
            this.mFlexGrow = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setFlexShrink(float f) {
            this.mFlexShrink = f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setHeight(int i) {
            ((ViewGroup.MarginLayoutParams) this).height = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxHeight(int i) {
            this.mMaxHeight = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMaxWidth(int i) {
            this.mMaxWidth = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinHeight(int i) {
            this.mMinHeight = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i) {
            this.mMinWidth = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setOrder(int i) {
            this.mOrder = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWidth(int i) {
            ((ViewGroup.MarginLayoutParams) this).width = i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setWrapBefore(boolean z) {
            this.mWrapBefore = z;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mOrder);
            parcel.writeFloat(this.mFlexGrow);
            parcel.writeFloat(this.mFlexShrink);
            parcel.writeInt(this.mAlignSelf);
            parcel.writeFloat(this.mFlexBasisPercent);
            parcel.writeInt(this.mMinWidth);
            parcel.writeInt(this.mMinHeight);
            parcel.writeInt(this.mMaxWidth);
            parcel.writeInt(this.mMaxHeight);
            parcel.writeByte(this.mWrapBefore ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = layoutParams.mOrder;
            this.mFlexGrow = layoutParams.mFlexGrow;
            this.mFlexShrink = layoutParams.mFlexShrink;
            this.mAlignSelf = layoutParams.mAlignSelf;
            this.mFlexBasisPercent = layoutParams.mFlexBasisPercent;
            this.mMinWidth = layoutParams.mMinWidth;
            this.mMinHeight = layoutParams.mMinHeight;
            this.mMaxWidth = layoutParams.mMaxWidth;
            this.mMaxHeight = layoutParams.mMaxHeight;
            this.mWrapBefore = layoutParams.mWrapBefore;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(int i, int i2) {
            super(new ViewGroup.LayoutParams(i, i2));
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(Parcel parcel) {
            super(0, 0);
            this.mOrder = 1;
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMinWidth = -1;
            this.mMinHeight = -1;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
            this.mOrder = parcel.readInt();
            this.mFlexGrow = parcel.readFloat();
            this.mFlexShrink = parcel.readFloat();
            this.mAlignSelf = parcel.readInt();
            this.mFlexBasisPercent = parcel.readFloat();
            this.mMinWidth = parcel.readInt();
            this.mMinHeight = parcel.readInt();
            this.mMaxWidth = parcel.readInt();
            this.mMaxHeight = parcel.readInt();
            this.mWrapBefore = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }
}
