package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxHelper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements FlexContainer, RecyclerView.SmoothScroller.ScrollVectorProvider {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final boolean DEBUG = false;
    private static final String TAG = new ObfuscatedString(new long[]{6571533866832643826L, -4397196456871794763L, 7090539661336004845L, 6343863950361924032L}).toString();
    private static final Rect TEMP_RECT = new Rect();
    private int mAlignItems;
    private AnchorInfo mAnchorInfo;
    private final Context mContext;
    private int mDirtyPosition;
    private int mFlexDirection;
    private List<FlexLine> mFlexLines;
    private FlexboxHelper.FlexLinesResult mFlexLinesResult;
    private int mFlexWrap;
    private final FlexboxHelper mFlexboxHelper;
    private boolean mFromBottomToTop;
    private boolean mIsRtl;
    private int mJustifyContent;
    private int mLastHeight;
    private int mLastWidth;
    private LayoutState mLayoutState;
    private int mMaxLine;
    private OrientationHelper mOrientationHelper;
    private View mParent;
    private SavedState mPendingSavedState;
    private int mPendingScrollPosition;
    private int mPendingScrollPositionOffset;
    private boolean mRecycleChildrenOnDetach;
    private RecyclerView.Recycler mRecycler;
    private RecyclerView.State mState;
    private OrientationHelper mSubOrientationHelper;
    private SparseArray<View> mViewCache;

    /* loaded from: classes.dex */
    public class AnchorInfo {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private boolean mAssignedFromSavedState;
        private int mCoordinate;
        private int mFlexLinePosition;
        private boolean mLayoutFromEnd;
        private int mPerpendicularCoordinate;
        private int mPosition;
        private boolean mValid;

        private AnchorInfo() {
            this.mPerpendicularCoordinate = 0;
        }

        public static /* synthetic */ int access$2412(AnchorInfo anchorInfo, int i) {
            int i2 = anchorInfo.mPerpendicularCoordinate + i;
            anchorInfo.mPerpendicularCoordinate = i2;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void assignCoordinateFromPadding() {
            int startAfterPadding;
            int width;
            if (!FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() && FlexboxLayoutManager.this.mIsRtl) {
                if (this.mLayoutFromEnd) {
                    width = FlexboxLayoutManager.this.mOrientationHelper.getEndAfterPadding();
                } else {
                    width = FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.mOrientationHelper.getStartAfterPadding();
                }
                this.mCoordinate = width;
                return;
            }
            if (this.mLayoutFromEnd) {
                startAfterPadding = FlexboxLayoutManager.this.mOrientationHelper.getEndAfterPadding();
            } else {
                startAfterPadding = FlexboxLayoutManager.this.mOrientationHelper.getStartAfterPadding();
            }
            this.mCoordinate = startAfterPadding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void assignFromView(View view) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.mFlexWrap == 0 ? FlexboxLayoutManager.this.mSubOrientationHelper : FlexboxLayoutManager.this.mOrientationHelper;
            if (!FlexboxLayoutManager.this.isMainAxisDirectionHorizontal() && FlexboxLayoutManager.this.mIsRtl) {
                if (this.mLayoutFromEnd) {
                    this.mCoordinate = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedStart(view);
                } else {
                    this.mCoordinate = orientationHelper.getDecoratedEnd(view);
                }
            } else if (this.mLayoutFromEnd) {
                this.mCoordinate = orientationHelper.getTotalSpaceChange() + orientationHelper.getDecoratedEnd(view);
            } else {
                this.mCoordinate = orientationHelper.getDecoratedStart(view);
            }
            this.mPosition = FlexboxLayoutManager.this.getPosition(view);
            int i = 0;
            this.mAssignedFromSavedState = false;
            int[] iArr = FlexboxLayoutManager.this.mFlexboxHelper.mIndexToFlexLine;
            int i2 = this.mPosition;
            if (i2 == -1) {
                i2 = 0;
            }
            int i3 = iArr[i2];
            if (i3 != -1) {
                i = i3;
            }
            this.mFlexLinePosition = i;
            if (FlexboxLayoutManager.this.mFlexLines.size() > this.mFlexLinePosition) {
                this.mPosition = ((FlexLine) FlexboxLayoutManager.this.mFlexLines.get(this.mFlexLinePosition)).mFirstIndex;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.mPosition = -1;
            this.mFlexLinePosition = -1;
            this.mCoordinate = Integer.MIN_VALUE;
            boolean z = false;
            this.mValid = false;
            this.mAssignedFromSavedState = false;
            if (FlexboxLayoutManager.this.isMainAxisDirectionHorizontal()) {
                if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                    if (FlexboxLayoutManager.this.mFlexDirection == 1) {
                        z = true;
                    }
                    this.mLayoutFromEnd = z;
                    return;
                } else {
                    if (FlexboxLayoutManager.this.mFlexWrap == 2) {
                        z = true;
                    }
                    this.mLayoutFromEnd = z;
                    return;
                }
            }
            if (FlexboxLayoutManager.this.mFlexWrap == 0) {
                if (FlexboxLayoutManager.this.mFlexDirection == 3) {
                    z = true;
                }
                this.mLayoutFromEnd = z;
            } else {
                if (FlexboxLayoutManager.this.mFlexWrap == 2) {
                    z = true;
                }
                this.mLayoutFromEnd = z;
            }
        }

        @NonNull
        public String toString() {
            return new ObfuscatedString(new long[]{7281680100108301861L, 5236403653954235866L, 1738580887038183855L, -2566945265936196257L}).toString() + this.mPosition + new ObfuscatedString(new long[]{-8300214275706978570L, -4923706422789800463L, 4625019007340484955L, 806640228802457686L}).toString() + this.mFlexLinePosition + new ObfuscatedString(new long[]{-2903117127620764040L, -860302075404297572L, -3128897195737967378L}).toString() + this.mCoordinate + new ObfuscatedString(new long[]{-2378847798826486740L, -3290602816204999988L, 8388159668091788884L, -4164800914613712817L, -995597284423356365L}).toString() + this.mPerpendicularCoordinate + new ObfuscatedString(new long[]{-3121984290452835617L, -3957320240355597610L, 5453241785044429193L, 3333145497717585142L}).toString() + this.mLayoutFromEnd + new ObfuscatedString(new long[]{7705448886762498810L, -6437056104901523323L, 6408695452569039759L}).toString() + this.mValid + new ObfuscatedString(new long[]{-3823708454462736953L, 1453130414374566480L, 3390092860978482479L, 5683699496585988487L, 7007823915723516284L}).toString() + this.mAssignedFromSavedState + '}';
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutState {
        private static final int ITEM_DIRECTION_TAIL = 1;
        private static final int LAYOUT_END = 1;
        private static final int LAYOUT_START = -1;
        private static final int SCROLLING_OFFSET_NaN = Integer.MIN_VALUE;
        private int mAvailable;
        private int mFlexLinePosition;
        private boolean mInfinite;
        private int mItemDirection;
        private int mLastScrollDelta;
        private int mLayoutDirection;
        private int mOffset;
        private int mPosition;
        private int mScrollingOffset;
        private boolean mShouldRecycle;

        private LayoutState() {
            this.mItemDirection = 1;
            this.mLayoutDirection = 1;
        }

        public static /* synthetic */ int access$1012(LayoutState layoutState, int i) {
            int i2 = layoutState.mOffset + i;
            layoutState.mOffset = i2;
            return i2;
        }

        public static /* synthetic */ int access$1020(LayoutState layoutState, int i) {
            int i2 = layoutState.mOffset - i;
            layoutState.mOffset = i2;
            return i2;
        }

        public static /* synthetic */ int access$1220(LayoutState layoutState, int i) {
            int i2 = layoutState.mAvailable - i;
            layoutState.mAvailable = i2;
            return i2;
        }

        public static /* synthetic */ int access$1508(LayoutState layoutState) {
            int i = layoutState.mFlexLinePosition;
            layoutState.mFlexLinePosition = i + 1;
            return i;
        }

        public static /* synthetic */ int access$1510(LayoutState layoutState) {
            int i = layoutState.mFlexLinePosition;
            layoutState.mFlexLinePosition = i - 1;
            return i;
        }

        public static /* synthetic */ int access$1512(LayoutState layoutState, int i) {
            int i2 = layoutState.mFlexLinePosition + i;
            layoutState.mFlexLinePosition = i2;
            return i2;
        }

        public static /* synthetic */ int access$2012(LayoutState layoutState, int i) {
            int i2 = layoutState.mScrollingOffset + i;
            layoutState.mScrollingOffset = i2;
            return i2;
        }

        public static /* synthetic */ int access$2212(LayoutState layoutState, int i) {
            int i2 = layoutState.mPosition + i;
            layoutState.mPosition = i2;
            return i2;
        }

        public static /* synthetic */ int access$2220(LayoutState layoutState, int i) {
            int i2 = layoutState.mPosition - i;
            layoutState.mPosition = i2;
            return i2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasMore(RecyclerView.State state, List<FlexLine> list) {
            int i;
            int i2 = this.mPosition;
            if (i2 >= 0 && i2 < state.getItemCount() && (i = this.mFlexLinePosition) >= 0 && i < list.size()) {
                return true;
            }
            return false;
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5168384693434125978L, 2342376457798418719L, -338466366493875364L, 702866481214511734L}).toString());
            sb.append(this.mAvailable);
            sb.append(new ObfuscatedString(new long[]{1351975491728502354L, -7890257921207527315L, -8276627038283871073L, -7138645922438491473L}).toString());
            sb.append(this.mFlexLinePosition);
            sb.append(new ObfuscatedString(new long[]{1385541074179935087L, -5141507028028397349L, 774897033008822956L}).toString());
            sb.append(this.mPosition);
            sb.append(new ObfuscatedString(new long[]{136822802021439312L, 5713489314454789539L, 1925459992704727763L}).toString());
            sb.append(this.mOffset);
            sb.append(new ObfuscatedString(new long[]{6653334091713315662L, 1153824099628122243L, -1549242061379253048L, 6490955294807452209L}).toString());
            sb.append(this.mScrollingOffset);
            sb.append(new ObfuscatedString(new long[]{-2651158632673651185L, -483961979659117901L, 8593336401197601213L, 3457758274400052487L}).toString());
            sb.append(this.mLastScrollDelta);
            sb.append(new ObfuscatedString(new long[]{6218596219164812085L, -5072865269048434236L, -2153597119931548942L, -2649367932838849399L}).toString());
            sb.append(this.mItemDirection);
            sb.append(new ObfuscatedString(new long[]{-686237617543197560L, 8532550993249824655L, 129065784430989129L, 8049048135226002510L}).toString());
            return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.mLayoutDirection, '}');
        }
    }

    public FlexboxLayoutManager(Context context) {
        this(context, 0, 1);
    }

    private boolean canViewBeRecycledFromEnd(View view, int i) {
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            if (this.mOrientationHelper.getDecoratedEnd(view) > i) {
                return false;
            }
            return true;
        }
        if (this.mOrientationHelper.getDecoratedStart(view) < this.mOrientationHelper.getEnd() - i) {
            return false;
        }
        return true;
    }

    private boolean canViewBeRecycledFromStart(View view, int i) {
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            if (this.mOrientationHelper.getEnd() - this.mOrientationHelper.getDecoratedStart(view) > i) {
                return false;
            }
            return true;
        }
        if (this.mOrientationHelper.getDecoratedEnd(view) > i) {
            return false;
        }
        return true;
    }

    private void clearFlexLines() {
        this.mFlexLines.clear();
        this.mAnchorInfo.reset();
        this.mAnchorInfo.mPerpendicularCoordinate = 0;
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        ensureOrientationHelper();
        View findFirstReferenceChild = findFirstReferenceChild(itemCount);
        View findLastReferenceChild = findLastReferenceChild(itemCount);
        if (state.getItemCount() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        return Math.min(this.mOrientationHelper.getTotalSpace(), this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild));
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View findFirstReferenceChild = findFirstReferenceChild(itemCount);
        View findLastReferenceChild = findLastReferenceChild(itemCount);
        if (state.getItemCount() != 0 && findFirstReferenceChild != null && findLastReferenceChild != null) {
            int position = getPosition(findFirstReferenceChild);
            int position2 = getPosition(findLastReferenceChild);
            int abs = Math.abs(this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild));
            int i = this.mFlexboxHelper.mIndexToFlexLine[position];
            if (i != 0 && i != -1) {
                return Math.round((i * (abs / ((r4[position2] - i) + 1))) + (this.mOrientationHelper.getStartAfterPadding() - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild)));
            }
        }
        return 0;
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View findFirstReferenceChild = findFirstReferenceChild(itemCount);
        View findLastReferenceChild = findLastReferenceChild(itemCount);
        if (state.getItemCount() == 0 || findFirstReferenceChild == null || findLastReferenceChild == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.mOrientationHelper.getDecoratedEnd(findLastReferenceChild) - this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    private void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new LayoutState();
        }
    }

    private void ensureOrientationHelper() {
        if (this.mOrientationHelper != null) {
            return;
        }
        if (isMainAxisDirectionHorizontal()) {
            if (this.mFlexWrap == 0) {
                this.mOrientationHelper = OrientationHelper.createHorizontalHelper(this);
                this.mSubOrientationHelper = OrientationHelper.createVerticalHelper(this);
                return;
            } else {
                this.mOrientationHelper = OrientationHelper.createVerticalHelper(this);
                this.mSubOrientationHelper = OrientationHelper.createHorizontalHelper(this);
                return;
            }
        }
        if (this.mFlexWrap == 0) {
            this.mOrientationHelper = OrientationHelper.createVerticalHelper(this);
            this.mSubOrientationHelper = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.mOrientationHelper = OrientationHelper.createHorizontalHelper(this);
            this.mSubOrientationHelper = OrientationHelper.createVerticalHelper(this);
        }
    }

    private int fill(RecyclerView.Recycler recycler, RecyclerView.State state, LayoutState layoutState) {
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            if (layoutState.mAvailable < 0) {
                LayoutState.access$2012(layoutState, layoutState.mAvailable);
            }
            recycleByLayoutState(recycler, layoutState);
        }
        int i = layoutState.mAvailable;
        int i2 = layoutState.mAvailable;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i3 = 0;
        while (true) {
            if ((i2 > 0 || this.mLayoutState.mInfinite) && layoutState.hasMore(state, this.mFlexLines)) {
                FlexLine flexLine = this.mFlexLines.get(layoutState.mFlexLinePosition);
                layoutState.mPosition = flexLine.mFirstIndex;
                i3 += layoutFlexLine(flexLine, layoutState);
                if (!isMainAxisDirectionHorizontal && this.mIsRtl) {
                    LayoutState.access$1020(layoutState, flexLine.getCrossSize() * layoutState.mLayoutDirection);
                } else {
                    LayoutState.access$1012(layoutState, flexLine.getCrossSize() * layoutState.mLayoutDirection);
                }
                i2 -= flexLine.getCrossSize();
            }
        }
        LayoutState.access$1220(layoutState, i3);
        if (layoutState.mScrollingOffset != Integer.MIN_VALUE) {
            LayoutState.access$2012(layoutState, i3);
            if (layoutState.mAvailable < 0) {
                LayoutState.access$2012(layoutState, layoutState.mAvailable);
            }
            recycleByLayoutState(recycler, layoutState);
        }
        return i - layoutState.mAvailable;
    }

    private View findFirstReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(0, getChildCount(), i);
        if (findReferenceChild == null) {
            return null;
        }
        int i2 = this.mFlexboxHelper.mIndexToFlexLine[getPosition(findReferenceChild)];
        if (i2 == -1) {
            return null;
        }
        return findFirstReferenceViewInLine(findReferenceChild, this.mFlexLines.get(i2));
    }

    private View findFirstReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int i = flexLine.mItemCount;
        for (int i2 = 1; i2 < i; i2++) {
            View childAt = getChildAt(i2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.mIsRtl && !isMainAxisDirectionHorizontal) {
                    if (this.mOrientationHelper.getDecoratedEnd(view) >= this.mOrientationHelper.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(view) <= this.mOrientationHelper.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View findLastReferenceChild(int i) {
        View findReferenceChild = findReferenceChild(getChildCount() - 1, -1, i);
        if (findReferenceChild == null) {
            return null;
        }
        return findLastReferenceViewInLine(findReferenceChild, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[getPosition(findReferenceChild)]));
    }

    private View findLastReferenceViewInLine(View view, FlexLine flexLine) {
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int childCount = (getChildCount() - flexLine.mItemCount) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.mIsRtl && !isMainAxisDirectionHorizontal) {
                    if (this.mOrientationHelper.getDecoratedStart(view) <= this.mOrientationHelper.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.mOrientationHelper.getDecoratedEnd(view) >= this.mOrientationHelper.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View findOneVisibleChild(int i, int i2, boolean z) {
        int i3;
        if (i2 > i) {
            i3 = 1;
        } else {
            i3 = -1;
        }
        while (i != i2) {
            View childAt = getChildAt(i);
            if (isViewVisible(childAt, z)) {
                return childAt;
            }
            i += i3;
        }
        return null;
    }

    private View findReferenceChild(int i, int i2, int i3) {
        int i4;
        int position;
        ensureOrientationHelper();
        ensureLayoutState();
        int startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
        int endAfterPadding = this.mOrientationHelper.getEndAfterPadding();
        if (i2 > i) {
            i4 = 1;
        } else {
            i4 = -1;
        }
        View view = null;
        View view2 = null;
        while (i != i2) {
            View childAt = getChildAt(i);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i3) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else {
                    if (this.mOrientationHelper.getDecoratedStart(childAt) >= startAfterPadding && this.mOrientationHelper.getDecoratedEnd(childAt) <= endAfterPadding) {
                        return childAt;
                    }
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i += i4;
        }
        if (view == null) {
            return view2;
        }
        return view;
    }

    private int fixLayoutEndGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int endAfterPadding;
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            int startAfterPadding = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(-endAfterPadding2, recycler, state);
        }
        int i3 = i + i2;
        if (z && (endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i3) > 0) {
            this.mOrientationHelper.offsetChildren(endAfterPadding);
            return endAfterPadding + i2;
        }
        return i2;
    }

    private int fixLayoutStartGap(int i, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z) {
        int i2;
        int startAfterPadding;
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            int endAfterPadding = this.mOrientationHelper.getEndAfterPadding() - i;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i2 = handleScrollingMainOrientation(-endAfterPadding, recycler, state);
        } else {
            int startAfterPadding2 = i - this.mOrientationHelper.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i2 = -handleScrollingMainOrientation(startAfterPadding2, recycler, state);
        }
        int i3 = i + i2;
        if (z && (startAfterPadding = i3 - this.mOrientationHelper.getStartAfterPadding()) > 0) {
            this.mOrientationHelper.offsetChildren(-startAfterPadding);
            return i2 - startAfterPadding;
        }
        return i2;
    }

    private int getChildBottom(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private int getChildLeft(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    private int getChildRight(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    private int getChildTop(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    private int handleScrollingMainOrientation(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z;
        if (getChildCount() == 0 || i == 0) {
            return 0;
        }
        ensureOrientationHelper();
        int i2 = 1;
        this.mLayoutState.mShouldRecycle = true;
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            z = true;
        } else {
            z = false;
        }
        if (!z ? i <= 0 : i >= 0) {
            i2 = -1;
        }
        int abs = Math.abs(i);
        updateLayoutState(i2, abs);
        int fill = this.mLayoutState.mScrollingOffset + fill(recycler, state, this.mLayoutState);
        if (fill < 0) {
            return 0;
        }
        if (z) {
            if (abs > fill) {
                i = (-i2) * fill;
            }
        } else if (abs > fill) {
            i = i2 * fill;
        }
        this.mOrientationHelper.offsetChildren(-i);
        this.mLayoutState.mLastScrollDelta = i;
        return i;
    }

    private int handleScrollingSubOrientation(int i) {
        int height;
        int height2;
        int i2;
        if (getChildCount() != 0 && i != 0) {
            ensureOrientationHelper();
            boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
            View view = this.mParent;
            if (isMainAxisDirectionHorizontal) {
                height = view.getWidth();
            } else {
                height = view.getHeight();
            }
            if (isMainAxisDirectionHorizontal) {
                height2 = getWidth();
            } else {
                height2 = getHeight();
            }
            if (getLayoutDirection() == 1) {
                int abs = Math.abs(i);
                if (i < 0) {
                    i2 = Math.min((height2 + this.mAnchorInfo.mPerpendicularCoordinate) - height, abs);
                } else if (this.mAnchorInfo.mPerpendicularCoordinate + i > 0) {
                    i2 = this.mAnchorInfo.mPerpendicularCoordinate;
                } else {
                    return i;
                }
            } else {
                if (i > 0) {
                    return Math.min((height2 - this.mAnchorInfo.mPerpendicularCoordinate) - height, i);
                }
                if (this.mAnchorInfo.mPerpendicularCoordinate + i < 0) {
                    i2 = this.mAnchorInfo.mPerpendicularCoordinate;
                } else {
                    return i;
                }
            }
            return -i2;
        }
        return 0;
    }

    private static boolean isMeasurementUpToDate(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return true;
            }
            if (mode != 1073741824 || size != i) {
                return false;
            }
            return true;
        }
        if (size < i) {
            return false;
        }
        return true;
    }

    private boolean isViewVisible(View view, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int childLeft = getChildLeft(view);
        int childTop = getChildTop(view);
        int childRight = getChildRight(view);
        int childBottom = getChildBottom(view);
        if (paddingLeft <= childLeft && width >= childRight) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (childLeft < width && childRight < paddingLeft) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (paddingTop <= childTop && height >= childBottom) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (childTop < height && childBottom < paddingTop) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (z) {
            if (z2 && z4) {
                return true;
            }
            return false;
        }
        if (z3 && z5) {
            return true;
        }
        return false;
    }

    private int layoutFlexLine(FlexLine flexLine, LayoutState layoutState) {
        if (isMainAxisDirectionHorizontal()) {
            return layoutFlexLineMainAxisHorizontal(flexLine, layoutState);
        }
        return layoutFlexLineMainAxisVertical(flexLine, layoutState);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int layoutFlexLineMainAxisHorizontal(FlexLine flexLine, LayoutState layoutState) {
        float f;
        float f2;
        float f3;
        int itemCount;
        int i;
        LayoutParams layoutParams;
        float f4;
        int i2 = 1;
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int width = getWidth();
        int i3 = layoutState.mOffset;
        if (layoutState.mLayoutDirection == -1) {
            i3 -= flexLine.mCrossSize;
        }
        int i4 = i3;
        int i5 = layoutState.mPosition;
        int i6 = this.mJustifyContent;
        if (i6 != 0) {
            if (i6 != 1) {
                if (i6 != 2) {
                    if (i6 != 3) {
                        if (i6 != 4) {
                            if (i6 == 5) {
                                if (flexLine.mItemCount != 0) {
                                    f3 = (width - flexLine.mMainSize) / (r1 + 1);
                                } else {
                                    f3 = 0.0f;
                                }
                                f = paddingLeft + f3;
                                f2 = (width - paddingRight) - f3;
                            } else {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{-3893550234452779406L, -5208269675530627856L, 1674642849713033999L, -4620421578908334650L, -3260282176609833230L}).toString() + this.mJustifyContent);
                            }
                        } else {
                            int i7 = flexLine.mItemCount;
                            if (i7 != 0) {
                                f3 = (width - flexLine.mMainSize) / i7;
                            } else {
                                f3 = 0.0f;
                            }
                            float f5 = paddingLeft;
                            float f6 = f3 / 2.0f;
                            f = f5 + f6;
                            f2 = (width - paddingRight) - f6;
                        }
                    } else {
                        f = paddingLeft;
                        int i8 = flexLine.mItemCount;
                        if (i8 != 1) {
                            f4 = i8 - 1;
                        } else {
                            f4 = 1.0f;
                        }
                        f3 = (width - flexLine.mMainSize) / f4;
                        f2 = width - paddingRight;
                    }
                    float f7 = f - this.mAnchorInfo.mPerpendicularCoordinate;
                    float f8 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
                    float max = Math.max(f3, 0.0f);
                    itemCount = flexLine.getItemCount();
                    int i9 = 0;
                    i = i5;
                    while (i < i5 + itemCount) {
                        View flexItemAt = getFlexItemAt(i);
                        if (flexItemAt != null) {
                            if (layoutState.mLayoutDirection == i2) {
                                calculateItemDecorationsForChild(flexItemAt, TEMP_RECT);
                                addView(flexItemAt);
                            } else {
                                calculateItemDecorationsForChild(flexItemAt, TEMP_RECT);
                                addView(flexItemAt, i9);
                                i9 += i2;
                            }
                            int i10 = i9;
                            FlexboxHelper flexboxHelper = this.mFlexboxHelper;
                            long j = flexboxHelper.mMeasureSpecCache[i];
                            int extractLowerInt = flexboxHelper.extractLowerInt(j);
                            int extractHigherInt = this.mFlexboxHelper.extractHigherInt(j);
                            LayoutParams layoutParams2 = (LayoutParams) flexItemAt.getLayoutParams();
                            if (shouldMeasureChild(flexItemAt, extractLowerInt, extractHigherInt, layoutParams2)) {
                                flexItemAt.measure(extractLowerInt, extractHigherInt);
                            }
                            float leftDecorationWidth = f7 + getLeftDecorationWidth(flexItemAt) + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
                            float rightDecorationWidth = f8 - (getRightDecorationWidth(flexItemAt) + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                            int topDecorationHeight = getTopDecorationHeight(flexItemAt) + i4;
                            if (this.mIsRtl) {
                                layoutParams = layoutParams2;
                                this.mFlexboxHelper.layoutSingleChildHorizontal(flexItemAt, flexLine, Math.round(rightDecorationWidth) - flexItemAt.getMeasuredWidth(), topDecorationHeight, Math.round(rightDecorationWidth), flexItemAt.getMeasuredHeight() + topDecorationHeight);
                            } else {
                                layoutParams = layoutParams2;
                                this.mFlexboxHelper.layoutSingleChildHorizontal(flexItemAt, flexLine, Math.round(leftDecorationWidth), topDecorationHeight, flexItemAt.getMeasuredWidth() + Math.round(leftDecorationWidth), flexItemAt.getMeasuredHeight() + topDecorationHeight);
                            }
                            f7 = getRightDecorationWidth(flexItemAt) + flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + max + leftDecorationWidth;
                            i9 = i10;
                            f8 = rightDecorationWidth - ((getLeftDecorationWidth(flexItemAt) + (flexItemAt.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin)) + max);
                        }
                        i++;
                        i2 = 1;
                    }
                    LayoutState.access$1512(layoutState, this.mLayoutState.mLayoutDirection);
                    return flexLine.getCrossSize();
                }
                float f9 = paddingLeft;
                int i11 = flexLine.mMainSize;
                f = f9 + ((width - i11) / 2.0f);
                f2 = (width - paddingRight) - ((width - i11) / 2.0f);
            } else {
                int i12 = flexLine.mMainSize;
                f2 = i12 - paddingLeft;
                f = (width - i12) + paddingRight;
            }
        } else {
            f = paddingLeft;
            f2 = width - paddingRight;
        }
        f3 = 0.0f;
        float f72 = f - this.mAnchorInfo.mPerpendicularCoordinate;
        float f82 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
        float max2 = Math.max(f3, 0.0f);
        itemCount = flexLine.getItemCount();
        int i92 = 0;
        i = i5;
        while (i < i5 + itemCount) {
        }
        LayoutState.access$1512(layoutState, this.mLayoutState.mLayoutDirection);
        return flexLine.getCrossSize();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00df  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int layoutFlexLineMainAxisVertical(FlexLine flexLine, LayoutState layoutState) {
        float f;
        float f2;
        float f3;
        int itemCount;
        int i;
        int i2;
        View view;
        int i3;
        float f4;
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = layoutState.mOffset;
        int i5 = layoutState.mOffset;
        if (layoutState.mLayoutDirection == -1) {
            int i6 = flexLine.mCrossSize;
            i4 -= i6;
            i5 += i6;
        }
        int i7 = i4;
        int i8 = i5;
        int i9 = layoutState.mPosition;
        int i10 = this.mJustifyContent;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 == 5) {
                                if (flexLine.mItemCount != 0) {
                                    f3 = (height - flexLine.mMainSize) / (r1 + 1);
                                } else {
                                    f3 = 0.0f;
                                }
                                f = paddingTop + f3;
                                f2 = (height - paddingBottom) - f3;
                            } else {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{-902487744278432975L, 794763596654094906L, 3222528671895673128L, -6603313984920407919L, 2729917449608141231L}).toString() + this.mJustifyContent);
                            }
                        } else {
                            int i11 = flexLine.mItemCount;
                            if (i11 != 0) {
                                f3 = (height - flexLine.mMainSize) / i11;
                            } else {
                                f3 = 0.0f;
                            }
                            float f5 = paddingTop;
                            float f6 = f3 / 2.0f;
                            f = f5 + f6;
                            f2 = (height - paddingBottom) - f6;
                        }
                    } else {
                        f = paddingTop;
                        int i12 = flexLine.mItemCount;
                        if (i12 != 1) {
                            f4 = i12 - 1;
                        } else {
                            f4 = 1.0f;
                        }
                        f3 = (height - flexLine.mMainSize) / f4;
                        f2 = height - paddingBottom;
                    }
                    float f7 = f - this.mAnchorInfo.mPerpendicularCoordinate;
                    float f8 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
                    float max = Math.max(f3, 0.0f);
                    itemCount = flexLine.getItemCount();
                    int i13 = 0;
                    i = i9;
                    while (i < i9 + itemCount) {
                        View flexItemAt = getFlexItemAt(i);
                        if (flexItemAt == null) {
                            i3 = i;
                            i2 = i7;
                        } else {
                            FlexboxHelper flexboxHelper = this.mFlexboxHelper;
                            i2 = i7;
                            long j = flexboxHelper.mMeasureSpecCache[i];
                            int extractLowerInt = flexboxHelper.extractLowerInt(j);
                            int extractHigherInt = this.mFlexboxHelper.extractHigherInt(j);
                            if (shouldMeasureChild(flexItemAt, extractLowerInt, extractHigherInt, (LayoutParams) flexItemAt.getLayoutParams())) {
                                flexItemAt.measure(extractLowerInt, extractHigherInt);
                            }
                            float topDecorationHeight = f7 + getTopDecorationHeight(flexItemAt) + ((ViewGroup.MarginLayoutParams) r10).topMargin;
                            float bottomDecorationHeight = f8 - (getBottomDecorationHeight(flexItemAt) + ((ViewGroup.MarginLayoutParams) r10).rightMargin);
                            if (layoutState.mLayoutDirection == 1) {
                                calculateItemDecorationsForChild(flexItemAt, TEMP_RECT);
                                addView(flexItemAt);
                            } else {
                                calculateItemDecorationsForChild(flexItemAt, TEMP_RECT);
                                addView(flexItemAt, i13);
                                i13++;
                            }
                            int i14 = i13;
                            int leftDecorationWidth = getLeftDecorationWidth(flexItemAt) + i2;
                            int rightDecorationWidth = i8 - getRightDecorationWidth(flexItemAt);
                            boolean z = this.mIsRtl;
                            if (z) {
                                if (this.mFromBottomToTop) {
                                    view = flexItemAt;
                                    i3 = i;
                                    this.mFlexboxHelper.layoutSingleChildVertical(flexItemAt, flexLine, z, rightDecorationWidth - flexItemAt.getMeasuredWidth(), Math.round(bottomDecorationHeight) - flexItemAt.getMeasuredHeight(), rightDecorationWidth, Math.round(bottomDecorationHeight));
                                } else {
                                    view = flexItemAt;
                                    i3 = i;
                                    this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, z, rightDecorationWidth - view.getMeasuredWidth(), Math.round(topDecorationHeight), rightDecorationWidth, view.getMeasuredHeight() + Math.round(topDecorationHeight));
                                }
                            } else {
                                view = flexItemAt;
                                i3 = i;
                                if (this.mFromBottomToTop) {
                                    this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, z, leftDecorationWidth, Math.round(bottomDecorationHeight) - view.getMeasuredHeight(), view.getMeasuredWidth() + leftDecorationWidth, Math.round(bottomDecorationHeight));
                                } else {
                                    this.mFlexboxHelper.layoutSingleChildVertical(view, flexLine, z, leftDecorationWidth, Math.round(topDecorationHeight), view.getMeasuredWidth() + leftDecorationWidth, view.getMeasuredHeight() + Math.round(topDecorationHeight));
                                }
                            }
                            View view2 = view;
                            f7 = getBottomDecorationHeight(view2) + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r10).topMargin + max + topDecorationHeight;
                            f8 = bottomDecorationHeight - ((getTopDecorationHeight(view2) + (view2.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) r10).bottomMargin)) + max);
                            i13 = i14;
                        }
                        i = i3 + 1;
                        i7 = i2;
                    }
                    LayoutState.access$1512(layoutState, this.mLayoutState.mLayoutDirection);
                    return flexLine.getCrossSize();
                }
                float f9 = paddingTop;
                int i15 = flexLine.mMainSize;
                f = f9 + ((height - i15) / 2.0f);
                f2 = (height - paddingBottom) - ((height - i15) / 2.0f);
            } else {
                int i16 = flexLine.mMainSize;
                f2 = i16 - paddingTop;
                f = (height - i16) + paddingBottom;
            }
        } else {
            f = paddingTop;
            f2 = height - paddingBottom;
        }
        f3 = 0.0f;
        float f72 = f - this.mAnchorInfo.mPerpendicularCoordinate;
        float f82 = f2 - this.mAnchorInfo.mPerpendicularCoordinate;
        float max2 = Math.max(f3, 0.0f);
        itemCount = flexLine.getItemCount();
        int i132 = 0;
        i = i9;
        while (i < i9 + itemCount) {
        }
        LayoutState.access$1512(layoutState, this.mLayoutState.mLayoutDirection);
        return flexLine.getCrossSize();
    }

    private void recycleByLayoutState(RecyclerView.Recycler recycler, LayoutState layoutState) {
        if (!layoutState.mShouldRecycle) {
            return;
        }
        if (layoutState.mLayoutDirection == -1) {
            recycleFlexLinesFromEnd(recycler, layoutState);
        } else {
            recycleFlexLinesFromStart(recycler, layoutState);
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i, int i2) {
        while (i2 >= i) {
            removeAndRecycleViewAt(i2, recycler);
            i2--;
        }
    }

    private void recycleFlexLinesFromEnd(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int childCount;
        int i;
        View childAt;
        int i2;
        if (layoutState.mScrollingOffset < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i2 = this.mFlexboxHelper.mIndexToFlexLine[getPosition(childAt)]) == -1) {
            return;
        }
        FlexLine flexLine = this.mFlexLines.get(i2);
        int i3 = i;
        while (true) {
            if (i3 < 0) {
                break;
            }
            View childAt2 = getChildAt(i3);
            if (childAt2 != null) {
                if (!canViewBeRecycledFromEnd(childAt2, layoutState.mScrollingOffset)) {
                    break;
                }
                if (flexLine.mFirstIndex != getPosition(childAt2)) {
                    continue;
                } else if (i2 <= 0) {
                    childCount = i3;
                    break;
                } else {
                    i2 += layoutState.mLayoutDirection;
                    flexLine = this.mFlexLines.get(i2);
                    childCount = i3;
                }
            }
            i3--;
        }
        recycleChildren(recycler, childCount, i);
    }

    private void recycleFlexLinesFromStart(RecyclerView.Recycler recycler, LayoutState layoutState) {
        int childCount;
        View childAt;
        if (layoutState.mScrollingOffset < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i = this.mFlexboxHelper.mIndexToFlexLine[getPosition(childAt)];
        int i2 = -1;
        if (i == -1) {
            return;
        }
        FlexLine flexLine = this.mFlexLines.get(i);
        int i3 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i3);
            if (childAt2 != null) {
                if (!canViewBeRecycledFromStart(childAt2, layoutState.mScrollingOffset)) {
                    break;
                }
                if (flexLine.mLastIndex != getPosition(childAt2)) {
                    continue;
                } else if (i >= this.mFlexLines.size() - 1) {
                    i2 = i3;
                    break;
                } else {
                    i += layoutState.mLayoutDirection;
                    flexLine = this.mFlexLines.get(i);
                    i2 = i3;
                }
            }
            i3++;
        }
        recycleChildren(recycler, 0, i2);
    }

    private void resolveInfiniteAmount() {
        int widthMode;
        boolean z;
        if (isMainAxisDirectionHorizontal()) {
            widthMode = getHeightMode();
        } else {
            widthMode = getWidthMode();
        }
        LayoutState layoutState = this.mLayoutState;
        if (widthMode != 0 && widthMode != Integer.MIN_VALUE) {
            z = false;
        } else {
            z = true;
        }
        layoutState.mInfinite = z;
    }

    private void resolveLayoutDirection() {
        boolean z;
        boolean z2;
        boolean z3;
        int layoutDirection = getLayoutDirection();
        int i = this.mFlexDirection;
        boolean z4 = false;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        this.mIsRtl = false;
                        this.mFromBottomToTop = false;
                        return;
                    }
                    if (layoutDirection == 1) {
                        z4 = true;
                    }
                    this.mIsRtl = z4;
                    if (this.mFlexWrap == 2) {
                        this.mIsRtl = !z4;
                    }
                    this.mFromBottomToTop = true;
                    return;
                }
                if (layoutDirection == 1) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                this.mIsRtl = z3;
                if (this.mFlexWrap == 2) {
                    this.mIsRtl = !z3;
                }
                this.mFromBottomToTop = false;
                return;
            }
            if (layoutDirection != 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            this.mIsRtl = z2;
            if (this.mFlexWrap == 2) {
                z4 = true;
            }
            this.mFromBottomToTop = z4;
            return;
        }
        if (layoutDirection == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsRtl = z;
        if (this.mFlexWrap == 2) {
            z4 = true;
        }
        this.mFromBottomToTop = z4;
    }

    private boolean shouldMeasureChild(View view, int i, int i2, RecyclerView.LayoutParams layoutParams) {
        if (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
            return false;
        }
        return true;
    }

    private boolean updateAnchorFromChildren(RecyclerView.State state, AnchorInfo anchorInfo) {
        View findFirstReferenceChild;
        int startAfterPadding;
        if (getChildCount() == 0) {
            return false;
        }
        if (anchorInfo.mLayoutFromEnd) {
            findFirstReferenceChild = findLastReferenceChild(state.getItemCount());
        } else {
            findFirstReferenceChild = findFirstReferenceChild(state.getItemCount());
        }
        if (findFirstReferenceChild != null) {
            anchorInfo.assignFromView(findFirstReferenceChild);
            if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
                if (this.mOrientationHelper.getDecoratedStart(findFirstReferenceChild) >= this.mOrientationHelper.getEndAfterPadding() || this.mOrientationHelper.getDecoratedEnd(findFirstReferenceChild) < this.mOrientationHelper.getStartAfterPadding()) {
                    if (anchorInfo.mLayoutFromEnd) {
                        startAfterPadding = this.mOrientationHelper.getEndAfterPadding();
                    } else {
                        startAfterPadding = this.mOrientationHelper.getStartAfterPadding();
                    }
                    anchorInfo.mCoordinate = startAfterPadding;
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean updateAnchorFromPendingState(RecyclerView.State state, AnchorInfo anchorInfo, SavedState savedState) {
        int i;
        View childAt;
        int decoratedStart;
        boolean z = false;
        if (!state.isPreLayout() && (i = this.mPendingScrollPosition) != -1) {
            if (i >= 0 && i < state.getItemCount()) {
                anchorInfo.mPosition = this.mPendingScrollPosition;
                anchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[anchorInfo.mPosition];
                SavedState savedState2 = this.mPendingSavedState;
                if (savedState2 != null && savedState2.hasValidAnchor(state.getItemCount())) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + savedState.mAnchorOffset;
                    anchorInfo.mAssignedFromSavedState = true;
                    anchorInfo.mFlexLinePosition = -1;
                    return true;
                }
                if (this.mPendingScrollPositionOffset == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.mPendingScrollPosition);
                    if (findViewByPosition != null) {
                        if (this.mOrientationHelper.getDecoratedMeasurement(findViewByPosition) > this.mOrientationHelper.getTotalSpace()) {
                            anchorInfo.assignCoordinateFromPadding();
                            return true;
                        }
                        if (this.mOrientationHelper.getDecoratedStart(findViewByPosition) - this.mOrientationHelper.getStartAfterPadding() < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding();
                            anchorInfo.mLayoutFromEnd = false;
                            return true;
                        }
                        if (this.mOrientationHelper.getEndAfterPadding() - this.mOrientationHelper.getDecoratedEnd(findViewByPosition) < 0) {
                            anchorInfo.mCoordinate = this.mOrientationHelper.getEndAfterPadding();
                            anchorInfo.mLayoutFromEnd = true;
                            return true;
                        }
                        if (anchorInfo.mLayoutFromEnd) {
                            decoratedStart = this.mOrientationHelper.getTotalSpaceChange() + this.mOrientationHelper.getDecoratedEnd(findViewByPosition);
                        } else {
                            decoratedStart = this.mOrientationHelper.getDecoratedStart(findViewByPosition);
                        }
                        anchorInfo.mCoordinate = decoratedStart;
                    } else {
                        if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                            if (this.mPendingScrollPosition < getPosition(childAt)) {
                                z = true;
                            }
                            anchorInfo.mLayoutFromEnd = z;
                        }
                        anchorInfo.assignCoordinateFromPadding();
                    }
                    return true;
                }
                if (isMainAxisDirectionHorizontal() || !this.mIsRtl) {
                    anchorInfo.mCoordinate = this.mOrientationHelper.getStartAfterPadding() + this.mPendingScrollPositionOffset;
                } else {
                    anchorInfo.mCoordinate = this.mPendingScrollPositionOffset - this.mOrientationHelper.getEndPadding();
                }
                return true;
            }
            this.mPendingScrollPosition = -1;
            this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        }
        return false;
    }

    private void updateAnchorInfoForLayout(RecyclerView.State state, AnchorInfo anchorInfo) {
        if (!updateAnchorFromPendingState(state, anchorInfo, this.mPendingSavedState) && !updateAnchorFromChildren(state, anchorInfo)) {
            anchorInfo.assignCoordinateFromPadding();
            anchorInfo.mPosition = 0;
            anchorInfo.mFlexLinePosition = 0;
        }
    }

    private void updateDirtyPosition(int i) {
        if (i >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.mFlexboxHelper.ensureMeasureSpecCache(childCount);
        this.mFlexboxHelper.ensureMeasuredSizeCache(childCount);
        this.mFlexboxHelper.ensureIndexToFlexLine(childCount);
        if (i >= this.mFlexboxHelper.mIndexToFlexLine.length) {
            return;
        }
        this.mDirtyPosition = i;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.mPendingScrollPosition = getPosition(childClosestToStart);
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.getEndPadding() + this.mOrientationHelper.getDecoratedEnd(childClosestToStart);
        } else {
            this.mPendingScrollPositionOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
        }
    }

    private void updateFlexLines(int i) {
        int i2;
        int i3;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z = false;
        if (isMainAxisDirectionHorizontal()) {
            int i4 = this.mLastWidth;
            if (i4 != Integer.MIN_VALUE && i4 != width) {
                z = true;
            }
            i2 = this.mLayoutState.mInfinite ? this.mContext.getResources().getDisplayMetrics().heightPixels : this.mLayoutState.mAvailable;
        } else {
            int i5 = this.mLastHeight;
            if (i5 != Integer.MIN_VALUE && i5 != height) {
                z = true;
            }
            if (!this.mLayoutState.mInfinite) {
                i2 = this.mLayoutState.mAvailable;
            } else {
                i2 = this.mContext.getResources().getDisplayMetrics().widthPixels;
            }
        }
        int i6 = i2;
        this.mLastWidth = width;
        this.mLastHeight = height;
        int i7 = this.mDirtyPosition;
        if (i7 == -1 && (this.mPendingScrollPosition != -1 || z)) {
            if (this.mAnchorInfo.mLayoutFromEnd) {
                return;
            }
            this.mFlexLines.clear();
            this.mFlexLinesResult.reset();
            if (isMainAxisDirectionHorizontal()) {
                this.mFlexboxHelper.calculateHorizontalFlexLinesToIndex(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i6, this.mAnchorInfo.mPosition, this.mFlexLines);
            } else {
                this.mFlexboxHelper.calculateVerticalFlexLinesToIndex(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i6, this.mAnchorInfo.mPosition, this.mFlexLines);
            }
            this.mFlexLines = this.mFlexLinesResult.mFlexLines;
            this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2);
            this.mFlexboxHelper.stretchViews();
            AnchorInfo anchorInfo = this.mAnchorInfo;
            anchorInfo.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[anchorInfo.mPosition];
            this.mLayoutState.mFlexLinePosition = this.mAnchorInfo.mFlexLinePosition;
            return;
        }
        if (i7 == -1) {
            i3 = this.mAnchorInfo.mPosition;
        } else {
            i3 = Math.min(i7, this.mAnchorInfo.mPosition);
        }
        int i8 = i3;
        this.mFlexLinesResult.reset();
        if (isMainAxisDirectionHorizontal()) {
            if (this.mFlexLines.size() > 0) {
                this.mFlexboxHelper.clearFlexLines(this.mFlexLines, i8);
                this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i6, i8, this.mAnchorInfo.mPosition, this.mFlexLines);
            } else {
                this.mFlexboxHelper.ensureIndexToFlexLine(i);
                this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i6, 0, this.mFlexLines);
            }
        } else if (this.mFlexLines.size() > 0) {
            this.mFlexboxHelper.clearFlexLines(this.mFlexLines, i8);
            this.mFlexboxHelper.calculateFlexLines(this.mFlexLinesResult, makeMeasureSpec2, makeMeasureSpec, i6, i8, this.mAnchorInfo.mPosition, this.mFlexLines);
        } else {
            this.mFlexboxHelper.ensureIndexToFlexLine(i);
            this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i6, 0, this.mFlexLines);
        }
        this.mFlexLines = this.mFlexLinesResult.mFlexLines;
        this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2, i8);
        this.mFlexboxHelper.stretchViews(i8);
    }

    private void updateLayoutState(int i, int i2) {
        boolean z;
        int i3;
        this.mLayoutState.mLayoutDirection = i;
        boolean isMainAxisDirectionHorizontal = isMainAxisDirectionHorizontal();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        if (!isMainAxisDirectionHorizontal && this.mIsRtl) {
            z = true;
        } else {
            z = false;
        }
        if (i == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View findLastReferenceViewInLine = findLastReferenceViewInLine(childAt, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[position]));
            this.mLayoutState.mItemDirection = 1;
            LayoutState layoutState = this.mLayoutState;
            layoutState.mPosition = position + layoutState.mItemDirection;
            if (this.mFlexboxHelper.mIndexToFlexLine.length <= this.mLayoutState.mPosition) {
                this.mLayoutState.mFlexLinePosition = -1;
            } else {
                LayoutState layoutState2 = this.mLayoutState;
                layoutState2.mFlexLinePosition = this.mFlexboxHelper.mIndexToFlexLine[layoutState2.mPosition];
            }
            if (z) {
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(findLastReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getStartAfterPadding() + (-this.mOrientationHelper.getDecoratedStart(findLastReferenceViewInLine));
                LayoutState layoutState3 = this.mLayoutState;
                layoutState3.mScrollingOffset = Math.max(layoutState3.mScrollingOffset, 0);
            } else {
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(findLastReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getDecoratedEnd(findLastReferenceViewInLine) - this.mOrientationHelper.getEndAfterPadding();
            }
            if ((this.mLayoutState.mFlexLinePosition == -1 || this.mLayoutState.mFlexLinePosition > this.mFlexLines.size() - 1) && this.mLayoutState.mPosition <= getFlexItemCount()) {
                int i4 = i2 - this.mLayoutState.mScrollingOffset;
                this.mFlexLinesResult.reset();
                if (i4 > 0) {
                    if (isMainAxisDirectionHorizontal) {
                        this.mFlexboxHelper.calculateHorizontalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i4, this.mLayoutState.mPosition, this.mFlexLines);
                    } else {
                        this.mFlexboxHelper.calculateVerticalFlexLines(this.mFlexLinesResult, makeMeasureSpec, makeMeasureSpec2, i4, this.mLayoutState.mPosition, this.mFlexLines);
                    }
                    this.mFlexboxHelper.determineMainSize(makeMeasureSpec, makeMeasureSpec2, this.mLayoutState.mPosition);
                    this.mFlexboxHelper.stretchViews(this.mLayoutState.mPosition);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View findFirstReferenceViewInLine = findFirstReferenceViewInLine(childAt2, this.mFlexLines.get(this.mFlexboxHelper.mIndexToFlexLine[position2]));
            this.mLayoutState.mItemDirection = 1;
            int i5 = this.mFlexboxHelper.mIndexToFlexLine[position2];
            if (i5 == -1) {
                i5 = 0;
            }
            if (i5 <= 0) {
                this.mLayoutState.mPosition = -1;
            } else {
                this.mLayoutState.mPosition = position2 - this.mFlexLines.get(i5 - 1).getItemCount();
            }
            LayoutState layoutState4 = this.mLayoutState;
            if (i5 > 0) {
                i3 = i5 - 1;
            } else {
                i3 = 0;
            }
            layoutState4.mFlexLinePosition = i3;
            if (z) {
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedEnd(findFirstReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getDecoratedEnd(findFirstReferenceViewInLine) - this.mOrientationHelper.getEndAfterPadding();
                LayoutState layoutState5 = this.mLayoutState;
                layoutState5.mScrollingOffset = Math.max(layoutState5.mScrollingOffset, 0);
            } else {
                this.mLayoutState.mOffset = this.mOrientationHelper.getDecoratedStart(findFirstReferenceViewInLine);
                this.mLayoutState.mScrollingOffset = this.mOrientationHelper.getStartAfterPadding() + (-this.mOrientationHelper.getDecoratedStart(findFirstReferenceViewInLine));
            }
        }
        LayoutState layoutState6 = this.mLayoutState;
        layoutState6.mAvailable = i2 - layoutState6.mScrollingOffset;
    }

    private void updateLayoutStateToFillEnd(AnchorInfo anchorInfo, boolean z, boolean z2) {
        if (!z2) {
            this.mLayoutState.mInfinite = false;
        } else {
            resolveInfiniteAmount();
        }
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - getPaddingRight();
        } else {
            this.mLayoutState.mAvailable = this.mOrientationHelper.getEndAfterPadding() - anchorInfo.mCoordinate;
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = 1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (z && this.mFlexLines.size() > 1 && anchorInfo.mFlexLinePosition >= 0 && anchorInfo.mFlexLinePosition < this.mFlexLines.size() - 1) {
            FlexLine flexLine = this.mFlexLines.get(anchorInfo.mFlexLinePosition);
            LayoutState.access$1508(this.mLayoutState);
            LayoutState.access$2212(this.mLayoutState, flexLine.getItemCount());
        }
    }

    private void updateLayoutStateToFillStart(AnchorInfo anchorInfo, boolean z, boolean z2) {
        if (!z2) {
            this.mLayoutState.mInfinite = false;
        } else {
            resolveInfiniteAmount();
        }
        if (!isMainAxisDirectionHorizontal() && this.mIsRtl) {
            this.mLayoutState.mAvailable = (this.mParent.getWidth() - anchorInfo.mCoordinate) - this.mOrientationHelper.getStartAfterPadding();
        } else {
            this.mLayoutState.mAvailable = anchorInfo.mCoordinate - this.mOrientationHelper.getStartAfterPadding();
        }
        this.mLayoutState.mPosition = anchorInfo.mPosition;
        this.mLayoutState.mItemDirection = 1;
        this.mLayoutState.mLayoutDirection = -1;
        this.mLayoutState.mOffset = anchorInfo.mCoordinate;
        this.mLayoutState.mScrollingOffset = Integer.MIN_VALUE;
        this.mLayoutState.mFlexLinePosition = anchorInfo.mFlexLinePosition;
        if (z && anchorInfo.mFlexLinePosition > 0 && this.mFlexLines.size() > anchorInfo.mFlexLinePosition) {
            FlexLine flexLine = this.mFlexLines.get(anchorInfo.mFlexLinePosition);
            LayoutState.access$1510(this.mLayoutState);
            LayoutState.access$2220(this.mLayoutState, flexLine.getItemCount());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        int i;
        if (this.mFlexWrap == 0) {
            return isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            int width = getWidth();
            View view = this.mParent;
            if (view != null) {
                i = view.getWidth();
            } else {
                i = 0;
            }
            if (width <= i) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        int i;
        if (this.mFlexWrap == 0) {
            return !isMainAxisDirectionHorizontal();
        }
        if (isMainAxisDirectionHorizontal()) {
            return true;
        }
        int height = getHeight();
        View view = this.mParent;
        if (view != null) {
            i = view.getHeight();
        } else {
            i = 0;
        }
        if (height > i) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i) {
        View childAt;
        int i2;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        if (i < getPosition(childAt)) {
            i2 = -1;
        } else {
            i2 = 1;
        }
        if (isMainAxisDirectionHorizontal()) {
            return new PointF(0.0f, i2);
        }
        return new PointF(i2, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    public int findFirstCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastCompletelyVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, true);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    public int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return getPosition(findOneVisibleChild);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getAlignItems() {
        return this.mAlignItems;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildHeightMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i2, i3, canScrollVertically());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getChildWidthMeasureSpec(int i, int i2, int i3) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i2, i3, canScrollHorizontally());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthCrossAxis(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (isMainAxisDirectionHorizontal()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return rightDecorationWidth + leftDecorationWidth;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getDecorationLengthMainAxis(View view, int i, int i2) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (isMainAxisDirectionHorizontal()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return bottomDecorationHeight + topDecorationHeight;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexDirection() {
        return this.mFlexDirection;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getFlexItemAt(int i) {
        View view = this.mViewCache.get(i);
        if (view != null) {
            return view;
        }
        return this.mRecycler.getViewForPosition(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getFlexItemCount() {
        return this.mState.getItemCount();
    }

    @Override // com.google.android.flexbox.FlexContainer
    @NonNull
    public List<FlexLine> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.mFlexLines.size());
        int size = this.mFlexLines.size();
        for (int i = 0; i < size; i++) {
            FlexLine flexLine = this.mFlexLines.get(i);
            if (flexLine.getItemCount() != 0) {
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
        if (this.mFlexLines.size() == 0) {
            return 0;
        }
        int size = this.mFlexLines.size();
        int i = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            i = Math.max(i, this.mFlexLines.get(i2).mMainSize);
        }
        return i;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getMaxLine() {
        return this.mMaxLine;
    }

    public int getPositionToFlexLineIndex(int i) {
        return this.mFlexboxHelper.mIndexToFlexLine[i];
    }

    public boolean getRecycleChildrenOnDetach() {
        return this.mRecycleChildrenOnDetach;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public View getReorderedFlexItemAt(int i) {
        return getFlexItemAt(i);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public int getSumOfCrossSize() {
        int size = this.mFlexLines.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += this.mFlexLines.get(i2).mCrossSize;
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    public boolean isLayoutRtl() {
        return this.mIsRtl;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public boolean isMainAxisDirectionHorizontal() {
        int i = this.mFlexDirection;
        if (i == 0 || i == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.mParent = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.mRecycleChildrenOnDetach) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsAdded(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int i, int i2, int i3) {
        super.onItemsMoved(recyclerView, i, i2, i3);
        updateDirtyPosition(Math.min(i, i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsRemoved(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2, Object obj) {
        super.onItemsUpdated(recyclerView, i, i2, obj);
        updateDirtyPosition(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i;
        int i2;
        this.mRecycler = recycler;
        this.mState = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        resolveLayoutDirection();
        ensureOrientationHelper();
        ensureLayoutState();
        this.mFlexboxHelper.ensureMeasureSpecCache(itemCount);
        this.mFlexboxHelper.ensureMeasuredSizeCache(itemCount);
        this.mFlexboxHelper.ensureIndexToFlexLine(itemCount);
        this.mLayoutState.mShouldRecycle = false;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null && savedState.hasValidAnchor(itemCount)) {
            this.mPendingScrollPosition = this.mPendingSavedState.mAnchorPosition;
        }
        if (!this.mAnchorInfo.mValid || this.mPendingScrollPosition != -1 || this.mPendingSavedState != null) {
            this.mAnchorInfo.reset();
            updateAnchorInfoForLayout(state, this.mAnchorInfo);
            this.mAnchorInfo.mValid = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.mAnchorInfo.mLayoutFromEnd) {
            updateLayoutStateToFillStart(this.mAnchorInfo, false, true);
        } else {
            updateLayoutStateToFillEnd(this.mAnchorInfo, false, true);
        }
        updateFlexLines(itemCount);
        fill(recycler, state, this.mLayoutState);
        if (this.mAnchorInfo.mLayoutFromEnd) {
            i2 = this.mLayoutState.mOffset;
            updateLayoutStateToFillEnd(this.mAnchorInfo, true, false);
            fill(recycler, state, this.mLayoutState);
            i = this.mLayoutState.mOffset;
        } else {
            i = this.mLayoutState.mOffset;
            updateLayoutStateToFillStart(this.mAnchorInfo, true, false);
            fill(recycler, state, this.mLayoutState);
            i2 = this.mLayoutState.mOffset;
        }
        if (getChildCount() > 0) {
            if (this.mAnchorInfo.mLayoutFromEnd) {
                fixLayoutStartGap(i2 + fixLayoutEndGap(i, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i + fixLayoutStartGap(i2, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mDirtyPosition = -1;
        this.mAnchorInfo.reset();
        this.mViewCache.clear();
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexItemAdded(View view, int i, int i2, FlexLine flexLine) {
        calculateItemDecorationsForChild(view, TEMP_RECT);
        if (isMainAxisDirectionHorizontal()) {
            int rightDecorationWidth = getRightDecorationWidth(view) + getLeftDecorationWidth(view);
            flexLine.mMainSize += rightDecorationWidth;
            flexLine.mDividerLengthInMainSize += rightDecorationWidth;
            return;
        }
        int bottomDecorationHeight = getBottomDecorationHeight(view) + getTopDecorationHeight(view);
        flexLine.mMainSize += bottomDecorationHeight;
        flexLine.mDividerLengthInMainSize += bottomDecorationHeight;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void onNewFlexLineAdded(FlexLine flexLine) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.mPendingSavedState = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new SavedState(this.mPendingSavedState);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() <= 0) {
            savedState.invalidateAnchor();
        } else {
            View childClosestToStart = getChildClosestToStart();
            savedState.mAnchorPosition = getPosition(childClosestToStart);
            savedState.mAnchorOffset = this.mOrientationHelper.getDecoratedStart(childClosestToStart) - this.mOrientationHelper.getStartAfterPadding();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (isMainAxisDirectionHorizontal() && this.mFlexWrap != 0) {
            int handleScrollingSubOrientation = handleScrollingSubOrientation(i);
            AnchorInfo.access$2412(this.mAnchorInfo, handleScrollingSubOrientation);
            this.mSubOrientationHelper.offsetChildren(-handleScrollingSubOrientation);
            return handleScrollingSubOrientation;
        }
        int handleScrollingMainOrientation = handleScrollingMainOrientation(i, recycler, state);
        this.mViewCache.clear();
        return handleScrollingMainOrientation;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i) {
        this.mPendingScrollPosition = i;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        SavedState savedState = this.mPendingSavedState;
        if (savedState != null) {
            savedState.invalidateAnchor();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!isMainAxisDirectionHorizontal() && (this.mFlexWrap != 0 || isMainAxisDirectionHorizontal())) {
            int handleScrollingSubOrientation = handleScrollingSubOrientation(i);
            AnchorInfo.access$2412(this.mAnchorInfo, handleScrollingSubOrientation);
            this.mSubOrientationHelper.offsetChildren(-handleScrollingSubOrientation);
            return handleScrollingSubOrientation;
        }
        int handleScrollingMainOrientation = handleScrollingMainOrientation(i, recycler, state);
        this.mViewCache.clear();
        return handleScrollingMainOrientation;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignContent(int i) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{4529535833790593617L, 6545380045402438324L, -5019555993299124094L, 9040810929870658687L, -8268440047451611795L, 7691458170544355218L, 5390950421172301991L, -2965043865336870718L, -4338824730410872900L, -6365315795168768348L, 2554771700794949014L, -8033611676874047051L, -8322378081260706723L, 3353385423536695888L, 8351955667797103894L, -8604601538952771060L, 6202145106023435589L}).toString());
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setAlignItems(int i) {
        int i2 = this.mAlignItems;
        if (i2 != i) {
            if (i2 == 4 || i == 4) {
                removeAllViews();
                clearFlexLines();
            }
            this.mAlignItems = i;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexDirection(int i) {
        if (this.mFlexDirection != i) {
            removeAllViews();
            this.mFlexDirection = i;
            this.mOrientationHelper = null;
            this.mSubOrientationHelper = null;
            clearFlexLines();
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexLines(List<FlexLine> list) {
        this.mFlexLines = list;
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void setFlexWrap(int i) {
        if (i != 2) {
            int i2 = this.mFlexWrap;
            if (i2 != i) {
                if (i2 == 0 || i == 0) {
                    removeAllViews();
                    clearFlexLines();
                }
                this.mFlexWrap = i;
                this.mOrientationHelper = null;
                this.mSubOrientationHelper = null;
                requestLayout();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3831268977580398346L, -6103872725337223389L, 266150148482954472L, -804593838844192212L, 4019232041619135101L, -5331146498445686284L, -2045869571579611801L, -5079581715382670887L}).toString());
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

    public void setRecycleChildrenOnDetach(boolean z) {
        this.mRecycleChildrenOnDetach = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i);
        startSmoothScroll(linearSmoothScroller);
    }

    @Override // com.google.android.flexbox.FlexContainer
    public void updateViewCache(int i, View view) {
        this.mViewCache.put(i, view);
    }

    /* loaded from: classes.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.flexbox.FlexboxLayoutManager.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private int mAnchorOffset;
        private int mAnchorPosition;

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasValidAnchor(int i) {
            int i2 = this.mAnchorPosition;
            if (i2 >= 0 && i2 < i) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void invalidateAnchor() {
            this.mAnchorPosition = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3097643666204467180L, 3985750417287404938L, -2427911716261478092L, 913490278416789215L, 1001062705888453514L}).toString());
            sb.append(this.mAnchorPosition);
            sb.append(new ObfuscatedString(new long[]{-1837699963747288216L, -8995136381844574670L, 2255007795705292698L}).toString());
            return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.mAnchorOffset, '}');
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.mAnchorPosition);
            parcel.writeInt(this.mAnchorOffset);
        }

        public SavedState() {
        }

        private SavedState(Parcel parcel) {
            this.mAnchorPosition = parcel.readInt();
            this.mAnchorOffset = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.mAnchorPosition = savedState.mAnchorPosition;
            this.mAnchorOffset = savedState.mAnchorOffset;
        }
    }

    public FlexboxLayoutManager(Context context, int i) {
        this(context, i, 1);
    }

    public FlexboxLayoutManager(Context context, int i, int i2) {
        this.mMaxLine = -1;
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray<>();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        setFlexDirection(i);
        setFlexWrap(i2);
        setAlignItems(4);
        this.mContext = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i, int i2) {
        super.onItemsUpdated(recyclerView, i, i2);
        updateDirtyPosition(i);
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new Parcelable.Creator<LayoutParams>() { // from class: com.google.android.flexbox.FlexboxLayoutManager.LayoutParams.1
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
        private boolean mWrapBefore;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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
            return 1;
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
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3323904912150027056L, -4179973139309830153L, 3841080437015840448L, 8631987083412395804L, -6904949206351031701L, 7077870600857639826L, -1097546619208369294L, 5837151085202954217L, 132414455566006399L, 4437663470608132569L, -5972375904325763524L, 5766080577698701699L, -5433801107430180720L, 2182922127882471848L, 6341064654774318151L, 779390518851589555L, -3073278449051678124L}).toString());
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

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(RecyclerView.LayoutParams layoutParams) {
            super(layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((RecyclerView.LayoutParams) layoutParams);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

        public LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.mFlexGrow = 0.0f;
            this.mFlexShrink = 1.0f;
            this.mAlignSelf = -1;
            this.mFlexBasisPercent = -1.0f;
            this.mMaxWidth = 16777215;
            this.mMaxHeight = 16777215;
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

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mMaxLine = -1;
        this.mFlexLines = new ArrayList();
        this.mFlexboxHelper = new FlexboxHelper(this);
        this.mAnchorInfo = new AnchorInfo();
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mLastWidth = Integer.MIN_VALUE;
        this.mLastHeight = Integer.MIN_VALUE;
        this.mViewCache = new SparseArray<>();
        this.mDirtyPosition = -1;
        this.mFlexLinesResult = new FlexboxHelper.FlexLinesResult();
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i, i2);
        int i3 = properties.orientation;
        if (i3 != 0) {
            if (i3 == 1) {
                if (properties.reverseLayout) {
                    setFlexDirection(3);
                } else {
                    setFlexDirection(2);
                }
            }
        } else if (properties.reverseLayout) {
            setFlexDirection(1);
        } else {
            setFlexDirection(0);
        }
        setFlexWrap(1);
        setAlignItems(4);
        this.mContext = context;
    }
}
