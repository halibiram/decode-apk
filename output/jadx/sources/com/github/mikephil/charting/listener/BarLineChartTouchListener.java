package com.github.mikephil.charting.listener;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.animation.AnimationUtils;
import com.github.mikephil.charting.charts.BarLineChartBase;
import com.github.mikephil.charting.charts.HorizontalBarChart;
import com.github.mikephil.charting.data.BarLineScatterCandleBubbleData;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.highlight.Highlight;
import com.github.mikephil.charting.interfaces.datasets.IBarLineScatterCandleBubbleDataSet;
import com.github.mikephil.charting.interfaces.datasets.IDataSet;
import com.github.mikephil.charting.listener.ChartTouchListener;
import com.github.mikephil.charting.utils.MPPointF;
import com.github.mikephil.charting.utils.Utils;
import com.github.mikephil.charting.utils.ViewPortHandler;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class BarLineChartTouchListener extends ChartTouchListener<BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>>> {
    private IDataSet mClosestDataSetToTouch;
    private MPPointF mDecelerationCurrentPoint;
    private long mDecelerationLastTime;
    private MPPointF mDecelerationVelocity;
    private float mDragTriggerDist;
    private Matrix mMatrix;
    private float mMinScalePointerDistance;
    private float mSavedDist;
    private Matrix mSavedMatrix;
    private float mSavedXDist;
    private float mSavedYDist;
    private MPPointF mTouchPointCenter;
    private MPPointF mTouchStartPoint;
    private VelocityTracker mVelocityTracker;

    public BarLineChartTouchListener(BarLineChartBase<? extends BarLineScatterCandleBubbleData<? extends IBarLineScatterCandleBubbleDataSet<? extends Entry>>> barLineChartBase, Matrix matrix, float f) {
        super(barLineChartBase);
        this.mMatrix = new Matrix();
        this.mSavedMatrix = new Matrix();
        this.mTouchStartPoint = MPPointF.getInstance(0.0f, 0.0f);
        this.mTouchPointCenter = MPPointF.getInstance(0.0f, 0.0f);
        this.mSavedXDist = 1.0f;
        this.mSavedYDist = 1.0f;
        this.mSavedDist = 1.0f;
        this.mDecelerationLastTime = 0L;
        this.mDecelerationCurrentPoint = MPPointF.getInstance(0.0f, 0.0f);
        this.mDecelerationVelocity = MPPointF.getInstance(0.0f, 0.0f);
        this.mMatrix = matrix;
        this.mDragTriggerDist = Utils.convertDpToPixel(f);
        this.mMinScalePointerDistance = Utils.convertDpToPixel(3.5f);
    }

    private static float getXDist(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getX(0) - motionEvent.getX(1));
    }

    private static float getYDist(MotionEvent motionEvent) {
        return Math.abs(motionEvent.getY(0) - motionEvent.getY(1));
    }

    private boolean inverted() {
        IDataSet iDataSet;
        if ((this.mClosestDataSetToTouch == null && ((BarLineChartBase) this.mChart).isAnyAxisInverted()) || ((iDataSet = this.mClosestDataSetToTouch) != null && ((BarLineChartBase) this.mChart).isInverted(iDataSet.getAxisDependency()))) {
            return true;
        }
        return false;
    }

    private static void midPoint(MPPointF mPPointF, MotionEvent motionEvent) {
        float x = motionEvent.getX(1) + motionEvent.getX(0);
        float y = motionEvent.getY(1) + motionEvent.getY(0);
        mPPointF.x = x / 2.0f;
        mPPointF.y = y / 2.0f;
    }

    private void performDrag(MotionEvent motionEvent, float f, float f2) {
        this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
        this.mMatrix.set(this.mSavedMatrix);
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (inverted()) {
            if (this.mChart instanceof HorizontalBarChart) {
                f = -f;
            } else {
                f2 = -f2;
            }
        }
        this.mMatrix.postTranslate(f, f2);
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartTranslate(motionEvent, f, f2);
        }
    }

    private void performHighlightDrag(MotionEvent motionEvent) {
        Highlight highlightByTouchPoint = ((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY());
        if (highlightByTouchPoint != null && !highlightByTouchPoint.equalTo(this.mLastHighlighted)) {
            this.mLastHighlighted = highlightByTouchPoint;
            ((BarLineChartBase) this.mChart).highlightValue(highlightByTouchPoint, true);
        }
    }

    private void performZoom(MotionEvent motionEvent) {
        boolean canZoomInMoreY;
        boolean canZoomInMoreX;
        boolean canZoomInMoreX2;
        boolean canZoomInMoreY2;
        float f;
        if (motionEvent.getPointerCount() >= 2) {
            OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
            float spacing = spacing(motionEvent);
            if (spacing > this.mMinScalePointerDistance) {
                MPPointF mPPointF = this.mTouchPointCenter;
                MPPointF trans = getTrans(mPPointF.x, mPPointF.y);
                ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
                int i = this.mTouchMode;
                boolean z = false;
                float f2 = 1.0f;
                if (i == 4) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.PINCH_ZOOM;
                    float f3 = spacing / this.mSavedDist;
                    if (f3 < 1.0f) {
                        z = true;
                    }
                    if (z) {
                        canZoomInMoreX2 = viewPortHandler.canZoomOutMoreX();
                    } else {
                        canZoomInMoreX2 = viewPortHandler.canZoomInMoreX();
                    }
                    if (z) {
                        canZoomInMoreY2 = viewPortHandler.canZoomOutMoreY();
                    } else {
                        canZoomInMoreY2 = viewPortHandler.canZoomInMoreY();
                    }
                    if (((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                        f = f3;
                    } else {
                        f = 1.0f;
                    }
                    if (((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                        f2 = f3;
                    }
                    if (canZoomInMoreY2 || canZoomInMoreX2) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(f, f2, trans.x, trans.y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, f, f2);
                        }
                    }
                } else if (i == 2 && ((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.X_ZOOM;
                    float xDist = getXDist(motionEvent) / this.mSavedXDist;
                    if (xDist < 1.0f) {
                        canZoomInMoreX = viewPortHandler.canZoomOutMoreX();
                    } else {
                        canZoomInMoreX = viewPortHandler.canZoomInMoreX();
                    }
                    if (canZoomInMoreX) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(xDist, 1.0f, trans.x, trans.y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, xDist, 1.0f);
                        }
                    }
                } else if (this.mTouchMode == 3 && ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                    this.mLastGesture = ChartTouchListener.ChartGesture.Y_ZOOM;
                    float yDist = getYDist(motionEvent) / this.mSavedYDist;
                    if (yDist < 1.0f) {
                        z = true;
                    }
                    if (z) {
                        canZoomInMoreY = viewPortHandler.canZoomOutMoreY();
                    } else {
                        canZoomInMoreY = viewPortHandler.canZoomInMoreY();
                    }
                    if (canZoomInMoreY) {
                        this.mMatrix.set(this.mSavedMatrix);
                        this.mMatrix.postScale(1.0f, yDist, trans.x, trans.y);
                        if (onChartGestureListener != null) {
                            onChartGestureListener.onChartScale(motionEvent, 1.0f, yDist);
                        }
                    }
                }
                MPPointF.recycleInstance(trans);
            }
        }
    }

    private void saveTouchStart(MotionEvent motionEvent) {
        this.mSavedMatrix.set(this.mMatrix);
        this.mTouchStartPoint.x = motionEvent.getX();
        this.mTouchStartPoint.y = motionEvent.getY();
        this.mClosestDataSetToTouch = ((BarLineChartBase) this.mChart).getDataSetByTouchPoint(motionEvent.getX(), motionEvent.getY());
    }

    private static float spacing(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((y * y) + (x * x));
    }

    public void computeScroll() {
        float f;
        MPPointF mPPointF = this.mDecelerationVelocity;
        float f2 = 0.0f;
        if (mPPointF.x == 0.0f && mPPointF.y == 0.0f) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        MPPointF mPPointF2 = this.mDecelerationVelocity;
        mPPointF2.x = ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef() * mPPointF2.x;
        MPPointF mPPointF3 = this.mDecelerationVelocity;
        mPPointF3.y = ((BarLineChartBase) this.mChart).getDragDecelerationFrictionCoef() * mPPointF3.y;
        float f3 = ((float) (currentAnimationTimeMillis - this.mDecelerationLastTime)) / 1000.0f;
        MPPointF mPPointF4 = this.mDecelerationVelocity;
        float f4 = mPPointF4.x * f3;
        float f5 = mPPointF4.y * f3;
        MPPointF mPPointF5 = this.mDecelerationCurrentPoint;
        float f6 = mPPointF5.x + f4;
        mPPointF5.x = f6;
        float f7 = mPPointF5.y + f5;
        mPPointF5.y = f7;
        MotionEvent obtain = MotionEvent.obtain(currentAnimationTimeMillis, currentAnimationTimeMillis, 2, f6, f7, 0);
        if (((BarLineChartBase) this.mChart).isDragXEnabled()) {
            f = this.mDecelerationCurrentPoint.x - this.mTouchStartPoint.x;
        } else {
            f = 0.0f;
        }
        if (((BarLineChartBase) this.mChart).isDragYEnabled()) {
            f2 = this.mDecelerationCurrentPoint.y - this.mTouchStartPoint.y;
        }
        performDrag(obtain, f, f2);
        obtain.recycle();
        this.mMatrix = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.mMatrix, this.mChart, false);
        this.mDecelerationLastTime = currentAnimationTimeMillis;
        if (Math.abs(this.mDecelerationVelocity.x) < 0.01d && Math.abs(this.mDecelerationVelocity.y) < 0.01d) {
            ((BarLineChartBase) this.mChart).calculateOffsets();
            ((BarLineChartBase) this.mChart).postInvalidate();
            stopDeceleration();
            return;
        }
        Utils.postInvalidateOnAnimation(this.mChart);
    }

    public Matrix getMatrix() {
        return this.mMatrix;
    }

    public MPPointF getTrans(float f, float f2) {
        float f3;
        ViewPortHandler viewPortHandler = ((BarLineChartBase) this.mChart).getViewPortHandler();
        float offsetLeft = f - viewPortHandler.offsetLeft();
        if (inverted()) {
            f3 = -(f2 - viewPortHandler.offsetTop());
        } else {
            f3 = -((((BarLineChartBase) this.mChart).getMeasuredHeight() - f2) - viewPortHandler.offsetBottom());
        }
        return MPPointF.getInstance(offsetLeft, f3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        float f;
        this.mLastGesture = ChartTouchListener.ChartGesture.DOUBLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartDoubleTapped(motionEvent);
        }
        if (((BarLineChartBase) this.mChart).isDoubleTapToZoomEnabled() && ((BarLineScatterCandleBubbleData) ((BarLineChartBase) this.mChart).getData()).getEntryCount() > 0) {
            MPPointF trans = getTrans(motionEvent.getX(), motionEvent.getY());
            T t = this.mChart;
            BarLineChartBase barLineChartBase = (BarLineChartBase) t;
            float f2 = 1.0f;
            if (((BarLineChartBase) t).isScaleXEnabled()) {
                f = 1.4f;
            } else {
                f = 1.0f;
            }
            if (((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                f2 = 1.4f;
            }
            barLineChartBase.zoom(f, f2, trans.x, trans.y);
            if (((BarLineChartBase) this.mChart).isLogEnabled()) {
                new ObfuscatedString(new long[]{3743369309817375620L, 5384361030375486479L, 3460120499388525224L, 7941917662301044422L}).toString();
                new ObfuscatedString(new long[]{-3782857934533467246L, -3557601398409508195L, -7112698917146255491L, 1020222311432189786L, 5973816106249191657L}).toString();
                new ObfuscatedString(new long[]{1747086118159251181L, 6559453889398237350L}).toString();
            }
            MPPointF.recycleInstance(trans);
        }
        return super.onDoubleTap(motionEvent);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.mLastGesture = ChartTouchListener.ChartGesture.FLING;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartFling(motionEvent, motionEvent2, f, f2);
        }
        return super.onFling(motionEvent, motionEvent2, f, f2);
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.LONG_PRESS;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartLongPressed(motionEvent);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        this.mLastGesture = ChartTouchListener.ChartGesture.SINGLE_TAP;
        OnChartGestureListener onChartGestureListener = ((BarLineChartBase) this.mChart).getOnChartGestureListener();
        if (onChartGestureListener != null) {
            onChartGestureListener.onChartSingleTapped(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isHighlightPerTapEnabled()) {
            return false;
        }
        performHighlight(((BarLineChartBase) this.mChart).getHighlightByTouchPoint(motionEvent.getX(), motionEvent.getY()), motionEvent);
        return super.onSingleTapUp(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        float f;
        VelocityTracker velocityTracker;
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int i = 3;
        if (motionEvent.getActionMasked() == 3 && (velocityTracker = this.mVelocityTracker) != null) {
            velocityTracker.recycle();
            this.mVelocityTracker = null;
        }
        if (this.mTouchMode == 0) {
            this.mGestureDetector.onTouchEvent(motionEvent);
        }
        if (!((BarLineChartBase) this.mChart).isDragEnabled() && !((BarLineChartBase) this.mChart).isScaleXEnabled() && !((BarLineChartBase) this.mChart).isScaleYEnabled()) {
            return true;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        if (action != 5) {
                            if (action == 6) {
                                Utils.velocityTrackerPointerUpCleanUpIfNecessary(motionEvent, this.mVelocityTracker);
                                this.mTouchMode = 5;
                            }
                        } else if (motionEvent.getPointerCount() >= 2) {
                            ((BarLineChartBase) this.mChart).disableScroll();
                            saveTouchStart(motionEvent);
                            this.mSavedXDist = getXDist(motionEvent);
                            this.mSavedYDist = getYDist(motionEvent);
                            float spacing = spacing(motionEvent);
                            this.mSavedDist = spacing;
                            if (spacing > 10.0f) {
                                if (((BarLineChartBase) this.mChart).isPinchZoomEnabled()) {
                                    this.mTouchMode = 4;
                                } else if (((BarLineChartBase) this.mChart).isScaleXEnabled() != ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                                    if (((BarLineChartBase) this.mChart).isScaleXEnabled()) {
                                        i = 2;
                                    }
                                    this.mTouchMode = i;
                                } else {
                                    if (this.mSavedXDist > this.mSavedYDist) {
                                        i = 2;
                                    }
                                    this.mTouchMode = i;
                                }
                            }
                            midPoint(this.mTouchPointCenter, motionEvent);
                        }
                    } else {
                        this.mTouchMode = 0;
                        endAction(motionEvent);
                    }
                } else {
                    int i2 = this.mTouchMode;
                    if (i2 == 1) {
                        ((BarLineChartBase) this.mChart).disableScroll();
                        float f2 = 0.0f;
                        if (((BarLineChartBase) this.mChart).isDragXEnabled()) {
                            f = motionEvent.getX() - this.mTouchStartPoint.x;
                        } else {
                            f = 0.0f;
                        }
                        if (((BarLineChartBase) this.mChart).isDragYEnabled()) {
                            f2 = motionEvent.getY() - this.mTouchStartPoint.y;
                        }
                        performDrag(motionEvent, f, f2);
                    } else if (i2 != 2 && i2 != 3 && i2 != 4) {
                        if (i2 == 0 && Math.abs(ChartTouchListener.distance(motionEvent.getX(), this.mTouchStartPoint.x, motionEvent.getY(), this.mTouchStartPoint.y)) > this.mDragTriggerDist && ((BarLineChartBase) this.mChart).isDragEnabled()) {
                            if (((BarLineChartBase) this.mChart).isFullyZoomedOut() && ((BarLineChartBase) this.mChart).hasNoDragOffset()) {
                                if (((BarLineChartBase) this.mChart).isHighlightPerDragEnabled()) {
                                    this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                                    if (((BarLineChartBase) this.mChart).isHighlightPerDragEnabled()) {
                                        performHighlightDrag(motionEvent);
                                    }
                                }
                            } else {
                                float abs = Math.abs(motionEvent.getX() - this.mTouchStartPoint.x);
                                float abs2 = Math.abs(motionEvent.getY() - this.mTouchStartPoint.y);
                                if ((((BarLineChartBase) this.mChart).isDragXEnabled() || abs2 >= abs) && (((BarLineChartBase) this.mChart).isDragYEnabled() || abs2 <= abs)) {
                                    this.mLastGesture = ChartTouchListener.ChartGesture.DRAG;
                                    this.mTouchMode = 1;
                                }
                            }
                        }
                    } else {
                        ((BarLineChartBase) this.mChart).disableScroll();
                        if (((BarLineChartBase) this.mChart).isScaleXEnabled() || ((BarLineChartBase) this.mChart).isScaleYEnabled()) {
                            performZoom(motionEvent);
                        }
                    }
                }
            } else {
                VelocityTracker velocityTracker2 = this.mVelocityTracker;
                int pointerId = motionEvent.getPointerId(0);
                velocityTracker2.computeCurrentVelocity(1000, Utils.getMaximumFlingVelocity());
                float yVelocity = velocityTracker2.getYVelocity(pointerId);
                float xVelocity = velocityTracker2.getXVelocity(pointerId);
                if ((Math.abs(xVelocity) > Utils.getMinimumFlingVelocity() || Math.abs(yVelocity) > Utils.getMinimumFlingVelocity()) && this.mTouchMode == 1 && ((BarLineChartBase) this.mChart).isDragDecelerationEnabled()) {
                    stopDeceleration();
                    this.mDecelerationLastTime = AnimationUtils.currentAnimationTimeMillis();
                    this.mDecelerationCurrentPoint.x = motionEvent.getX();
                    this.mDecelerationCurrentPoint.y = motionEvent.getY();
                    MPPointF mPPointF = this.mDecelerationVelocity;
                    mPPointF.x = xVelocity;
                    mPPointF.y = yVelocity;
                    Utils.postInvalidateOnAnimation(this.mChart);
                }
                int i3 = this.mTouchMode;
                if (i3 == 2 || i3 == 3 || i3 == 4 || i3 == 5) {
                    ((BarLineChartBase) this.mChart).calculateOffsets();
                    ((BarLineChartBase) this.mChart).postInvalidate();
                }
                this.mTouchMode = 0;
                ((BarLineChartBase) this.mChart).enableScroll();
                VelocityTracker velocityTracker3 = this.mVelocityTracker;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.mVelocityTracker = null;
                }
                endAction(motionEvent);
            }
        } else {
            startAction(motionEvent);
            stopDeceleration();
            saveTouchStart(motionEvent);
        }
        this.mMatrix = ((BarLineChartBase) this.mChart).getViewPortHandler().refresh(this.mMatrix, this.mChart, true);
        return true;
    }

    public void setDragTriggerDist(float f) {
        this.mDragTriggerDist = Utils.convertDpToPixel(f);
    }

    public void stopDeceleration() {
        MPPointF mPPointF = this.mDecelerationVelocity;
        mPPointF.x = 0.0f;
        mPPointF.y = 0.0f;
    }
}
