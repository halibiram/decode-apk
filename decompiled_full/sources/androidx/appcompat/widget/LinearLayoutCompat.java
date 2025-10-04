package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.LinearLayout;
import androidx.annotation.GravityInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import defpackage.AbstractC0354xd2bcb0cf;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;
import java.util.function.IntFunction;

/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {
    private static final String ACCESSIBILITY_CLASS_NAME = "androidx.appcompat.widget.LinearLayoutCompat";
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface DividerMode {
    }

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<LinearLayoutCompat> {
        private int mBaselineAlignedChildIndexId;
        private int mBaselineAlignedId;
        private int mDividerId;
        private int mDividerPaddingId;
        private int mGravityId;
        private int mMeasureWithLargestChildId;
        private int mOrientationId;
        private boolean mPropertiesMapped = false;
        private int mShowDividersId;
        private int mWeightSumId;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            int mapBoolean;
            int mapInt;
            int mapGravity;
            int mapIntEnum;
            int mapFloat;
            int mapObject;
            int mapInt2;
            int mapBoolean2;
            int mapIntFlag;
            mapBoolean = propertyMapper.mapBoolean("baselineAligned", R.attr.baselineAligned);
            this.mBaselineAlignedId = mapBoolean;
            mapInt = propertyMapper.mapInt("baselineAlignedChildIndex", R.attr.baselineAlignedChildIndex);
            this.mBaselineAlignedChildIndexId = mapInt;
            mapGravity = propertyMapper.mapGravity("gravity", R.attr.gravity);
            this.mGravityId = mapGravity;
            mapIntEnum = propertyMapper.mapIntEnum("orientation", R.attr.orientation, new IntFunction<String>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.1
                @Override // java.util.function.IntFunction
                public String apply(int i) {
                    if (i == 0) {
                        return "horizontal";
                    }
                    if (i != 1) {
                        return String.valueOf(i);
                    }
                    return "vertical";
                }
            });
            this.mOrientationId = mapIntEnum;
            mapFloat = propertyMapper.mapFloat("weightSum", R.attr.weightSum);
            this.mWeightSumId = mapFloat;
            mapObject = propertyMapper.mapObject("divider", androidx.appcompat.R.attr.divider);
            this.mDividerId = mapObject;
            mapInt2 = propertyMapper.mapInt("dividerPadding", androidx.appcompat.R.attr.dividerPadding);
            this.mDividerPaddingId = mapInt2;
            mapBoolean2 = propertyMapper.mapBoolean("measureWithLargestChild", androidx.appcompat.R.attr.measureWithLargestChild);
            this.mMeasureWithLargestChildId = mapBoolean2;
            mapIntFlag = propertyMapper.mapIntFlag("showDividers", androidx.appcompat.R.attr.showDividers, new IntFunction<Set<String>>() { // from class: androidx.appcompat.widget.LinearLayoutCompat.InspectionCompanion.2
                @Override // java.util.function.IntFunction
                public Set<String> apply(int i) {
                    HashSet hashSet = new HashSet();
                    if (i == 0) {
                        hashSet.add("none");
                    }
                    if (i == 1) {
                        hashSet.add("beginning");
                    }
                    if (i == 2) {
                        hashSet.add("middle");
                    }
                    if (i == 4) {
                        hashSet.add("end");
                    }
                    return hashSet;
                }
            });
            this.mShowDividersId = mapIntFlag;
            this.mPropertiesMapped = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull LinearLayoutCompat linearLayoutCompat, @NonNull PropertyReader propertyReader) {
            if (this.mPropertiesMapped) {
                propertyReader.readBoolean(this.mBaselineAlignedId, linearLayoutCompat.isBaselineAligned());
                propertyReader.readInt(this.mBaselineAlignedChildIndexId, linearLayoutCompat.getBaselineAlignedChildIndex());
                propertyReader.readGravity(this.mGravityId, linearLayoutCompat.getGravity());
                propertyReader.readIntEnum(this.mOrientationId, linearLayoutCompat.getOrientation());
                propertyReader.readFloat(this.mWeightSumId, linearLayoutCompat.getWeightSum());
                propertyReader.readObject(this.mDividerId, linearLayoutCompat.getDividerDrawable());
                propertyReader.readInt(this.mDividerPaddingId, linearLayoutCompat.getDividerPadding());
                propertyReader.readBoolean(this.mMeasureWithLargestChildId, linearLayoutCompat.isMeasureWithLargestChildEnabled());
                propertyReader.readIntFlag(this.mShowDividersId, linearLayoutCompat.getShowDividers());
                return;
            }
            throw AbstractC0354xd2bcb0cf.m2771x3db60231();
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2, f);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface OrientationMode {
    }

    public LinearLayoutCompat(@NonNull Context context) {
        this(context, null);
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).width;
                    ((LinearLayout.LayoutParams) layoutParams).width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) layoutParams).width = i4;
                }
            }
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (((LinearLayout.LayoutParams) layoutParams).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) layoutParams).height;
                    ((LinearLayout.LayoutParams) layoutParams).height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) layoutParams).height = i4;
                }
            }
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void drawDividersHorizontal(Canvas canvas) {
        int right;
        int left;
        int i;
        int left2;
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View virtualChildAt = getVirtualChildAt(i2);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i2)) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    left2 = virtualChildAt.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                } else {
                    left2 = (virtualChildAt.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, left2);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                if (isLayoutRtl) {
                    right = getPaddingLeft();
                } else {
                    left = getWidth() - getPaddingRight();
                    i = this.mDividerWidth;
                    right = left - i;
                }
            } else {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    left = virtualChildAt2.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i = this.mDividerWidth;
                    right = left - i;
                } else {
                    right = virtualChildAt2.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            }
            drawVerticalDivider(canvas, right);
        }
    }

    public void drawDividersVertical(Canvas canvas) {
        int bottom;
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View virtualChildAt = getVirtualChildAt(i);
            if (virtualChildAt != null && virtualChildAt.getVisibility() != 8 && hasDividerBeforeChildAt(i)) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt.getLayoutParams())).topMargin) - this.mDividerHeight);
            }
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = virtualChildAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt2.getLayoutParams())).bottomMargin;
            }
            drawHorizontalDivider(canvas, bottom);
        }
    }

    public void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    public void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.mBaselineAlignedChildIndex;
        if (childCount > i2) {
            View childAt = getChildAt(i2);
            int baseline = childAt.getBaseline();
            if (baseline == -1) {
                if (this.mBaselineAlignedChildIndex == 0) {
                    return -1;
                }
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
            }
            int i3 = this.mBaselineChildTop;
            if (this.mOrientation == 1 && (i = this.mGravity & 112) != 48) {
                if (i != 16) {
                    if (i == 80) {
                        i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    }
                } else {
                    i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                }
            }
            return i3 + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
        }
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    @GravityInt
    public int getGravity() {
        return this.mGravity;
    }

    public int getLocationOffset(View view) {
        return 0;
    }

    public int getNextLocationOffset(View view) {
        return 0;
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasDividerBeforeChildAt(int i) {
        if (i == 0) {
            if ((this.mShowDividers & 1) == 0) {
                return false;
            }
            return true;
        }
        if (i == getChildCount()) {
            if ((this.mShowDividers & 4) == 0) {
                return false;
            }
            return true;
        }
        if ((this.mShowDividers & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ef  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i14 = i4 - i2;
        int paddingBottom = i14 - getPaddingBottom();
        int paddingBottom2 = (i14 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i15 = this.mGravity;
        int i16 = i15 & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(8388615 & i15, getLayoutDirection());
        if (absoluteGravity != 1) {
            if (absoluteGravity != 5) {
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = ((getPaddingLeft() + i3) - i) - this.mTotalLength;
            }
        } else {
            paddingLeft = getPaddingLeft() + (((i3 - i) - this.mTotalLength) / 2);
        }
        if (isLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i17 = 0;
        while (i17 < virtualChildCount) {
            int i18 = (i6 * i17) + i5;
            View virtualChildAt = getVirtualChildAt(i18);
            if (virtualChildAt == null) {
                paddingLeft = measureNullChild(i18) + paddingLeft;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i19 = i17;
                if (z) {
                    i7 = virtualChildCount;
                    if (((LinearLayout.LayoutParams) layoutParams).height != -1) {
                        i8 = virtualChildAt.getBaseline();
                        i9 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                        if (i9 < 0) {
                            i9 = i16;
                        }
                        i10 = i9 & 112;
                        i11 = i16;
                        if (i10 == 16) {
                            if (i10 != 48) {
                                if (i10 != 80) {
                                    i12 = paddingTop;
                                } else {
                                    i12 = (paddingBottom - measuredHeight) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                                    if (i8 != -1) {
                                        i12 -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i8);
                                    }
                                }
                            } else {
                                i12 = ((LinearLayout.LayoutParams) layoutParams).topMargin + paddingTop;
                                if (i8 != -1) {
                                    i12 = (iArr[1] - i8) + i12;
                                }
                            }
                        } else {
                            i12 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + ((LinearLayout.LayoutParams) layoutParams).topMargin) - ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        }
                        if (hasDividerBeforeChildAt(i18)) {
                            paddingLeft += this.mDividerWidth;
                        }
                        int i20 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        i13 = paddingTop;
                        setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i20, i12, measuredWidth, measuredHeight);
                        paddingLeft = getNextLocationOffset(virtualChildAt) + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + i20;
                        i17 = getChildrenSkipCount(virtualChildAt, i18) + i19;
                        i17++;
                        virtualChildCount = i7;
                        i16 = i11;
                        paddingTop = i13;
                    }
                } else {
                    i7 = virtualChildCount;
                }
                i8 = -1;
                i9 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                if (i9 < 0) {
                }
                i10 = i9 & 112;
                i11 = i16;
                if (i10 == 16) {
                }
                if (hasDividerBeforeChildAt(i18)) {
                }
                int i202 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                i13 = paddingTop;
                setChildFrame(virtualChildAt, getLocationOffset(virtualChildAt) + i202, i12, measuredWidth, measuredHeight);
                paddingLeft = getNextLocationOffset(virtualChildAt) + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + i202;
                i17 = getChildrenSkipCount(virtualChildAt, i18) + i19;
                i17++;
                virtualChildCount = i7;
                i16 = i11;
                paddingTop = i13;
            }
            i13 = paddingTop;
            i7 = virtualChildCount;
            i11 = i16;
            i17++;
            virtualChildCount = i7;
            i16 = i11;
            paddingTop = i13;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int i5;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i3 - i;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.mGravity;
        int i10 = i9 & 112;
        int i11 = i9 & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i10 != 16) {
            if (i10 != 80) {
                paddingTop = getPaddingTop();
            } else {
                paddingTop = ((getPaddingTop() + i4) - i2) - this.mTotalLength;
            }
        } else {
            paddingTop = getPaddingTop() + (((i4 - i2) - this.mTotalLength) / 2);
        }
        int i12 = 0;
        while (i12 < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i12);
            if (virtualChildAt == null) {
                paddingTop = measureNullChild(i12) + paddingTop;
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                int i13 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                if (i13 < 0) {
                    i13 = i11;
                }
                int absoluteGravity = GravityCompat.getAbsoluteGravity(i13, getLayoutDirection()) & 7;
                if (absoluteGravity != 1) {
                    if (absoluteGravity != 5) {
                        i7 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + paddingLeft;
                        int i14 = i7;
                        if (hasDividerBeforeChildAt(i12)) {
                            paddingTop += this.mDividerHeight;
                        }
                        int i15 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                        setChildFrame(virtualChildAt, i14, getLocationOffset(virtualChildAt) + i15, measuredWidth, measuredHeight);
                        paddingTop = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i15;
                        i12 += getChildrenSkipCount(virtualChildAt, i12);
                    } else {
                        i5 = paddingRight - measuredWidth;
                        i6 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                    }
                } else {
                    i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) layoutParams).leftMargin;
                    i6 = ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                }
                i7 = i5 - i6;
                int i142 = i7;
                if (hasDividerBeforeChildAt(i12)) {
                }
                int i152 = paddingTop + ((LinearLayout.LayoutParams) layoutParams).topMargin;
                setChildFrame(virtualChildAt, i142, getLocationOffset(virtualChildAt) + i152, measuredWidth, measuredHeight);
                paddingTop = getNextLocationOffset(virtualChildAt) + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i152;
                i12 += getChildrenSkipCount(virtualChildAt, i12);
            }
            i12++;
        }
    }

    public void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureHorizontal(int i, int i2) {
        boolean z;
        int[] iArr;
        int i3;
        int max;
        int i4;
        int i5;
        int i6;
        int max2;
        int i7;
        int i8;
        int i9;
        float f;
        boolean z2;
        int i10;
        boolean z3;
        int baseline;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z4;
        boolean z5;
        View view;
        int i17;
        boolean z6;
        int measuredHeight;
        int childrenSkipCount;
        int baseline2;
        int i18;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || this.mMaxDescent == null) {
            this.mMaxAscent = new int[4];
            this.mMaxDescent = new int[4];
        }
        int[] iArr2 = this.mMaxAscent;
        int[] iArr3 = this.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z7 = this.mBaselineAligned;
        boolean z8 = this.mUseLargestChild;
        int i19 = 1073741824;
        if (mode == 1073741824) {
            z = true;
        } else {
            z = false;
        }
        float f2 = 0.0f;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        boolean z9 = false;
        int i25 = 0;
        boolean z10 = true;
        boolean z11 = false;
        while (true) {
            iArr = iArr3;
            if (i20 >= virtualChildCount) {
                break;
            }
            View virtualChildAt = getVirtualChildAt(i20);
            if (virtualChildAt == null) {
                this.mTotalLength = measureNullChild(i20) + this.mTotalLength;
            } else if (virtualChildAt.getVisibility() == 8) {
                i20 += getChildrenSkipCount(virtualChildAt, i20);
            } else {
                if (hasDividerBeforeChildAt(i20)) {
                    this.mTotalLength += this.mDividerWidth;
                }
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                float f3 = ((LinearLayout.LayoutParams) layoutParams).weight;
                float f4 = f2 + f3;
                if (mode == i19 && ((LinearLayout.LayoutParams) layoutParams).width == 0 && f3 > 0.0f) {
                    if (z) {
                        this.mTotalLength = ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin + this.mTotalLength;
                    } else {
                        int i26 = this.mTotalLength;
                        this.mTotalLength = Math.max(i26, ((LinearLayout.LayoutParams) layoutParams).leftMargin + i26 + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                    }
                    if (z7) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        virtualChildAt.measure(makeMeasureSpec, makeMeasureSpec);
                        i16 = i20;
                        z4 = z8;
                        z5 = z7;
                        view = virtualChildAt;
                    } else {
                        i16 = i20;
                        z4 = z8;
                        z5 = z7;
                        view = virtualChildAt;
                        i17 = 1073741824;
                        z9 = true;
                        if (mode2 == i17 && ((LinearLayout.LayoutParams) layoutParams).height == -1) {
                            z6 = true;
                            z11 = true;
                        } else {
                            z6 = false;
                        }
                        int i27 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i27;
                        i25 = View.combineMeasuredStates(i25, view.getMeasuredState());
                        if (z5 && (baseline2 = view.getBaseline()) != -1) {
                            i18 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                            if (i18 < 0) {
                                i18 = this.mGravity;
                            }
                            int i28 = (((i18 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i28] = Math.max(iArr2[i28], baseline2);
                            iArr[i28] = Math.max(iArr[i28], measuredHeight - baseline2);
                        }
                        i22 = Math.max(i22, measuredHeight);
                        if (!z10 && ((LinearLayout.LayoutParams) layoutParams).height == -1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                            if (!z6) {
                                i27 = measuredHeight;
                            }
                            i24 = Math.max(i24, i27);
                        } else {
                            int i29 = i24;
                            if (!z6) {
                                i27 = measuredHeight;
                            }
                            i23 = Math.max(i23, i27);
                            i24 = i29;
                        }
                        int i30 = i16;
                        childrenSkipCount = getChildrenSkipCount(view, i30) + i30;
                        f2 = f4;
                        i20 = childrenSkipCount + 1;
                        iArr3 = iArr;
                        z8 = z4;
                        z7 = z5;
                        i19 = 1073741824;
                    }
                } else {
                    if (((LinearLayout.LayoutParams) layoutParams).width == 0 && f3 > 0.0f) {
                        ((LinearLayout.LayoutParams) layoutParams).width = -2;
                        i14 = 0;
                    } else {
                        i14 = Integer.MIN_VALUE;
                    }
                    if (f4 == 0.0f) {
                        i15 = this.mTotalLength;
                    } else {
                        i15 = 0;
                    }
                    i16 = i20;
                    int i31 = i14;
                    z4 = z8;
                    z5 = z7;
                    measureChildBeforeLayout(virtualChildAt, i16, i, i15, i2, 0);
                    if (i31 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) layoutParams).width = i31;
                    }
                    int measuredWidth = virtualChildAt.getMeasuredWidth();
                    if (z) {
                        view = virtualChildAt;
                        this.mTotalLength = getNextLocationOffset(view) + ((LinearLayout.LayoutParams) layoutParams).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).rightMargin + this.mTotalLength;
                    } else {
                        view = virtualChildAt;
                        int i32 = this.mTotalLength;
                        this.mTotalLength = Math.max(i32, getNextLocationOffset(view) + i32 + measuredWidth + ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin);
                    }
                    if (z4) {
                        i21 = Math.max(measuredWidth, i21);
                    }
                }
                i17 = 1073741824;
                if (mode2 == i17) {
                }
                z6 = false;
                int i272 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i272;
                i25 = View.combineMeasuredStates(i25, view.getMeasuredState());
                if (z5) {
                    i18 = ((LinearLayout.LayoutParams) layoutParams).gravity;
                    if (i18 < 0) {
                    }
                    int i282 = (((i18 & 112) >> 4) & (-2)) >> 1;
                    iArr2[i282] = Math.max(iArr2[i282], baseline2);
                    iArr[i282] = Math.max(iArr[i282], measuredHeight - baseline2);
                }
                i22 = Math.max(i22, measuredHeight);
                if (!z10) {
                }
                z10 = false;
                if (((LinearLayout.LayoutParams) layoutParams).weight <= 0.0f) {
                }
                int i302 = i16;
                childrenSkipCount = getChildrenSkipCount(view, i302) + i302;
                f2 = f4;
                i20 = childrenSkipCount + 1;
                iArr3 = iArr;
                z8 = z4;
                z7 = z5;
                i19 = 1073741824;
            }
            childrenSkipCount = i20;
            z4 = z8;
            z5 = z7;
            i20 = childrenSkipCount + 1;
            iArr3 = iArr;
            z8 = z4;
            z7 = z5;
            i19 = 1073741824;
        }
        boolean z12 = z8;
        boolean z13 = z7;
        int i33 = i22;
        int i34 = i23;
        int i35 = i24;
        int i36 = i25;
        if (this.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            this.mTotalLength += this.mDividerWidth;
        }
        int i37 = iArr2[1];
        if (i37 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            max = i33;
            i3 = i36;
        } else {
            i3 = i36;
            max = Math.max(i33, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i37, iArr2[2]))));
        }
        if (z12 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.mTotalLength = 0;
            int i38 = 0;
            while (i38 < virtualChildCount) {
                View virtualChildAt2 = getVirtualChildAt(i38);
                if (virtualChildAt2 == null) {
                    this.mTotalLength = measureNullChild(i38) + this.mTotalLength;
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i38 += getChildrenSkipCount(virtualChildAt2, i38);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (z) {
                        this.mTotalLength = getNextLocationOffset(virtualChildAt2) + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + i21 + ((LinearLayout.LayoutParams) layoutParams2).rightMargin + this.mTotalLength;
                    } else {
                        int i39 = this.mTotalLength;
                        i13 = max;
                        this.mTotalLength = Math.max(i39, getNextLocationOffset(virtualChildAt2) + i39 + i21 + ((LinearLayout.LayoutParams) layoutParams2).leftMargin + ((LinearLayout.LayoutParams) layoutParams2).rightMargin);
                        i38++;
                        max = i13;
                    }
                }
                i13 = max;
                i38++;
                max = i13;
            }
        }
        int i40 = max;
        int paddingRight = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
        this.mTotalLength = paddingRight;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, 0);
        int i41 = (16777215 & resolveSizeAndState) - this.mTotalLength;
        if (!z9 && (i41 == 0 || f2 <= 0.0f)) {
            i7 = Math.max(i34, i35);
            if (z12 && mode != 1073741824) {
                for (int i42 = 0; i42 < virtualChildCount; i42++) {
                    View virtualChildAt3 = getVirtualChildAt(i42);
                    if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt3.getLayoutParams())).weight > 0.0f) {
                        virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(i21, 1073741824), View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i5 = i2;
            i6 = virtualChildCount;
            i4 = i3;
        } else {
            float f5 = this.mWeightSum;
            if (f5 > 0.0f) {
                f2 = f5;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.mTotalLength = 0;
            int i43 = i34;
            i4 = i3;
            int i44 = -1;
            int i45 = 0;
            while (i45 < virtualChildCount) {
                View virtualChildAt4 = getVirtualChildAt(i45);
                if (virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8) {
                    i8 = i41;
                    i9 = virtualChildCount;
                } else {
                    LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                    if (f6 > 0.0f) {
                        int i46 = (int) ((i41 * f6) / f2);
                        float f7 = f2 - f6;
                        int i47 = i41 - i46;
                        i9 = virtualChildCount;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop() + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin, ((LinearLayout.LayoutParams) layoutParams3).height);
                        if (((LinearLayout.LayoutParams) layoutParams3).width == 0) {
                            i12 = 1073741824;
                            if (mode == 1073741824) {
                                if (i46 <= 0) {
                                    i46 = 0;
                                }
                                virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(i46, 1073741824), childMeasureSpec);
                                i4 = View.combineMeasuredStates(i4, virtualChildAt4.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                                f2 = f7;
                                i8 = i47;
                            }
                        } else {
                            i12 = 1073741824;
                        }
                        int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i46;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        virtualChildAt4.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i12), childMeasureSpec);
                        i4 = View.combineMeasuredStates(i4, virtualChildAt4.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                        f2 = f7;
                        i8 = i47;
                    } else {
                        i8 = i41;
                        i9 = virtualChildCount;
                    }
                    if (z) {
                        this.mTotalLength = getNextLocationOffset(virtualChildAt4) + virtualChildAt4.getMeasuredWidth() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin + this.mTotalLength;
                        f = f2;
                    } else {
                        int i48 = this.mTotalLength;
                        f = f2;
                        this.mTotalLength = Math.max(i48, getNextLocationOffset(virtualChildAt4) + virtualChildAt4.getMeasuredWidth() + i48 + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin);
                    }
                    if (mode2 != 1073741824 && ((LinearLayout.LayoutParams) layoutParams3).height == -1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    int i49 = ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin;
                    int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i49;
                    i44 = Math.max(i44, measuredHeight2);
                    if (!z2) {
                        i49 = measuredHeight2;
                    }
                    int max3 = Math.max(i43, i49);
                    if (z10) {
                        i10 = -1;
                        if (((LinearLayout.LayoutParams) layoutParams3).height == -1) {
                            z3 = true;
                            if (z13 && (baseline = virtualChildAt4.getBaseline()) != i10) {
                                i11 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                                if (i11 < 0) {
                                    i11 = this.mGravity;
                                }
                                int i50 = (((i11 & 112) >> 4) & (-2)) >> 1;
                                iArr2[i50] = Math.max(iArr2[i50], baseline);
                                iArr[i50] = Math.max(iArr[i50], measuredHeight2 - baseline);
                            }
                            z10 = z3;
                            i43 = max3;
                            f2 = f;
                        }
                    } else {
                        i10 = -1;
                    }
                    z3 = false;
                    if (z13) {
                        i11 = ((LinearLayout.LayoutParams) layoutParams3).gravity;
                        if (i11 < 0) {
                        }
                        int i502 = (((i11 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i502] = Math.max(iArr2[i502], baseline);
                        iArr[i502] = Math.max(iArr[i502], measuredHeight2 - baseline);
                    }
                    z10 = z3;
                    i43 = max3;
                    f2 = f;
                }
                i45++;
                i41 = i8;
                virtualChildCount = i9;
            }
            i5 = i2;
            i6 = virtualChildCount;
            this.mTotalLength = getPaddingRight() + getPaddingLeft() + this.mTotalLength;
            int i51 = iArr2[1];
            if (i51 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
                max2 = i44;
            } else {
                max2 = Math.max(i44, Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))) + Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i51, iArr2[2]))));
            }
            i40 = max2;
            i7 = i43;
        }
        if (z10 || mode2 == 1073741824) {
            i7 = i40;
        }
        setMeasuredDimension(resolveSizeAndState | ((-16777216) & i4), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + i7, getSuggestedMinimumHeight()), i5, i4 << 16));
        if (z11) {
            forceUniformHeight(i6, i);
        }
    }

    public int measureNullChild(int i) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x031c, code lost:
    
        if (((android.widget.LinearLayout.LayoutParams) r14).width == (-1)) goto L147;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        View view;
        int i20;
        boolean z2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i21 = this.mBaselineAlignedChildIndex;
        boolean z3 = this.mUseLargestChild;
        float f = 0.0f;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        boolean z4 = false;
        boolean z5 = true;
        boolean z6 = false;
        while (true) {
            int i28 = 8;
            int i29 = i25;
            if (i27 < virtualChildCount) {
                View virtualChildAt = getVirtualChildAt(i27);
                if (virtualChildAt == null) {
                    this.mTotalLength = measureNullChild(i27) + this.mTotalLength;
                    i15 = mode2;
                    i25 = i29;
                    i17 = virtualChildCount;
                } else {
                    int i30 = i22;
                    if (virtualChildAt.getVisibility() == 8) {
                        i27 += getChildrenSkipCount(virtualChildAt, i27);
                        i25 = i29;
                        i22 = i30;
                        i17 = virtualChildCount;
                        i15 = mode2;
                    } else {
                        if (hasDividerBeforeChildAt(i27)) {
                            this.mTotalLength += this.mDividerHeight;
                        }
                        LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                        float f2 = ((LinearLayout.LayoutParams) layoutParams).weight;
                        float f3 = f + f2;
                        if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) layoutParams).height == 0 && f2 > 0.0f) {
                            int i31 = this.mTotalLength;
                            this.mTotalLength = Math.max(i31, ((LinearLayout.LayoutParams) layoutParams).topMargin + i31 + ((LinearLayout.LayoutParams) layoutParams).bottomMargin);
                            i20 = i24;
                            view = virtualChildAt;
                            i18 = i26;
                            i13 = i30;
                            i14 = i23;
                            z4 = true;
                            i15 = mode2;
                            i16 = i29;
                            i17 = virtualChildCount;
                            i19 = i27;
                        } else {
                            int i32 = i23;
                            if (((LinearLayout.LayoutParams) layoutParams).height == 0 && f2 > 0.0f) {
                                ((LinearLayout.LayoutParams) layoutParams).height = -2;
                                i11 = 0;
                            } else {
                                i11 = Integer.MIN_VALUE;
                            }
                            if (f3 == 0.0f) {
                                i12 = this.mTotalLength;
                            } else {
                                i12 = 0;
                            }
                            i13 = i30;
                            int i33 = i11;
                            i14 = i32;
                            int i34 = i24;
                            i15 = mode2;
                            i16 = i29;
                            i17 = virtualChildCount;
                            i18 = i26;
                            i19 = i27;
                            measureChildBeforeLayout(virtualChildAt, i27, i, 0, i2, i12);
                            if (i33 != Integer.MIN_VALUE) {
                                ((LinearLayout.LayoutParams) layoutParams).height = i33;
                            }
                            int measuredHeight = virtualChildAt.getMeasuredHeight();
                            int i35 = this.mTotalLength;
                            view = virtualChildAt;
                            this.mTotalLength = Math.max(i35, getNextLocationOffset(view) + i35 + measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin);
                            if (z3) {
                                i20 = Math.max(measuredHeight, i34);
                            } else {
                                i20 = i34;
                            }
                        }
                        if (i21 >= 0 && i21 == i19 + 1) {
                            this.mBaselineChildTop = this.mTotalLength;
                        }
                        if (i19 < i21 && ((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                        }
                        if (mode != 1073741824 && ((LinearLayout.LayoutParams) layoutParams).width == -1) {
                            z2 = true;
                            z6 = true;
                        } else {
                            z2 = false;
                        }
                        int i36 = ((LinearLayout.LayoutParams) layoutParams).leftMargin + ((LinearLayout.LayoutParams) layoutParams).rightMargin;
                        int measuredWidth = view.getMeasuredWidth() + i36;
                        int max = Math.max(i14, measuredWidth);
                        int combineMeasuredStates = View.combineMeasuredStates(i13, view.getMeasuredState());
                        if (z5 && ((LinearLayout.LayoutParams) layoutParams).width == -1) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        if (((LinearLayout.LayoutParams) layoutParams).weight > 0.0f) {
                            if (!z2) {
                                i36 = measuredWidth;
                            }
                            i25 = Math.max(i16, i36);
                        } else {
                            if (!z2) {
                                i36 = measuredWidth;
                            }
                            i18 = Math.max(i18, i36);
                            i25 = i16;
                        }
                        int childrenSkipCount = getChildrenSkipCount(view, i19) + i19;
                        i24 = i20;
                        i23 = max;
                        f = f3;
                        i26 = i18;
                        i27 = childrenSkipCount;
                        i22 = combineMeasuredStates;
                    }
                }
                i27++;
                virtualChildCount = i17;
                mode2 = i15;
            } else {
                int i37 = i22;
                int i38 = i24;
                int i39 = i26;
                int i40 = mode2;
                int i41 = i23;
                int i42 = virtualChildCount;
                if (this.mTotalLength > 0) {
                    i3 = i42;
                    if (hasDividerBeforeChildAt(i3)) {
                        this.mTotalLength += this.mDividerHeight;
                    }
                } else {
                    i3 = i42;
                }
                if (z3 && (i40 == Integer.MIN_VALUE || i40 == 0)) {
                    this.mTotalLength = 0;
                    int i43 = 0;
                    while (i43 < i3) {
                        View virtualChildAt2 = getVirtualChildAt(i43);
                        if (virtualChildAt2 == null) {
                            this.mTotalLength = measureNullChild(i43) + this.mTotalLength;
                        } else if (virtualChildAt2.getVisibility() == i28) {
                            i43 += getChildrenSkipCount(virtualChildAt2, i43);
                        } else {
                            LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                            int i44 = this.mTotalLength;
                            this.mTotalLength = Math.max(i44, getNextLocationOffset(virtualChildAt2) + i44 + i38 + ((LinearLayout.LayoutParams) layoutParams2).topMargin + ((LinearLayout.LayoutParams) layoutParams2).bottomMargin);
                        }
                        i43++;
                        i28 = 8;
                    }
                }
                int paddingBottom = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                this.mTotalLength = paddingBottom;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, 0);
                int i45 = (16777215 & resolveSizeAndState) - this.mTotalLength;
                if (!z4 && (i45 == 0 || f <= 0.0f)) {
                    i6 = Math.max(i39, i29);
                    if (z3 && i40 != 1073741824) {
                        for (int i46 = 0; i46 < i3; i46++) {
                            View virtualChildAt3 = getVirtualChildAt(i46);
                            if (virtualChildAt3 != null && virtualChildAt3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((LayoutParams) virtualChildAt3.getLayoutParams())).weight > 0.0f) {
                                virtualChildAt3.measure(View.MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i38, 1073741824));
                            }
                        }
                    }
                    i5 = i;
                    i4 = i37;
                } else {
                    float f4 = this.mWeightSum;
                    if (f4 > 0.0f) {
                        f = f4;
                    }
                    this.mTotalLength = 0;
                    int i47 = i45;
                    int i48 = i39;
                    i4 = i37;
                    int i49 = 0;
                    while (i49 < i3) {
                        View virtualChildAt4 = getVirtualChildAt(i49);
                        if (virtualChildAt4.getVisibility() == 8) {
                            i7 = i47;
                        } else {
                            LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                            float f5 = ((LinearLayout.LayoutParams) layoutParams3).weight;
                            if (f5 > 0.0f) {
                                int i50 = (int) ((i47 * f5) / f);
                                float f6 = f - f5;
                                i7 = i47 - i50;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin, ((LinearLayout.LayoutParams) layoutParams3).width);
                                if (((LinearLayout.LayoutParams) layoutParams3).height == 0) {
                                    i10 = 1073741824;
                                    if (i40 == 1073741824) {
                                        if (i50 <= 0) {
                                            i50 = 0;
                                        }
                                        virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i50, 1073741824));
                                        i4 = View.combineMeasuredStates(i4, virtualChildAt4.getMeasuredState() & (-256));
                                        f = f6;
                                    }
                                } else {
                                    i10 = 1073741824;
                                }
                                int measuredHeight2 = virtualChildAt4.getMeasuredHeight() + i50;
                                if (measuredHeight2 < 0) {
                                    measuredHeight2 = 0;
                                }
                                virtualChildAt4.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight2, i10));
                                i4 = View.combineMeasuredStates(i4, virtualChildAt4.getMeasuredState() & (-256));
                                f = f6;
                            } else {
                                i7 = i47;
                            }
                            int i51 = ((LinearLayout.LayoutParams) layoutParams3).leftMargin + ((LinearLayout.LayoutParams) layoutParams3).rightMargin;
                            int measuredWidth2 = virtualChildAt4.getMeasuredWidth() + i51;
                            i41 = Math.max(i41, measuredWidth2);
                            float f7 = f;
                            if (mode != 1073741824) {
                                i8 = i4;
                                i9 = -1;
                            } else {
                                i8 = i4;
                                i9 = -1;
                            }
                            i51 = measuredWidth2;
                            int max2 = Math.max(i48, i51);
                            if (z5 && ((LinearLayout.LayoutParams) layoutParams3).width == i9) {
                                z = true;
                            } else {
                                z = false;
                            }
                            int i52 = this.mTotalLength;
                            this.mTotalLength = Math.max(i52, getNextLocationOffset(virtualChildAt4) + virtualChildAt4.getMeasuredHeight() + i52 + ((LinearLayout.LayoutParams) layoutParams3).topMargin + ((LinearLayout.LayoutParams) layoutParams3).bottomMargin);
                            z5 = z;
                            i4 = i8;
                            i48 = max2;
                            f = f7;
                        }
                        i49++;
                        i47 = i7;
                    }
                    i5 = i;
                    this.mTotalLength = getPaddingBottom() + getPaddingTop() + this.mTotalLength;
                    i6 = i48;
                }
                if (z5 || mode == 1073741824) {
                    i6 = i41;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + i6, getSuggestedMinimumWidth()), i5, i4), resolveSizeAndState);
                if (z6) {
                    forceUniformWidth(i3, i2);
                    return;
                }
                return;
            }
        }
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        if (this.mDivider == null) {
            return;
        }
        if (this.mOrientation == 1) {
            drawDividersVertical(canvas);
        } else {
            drawDividersHorizontal(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ACCESSIBILITY_CLASS_NAME);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation == 1) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.mBaselineAlignedChildIndex = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.mDivider) {
            return;
        }
        this.mDivider = drawable;
        boolean z = false;
        if (drawable != null) {
            this.mDividerWidth = drawable.getIntrinsicWidth();
            this.mDividerHeight = drawable.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        if (drawable == null) {
            z = true;
        }
        setWillNotDraw(z);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public void setGravity(@GravityInt int i) {
        if (this.mGravity != i) {
            if ((8388615 & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i3 = this.mGravity;
        if ((8388615 & i3) != i2) {
            this.mGravity = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.mGravity;
        if ((i3 & 112) != i2) {
            this.mGravity = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        int i = this.mOrientation;
        if (i == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    public LinearLayoutCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        int[] iArr = androidx.appcompat.R.styleable.LinearLayoutCompat;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, iArr, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        int i2 = obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.mWeightSum = obtainStyledAttributes.getFloat(androidx.appcompat.R.styleable.LinearLayoutCompat_android_weightSum, -1.0f);
        this.mBaselineAlignedChildIndex = obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(obtainStyledAttributes.getDrawable(androidx.appcompat.R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = obtainStyledAttributes.getInt(androidx.appcompat.R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.LinearLayoutCompat_dividerPadding, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
