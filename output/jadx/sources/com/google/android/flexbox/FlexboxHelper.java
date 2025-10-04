package com.google.android.flexbox;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.widget.CompoundButtonCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class FlexboxHelper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int INITIAL_CAPACITY = 10;
    private static final long MEASURE_SPEC_WIDTH_MASK = 4294967295L;
    private boolean[] mChildrenFrozen;
    private final FlexContainer mFlexContainer;

    @Nullable
    int[] mIndexToFlexLine;

    @Nullable
    long[] mMeasureSpecCache;

    @Nullable
    private long[] mMeasuredSizeCache;

    /* loaded from: classes.dex */
    public static class FlexLinesResult {
        int mChildState;
        List<FlexLine> mFlexLines;

        public void reset() {
            this.mFlexLines = null;
            this.mChildState = 0;
        }
    }

    /* loaded from: classes.dex */
    public static class Order implements Comparable<Order> {
        int index;
        int order;

        private Order() {
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-2734460914686205901L, 4064173170062746415L, 1858097708616037322L}).toString());
            sb.append(this.order);
            sb.append(new ObfuscatedString(new long[]{-1969546510704083378L, 6426295336324460612L}).toString());
            return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.index, '}');
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Order order) {
            int i = this.order;
            int i2 = order.order;
            return i != i2 ? i - i2 : this.index - order.index;
        }
    }

    public FlexboxHelper(FlexContainer flexContainer) {
        this.mFlexContainer = flexContainer;
    }

    private void addFlexLine(List<FlexLine> list, FlexLine flexLine, int i, int i2) {
        flexLine.mSumCrossSizeBefore = i2;
        this.mFlexContainer.onNewFlexLineAdded(flexLine);
        flexLine.mLastIndex = i;
        list.add(flexLine);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkSizeConstraints(View view, int i) {
        boolean z;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth < flexItem.getMinWidth()) {
            measuredWidth = flexItem.getMinWidth();
        } else if (measuredWidth > flexItem.getMaxWidth()) {
            measuredWidth = flexItem.getMaxWidth();
        } else {
            z = false;
            if (measuredHeight >= flexItem.getMinHeight()) {
                measuredHeight = flexItem.getMinHeight();
            } else if (measuredHeight > flexItem.getMaxHeight()) {
                measuredHeight = flexItem.getMaxHeight();
            } else {
                z2 = z;
            }
            if (!z2) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                updateMeasureCache(i, makeMeasureSpec, makeMeasureSpec2, view);
                this.mFlexContainer.updateViewCache(i, view);
                return;
            }
            return;
        }
        z = true;
        if (measuredHeight >= flexItem.getMinHeight()) {
        }
        if (!z2) {
        }
    }

    private List<FlexLine> constructFlexLinesForAlignContentCenter(List<FlexLine> list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        FlexLine flexLine = new FlexLine();
        flexLine.mCrossSize = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(flexLine);
            }
            arrayList.add(list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(flexLine);
            }
        }
        return arrayList;
    }

    @NonNull
    private List<Order> createOrders(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            FlexItem flexItem = (FlexItem) this.mFlexContainer.getFlexItemAt(i2).getLayoutParams();
            Order order = new Order();
            order.order = flexItem.getOrder();
            order.index = i2;
            arrayList.add(order);
        }
        return arrayList;
    }

    private void ensureChildrenFrozen(int i) {
        boolean[] zArr = this.mChildrenFrozen;
        if (zArr == null) {
            this.mChildrenFrozen = new boolean[Math.max(i, 10)];
        } else if (zArr.length < i) {
            this.mChildrenFrozen = new boolean[Math.max(zArr.length * 2, i)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    private void evaluateMinimumSizeForCompoundButton(CompoundButton compoundButton) {
        int minimumWidth;
        FlexItem flexItem = (FlexItem) compoundButton.getLayoutParams();
        int minWidth = flexItem.getMinWidth();
        int minHeight = flexItem.getMinHeight();
        Drawable buttonDrawable = CompoundButtonCompat.getButtonDrawable(compoundButton);
        int i = 0;
        if (buttonDrawable == null) {
            minimumWidth = 0;
        } else {
            minimumWidth = buttonDrawable.getMinimumWidth();
        }
        if (buttonDrawable != null) {
            i = buttonDrawable.getMinimumHeight();
        }
        if (minWidth == -1) {
            minWidth = minimumWidth;
        }
        flexItem.setMinWidth(minWidth);
        if (minHeight == -1) {
            minHeight = i;
        }
        flexItem.setMinHeight(minHeight);
    }

    private void expandFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        double d;
        int i8;
        double d2;
        float f = flexLine.mTotalFlexGrow;
        float f2 = 0.0f;
        if (f > 0.0f && i3 >= (i5 = flexLine.mMainSize)) {
            float f3 = (i3 - i5) / f;
            flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i9 = 0;
            boolean z2 = false;
            int i10 = 0;
            float f4 = 0.0f;
            while (i9 < flexLine.mItemCount) {
                int i11 = flexLine.mFirstIndex + i9;
                View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i11);
                if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                    i6 = i5;
                } else {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int flexDirection = this.mFlexContainer.getFlexDirection();
                    if (flexDirection == 0 || flexDirection == 1) {
                        int i12 = i5;
                        int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr = this.mMeasuredSizeCache;
                        if (jArr != null) {
                            measuredWidth = extractLowerInt(jArr[i11]);
                        }
                        int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr2 = this.mMeasuredSizeCache;
                        i6 = i12;
                        if (jArr2 != null) {
                            measuredHeight = extractHigherInt(jArr2[i11]);
                        }
                        if (!this.mChildrenFrozen[i11] && flexItem.getFlexGrow() > 0.0f) {
                            float flexGrow = (flexItem.getFlexGrow() * f3) + measuredWidth;
                            if (i9 == flexLine.mItemCount - 1) {
                                flexGrow += f4;
                                f4 = 0.0f;
                            }
                            int round = Math.round(flexGrow);
                            if (round > flexItem.getMaxWidth()) {
                                round = flexItem.getMaxWidth();
                                this.mChildrenFrozen[i11] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                                z2 = true;
                            } else {
                                float f5 = (flexGrow - round) + f4;
                                double d3 = f5;
                                if (d3 > 1.0d) {
                                    round++;
                                    d = d3 - 1.0d;
                                } else {
                                    if (d3 < -1.0d) {
                                        round--;
                                        d = d3 + 1.0d;
                                    }
                                    f4 = f5;
                                }
                                f5 = (float) d;
                                f4 = f5;
                            }
                            int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                            int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                            this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        }
                        int max = Math.max(i10, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                        flexLine.mMainSize = measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight() + flexLine.mMainSize;
                        i7 = max;
                    } else {
                        int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr3 = this.mMeasuredSizeCache;
                        if (jArr3 != null) {
                            measuredHeight3 = extractHigherInt(jArr3[i11]);
                        }
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr4 = this.mMeasuredSizeCache;
                        if (jArr4 != null) {
                            measuredWidth3 = extractLowerInt(jArr4[i11]);
                        }
                        if (!this.mChildrenFrozen[i11] && flexItem.getFlexGrow() > f2) {
                            float flexGrow2 = (flexItem.getFlexGrow() * f3) + measuredHeight3;
                            if (i9 == flexLine.mItemCount - 1) {
                                flexGrow2 += f4;
                                f4 = 0.0f;
                            }
                            int round2 = Math.round(flexGrow2);
                            if (round2 > flexItem.getMaxHeight()) {
                                round2 = flexItem.getMaxHeight();
                                this.mChildrenFrozen[i11] = true;
                                flexLine.mTotalFlexGrow -= flexItem.getFlexGrow();
                                i8 = i5;
                                z2 = true;
                            } else {
                                float f6 = (flexGrow2 - round2) + f4;
                                i8 = i5;
                                double d4 = f6;
                                if (d4 > 1.0d) {
                                    round2++;
                                    d2 = d4 - 1.0d;
                                } else if (d4 < -1.0d) {
                                    round2--;
                                    d2 = d4 + 1.0d;
                                } else {
                                    f4 = f6;
                                }
                                f4 = (float) d2;
                            }
                            int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                            measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                            this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                            measuredHeight3 = measuredHeight4;
                        } else {
                            i8 = i5;
                        }
                        i7 = Math.max(i10, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                        flexLine.mMainSize = measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom() + flexLine.mMainSize;
                        i6 = i8;
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i7);
                    i10 = i7;
                }
                i9++;
                i5 = i6;
                f2 = 0.0f;
            }
            int i13 = i5;
            if (z2 && i13 != flexLine.mMainSize) {
                expandFlexItems(i, i2, flexLine, i3, i4, true);
            }
        }
    }

    private int getChildHeightMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.mFlexContainer;
        int childHeightMeasureSpec = flexContainer.getChildHeightMeasureSpec(i, flexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i2, flexItem.getHeight());
        int size = View.MeasureSpec.getSize(childHeightMeasureSpec);
        if (size > flexItem.getMaxHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        if (size < flexItem.getMinHeight()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMinHeight(), View.MeasureSpec.getMode(childHeightMeasureSpec));
        }
        return childHeightMeasureSpec;
    }

    private int getChildWidthMeasureSpecInternal(int i, FlexItem flexItem, int i2) {
        FlexContainer flexContainer = this.mFlexContainer;
        int childWidthMeasureSpec = flexContainer.getChildWidthMeasureSpec(i, flexContainer.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i2, flexItem.getWidth());
        int size = View.MeasureSpec.getSize(childWidthMeasureSpec);
        if (size > flexItem.getMaxWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMaxWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        if (size < flexItem.getMinWidth()) {
            return View.MeasureSpec.makeMeasureSpec(flexItem.getMinWidth(), View.MeasureSpec.getMode(childWidthMeasureSpec));
        }
        return childWidthMeasureSpec;
    }

    private int getFlexItemMarginEndCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginBottom();
        }
        return flexItem.getMarginRight();
    }

    private int getFlexItemMarginEndMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginRight();
        }
        return flexItem.getMarginBottom();
    }

    private int getFlexItemMarginStartCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginTop();
        }
        return flexItem.getMarginLeft();
    }

    private int getFlexItemMarginStartMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getMarginLeft();
        }
        return flexItem.getMarginTop();
    }

    private int getFlexItemSizeCross(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getHeight();
        }
        return flexItem.getWidth();
    }

    private int getFlexItemSizeMain(FlexItem flexItem, boolean z) {
        if (z) {
            return flexItem.getWidth();
        }
        return flexItem.getHeight();
    }

    private int getPaddingEndCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingBottom();
        }
        return this.mFlexContainer.getPaddingEnd();
    }

    private int getPaddingEndMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingEnd();
        }
        return this.mFlexContainer.getPaddingBottom();
    }

    private int getPaddingStartCross(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingTop();
        }
        return this.mFlexContainer.getPaddingStart();
    }

    private int getPaddingStartMain(boolean z) {
        if (z) {
            return this.mFlexContainer.getPaddingStart();
        }
        return this.mFlexContainer.getPaddingTop();
    }

    private int getViewMeasuredSizeCross(View view, boolean z) {
        if (z) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int getViewMeasuredSizeMain(View view, boolean z) {
        if (z) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private boolean isLastFlexItem(int i, int i2, FlexLine flexLine) {
        if (i == i2 - 1 && flexLine.getItemCountNotGone() != 0) {
            return true;
        }
        return false;
    }

    private boolean isWrapRequired(View view, int i, int i2, int i3, int i4, FlexItem flexItem, int i5, int i6, int i7) {
        if (this.mFlexContainer.getFlexWrap() == 0) {
            return false;
        }
        if (flexItem.isWrapBefore()) {
            return true;
        }
        if (i == 0) {
            return false;
        }
        int maxLine = this.mFlexContainer.getMaxLine();
        if (maxLine != -1 && maxLine <= i7 + 1) {
            return false;
        }
        int decorationLengthMainAxis = this.mFlexContainer.getDecorationLengthMainAxis(view, i5, i6);
        if (decorationLengthMainAxis > 0) {
            i4 += decorationLengthMainAxis;
        }
        if (i2 >= i3 + i4) {
            return false;
        }
        return true;
    }

    private void shrinkFlexItems(int i, int i2, FlexLine flexLine, int i3, int i4, boolean z) {
        int i5;
        int i6;
        int i7;
        int i8 = flexLine.mMainSize;
        float f = flexLine.mTotalFlexShrink;
        float f2 = 0.0f;
        if (f > 0.0f && i3 <= i8) {
            float f3 = (i8 - i3) / f;
            flexLine.mMainSize = i4 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i9 = 0;
            boolean z2 = false;
            int i10 = 0;
            float f4 = 0.0f;
            while (i9 < flexLine.mItemCount) {
                int i11 = flexLine.mFirstIndex + i9;
                View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i11);
                if (reorderedFlexItemAt == null || reorderedFlexItemAt.getVisibility() == 8) {
                    i5 = i8;
                    i6 = i9;
                } else {
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int flexDirection = this.mFlexContainer.getFlexDirection();
                    if (flexDirection == 0 || flexDirection == 1) {
                        i5 = i8;
                        int i12 = i9;
                        int measuredWidth = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr = this.mMeasuredSizeCache;
                        if (jArr != null) {
                            measuredWidth = extractLowerInt(jArr[i11]);
                        }
                        int measuredHeight = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr2 = this.mMeasuredSizeCache;
                        if (jArr2 != null) {
                            measuredHeight = extractHigherInt(jArr2[i11]);
                        }
                        if (!this.mChildrenFrozen[i11] && flexItem.getFlexShrink() > 0.0f) {
                            float flexShrink = measuredWidth - (flexItem.getFlexShrink() * f3);
                            i6 = i12;
                            if (i6 == flexLine.mItemCount - 1) {
                                flexShrink += f4;
                                f4 = 0.0f;
                            }
                            int round = Math.round(flexShrink);
                            if (round < flexItem.getMinWidth()) {
                                round = flexItem.getMinWidth();
                                this.mChildrenFrozen[i11] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                                z2 = true;
                            } else {
                                float f5 = (flexShrink - round) + f4;
                                double d = f5;
                                if (d > 1.0d) {
                                    round++;
                                    f5 -= 1.0f;
                                } else if (d < -1.0d) {
                                    round--;
                                    f5 += 1.0f;
                                }
                                f4 = f5;
                            }
                            int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(i2, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                            reorderedFlexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                            int measuredWidth2 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight2 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, makeMeasureSpec, childHeightMeasureSpecInternal, reorderedFlexItemAt);
                            this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                            measuredWidth = measuredWidth2;
                            measuredHeight = measuredHeight2;
                        } else {
                            i6 = i12;
                        }
                        int max = Math.max(i10, measuredHeight + flexItem.getMarginTop() + flexItem.getMarginBottom() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                        flexLine.mMainSize = measuredWidth + flexItem.getMarginLeft() + flexItem.getMarginRight() + flexLine.mMainSize;
                        i7 = max;
                    } else {
                        int measuredHeight3 = reorderedFlexItemAt.getMeasuredHeight();
                        long[] jArr3 = this.mMeasuredSizeCache;
                        if (jArr3 != null) {
                            measuredHeight3 = extractHigherInt(jArr3[i11]);
                        }
                        int measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                        long[] jArr4 = this.mMeasuredSizeCache;
                        if (jArr4 != null) {
                            measuredWidth3 = extractLowerInt(jArr4[i11]);
                        }
                        if (!this.mChildrenFrozen[i11] && flexItem.getFlexShrink() > f2) {
                            float flexShrink2 = measuredHeight3 - (flexItem.getFlexShrink() * f3);
                            if (i9 == flexLine.mItemCount - 1) {
                                flexShrink2 += f4;
                                f4 = 0.0f;
                            }
                            int round2 = Math.round(flexShrink2);
                            if (round2 < flexItem.getMinHeight()) {
                                round2 = flexItem.getMinHeight();
                                this.mChildrenFrozen[i11] = true;
                                flexLine.mTotalFlexShrink -= flexItem.getFlexShrink();
                                i5 = i8;
                                i6 = i9;
                                z2 = true;
                            } else {
                                float f6 = (flexShrink2 - round2) + f4;
                                i5 = i8;
                                i6 = i9;
                                double d2 = f6;
                                if (d2 > 1.0d) {
                                    round2++;
                                    f6 -= 1.0f;
                                } else if (d2 < -1.0d) {
                                    round2--;
                                    f6 += 1.0f;
                                }
                                f4 = f6;
                            }
                            int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(i, flexItem, flexLine.mSumCrossSizeBefore);
                            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                            reorderedFlexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                            measuredWidth3 = reorderedFlexItemAt.getMeasuredWidth();
                            int measuredHeight4 = reorderedFlexItemAt.getMeasuredHeight();
                            updateMeasureCache(i11, childWidthMeasureSpecInternal, makeMeasureSpec2, reorderedFlexItemAt);
                            this.mFlexContainer.updateViewCache(i11, reorderedFlexItemAt);
                            measuredHeight3 = measuredHeight4;
                        } else {
                            i5 = i8;
                            i6 = i9;
                        }
                        i7 = Math.max(i10, measuredWidth3 + flexItem.getMarginLeft() + flexItem.getMarginRight() + this.mFlexContainer.getDecorationLengthCrossAxis(reorderedFlexItemAt));
                        flexLine.mMainSize = measuredHeight3 + flexItem.getMarginTop() + flexItem.getMarginBottom() + flexLine.mMainSize;
                    }
                    flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i7);
                    i10 = i7;
                }
                i9 = i6 + 1;
                i8 = i5;
                f2 = 0.0f;
            }
            int i13 = i8;
            if (z2 && i13 != flexLine.mMainSize) {
                shrinkFlexItems(i, i2, flexLine, i3, i4, true);
            }
        }
    }

    private int[] sortOrdersIntoReorderedIndices(int i, List<Order> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        int i2 = 0;
        for (Order order : list) {
            int i3 = order.index;
            iArr[i2] = i3;
            sparseIntArray.append(i3, order.order);
            i2++;
        }
        return iArr;
    }

    private void stretchViewHorizontally(View view, int i, int i2) {
        int measuredHeight;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginLeft()) - flexItem.getMarginRight()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinWidth()), flexItem.getMaxWidth());
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr != null) {
            measuredHeight = extractHigherInt(jArr[i2]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec2, makeMeasureSpec);
        updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void stretchViewVertically(View view, int i, int i2) {
        int measuredWidth;
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int min = Math.min(Math.max(((i - flexItem.getMarginTop()) - flexItem.getMarginBottom()) - this.mFlexContainer.getDecorationLengthCrossAxis(view), flexItem.getMinHeight()), flexItem.getMaxHeight());
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr != null) {
            measuredWidth = extractLowerInt(jArr[i2]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
        view.measure(makeMeasureSpec, makeMeasureSpec2);
        updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
        this.mFlexContainer.updateViewCache(i2, view);
    }

    private void updateMeasureCache(int i, int i2, int i3, View view) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr != null) {
            jArr[i] = makeCombinedLong(i2, i3);
        }
        long[] jArr2 = this.mMeasuredSizeCache;
        if (jArr2 != null) {
            jArr2[i] = makeCombinedLong(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }

    public void calculateFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, int i5, @Nullable List<FlexLine> list) {
        List<FlexLine> list2;
        boolean z;
        int i6;
        FlexLinesResult flexLinesResult2;
        int i7;
        int i8;
        int i9;
        List<FlexLine> list3;
        int i10;
        View view;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z2;
        boolean z3;
        int i16;
        int i17;
        int i18;
        FlexLine flexLine;
        int i19;
        int i20 = i;
        int i21 = i2;
        int i22 = i5;
        boolean isMainAxisDirectionHorizontal = this.mFlexContainer.isMainAxisDirectionHorizontal();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (list == null) {
            list2 = new ArrayList();
        } else {
            list2 = list;
        }
        flexLinesResult.mFlexLines = list2;
        if (i22 == -1) {
            z = true;
        } else {
            z = false;
        }
        int paddingStartMain = getPaddingStartMain(isMainAxisDirectionHorizontal);
        int paddingEndMain = getPaddingEndMain(isMainAxisDirectionHorizontal);
        int paddingStartCross = getPaddingStartCross(isMainAxisDirectionHorizontal);
        int paddingEndCross = getPaddingEndCross(isMainAxisDirectionHorizontal);
        FlexLine flexLine2 = new FlexLine();
        int i23 = i4;
        flexLine2.mFirstIndex = i23;
        int i24 = paddingEndMain + paddingStartMain;
        flexLine2.mMainSize = i24;
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        boolean z4 = z;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = Integer.MIN_VALUE;
        while (true) {
            if (i23 < flexItemCount) {
                View reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i23);
                if (reorderedFlexItemAt == null) {
                    if (isLastFlexItem(i23, flexItemCount, flexLine2)) {
                        addFlexLine(list2, flexLine2, i23, i25);
                    }
                } else if (reorderedFlexItemAt.getVisibility() == 8) {
                    flexLine2.mGoneItemCount++;
                    flexLine2.mItemCount++;
                    if (isLastFlexItem(i23, flexItemCount, flexLine2)) {
                        addFlexLine(list2, flexLine2, i23, i25);
                    }
                } else {
                    if (reorderedFlexItemAt instanceof CompoundButton) {
                        evaluateMinimumSizeForCompoundButton((CompoundButton) reorderedFlexItemAt);
                    }
                    FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                    int i29 = flexItemCount;
                    if (flexItem.getAlignSelf() == 4) {
                        flexLine2.mIndicesAlignSelfStretch.add(Integer.valueOf(i23));
                    }
                    int flexItemSizeMain = getFlexItemSizeMain(flexItem, isMainAxisDirectionHorizontal);
                    if (flexItem.getFlexBasisPercent() != -1.0f && mode == 1073741824) {
                        flexItemSizeMain = Math.round(size * flexItem.getFlexBasisPercent());
                    }
                    if (isMainAxisDirectionHorizontal) {
                        int childWidthMeasureSpec = this.mFlexContainer.getChildWidthMeasureSpec(i20, i24 + getFlexItemMarginStartMain(flexItem, true) + getFlexItemMarginEndMain(flexItem, true), flexItemSizeMain);
                        i7 = size;
                        i8 = mode;
                        int childHeightMeasureSpec = this.mFlexContainer.getChildHeightMeasureSpec(i21, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, true) + getFlexItemMarginEndCross(flexItem, true) + i25, getFlexItemSizeCross(flexItem, true));
                        reorderedFlexItemAt.measure(childWidthMeasureSpec, childHeightMeasureSpec);
                        updateMeasureCache(i23, childWidthMeasureSpec, childHeightMeasureSpec, reorderedFlexItemAt);
                        i9 = childWidthMeasureSpec;
                    } else {
                        i7 = size;
                        i8 = mode;
                        int childWidthMeasureSpec2 = this.mFlexContainer.getChildWidthMeasureSpec(i21, paddingStartCross + paddingEndCross + getFlexItemMarginStartCross(flexItem, false) + getFlexItemMarginEndCross(flexItem, false) + i25, getFlexItemSizeCross(flexItem, false));
                        int childHeightMeasureSpec2 = this.mFlexContainer.getChildHeightMeasureSpec(i20, getFlexItemMarginStartMain(flexItem, false) + i24 + getFlexItemMarginEndMain(flexItem, false), flexItemSizeMain);
                        reorderedFlexItemAt.measure(childWidthMeasureSpec2, childHeightMeasureSpec2);
                        updateMeasureCache(i23, childWidthMeasureSpec2, childHeightMeasureSpec2, reorderedFlexItemAt);
                        i9 = childHeightMeasureSpec2;
                    }
                    this.mFlexContainer.updateViewCache(i23, reorderedFlexItemAt);
                    checkSizeConstraints(reorderedFlexItemAt, i23);
                    i26 = View.combineMeasuredStates(i26, reorderedFlexItemAt.getMeasuredState());
                    int i30 = i25;
                    int i31 = i24;
                    FlexLine flexLine3 = flexLine2;
                    int i32 = i23;
                    list3 = list2;
                    int i33 = i9;
                    if (isWrapRequired(reorderedFlexItemAt, i8, i7, flexLine2.mMainSize, getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + getViewMeasuredSizeMain(reorderedFlexItemAt, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal), flexItem, i32, i27, list2.size())) {
                        i23 = i32;
                        if (flexLine3.getItemCountNotGone() > 0) {
                            if (i23 > 0) {
                                i19 = i23 - 1;
                                flexLine = flexLine3;
                            } else {
                                flexLine = flexLine3;
                                i19 = 0;
                            }
                            addFlexLine(list3, flexLine, i19, i30);
                            i25 = flexLine.mCrossSize + i30;
                        } else {
                            i25 = i30;
                        }
                        if (isMainAxisDirectionHorizontal) {
                            if (flexItem.getHeight() == -1) {
                                FlexContainer flexContainer = this.mFlexContainer;
                                i10 = i2;
                                i13 = -1;
                                view = reorderedFlexItemAt;
                                view.measure(i33, flexContainer.getChildHeightMeasureSpec(i10, flexContainer.getPaddingTop() + this.mFlexContainer.getPaddingBottom() + flexItem.getMarginTop() + flexItem.getMarginBottom() + i25, flexItem.getHeight()));
                                checkSizeConstraints(view, i23);
                            } else {
                                i10 = i2;
                                view = reorderedFlexItemAt;
                                i13 = -1;
                            }
                        } else {
                            i10 = i2;
                            view = reorderedFlexItemAt;
                            i13 = -1;
                            if (flexItem.getWidth() == -1) {
                                FlexContainer flexContainer2 = this.mFlexContainer;
                                view.measure(flexContainer2.getChildWidthMeasureSpec(i10, flexContainer2.getPaddingLeft() + this.mFlexContainer.getPaddingRight() + flexItem.getMarginLeft() + flexItem.getMarginRight() + i25, flexItem.getWidth()), i33);
                                checkSizeConstraints(view, i23);
                            }
                        }
                        flexLine2 = new FlexLine();
                        i12 = 1;
                        flexLine2.mItemCount = 1;
                        i11 = i31;
                        flexLine2.mMainSize = i11;
                        flexLine2.mFirstIndex = i23;
                        i14 = 0;
                        i15 = Integer.MIN_VALUE;
                    } else {
                        i10 = i2;
                        i23 = i32;
                        view = reorderedFlexItemAt;
                        flexLine2 = flexLine3;
                        i11 = i31;
                        i12 = 1;
                        i13 = -1;
                        flexLine2.mItemCount++;
                        i14 = i27 + 1;
                        i25 = i30;
                        i15 = i28;
                    }
                    boolean z5 = flexLine2.mAnyItemsHaveFlexGrow;
                    if (flexItem.getFlexGrow() != 0.0f) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    flexLine2.mAnyItemsHaveFlexGrow = z5 | z2;
                    boolean z6 = flexLine2.mAnyItemsHaveFlexShrink;
                    if (flexItem.getFlexShrink() != 0.0f) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    flexLine2.mAnyItemsHaveFlexShrink = z6 | z3;
                    int[] iArr = this.mIndexToFlexLine;
                    if (iArr != null) {
                        iArr[i23] = list3.size();
                    }
                    flexLine2.mMainSize = getViewMeasuredSizeMain(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartMain(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndMain(flexItem, isMainAxisDirectionHorizontal) + flexLine2.mMainSize;
                    flexLine2.mTotalFlexGrow += flexItem.getFlexGrow();
                    flexLine2.mTotalFlexShrink += flexItem.getFlexShrink();
                    this.mFlexContainer.onNewFlexItemAdded(view, i23, i14, flexLine2);
                    int max = Math.max(i15, getViewMeasuredSizeCross(view, isMainAxisDirectionHorizontal) + getFlexItemMarginStartCross(flexItem, isMainAxisDirectionHorizontal) + getFlexItemMarginEndCross(flexItem, isMainAxisDirectionHorizontal) + this.mFlexContainer.getDecorationLengthCrossAxis(view));
                    flexLine2.mCrossSize = Math.max(flexLine2.mCrossSize, max);
                    if (isMainAxisDirectionHorizontal) {
                        if (this.mFlexContainer.getFlexWrap() != 2) {
                            flexLine2.mMaxBaseline = Math.max(flexLine2.mMaxBaseline, view.getBaseline() + flexItem.getMarginTop());
                        } else {
                            flexLine2.mMaxBaseline = Math.max(flexLine2.mMaxBaseline, (view.getMeasuredHeight() - view.getBaseline()) + flexItem.getMarginBottom());
                        }
                    }
                    i16 = i29;
                    if (isLastFlexItem(i23, i16, flexLine2)) {
                        addFlexLine(list3, flexLine2, i23, i25);
                        i25 += flexLine2.mCrossSize;
                    }
                    i17 = i5;
                    if (i17 != i13 && list3.size() > 0 && ((FlexLine) AbstractC0362x4440ab85.m2928x75d576dc(i12, list3)).mLastIndex >= i17 && i23 >= i17 && !z4) {
                        i25 = -flexLine2.getCrossSize();
                        i18 = i3;
                        z4 = true;
                    } else {
                        i18 = i3;
                    }
                    if (i25 > i18 && z4) {
                        flexLinesResult2 = flexLinesResult;
                        i6 = i26;
                        break;
                    }
                    i27 = i14;
                    i28 = max;
                    i23++;
                    i20 = i;
                    flexItemCount = i16;
                    i21 = i10;
                    i24 = i11;
                    list2 = list3;
                    size = i7;
                    mode = i8;
                    i22 = i17;
                }
                i7 = size;
                i8 = mode;
                i10 = i21;
                i17 = i22;
                i11 = i24;
                list3 = list2;
                i16 = flexItemCount;
                i23++;
                i20 = i;
                flexItemCount = i16;
                i21 = i10;
                i24 = i11;
                list2 = list3;
                size = i7;
                mode = i8;
                i22 = i17;
            } else {
                i6 = i26;
                flexLinesResult2 = flexLinesResult;
                break;
            }
        }
        flexLinesResult2.mChildState = i6;
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i, i2, Integer.MAX_VALUE, 0, -1, null);
    }

    public void calculateHorizontalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, 0, i4, list);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2) {
        calculateFlexLines(flexLinesResult, i2, i, Integer.MAX_VALUE, 0, -1, null);
    }

    public void calculateVerticalFlexLinesToIndex(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, 0, i4, list);
    }

    public void clearFlexLines(List<FlexLine> list, int i) {
        int i2 = this.mIndexToFlexLine[i];
        if (i2 == -1) {
            i2 = 0;
        }
        if (list.size() > i2) {
            list.subList(i2, list.size()).clear();
        }
        int[] iArr = this.mIndexToFlexLine;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = this.mMeasureSpecCache;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] createReorderedIndices(View view, int i, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        List<Order> createOrders = createOrders(flexItemCount);
        Order order = new Order();
        if (view != null && (layoutParams instanceof FlexItem)) {
            order.order = ((FlexItem) layoutParams).getOrder();
        } else {
            order.order = 1;
        }
        if (i != -1 && i != flexItemCount) {
            if (i < this.mFlexContainer.getFlexItemCount()) {
                order.index = i;
                while (i < flexItemCount) {
                    createOrders.get(i).index++;
                    i++;
                }
            } else {
                order.index = flexItemCount;
            }
        } else {
            order.index = flexItemCount;
        }
        createOrders.add(order);
        return sortOrdersIntoReorderedIndices(flexItemCount + 1, createOrders, sparseIntArray);
    }

    public void determineCrossSize(int i, int i2, int i3) {
        int i4;
        int i5;
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (flexDirection != 0 && flexDirection != 1) {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2381312115053885146L, 3228811160214657524L, -4163805153194313959L, 7958137122302166677L}), new StringBuilder(), flexDirection));
            }
            i4 = View.MeasureSpec.getMode(i);
            i5 = View.MeasureSpec.getSize(i);
        } else {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            i4 = mode;
            i5 = size;
        }
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        if (i4 == 1073741824) {
            int sumOfCrossSize = this.mFlexContainer.getSumOfCrossSize() + i3;
            int i6 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).mCrossSize = i5 - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.mFlexContainer.getAlignContent();
                if (alignContent != 1) {
                    if (alignContent != 2) {
                        if (alignContent != 3) {
                            if (alignContent != 4) {
                                if (alignContent == 5 && sumOfCrossSize < i5) {
                                    float size2 = (i5 - sumOfCrossSize) / flexLinesInternal.size();
                                    int size3 = flexLinesInternal.size();
                                    float f = 0.0f;
                                    while (i6 < size3) {
                                        FlexLine flexLine = flexLinesInternal.get(i6);
                                        float f2 = flexLine.mCrossSize + size2;
                                        if (i6 == flexLinesInternal.size() - 1) {
                                            f2 += f;
                                            f = 0.0f;
                                        }
                                        int round = Math.round(f2);
                                        float f3 = (f2 - round) + f;
                                        if (f3 > 1.0f) {
                                            round++;
                                            f3 -= 1.0f;
                                        } else if (f3 < -1.0f) {
                                            round--;
                                            f3 += 1.0f;
                                        }
                                        f = f3;
                                        flexLine.mCrossSize = round;
                                        i6++;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (sumOfCrossSize >= i5) {
                                this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                                return;
                            }
                            int size4 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                            ArrayList arrayList = new ArrayList();
                            FlexLine flexLine2 = new FlexLine();
                            flexLine2.mCrossSize = size4;
                            for (FlexLine flexLine3 : flexLinesInternal) {
                                arrayList.add(flexLine2);
                                arrayList.add(flexLine3);
                                arrayList.add(flexLine2);
                            }
                            this.mFlexContainer.setFlexLines(arrayList);
                            return;
                        }
                        if (sumOfCrossSize < i5) {
                            float size5 = (i5 - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                            ArrayList arrayList2 = new ArrayList();
                            int size6 = flexLinesInternal.size();
                            float f4 = 0.0f;
                            while (i6 < size6) {
                                arrayList2.add(flexLinesInternal.get(i6));
                                if (i6 != flexLinesInternal.size() - 1) {
                                    FlexLine flexLine4 = new FlexLine();
                                    if (i6 == flexLinesInternal.size() - 2) {
                                        flexLine4.mCrossSize = Math.round(f4 + size5);
                                        f4 = 0.0f;
                                    } else {
                                        flexLine4.mCrossSize = Math.round(size5);
                                    }
                                    int i7 = flexLine4.mCrossSize;
                                    float f5 = (size5 - i7) + f4;
                                    if (f5 > 1.0f) {
                                        flexLine4.mCrossSize = i7 + 1;
                                        f5 -= 1.0f;
                                    } else if (f5 < -1.0f) {
                                        flexLine4.mCrossSize = i7 - 1;
                                        f5 += 1.0f;
                                    }
                                    f4 = f5;
                                    arrayList2.add(flexLine4);
                                }
                                i6++;
                            }
                            this.mFlexContainer.setFlexLines(arrayList2);
                            return;
                        }
                        return;
                    }
                    this.mFlexContainer.setFlexLines(constructFlexLinesForAlignContentCenter(flexLinesInternal, i5, sumOfCrossSize));
                    return;
                }
                int i8 = i5 - sumOfCrossSize;
                FlexLine flexLine5 = new FlexLine();
                flexLine5.mCrossSize = i8;
                flexLinesInternal.add(0, flexLine5);
            }
        }
    }

    public void determineMainSize(int i, int i2) {
        determineMainSize(i, i2, 0);
    }

    public void ensureIndexToFlexLine(int i) {
        int[] iArr = this.mIndexToFlexLine;
        if (iArr == null) {
            this.mIndexToFlexLine = new int[Math.max(i, 10)];
        } else if (iArr.length < i) {
            this.mIndexToFlexLine = Arrays.copyOf(this.mIndexToFlexLine, Math.max(iArr.length * 2, i));
        }
    }

    public void ensureMeasureSpecCache(int i) {
        long[] jArr = this.mMeasureSpecCache;
        if (jArr == null) {
            this.mMeasureSpecCache = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.mMeasureSpecCache = Arrays.copyOf(this.mMeasureSpecCache, Math.max(jArr.length * 2, i));
        }
    }

    public void ensureMeasuredSizeCache(int i) {
        long[] jArr = this.mMeasuredSizeCache;
        if (jArr == null) {
            this.mMeasuredSizeCache = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.mMeasuredSizeCache = Arrays.copyOf(this.mMeasuredSizeCache, Math.max(jArr.length * 2, i));
        }
    }

    public int extractHigherInt(long j) {
        return (int) (j >> 32);
    }

    public int extractLowerInt(long j) {
        return (int) j;
    }

    public boolean isOrderChangedFromLastMeasurement(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i = 0; i < flexItemCount; i++) {
            View flexItemAt = this.mFlexContainer.getFlexItemAt(i);
            if (flexItemAt != null && ((FlexItem) flexItemAt.getLayoutParams()).getOrder() != sparseIntArray.get(i)) {
                return true;
            }
        }
        return false;
    }

    public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems != 1) {
                if (alignItems != 2) {
                    if (alignItems != 3) {
                        if (alignItems != 4) {
                            return;
                        }
                    } else if (this.mFlexContainer.getFlexWrap() != 2) {
                        int max = Math.max(flexLine.mMaxBaseline - view.getBaseline(), flexItem.getMarginTop());
                        view.layout(i, i2 + max, i3, i4 + max);
                        return;
                    } else {
                        int max2 = Math.max(view.getBaseline() + (flexLine.mMaxBaseline - view.getMeasuredHeight()), flexItem.getMarginBottom());
                        view.layout(i, i2 - max2, i3, i4 - max2);
                        return;
                    }
                } else {
                    int measuredHeight = (((i5 - view.getMeasuredHeight()) + flexItem.getMarginTop()) - flexItem.getMarginBottom()) / 2;
                    if (this.mFlexContainer.getFlexWrap() != 2) {
                        int i6 = i2 + measuredHeight;
                        view.layout(i, i6, i3, view.getMeasuredHeight() + i6);
                        return;
                    } else {
                        int i7 = i2 - measuredHeight;
                        view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                        return;
                    }
                }
            } else if (this.mFlexContainer.getFlexWrap() != 2) {
                int i8 = i2 + i5;
                view.layout(i, (i8 - view.getMeasuredHeight()) - flexItem.getMarginBottom(), i3, i8 - flexItem.getMarginBottom());
                return;
            } else {
                view.layout(i, view.getMeasuredHeight() + (i2 - i5) + flexItem.getMarginTop(), i3, view.getMeasuredHeight() + (i4 - i5) + flexItem.getMarginTop());
                return;
            }
        }
        if (this.mFlexContainer.getFlexWrap() != 2) {
            view.layout(i, i2 + flexItem.getMarginTop(), i3, i4 + flexItem.getMarginTop());
        } else {
            view.layout(i, i2 - flexItem.getMarginBottom(), i3, i4 - flexItem.getMarginBottom());
        }
    }

    public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        int alignItems = this.mFlexContainer.getAlignItems();
        if (flexItem.getAlignSelf() != -1) {
            alignItems = flexItem.getAlignSelf();
        }
        int i5 = flexLine.mCrossSize;
        if (alignItems != 0) {
            if (alignItems != 1) {
                if (alignItems != 2) {
                    if (alignItems != 3 && alignItems != 4) {
                        return;
                    }
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int marginStart = ((MarginLayoutParamsCompat.getMarginStart(marginLayoutParams) + (i5 - view.getMeasuredWidth())) - MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) / 2;
                    if (!z) {
                        view.layout(i + marginStart, i2, i3 + marginStart, i4);
                        return;
                    } else {
                        view.layout(i - marginStart, i2, i3 - marginStart, i4);
                        return;
                    }
                }
            } else {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i2, ((i3 + i5) - view.getMeasuredWidth()) - flexItem.getMarginRight(), i4);
                    return;
                }
                view.layout(view.getMeasuredWidth() + (i - i5) + flexItem.getMarginLeft(), i2, view.getMeasuredWidth() + (i3 - i5) + flexItem.getMarginLeft(), i4);
                return;
            }
        }
        if (!z) {
            view.layout(i + flexItem.getMarginLeft(), i2, i3 + flexItem.getMarginLeft(), i4);
        } else {
            view.layout(i - flexItem.getMarginRight(), i2, i3 - flexItem.getMarginRight(), i4);
        }
    }

    @VisibleForTesting
    public long makeCombinedLong(int i, int i2) {
        return (i & MEASURE_SPEC_WIDTH_MASK) | (i2 << 32);
    }

    public void stretchViews() {
        stretchViews(0);
    }

    public void calculateHorizontalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i, i2, i3, i4, -1, list);
    }

    public void calculateVerticalFlexLines(FlexLinesResult flexLinesResult, int i, int i2, int i3, int i4, @Nullable List<FlexLine> list) {
        calculateFlexLines(flexLinesResult, i2, i, i3, i4, -1, list);
    }

    public void determineMainSize(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        ensureChildrenFrozen(this.mFlexContainer.getFlexItemCount());
        if (i3 >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        int flexDirection2 = this.mFlexContainer.getFlexDirection();
        if (flexDirection2 != 0 && flexDirection2 != 1) {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8938740618311524804L, 6942101545251691300L, 4314332900622776119L, -6226081173095373189L}), new StringBuilder(), flexDirection));
            }
            int mode = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode != 1073741824) {
                size = this.mFlexContainer.getLargestMainSize();
            }
            paddingLeft = this.mFlexContainer.getPaddingTop();
            paddingRight = this.mFlexContainer.getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = this.mFlexContainer.getLargestMainSize();
            if (mode2 != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.mFlexContainer.getPaddingLeft();
            paddingRight = this.mFlexContainer.getPaddingRight();
        }
        int i4 = paddingLeft + paddingRight;
        int[] iArr = this.mIndexToFlexLine;
        List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i5 = iArr != null ? iArr[i3] : 0; i5 < size2; i5++) {
            FlexLine flexLine = flexLinesInternal.get(i5);
            int i6 = flexLine.mMainSize;
            if (i6 < size && flexLine.mAnyItemsHaveFlexGrow) {
                expandFlexItems(i, i2, flexLine, size, i4, false);
            } else if (i6 > size && flexLine.mAnyItemsHaveFlexShrink) {
                shrinkFlexItems(i, i2, flexLine, size, i4, false);
            }
        }
    }

    public void stretchViews(int i) {
        View reorderedFlexItemAt;
        if (i >= this.mFlexContainer.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.mFlexContainer.getFlexDirection();
        if (this.mFlexContainer.getAlignItems() == 4) {
            int[] iArr = this.mIndexToFlexLine;
            List<FlexLine> flexLinesInternal = this.mFlexContainer.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
                FlexLine flexLine = flexLinesInternal.get(i2);
                int i3 = flexLine.mItemCount;
                for (int i4 = 0; i4 < i3; i4++) {
                    int i5 = flexLine.mFirstIndex + i4;
                    if (i4 < this.mFlexContainer.getFlexItemCount() && (reorderedFlexItemAt = this.mFlexContainer.getReorderedFlexItemAt(i5)) != null && reorderedFlexItemAt.getVisibility() != 8) {
                        FlexItem flexItem = (FlexItem) reorderedFlexItemAt.getLayoutParams();
                        if (flexItem.getAlignSelf() == -1 || flexItem.getAlignSelf() == 4) {
                            if (flexDirection != 0 && flexDirection != 1) {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2063466179969464641L, -2776051328805255755L, -8272844273474112518L, 2401109434739712691L}), new StringBuilder(), flexDirection));
                                }
                                stretchViewHorizontally(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                            } else {
                                stretchViewVertically(reorderedFlexItemAt, flexLine.mCrossSize, i5);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (FlexLine flexLine2 : this.mFlexContainer.getFlexLinesInternal()) {
            for (Integer num : flexLine2.mIndicesAlignSelfStretch) {
                View reorderedFlexItemAt2 = this.mFlexContainer.getReorderedFlexItemAt(num.intValue());
                if (flexDirection != 0 && flexDirection != 1) {
                    if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3465438256893344040L, 78837036632926361L, -3522965581762977726L, 1218932204012006572L}), new StringBuilder(), flexDirection));
                    }
                    stretchViewHorizontally(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                } else {
                    stretchViewVertically(reorderedFlexItemAt2, flexLine2.mCrossSize, num.intValue());
                }
            }
        }
    }

    public int[] createReorderedIndices(SparseIntArray sparseIntArray) {
        int flexItemCount = this.mFlexContainer.getFlexItemCount();
        return sortOrdersIntoReorderedIndices(flexItemCount, createOrders(flexItemCount), sparseIntArray);
    }
}
