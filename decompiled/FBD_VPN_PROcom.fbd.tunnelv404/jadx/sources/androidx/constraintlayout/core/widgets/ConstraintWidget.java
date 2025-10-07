package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.Cache;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.state.WidgetFrame;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.analyzer.ChainRun;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ConstraintWidget {
    public static final int ANCHOR_BASELINE = 4;
    public static final int ANCHOR_BOTTOM = 3;
    public static final int ANCHOR_LEFT = 0;
    public static final int ANCHOR_RIGHT = 1;
    public static final int ANCHOR_TOP = 2;
    private static final boolean AUTOTAG_CENTER = false;
    public static final int BOTH = 2;
    public static final int CHAIN_PACKED = 2;
    public static final int CHAIN_SPREAD = 0;
    public static final int CHAIN_SPREAD_INSIDE = 1;
    public static float DEFAULT_BIAS = 0.5f;
    static final int DIMENSION_HORIZONTAL = 0;
    static final int DIMENSION_VERTICAL = 1;
    protected static final int DIRECT = 2;
    private static final boolean DO_NOT_USE = false;
    public static final int GONE = 8;
    public static final int HORIZONTAL = 0;
    public static final int INVISIBLE = 4;
    public static final int MATCH_CONSTRAINT_PERCENT = 2;
    public static final int MATCH_CONSTRAINT_RATIO = 3;
    public static final int MATCH_CONSTRAINT_RATIO_RESOLVED = 4;
    public static final int MATCH_CONSTRAINT_SPREAD = 0;
    public static final int MATCH_CONSTRAINT_WRAP = 1;
    protected static final int SOLVER = 1;
    public static final int UNKNOWN = -1;
    private static final boolean USE_WRAP_DIMENSION_FOR_SPREAD = false;
    public static final int VERTICAL = 1;
    public static final int VISIBLE = 0;
    private static final int WRAP = -2;
    public static final int WRAP_BEHAVIOR_HORIZONTAL_ONLY = 1;
    public static final int WRAP_BEHAVIOR_INCLUDED = 0;
    public static final int WRAP_BEHAVIOR_SKIPPED = 3;
    public static final int WRAP_BEHAVIOR_VERTICAL_ONLY = 2;
    public WidgetFrame frame;
    public ChainRun horizontalChainRun;
    public int horizontalGroup;
    public boolean[] isTerminalWidget;
    protected ArrayList<ConstraintAnchor> mAnchors;
    private boolean mAnimated;
    public ConstraintAnchor mBaseline;
    int mBaselineDistance;
    public ConstraintAnchor mBottom;
    boolean mBottomHasCentered;
    public ConstraintAnchor mCenter;
    ConstraintAnchor mCenterX;
    ConstraintAnchor mCenterY;
    public float mCircleConstraintAngle;
    private Object mCompanionWidget;
    private int mContainerItemSkip;
    private String mDebugName;
    public float mDimensionRatio;
    protected int mDimensionRatioSide;
    int mDistToBottom;
    int mDistToLeft;
    int mDistToRight;
    int mDistToTop;
    boolean mGroupsToSolver;
    private boolean mHasBaseline;
    int mHeight;
    private int mHeightOverride;
    float mHorizontalBiasPercent;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle;
    ConstraintWidget mHorizontalNextWidget;
    public int mHorizontalResolution;
    public HorizontalWidgetRun mHorizontalRun;
    private boolean mHorizontalSolvingPass;
    boolean mHorizontalWrapVisited;
    private boolean mInPlaceholder;
    private boolean mInVirtualLayout;
    public boolean mIsHeightWrapContent;
    private boolean[] mIsInBarrier;
    public boolean mIsWidthWrapContent;
    private int mLastHorizontalMeasureSpec;
    private int mLastVerticalMeasureSpec;
    public ConstraintAnchor mLeft;
    boolean mLeftHasCentered;
    public ConstraintAnchor[] mListAnchors;
    public DimensionBehaviour[] mListDimensionBehaviors;
    protected ConstraintWidget[] mListNextMatchConstraintsWidget;
    public int mMatchConstraintDefaultHeight;
    public int mMatchConstraintDefaultWidth;
    public int mMatchConstraintMaxHeight;
    public int mMatchConstraintMaxWidth;
    public int mMatchConstraintMinHeight;
    public int mMatchConstraintMinWidth;
    public float mMatchConstraintPercentHeight;
    public float mMatchConstraintPercentWidth;
    private int[] mMaxDimension;
    private boolean mMeasureRequested;
    protected int mMinHeight;
    protected int mMinWidth;
    protected ConstraintWidget[] mNextChainWidget;
    protected int mOffsetX;
    protected int mOffsetY;
    private boolean mOptimizeWrapO;
    private boolean mOptimizeWrapOnResolved;
    public ConstraintWidget mParent;
    int mRelX;
    int mRelY;
    float mResolvedDimensionRatio;
    int mResolvedDimensionRatioSide;
    boolean mResolvedHasRatio;
    private boolean mResolvedHorizontal;
    public int[] mResolvedMatchConstraintDefault;
    private boolean mResolvedVertical;
    public ConstraintAnchor mRight;
    boolean mRightHasCentered;
    public ConstraintAnchor mTop;
    boolean mTopHasCentered;
    private String mType;
    float mVerticalBiasPercent;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle;
    ConstraintWidget mVerticalNextWidget;
    public int mVerticalResolution;
    public VerticalWidgetRun mVerticalRun;
    private boolean mVerticalSolvingPass;
    boolean mVerticalWrapVisited;
    private int mVisibility;
    public float[] mWeight;
    int mWidth;
    private int mWidthOverride;
    private int mWrapBehaviorInParent;
    protected int mX;
    protected int mY;
    public boolean measured;
    public WidgetRun[] run;
    public String stringId;
    public ChainRun verticalChainRun;
    public int verticalGroup;

    /* renamed from: androidx.constraintlayout.core.widgets.ConstraintWidget$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes.dex */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public ConstraintWidget() {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
    }

    private void addAnchors() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    /* JADX WARN: Removed duplicated region for block: B:109:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03ba A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0447 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04ad  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04bf A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0409  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x050f  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04e3 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void applyConstraints(LinearSystem linearSystem, boolean z, boolean z2, boolean z3, boolean z4, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z5, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i5, int i6, int i7, int i8, float f2, boolean z11) {
        int i9;
        SolverVariable solverVariable3;
        boolean z12;
        boolean z13;
        boolean z14;
        int i10;
        boolean z15;
        int i11;
        int i12;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        SolverVariable solverVariable6;
        int i13;
        boolean z16;
        boolean z17;
        SolverVariable createObjectVariable;
        SolverVariable createObjectVariable2;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        int i14;
        SolverVariable solverVariable10;
        int i15;
        int i16;
        boolean z18;
        ConstraintAnchor constraintAnchor3;
        int i17;
        SolverVariable solverVariable11;
        SolverVariable solverVariable12;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        ConstraintWidget constraintWidget;
        SolverVariable solverVariable13;
        int i22;
        ConstraintWidget constraintWidget2;
        SolverVariable solverVariable14;
        boolean z23;
        SolverVariable solverVariable15;
        ConstraintWidget constraintWidget3;
        int i23;
        int i24;
        int i25;
        boolean z24;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z25;
        boolean z26;
        ConstraintWidget constraintWidget4;
        int i30;
        ConstraintWidget constraintWidget5;
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(constraintAnchor);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(constraintAnchor2);
        SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(constraintAnchor.getTarget());
        SolverVariable createObjectVariable6 = linearSystem.createObjectVariable(constraintAnchor2.getTarget());
        if (LinearSystem.getMetrics() != null) {
            LinearSystem.getMetrics().nonresolvedWidgets++;
        }
        boolean isConnected = constraintAnchor.isConnected();
        boolean isConnected2 = constraintAnchor2.isConnected();
        boolean isConnected3 = this.mCenter.isConnected();
        int i31 = isConnected2 ? (isConnected ? 1 : 0) + 1 : isConnected ? 1 : 0;
        if (isConnected3) {
            i31++;
        }
        if (z6) {
            solverVariable3 = createObjectVariable6;
            i9 = 3;
        } else {
            i9 = i5;
            solverVariable3 = createObjectVariable6;
        }
        int ordinal = dimensionBehaviour.ordinal();
        boolean z27 = (ordinal == 0 || ordinal == 1 || ordinal != 2 || i9 == 4) ? false : true;
        int i32 = this.mWidthOverride;
        if (i32 == -1 || !z) {
            i32 = i2;
            z12 = z27;
        } else {
            this.mWidthOverride = -1;
            z12 = false;
        }
        int i33 = this.mHeightOverride;
        if (i33 == -1 || z) {
            z13 = z12;
        } else {
            this.mHeightOverride = -1;
            i32 = i33;
            z13 = false;
        }
        int i34 = i32;
        if (this.mVisibility == 8) {
            i10 = 0;
            z14 = false;
        } else {
            z14 = z13;
            i10 = i34;
        }
        if (z11) {
            if (!isConnected && !isConnected2 && !isConnected3) {
                linearSystem.addEquality(createObjectVariable3, i);
            } else if (isConnected && !isConnected2) {
                z15 = isConnected2;
                linearSystem.addEquality(createObjectVariable3, createObjectVariable5, constraintAnchor.getMargin(), 8);
                if (z14) {
                    if (z5) {
                        linearSystem.addEquality(createObjectVariable4, createObjectVariable3, 0, 3);
                        if (i3 > 0) {
                            linearSystem.addGreaterThan(createObjectVariable4, createObjectVariable3, i3, 8);
                        }
                        if (i4 < Integer.MAX_VALUE) {
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i4, 8);
                        }
                    } else {
                        linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i10, 8);
                    }
                    z17 = z4;
                    i13 = i7;
                    i11 = i8;
                    i12 = i31;
                    solverVariable6 = createObjectVariable5;
                    solverVariable4 = createObjectVariable4;
                    z16 = z14;
                    solverVariable5 = solverVariable3;
                } else if (i31 == 2 || z6 || !(i9 == 1 || i9 == 0)) {
                    int i35 = i7 == -2 ? i10 : i7;
                    i11 = i8 == -2 ? i10 : i8;
                    if (i10 > 0 && i9 != 1) {
                        i10 = 0;
                    }
                    if (i35 > 0) {
                        linearSystem.addGreaterThan(createObjectVariable4, createObjectVariable3, i35, 8);
                        i10 = Math.max(i10, i35);
                    }
                    if (i11 > 0) {
                        if (!z2 || i9 != 1) {
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i11, 8);
                        }
                        i10 = Math.min(i10, i11);
                    }
                    if (i9 == 1) {
                        if (z2) {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i10, 8);
                        } else if (z8) {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i10, 5);
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i10, 8);
                        } else {
                            linearSystem.addEquality(createObjectVariable4, createObjectVariable3, i10, 5);
                            linearSystem.addLowerThan(createObjectVariable4, createObjectVariable3, i10, 8);
                        }
                        z17 = z4;
                        i12 = i31;
                        solverVariable4 = createObjectVariable4;
                        z16 = z14;
                        i13 = i35;
                        solverVariable5 = solverVariable3;
                        solverVariable6 = createObjectVariable5;
                    } else if (i9 == 2) {
                        ConstraintAnchor.Type type = constraintAnchor.getType();
                        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.TOP;
                        if (type != type2 && constraintAnchor.getType() != ConstraintAnchor.Type.BOTTOM) {
                            createObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.LEFT));
                            createObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.RIGHT));
                        } else {
                            createObjectVariable = linearSystem.createObjectVariable(this.mParent.getAnchor(type2));
                            createObjectVariable2 = linearSystem.createObjectVariable(this.mParent.getAnchor(ConstraintAnchor.Type.BOTTOM));
                        }
                        boolean z28 = z14;
                        solverVariable5 = solverVariable3;
                        int i36 = i35;
                        solverVariable6 = createObjectVariable5;
                        i12 = i31;
                        solverVariable4 = createObjectVariable4;
                        linearSystem.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable4, createObjectVariable3, createObjectVariable2, createObjectVariable, f2));
                        if (z2) {
                            z28 = false;
                        }
                        i13 = i36;
                        z16 = z28;
                        z17 = z4;
                    } else {
                        i12 = i31;
                        solverVariable4 = createObjectVariable4;
                        boolean z29 = z14;
                        int i37 = i35;
                        solverVariable5 = solverVariable3;
                        solverVariable6 = createObjectVariable5;
                        i13 = i37;
                        z16 = z29;
                        z17 = true;
                    }
                } else {
                    int max = Math.max(i7, i10);
                    if (i8 > 0) {
                        max = Math.min(i8, max);
                    }
                    linearSystem.addEquality(createObjectVariable4, createObjectVariable3, max, 8);
                    z17 = z4;
                    i13 = i7;
                    i11 = i8;
                    i12 = i31;
                    solverVariable6 = createObjectVariable5;
                    solverVariable4 = createObjectVariable4;
                    solverVariable5 = solverVariable3;
                    z16 = false;
                }
                if (z11) {
                    solverVariable7 = solverVariable;
                    solverVariable8 = solverVariable2;
                    solverVariable9 = solverVariable4;
                    i14 = 0;
                    solverVariable10 = createObjectVariable3;
                    i15 = i12;
                    i16 = 2;
                } else if (z8) {
                    solverVariable7 = solverVariable;
                    solverVariable8 = solverVariable2;
                    solverVariable9 = solverVariable4;
                    i15 = i12;
                    i14 = 0;
                    i16 = 2;
                    solverVariable10 = createObjectVariable3;
                } else {
                    if (isConnected || z15 || isConnected3) {
                        if (isConnected && !z15) {
                            i30 = (z2 && (constraintAnchor.mTarget.mOwner instanceof Barrier)) ? 8 : 5;
                            z23 = z2;
                            solverVariable15 = solverVariable4;
                            i24 = 0;
                            if (z23) {
                            }
                        } else if (!isConnected && z15) {
                            linearSystem.addEquality(solverVariable4, solverVariable5, -constraintAnchor2.getMargin(), 8);
                            if (z2) {
                                if (this.mOptimizeWrapO && createObjectVariable3.isFinalValue && (constraintWidget4 = this.mParent) != null) {
                                    ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget4;
                                    if (z) {
                                        constraintWidgetContainer.addHorizontalWrapMinVariable(constraintAnchor);
                                    } else {
                                        constraintWidgetContainer.addVerticalWrapMinVariable(constraintAnchor);
                                    }
                                } else {
                                    linearSystem.addGreaterThan(createObjectVariable3, solverVariable, 0, 5);
                                    solverVariable15 = solverVariable4;
                                    i24 = 0;
                                    z23 = z2;
                                    i30 = 5;
                                    if (z23) {
                                    }
                                }
                            }
                        } else if (isConnected && z15) {
                            ConstraintWidget constraintWidget6 = constraintAnchor.mTarget.mOwner;
                            ConstraintWidget constraintWidget7 = constraintAnchor2.mTarget.mOwner;
                            ConstraintWidget parent = getParent();
                            int i38 = 6;
                            if (z16) {
                                if (i9 == 0) {
                                    if (i11 != 0 || i13 != 0) {
                                        i27 = 5;
                                        i29 = 5;
                                        z25 = true;
                                        z26 = false;
                                        z19 = true;
                                    } else if (solverVariable6.isFinalValue && solverVariable5.isFinalValue) {
                                        linearSystem.addEquality(createObjectVariable3, solverVariable6, constraintAnchor.getMargin(), 8);
                                        linearSystem.addEquality(solverVariable4, solverVariable5, -constraintAnchor2.getMargin(), 8);
                                        return;
                                    } else {
                                        i27 = 8;
                                        i29 = 8;
                                        z25 = false;
                                        z26 = true;
                                        z19 = false;
                                    }
                                    if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                        solverVariable11 = solverVariable2;
                                        i17 = i9;
                                        z21 = z26;
                                        i19 = i27;
                                        z20 = z25;
                                        i20 = 6;
                                        i21 = 4;
                                        if (z19 || solverVariable6 != solverVariable5 || constraintWidget6 == parent) {
                                            z22 = true;
                                        } else {
                                            z19 = false;
                                            z22 = false;
                                        }
                                        if (z20) {
                                            constraintWidget = constraintWidget7;
                                            solverVariable13 = solverVariable4;
                                            i22 = i17;
                                            constraintWidget2 = parent;
                                            solverVariable14 = createObjectVariable3;
                                            z23 = z2;
                                        } else {
                                            if (z16 || z7 || z9 || solverVariable6 != solverVariable || solverVariable5 != solverVariable11) {
                                                z23 = z2;
                                                i25 = i20;
                                                z24 = z22;
                                                i26 = i19;
                                            } else {
                                                z23 = false;
                                                i26 = 8;
                                                i25 = 8;
                                                z24 = false;
                                            }
                                            i22 = i17;
                                            constraintWidget2 = parent;
                                            constraintWidget = constraintWidget7;
                                            SolverVariable solverVariable16 = solverVariable4;
                                            solverVariable13 = solverVariable4;
                                            solverVariable14 = createObjectVariable3;
                                            linearSystem.addCentering(createObjectVariable3, solverVariable6, constraintAnchor.getMargin(), f, solverVariable5, solverVariable16, constraintAnchor2.getMargin(), i25);
                                            i19 = i26;
                                            z22 = z24;
                                        }
                                        if (this.mVisibility != 8 && !constraintAnchor2.hasDependents()) {
                                            return;
                                        }
                                        if (z19) {
                                            solverVariable15 = solverVariable13;
                                        } else {
                                            if (z23 && solverVariable6 != solverVariable5 && !z16 && ((constraintWidget6 instanceof Barrier) || (constraintWidget instanceof Barrier))) {
                                                i19 = 6;
                                            }
                                            linearSystem.addGreaterThan(solverVariable14, solverVariable6, constraintAnchor.getMargin(), i19);
                                            solverVariable15 = solverVariable13;
                                            linearSystem.addLowerThan(solverVariable15, solverVariable5, -constraintAnchor2.getMargin(), i19);
                                        }
                                        if (z23 || !z10 || (constraintWidget6 instanceof Barrier) || (constraintWidget instanceof Barrier)) {
                                            constraintWidget3 = constraintWidget2;
                                        } else {
                                            constraintWidget3 = constraintWidget2;
                                            if (constraintWidget != constraintWidget3) {
                                                i19 = 6;
                                                i23 = 6;
                                                z22 = true;
                                                if (z22) {
                                                    if (z21 && (!z9 || z3)) {
                                                        if (constraintWidget6 != constraintWidget3 && constraintWidget != constraintWidget3) {
                                                            i38 = i23;
                                                        }
                                                        if ((constraintWidget6 instanceof Guideline) || (constraintWidget instanceof Guideline)) {
                                                            i38 = 5;
                                                        }
                                                        if ((constraintWidget6 instanceof Barrier) || (constraintWidget instanceof Barrier)) {
                                                            i38 = 5;
                                                        }
                                                        i23 = Math.max(z9 ? 5 : i38, i23);
                                                    }
                                                    if (z23) {
                                                        i23 = (z6 && !z9 && (constraintWidget6 == constraintWidget3 || constraintWidget == constraintWidget3)) ? 4 : Math.min(i19, i23);
                                                    }
                                                    linearSystem.addEquality(solverVariable14, solverVariable6, constraintAnchor.getMargin(), i23);
                                                    linearSystem.addEquality(solverVariable15, solverVariable5, -constraintAnchor2.getMargin(), i23);
                                                }
                                                if (z23) {
                                                    int margin = solverVariable == solverVariable6 ? constraintAnchor.getMargin() : 0;
                                                    if (solverVariable6 != solverVariable) {
                                                        linearSystem.addGreaterThan(solverVariable14, solverVariable, margin, 5);
                                                    }
                                                }
                                                if (z23 || !z16 || i3 != 0 || i13 != 0) {
                                                    i24 = 0;
                                                } else if (z16 && i22 == 3) {
                                                    i24 = 0;
                                                    linearSystem.addGreaterThan(solverVariable15, solverVariable14, 0, 8);
                                                } else {
                                                    i24 = 0;
                                                    linearSystem.addGreaterThan(solverVariable15, solverVariable14, 0, 5);
                                                }
                                            }
                                        }
                                        i23 = i21;
                                        if (z22) {
                                        }
                                        if (z23) {
                                        }
                                        if (z23) {
                                        }
                                        i24 = 0;
                                    } else {
                                        solverVariable11 = solverVariable2;
                                        z21 = z26;
                                        z20 = z25;
                                        i21 = i29;
                                        i17 = i9;
                                        i19 = i27;
                                        i20 = 6;
                                        if (z19) {
                                        }
                                        z22 = true;
                                        if (z20) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z19) {
                                        }
                                        if (z23) {
                                        }
                                        constraintWidget3 = constraintWidget2;
                                        i23 = i21;
                                        if (z22) {
                                        }
                                        if (z23) {
                                        }
                                        if (z23) {
                                        }
                                        i24 = 0;
                                    }
                                } else if (i9 == 2) {
                                    if ((constraintWidget6 instanceof Barrier) || (constraintWidget7 instanceof Barrier)) {
                                        solverVariable11 = solverVariable2;
                                        i17 = i9;
                                    } else {
                                        solverVariable11 = solverVariable2;
                                        i17 = i9;
                                        i20 = 6;
                                        i19 = 5;
                                        i21 = 5;
                                        z20 = true;
                                        z19 = true;
                                        z21 = false;
                                        if (z19) {
                                        }
                                        z22 = true;
                                        if (z20) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z19) {
                                        }
                                        if (z23) {
                                        }
                                        constraintWidget3 = constraintWidget2;
                                        i23 = i21;
                                        if (z22) {
                                        }
                                        if (z23) {
                                        }
                                        if (z23) {
                                        }
                                        i24 = 0;
                                    }
                                } else if (i9 == 1) {
                                    solverVariable11 = solverVariable2;
                                    i17 = i9;
                                    i20 = 6;
                                    i19 = 8;
                                    i21 = 4;
                                    z20 = true;
                                    z19 = true;
                                    z21 = false;
                                    if (z19) {
                                    }
                                    z22 = true;
                                    if (z20) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z19) {
                                    }
                                    if (z23) {
                                    }
                                    constraintWidget3 = constraintWidget2;
                                    i23 = i21;
                                    if (z22) {
                                    }
                                    if (z23) {
                                    }
                                    if (z23) {
                                    }
                                    i24 = 0;
                                } else if (i9 == 3) {
                                    i17 = i9;
                                    if (this.mResolvedDimensionRatioSide == -1) {
                                        if (z9) {
                                            solverVariable11 = solverVariable2;
                                            i20 = z2 ? 5 : 4;
                                        } else {
                                            solverVariable11 = solverVariable2;
                                            i20 = 8;
                                        }
                                        i19 = 8;
                                    } else if (z6) {
                                        if (i6 == 2 || i6 == 1) {
                                            i27 = 5;
                                            i28 = 4;
                                        } else {
                                            i27 = 8;
                                            i28 = 5;
                                        }
                                        solverVariable11 = solverVariable2;
                                        i21 = i28;
                                        z20 = true;
                                        z19 = true;
                                        z21 = true;
                                        i19 = i27;
                                        i20 = 6;
                                        if (z19) {
                                        }
                                        z22 = true;
                                        if (z20) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z19) {
                                        }
                                        if (z23) {
                                        }
                                        constraintWidget3 = constraintWidget2;
                                        i23 = i21;
                                        if (z22) {
                                        }
                                        if (z23) {
                                        }
                                        if (z23) {
                                        }
                                        i24 = 0;
                                    } else if (i11 > 0) {
                                        solverVariable11 = solverVariable2;
                                        i20 = 6;
                                        i19 = 5;
                                    } else {
                                        if (i11 != 0 || i13 != 0) {
                                            solverVariable11 = solverVariable2;
                                            i20 = 6;
                                            i19 = 5;
                                        } else if (z9) {
                                            solverVariable11 = solverVariable2;
                                            i19 = (constraintWidget6 == parent || constraintWidget7 == parent) ? 5 : 4;
                                            i20 = 6;
                                        } else {
                                            solverVariable11 = solverVariable2;
                                            i20 = 6;
                                            i19 = 5;
                                            i21 = 8;
                                            z20 = true;
                                            z19 = true;
                                            z21 = true;
                                            if (z19) {
                                            }
                                            z22 = true;
                                            if (z20) {
                                            }
                                            if (this.mVisibility != 8) {
                                            }
                                            if (z19) {
                                            }
                                            if (z23) {
                                            }
                                            constraintWidget3 = constraintWidget2;
                                            i23 = i21;
                                            if (z22) {
                                            }
                                            if (z23) {
                                            }
                                            if (z23) {
                                            }
                                            i24 = 0;
                                        }
                                        i21 = 4;
                                        z20 = true;
                                        z19 = true;
                                        z21 = true;
                                        if (z19) {
                                        }
                                        z22 = true;
                                        if (z20) {
                                        }
                                        if (this.mVisibility != 8) {
                                        }
                                        if (z19) {
                                        }
                                        if (z23) {
                                        }
                                        constraintWidget3 = constraintWidget2;
                                        i23 = i21;
                                        if (z22) {
                                        }
                                        if (z23) {
                                        }
                                        if (z23) {
                                        }
                                        i24 = 0;
                                    }
                                    i21 = 5;
                                    z20 = true;
                                    z19 = true;
                                    z21 = true;
                                    if (z19) {
                                    }
                                    z22 = true;
                                    if (z20) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z19) {
                                    }
                                    if (z23) {
                                    }
                                    constraintWidget3 = constraintWidget2;
                                    i23 = i21;
                                    if (z22) {
                                    }
                                    if (z23) {
                                    }
                                    if (z23) {
                                    }
                                    i24 = 0;
                                } else {
                                    i17 = i9;
                                    solverVariable11 = solverVariable2;
                                    i20 = 6;
                                    i19 = 5;
                                    i21 = 4;
                                    z20 = false;
                                    z19 = false;
                                    z21 = false;
                                    if (z19) {
                                    }
                                    z22 = true;
                                    if (z20) {
                                    }
                                    if (this.mVisibility != 8) {
                                    }
                                    if (z19) {
                                    }
                                    if (z23) {
                                    }
                                    constraintWidget3 = constraintWidget2;
                                    i23 = i21;
                                    if (z22) {
                                    }
                                    if (z23) {
                                    }
                                    if (z23) {
                                    }
                                    i24 = 0;
                                }
                                i30 = 5;
                                if (z23 && z17) {
                                    if (constraintAnchor2.mTarget != null) {
                                        i24 = constraintAnchor2.getMargin();
                                    }
                                    if (solverVariable5 != solverVariable2) {
                                        if (this.mOptimizeWrapO && solverVariable15.isFinalValue && (constraintWidget5 = this.mParent) != null) {
                                            ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget5;
                                            if (z) {
                                                constraintWidgetContainer2.addHorizontalWrapMaxVariable(constraintAnchor2);
                                                return;
                                            } else {
                                                constraintWidgetContainer2.addVerticalWrapMaxVariable(constraintAnchor2);
                                                return;
                                            }
                                        }
                                        linearSystem.addGreaterThan(solverVariable2, solverVariable15, i24, i30);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            i17 = i9;
                            if (solverVariable6.isFinalValue && solverVariable5.isFinalValue) {
                                linearSystem.addCentering(createObjectVariable3, solverVariable6, constraintAnchor.getMargin(), f, solverVariable5, solverVariable4, constraintAnchor2.getMargin(), 8);
                                if (z2 && z17) {
                                    if (constraintAnchor2.mTarget != null) {
                                        i18 = constraintAnchor2.getMargin();
                                        solverVariable12 = solverVariable2;
                                    } else {
                                        solverVariable12 = solverVariable2;
                                        i18 = 0;
                                    }
                                    if (solverVariable5 != solverVariable12) {
                                        linearSystem.addGreaterThan(solverVariable12, solverVariable4, i18, 5);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            solverVariable11 = solverVariable2;
                            i20 = 6;
                            i19 = 5;
                            i21 = 4;
                            z20 = true;
                            z19 = true;
                            z21 = false;
                            if (z19) {
                            }
                            z22 = true;
                            if (z20) {
                            }
                            if (this.mVisibility != 8) {
                            }
                            if (z19) {
                            }
                            if (z23) {
                            }
                            constraintWidget3 = constraintWidget2;
                            i23 = i21;
                            if (z22) {
                            }
                            if (z23) {
                            }
                            if (z23) {
                            }
                            i24 = 0;
                            i30 = 5;
                            if (z23) {
                                return;
                            } else {
                                return;
                            }
                        }
                    }
                    solverVariable15 = solverVariable4;
                    i24 = 0;
                    z23 = z2;
                    i30 = 5;
                    if (z23) {
                    }
                }
                if (i15 >= i16 && z2 && z17) {
                    linearSystem.addGreaterThan(solverVariable10, solverVariable7, i14, 8);
                    boolean z30 = z || this.mBaseline.mTarget == null;
                    if (z || (constraintAnchor3 = this.mBaseline.mTarget) == null) {
                        z18 = z30;
                    } else {
                        ConstraintWidget constraintWidget8 = constraintAnchor3.mOwner;
                        if (constraintWidget8.mDimensionRatio != 0.0f) {
                            DimensionBehaviour[] dimensionBehaviourArr = constraintWidget8.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[i14];
                            DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
                            if (dimensionBehaviour2 == dimensionBehaviour3 && dimensionBehaviourArr[1] == dimensionBehaviour3) {
                                z18 = true;
                            }
                        }
                        z18 = false;
                    }
                    if (z18) {
                        linearSystem.addGreaterThan(solverVariable8, solverVariable9, i14, 8);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        z15 = isConnected2;
        if (z14) {
        }
        if (z11) {
        }
        if (i15 >= i16) {
        }
    }

    private boolean isChainHead(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        int i2 = i * 2;
        ConstraintAnchor[] constraintAnchorArr = this.mListAnchors;
        ConstraintAnchor constraintAnchor3 = constraintAnchorArr[i2];
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
        if (constraintAnchor4 != null && constraintAnchor4.mTarget != constraintAnchor3 && (constraintAnchor2 = (constraintAnchor = constraintAnchorArr[i2 + 1]).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
            return true;
        }
        return false;
    }

    private void serializeAnchor(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("',");
        sb.append(constraintAnchor.mMargin);
        sb.append(",");
        sb.append(constraintAnchor.mGoneMargin);
        sb.append(",");
        sb.append(" ] ,\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, float f, float f2) {
        if (f == f2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(f);
        sb.append(",\n");
    }

    private void serializeCircle(StringBuilder sb, ConstraintAnchor constraintAnchor, float f) {
        if (constraintAnchor.mTarget != null && !Float.isNaN(f)) {
            sb.append("circle : [ '");
            sb.append(constraintAnchor.mTarget);
            sb.append("',");
            sb.append(constraintAnchor.mMargin);
            sb.append(",");
            sb.append(f);
            sb.append(",");
            sb.append(" ] ,\n");
        }
    }

    private void serializeDimensionRatio(StringBuilder sb, String str, float f, int i) {
        if (f == 0.0f) {
            return;
        }
        sb.append(str);
        sb.append(" :  [");
        sb.append(f);
        sb.append(",");
        sb.append(i);
        sb.append("");
        sb.append("],\n");
    }

    private void serializeSize(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "size", i, Integer.MIN_VALUE);
        serializeAttribute(sb, "min", i2, 0);
        serializeAttribute(sb, "max", i3, Integer.MAX_VALUE);
        serializeAttribute(sb, "matchMin", i5, 0);
        serializeAttribute(sb, "matchDef", i6, 0);
        serializeAttribute(sb, "matchPercent", i6, 1);
        serializeAttribute(sb, "matchConstraintPercent", f, 1.0f);
        serializeAttribute(sb, "weight", f2, 1.0f);
        serializeAttribute(sb, "override", i4, 1);
        sb.append("},\n");
    }

    public void addChildrenToSolverByDependency(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, HashSet<ConstraintWidget> hashSet, int i, boolean z) {
        if (z) {
            if (!hashSet.contains(this)) {
                return;
            }
            Optimizer.checkMatchParent(constraintWidgetContainer, linearSystem, this);
            hashSet.remove(this);
            addToSolver(linearSystem, constraintWidgetContainer.optimizeFor(64));
        }
        if (i == 0) {
            HashSet<ConstraintAnchor> dependents = this.mLeft.getDependents();
            if (dependents != null) {
                Iterator<ConstraintAnchor> it = dependents.iterator();
                while (it.hasNext()) {
                    it.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
            }
            HashSet<ConstraintAnchor> dependents2 = this.mRight.getDependents();
            if (dependents2 != null) {
                Iterator<ConstraintAnchor> it2 = dependents2.iterator();
                while (it2.hasNext()) {
                    it2.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
                }
                return;
            }
            return;
        }
        HashSet<ConstraintAnchor> dependents3 = this.mTop.getDependents();
        if (dependents3 != null) {
            Iterator<ConstraintAnchor> it3 = dependents3.iterator();
            while (it3.hasNext()) {
                it3.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents4 = this.mBottom.getDependents();
        if (dependents4 != null) {
            Iterator<ConstraintAnchor> it4 = dependents4.iterator();
            while (it4.hasNext()) {
                it4.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
        HashSet<ConstraintAnchor> dependents5 = this.mBaseline.getDependents();
        if (dependents5 != null) {
            Iterator<ConstraintAnchor> it5 = dependents5.iterator();
            while (it5.hasNext()) {
                it5.next().mOwner.addChildrenToSolverByDependency(constraintWidgetContainer, linearSystem, hashSet, i, true);
            }
        }
    }

    public boolean addFirst() {
        if (!(this instanceof VirtualLayout) && !(this instanceof Guideline)) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0551  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x05cb  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:227:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x05ed  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0554  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03e7  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:303:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addToSolver(LinearSystem linearSystem, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        ConstraintWidget constraintWidget;
        ConstraintWidget constraintWidget2;
        Metrics metrics;
        boolean z5;
        boolean z6;
        int i;
        int i2;
        int i3;
        int i4;
        DimensionBehaviour dimensionBehaviour;
        DimensionBehaviour dimensionBehaviour2;
        int i5;
        boolean z7;
        DimensionBehaviour dimensionBehaviour3;
        int i6;
        boolean z8;
        float f;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        boolean z9;
        int i13;
        boolean z10;
        boolean z11;
        DimensionBehaviour dimensionBehaviour4;
        DimensionBehaviour dimensionBehaviour5;
        boolean z12;
        int i14;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        DimensionBehaviour dimensionBehaviour6;
        DimensionBehaviour dimensionBehaviour7;
        SolverVariable solverVariable;
        SolverVariable solverVariable2;
        SolverVariable solverVariable3;
        SolverVariable solverVariable4;
        SolverVariable solverVariable5;
        boolean z17;
        LinearSystem linearSystem2;
        SolverVariable solverVariable6;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        int i15;
        int i16;
        char c;
        boolean z18;
        boolean z19;
        SolverVariable solverVariable9;
        SolverVariable solverVariable10;
        Metrics metrics2;
        boolean z20;
        SolverVariable solverVariable11;
        SolverVariable solverVariable12;
        boolean z21;
        DimensionBehaviour[] dimensionBehaviourArr;
        boolean z22;
        VerticalWidgetRun verticalWidgetRun;
        DependencyNode dependencyNode;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        SolverVariable solverVariable13;
        ConstraintWidget constraintWidget5;
        SolverVariable solverVariable14;
        DimensionBehaviour[] dimensionBehaviourArr2;
        boolean z23;
        HorizontalWidgetRun horizontalWidgetRun;
        DependencyNode dependencyNode2;
        int i17;
        int i18;
        boolean isInHorizontalChain;
        boolean isInVerticalChain;
        HorizontalWidgetRun horizontalWidgetRun2;
        VerticalWidgetRun verticalWidgetRun2;
        DependencyNode dependencyNode3;
        boolean[] zArr;
        boolean z24;
        boolean z25;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        SolverVariable createObjectVariable5 = linearSystem.createObjectVariable(this.mBaseline);
        ConstraintWidget constraintWidget6 = this.mParent;
        if (constraintWidget6 != null) {
            if (constraintWidget6 != null && constraintWidget6.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT) {
                z24 = true;
            } else {
                z24 = false;
            }
            if (constraintWidget6 != null && constraintWidget6.mListDimensionBehaviors[1] == DimensionBehaviour.WRAP_CONTENT) {
                z25 = true;
            } else {
                z25 = false;
            }
            int i19 = this.mWrapBehaviorInParent;
            if (i19 != 1) {
                if (i19 != 2) {
                    if (i19 != 3) {
                        z3 = z25;
                        z2 = z24;
                    }
                } else {
                    z3 = z25;
                    z2 = false;
                }
                if (this.mVisibility == 8 && !this.mAnimated && !hasDependencies()) {
                    zArr = this.mIsInBarrier;
                    if (!zArr[0] && !zArr[1]) {
                        return;
                    }
                }
                z4 = this.mResolvedHorizontal;
                if (!z4 || this.mResolvedVertical) {
                    if (z4) {
                        linearSystem.addEquality(createObjectVariable, this.mX);
                        linearSystem.addEquality(createObjectVariable2, this.mX + this.mWidth);
                        if (z2 && (constraintWidget2 = this.mParent) != null) {
                            if (this.mOptimizeWrapOnResolved) {
                                ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget2;
                                constraintWidgetContainer.addHorizontalWrapMinVariable(this.mLeft);
                                constraintWidgetContainer.addHorizontalWrapMaxVariable(this.mRight);
                            } else {
                                linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget2.mRight), createObjectVariable2, 0, 5);
                            }
                        }
                    }
                    if (this.mResolvedVertical) {
                        linearSystem.addEquality(createObjectVariable3, this.mY);
                        linearSystem.addEquality(createObjectVariable4, this.mY + this.mHeight);
                        if (this.mBaseline.hasDependents()) {
                            linearSystem.addEquality(createObjectVariable5, this.mY + this.mBaselineDistance);
                        }
                        if (z3 && (constraintWidget = this.mParent) != null) {
                            if (this.mOptimizeWrapOnResolved) {
                                ConstraintWidgetContainer constraintWidgetContainer2 = (ConstraintWidgetContainer) constraintWidget;
                                constraintWidgetContainer2.addVerticalWrapMinVariable(this.mTop);
                                constraintWidgetContainer2.addVerticalWrapMaxVariable(this.mBottom);
                            } else {
                                linearSystem.addGreaterThan(linearSystem.createObjectVariable(constraintWidget.mBottom), createObjectVariable4, 0, 5);
                            }
                        }
                    }
                    if (this.mResolvedHorizontal && this.mResolvedVertical) {
                        this.mResolvedHorizontal = false;
                        this.mResolvedVertical = false;
                        return;
                    }
                }
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                    metrics.widgets++;
                }
                if (z && (horizontalWidgetRun2 = this.mHorizontalRun) != null && (verticalWidgetRun2 = this.mVerticalRun) != null) {
                    dependencyNode3 = horizontalWidgetRun2.start;
                    if (dependencyNode3.resolved && horizontalWidgetRun2.end.resolved && verticalWidgetRun2.start.resolved && verticalWidgetRun2.end.resolved) {
                        if (metrics != null) {
                            metrics.graphSolved++;
                        }
                        linearSystem.addEquality(createObjectVariable, dependencyNode3.value);
                        linearSystem.addEquality(createObjectVariable2, this.mHorizontalRun.end.value);
                        linearSystem.addEquality(createObjectVariable3, this.mVerticalRun.start.value);
                        linearSystem.addEquality(createObjectVariable4, this.mVerticalRun.end.value);
                        linearSystem.addEquality(createObjectVariable5, this.mVerticalRun.baseline.value);
                        if (this.mParent != null) {
                            if (z2 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 8);
                            }
                            if (z3 && this.isTerminalWidget[1] && !isInVerticalChain()) {
                                linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), createObjectVariable4, 0, 8);
                            }
                        }
                        this.mResolvedHorizontal = false;
                        this.mResolvedVertical = false;
                        return;
                    }
                }
                if (metrics != null) {
                    metrics.linearSolved++;
                }
                if (this.mParent != null) {
                    if (isChainHead(0)) {
                        ((ConstraintWidgetContainer) this.mParent).addChain(this, 0);
                        isInHorizontalChain = true;
                    } else {
                        isInHorizontalChain = isInHorizontalChain();
                    }
                    if (isChainHead(1)) {
                        ((ConstraintWidgetContainer) this.mParent).addChain(this, 1);
                        isInVerticalChain = true;
                    } else {
                        isInVerticalChain = isInVerticalChain();
                    }
                    if (!isInHorizontalChain && z2 && this.mVisibility != 8 && this.mLeft.mTarget == null && this.mRight.mTarget == null) {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 1);
                    }
                    if (!isInVerticalChain && z3 && this.mVisibility != 8 && this.mTop.mTarget == null && this.mBottom.mTarget == null && this.mBaseline == null) {
                        linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mBottom), createObjectVariable4, 0, 1);
                    }
                    z6 = isInHorizontalChain;
                    z5 = isInVerticalChain;
                } else {
                    z5 = false;
                    z6 = false;
                }
                i = this.mWidth;
                i2 = this.mMinWidth;
                if (i >= i2) {
                    i2 = i;
                }
                i3 = this.mHeight;
                i4 = this.mMinHeight;
                if (i3 >= i4) {
                    i4 = i3;
                }
                DimensionBehaviour[] dimensionBehaviourArr3 = this.mListDimensionBehaviors;
                dimensionBehaviour = dimensionBehaviourArr3[0];
                dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
                i5 = i2;
                if (dimensionBehaviour != dimensionBehaviour2) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                dimensionBehaviour3 = dimensionBehaviourArr3[1];
                i6 = i4;
                if (dimensionBehaviour3 != dimensionBehaviour2) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                int i20 = this.mDimensionRatioSide;
                this.mResolvedDimensionRatioSide = i20;
                f = this.mDimensionRatio;
                this.mResolvedDimensionRatio = f;
                i7 = this.mMatchConstraintDefaultWidth;
                i8 = this.mMatchConstraintDefaultHeight;
                if (f <= 0.0f && this.mVisibility != 8) {
                    if (dimensionBehaviour == dimensionBehaviour2 && i7 == 0) {
                        i7 = 3;
                    }
                    if (dimensionBehaviour3 == dimensionBehaviour2 && i8 == 0) {
                        i8 = 3;
                    }
                    if (dimensionBehaviour == dimensionBehaviour2 && dimensionBehaviour3 == dimensionBehaviour2) {
                        i18 = 3;
                        if (i7 == 3 && i8 == 3) {
                            setupDimensionRatio(z2, z3, z7, z8);
                            i9 = i7;
                            i10 = i8;
                            i11 = i5;
                            i12 = i6;
                            z9 = true;
                        }
                    } else {
                        i18 = 3;
                    }
                    if (dimensionBehaviour == dimensionBehaviour2 && i7 == i18) {
                        this.mResolvedDimensionRatioSide = 0;
                        i11 = (int) (f * i3);
                        if (dimensionBehaviour3 != dimensionBehaviour2) {
                            i10 = i8;
                            i12 = i6;
                            z9 = false;
                            i9 = 4;
                        } else {
                            i9 = i7;
                            i10 = i8;
                            i12 = i6;
                            z9 = true;
                        }
                    } else {
                        if (dimensionBehaviour3 == dimensionBehaviour2 && i8 == i18) {
                            this.mResolvedDimensionRatioSide = 1;
                            if (i20 == -1) {
                                this.mResolvedDimensionRatio = 1.0f / f;
                            }
                            i12 = (int) (this.mResolvedDimensionRatio * i);
                            i9 = i7;
                            if (dimensionBehaviour != dimensionBehaviour2) {
                                i11 = i5;
                                z9 = false;
                                i10 = 4;
                            } else {
                                i10 = i8;
                                i11 = i5;
                                z9 = true;
                            }
                        }
                        i9 = i7;
                        i10 = i8;
                        i11 = i5;
                        i12 = i6;
                        z9 = true;
                    }
                } else {
                    i9 = i7;
                    i10 = i8;
                    i11 = i5;
                    i12 = i6;
                    z9 = false;
                }
                int[] iArr = this.mResolvedMatchConstraintDefault;
                iArr[0] = i9;
                iArr[1] = i10;
                this.mResolvedHasRatio = z9;
                if (z9) {
                    int i21 = this.mResolvedDimensionRatioSide;
                    i13 = -1;
                    if (i21 == 0 || i21 == -1) {
                        z10 = true;
                        if (!z9 && ((i17 = this.mResolvedDimensionRatioSide) == 1 || i17 == i13)) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        dimensionBehaviour4 = this.mListDimensionBehaviors[0];
                        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                        if (dimensionBehaviour4 != dimensionBehaviour5 && (this instanceof ConstraintWidgetContainer)) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        if (!z12) {
                            i14 = 0;
                        } else {
                            i14 = i11;
                        }
                        z13 = !this.mCenter.isConnected();
                        boolean[] zArr2 = this.mIsInBarrier;
                        z14 = zArr2[0];
                        boolean z26 = zArr2[1];
                        if (this.mHorizontalResolution != 2 && !this.mResolvedHorizontal) {
                            if (z && (horizontalWidgetRun = this.mHorizontalRun) != null) {
                                dependencyNode2 = horizontalWidgetRun.start;
                                if (dependencyNode2.resolved && horizontalWidgetRun.end.resolved) {
                                    if (!z) {
                                        linearSystem.addEquality(createObjectVariable, dependencyNode2.value);
                                        linearSystem.addEquality(createObjectVariable2, this.mHorizontalRun.end.value);
                                        if (this.mParent != null && z2 && this.isTerminalWidget[0] && !isInHorizontalChain()) {
                                            linearSystem.addGreaterThan(linearSystem.createObjectVariable(this.mParent.mRight), createObjectVariable2, 0, 8);
                                        }
                                        z15 = z2;
                                        z16 = z3;
                                        dimensionBehaviour6 = dimensionBehaviour2;
                                        dimensionBehaviour7 = dimensionBehaviour5;
                                        z17 = z9;
                                        solverVariable = createObjectVariable5;
                                        solverVariable2 = createObjectVariable4;
                                        solverVariable3 = createObjectVariable3;
                                        solverVariable4 = createObjectVariable2;
                                        solverVariable5 = createObjectVariable;
                                        if (z && (verticalWidgetRun = this.mVerticalRun) != null) {
                                            dependencyNode = verticalWidgetRun.start;
                                            if (dependencyNode.resolved && verticalWidgetRun.end.resolved) {
                                                linearSystem2 = linearSystem;
                                                solverVariable8 = solverVariable3;
                                                linearSystem2.addEquality(solverVariable8, dependencyNode.value);
                                                solverVariable7 = solverVariable2;
                                                linearSystem2.addEquality(solverVariable7, this.mVerticalRun.end.value);
                                                solverVariable6 = solverVariable;
                                                linearSystem2.addEquality(solverVariable6, this.mVerticalRun.baseline.value);
                                                constraintWidget3 = this.mParent;
                                                if (constraintWidget3 == null && !z5 && z16) {
                                                    c = 1;
                                                    if (this.isTerminalWidget[1]) {
                                                        i15 = 8;
                                                        i16 = 0;
                                                        linearSystem2.addGreaterThan(linearSystem2.createObjectVariable(constraintWidget3.mBottom), solverVariable7, 0, 8);
                                                    } else {
                                                        i15 = 8;
                                                        i16 = 0;
                                                    }
                                                } else {
                                                    i15 = 8;
                                                    i16 = 0;
                                                    c = 1;
                                                }
                                                z18 = false;
                                                if (this.mVerticalResolution == 2) {
                                                    z19 = false;
                                                } else {
                                                    z19 = z18;
                                                }
                                                if (!z19 && !this.mResolvedVertical) {
                                                    if (this.mListDimensionBehaviors[c] == dimensionBehaviour7 && (this instanceof ConstraintWidgetContainer)) {
                                                        z20 = true;
                                                    } else {
                                                        z20 = false;
                                                    }
                                                    if (z20) {
                                                        i12 = 0;
                                                    }
                                                    ConstraintWidget constraintWidget7 = this.mParent;
                                                    if (constraintWidget7 != null) {
                                                        solverVariable11 = linearSystem2.createObjectVariable(constraintWidget7.mBottom);
                                                    } else {
                                                        solverVariable11 = null;
                                                    }
                                                    ConstraintWidget constraintWidget8 = this.mParent;
                                                    if (constraintWidget8 != null) {
                                                        solverVariable12 = linearSystem2.createObjectVariable(constraintWidget8.mTop);
                                                    } else {
                                                        solverVariable12 = null;
                                                    }
                                                    if (this.mBaselineDistance > 0 || this.mVisibility == i15) {
                                                        ConstraintAnchor constraintAnchor = this.mBaseline;
                                                        if (constraintAnchor.mTarget != null) {
                                                            linearSystem2.addEquality(solverVariable6, solverVariable8, getBaselineDistance(), i15);
                                                            linearSystem2.addEquality(solverVariable6, linearSystem2.createObjectVariable(this.mBaseline.mTarget), this.mBaseline.getMargin(), i15);
                                                            if (z16) {
                                                                linearSystem2.addGreaterThan(solverVariable11, linearSystem2.createObjectVariable(this.mBottom), i16, 5);
                                                            }
                                                            z21 = false;
                                                            boolean z27 = this.isTerminalWidget[c];
                                                            dimensionBehaviourArr = this.mListDimensionBehaviors;
                                                            DimensionBehaviour dimensionBehaviour8 = dimensionBehaviourArr[c];
                                                            ConstraintAnchor constraintAnchor2 = this.mTop;
                                                            ConstraintAnchor constraintAnchor3 = this.mBottom;
                                                            int i22 = this.mY;
                                                            int i23 = this.mMinHeight;
                                                            int i24 = this.mMaxDimension[c];
                                                            float f2 = this.mVerticalBiasPercent;
                                                            if (dimensionBehaviourArr[0] != dimensionBehaviour6) {
                                                                z22 = true;
                                                            } else {
                                                                z22 = false;
                                                            }
                                                            solverVariable9 = solverVariable7;
                                                            solverVariable10 = solverVariable8;
                                                            applyConstraints(linearSystem, false, z16, z15, z27, solverVariable12, solverVariable11, dimensionBehaviour8, z20, constraintAnchor2, constraintAnchor3, i22, i12, i23, i24, f2, z11, z22, z5, z6, z26, i10, i9, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z21);
                                                        } else if (this.mVisibility == i15) {
                                                            linearSystem2.addEquality(solverVariable6, solverVariable8, constraintAnchor.getMargin(), i15);
                                                        } else {
                                                            linearSystem2.addEquality(solverVariable6, solverVariable8, getBaselineDistance(), i15);
                                                        }
                                                    }
                                                    z21 = z13;
                                                    boolean z272 = this.isTerminalWidget[c];
                                                    dimensionBehaviourArr = this.mListDimensionBehaviors;
                                                    DimensionBehaviour dimensionBehaviour82 = dimensionBehaviourArr[c];
                                                    ConstraintAnchor constraintAnchor22 = this.mTop;
                                                    ConstraintAnchor constraintAnchor32 = this.mBottom;
                                                    int i222 = this.mY;
                                                    int i232 = this.mMinHeight;
                                                    int i242 = this.mMaxDimension[c];
                                                    float f22 = this.mVerticalBiasPercent;
                                                    if (dimensionBehaviourArr[0] != dimensionBehaviour6) {
                                                    }
                                                    solverVariable9 = solverVariable7;
                                                    solverVariable10 = solverVariable8;
                                                    applyConstraints(linearSystem, false, z16, z15, z272, solverVariable12, solverVariable11, dimensionBehaviour82, z20, constraintAnchor22, constraintAnchor32, i222, i12, i232, i242, f22, z11, z22, z5, z6, z26, i10, i9, this.mMatchConstraintMinHeight, this.mMatchConstraintMaxHeight, this.mMatchConstraintPercentHeight, z21);
                                                } else {
                                                    solverVariable9 = solverVariable7;
                                                    solverVariable10 = solverVariable8;
                                                }
                                                if (z17) {
                                                    if (this.mResolvedDimensionRatioSide == 1) {
                                                        linearSystem.addRatio(solverVariable9, solverVariable10, solverVariable4, solverVariable5, this.mResolvedDimensionRatio, 8);
                                                    } else {
                                                        linearSystem.addRatio(solverVariable4, solverVariable5, solverVariable9, solverVariable10, this.mResolvedDimensionRatio, 8);
                                                    }
                                                }
                                                if (this.mCenter.isConnected()) {
                                                    linearSystem.addCenterPoint(this, this.mCenter.getTarget().getOwner(), (float) Math.toRadians(this.mCircleConstraintAngle + 90.0f), this.mCenter.getMargin());
                                                }
                                                this.mResolvedHorizontal = false;
                                                this.mResolvedVertical = false;
                                                metrics2 = LinearSystem.sMetrics;
                                                if (metrics2 != null) {
                                                    metrics2.mEquations = linearSystem.getNumEquations();
                                                    LinearSystem.sMetrics.mVariables = linearSystem.getNumVariables();
                                                    return;
                                                }
                                                return;
                                            }
                                        }
                                        linearSystem2 = linearSystem;
                                        solverVariable6 = solverVariable;
                                        solverVariable7 = solverVariable2;
                                        solverVariable8 = solverVariable3;
                                        i15 = 8;
                                        i16 = 0;
                                        c = 1;
                                        z18 = true;
                                        if (this.mVerticalResolution == 2) {
                                        }
                                        if (!z19) {
                                        }
                                        solverVariable9 = solverVariable7;
                                        solverVariable10 = solverVariable8;
                                        if (z17) {
                                        }
                                        if (this.mCenter.isConnected()) {
                                        }
                                        this.mResolvedHorizontal = false;
                                        this.mResolvedVertical = false;
                                        metrics2 = LinearSystem.sMetrics;
                                        if (metrics2 != null) {
                                        }
                                    }
                                }
                            }
                            constraintWidget4 = this.mParent;
                            if (constraintWidget4 == null) {
                                solverVariable13 = linearSystem.createObjectVariable(constraintWidget4.mRight);
                            } else {
                                solverVariable13 = null;
                            }
                            constraintWidget5 = this.mParent;
                            if (constraintWidget5 == null) {
                                solverVariable14 = linearSystem.createObjectVariable(constraintWidget5.mLeft);
                            } else {
                                solverVariable14 = null;
                            }
                            boolean z28 = this.isTerminalWidget[0];
                            dimensionBehaviourArr2 = this.mListDimensionBehaviors;
                            DimensionBehaviour dimensionBehaviour9 = dimensionBehaviourArr2[0];
                            ConstraintAnchor constraintAnchor4 = this.mLeft;
                            ConstraintAnchor constraintAnchor5 = this.mRight;
                            int i25 = this.mX;
                            int i26 = this.mMinWidth;
                            int i27 = this.mMaxDimension[0];
                            float f3 = this.mHorizontalBiasPercent;
                            if (dimensionBehaviourArr2[1] != dimensionBehaviour2) {
                                z23 = true;
                            } else {
                                z23 = false;
                            }
                            z15 = z2;
                            z16 = z3;
                            dimensionBehaviour6 = dimensionBehaviour2;
                            solverVariable = createObjectVariable5;
                            solverVariable2 = createObjectVariable4;
                            solverVariable3 = createObjectVariable3;
                            solverVariable4 = createObjectVariable2;
                            dimensionBehaviour7 = dimensionBehaviour5;
                            solverVariable5 = createObjectVariable;
                            z17 = z9;
                            applyConstraints(linearSystem, true, z2, z3, z28, solverVariable14, solverVariable13, dimensionBehaviour9, z12, constraintAnchor4, constraintAnchor5, i25, i14, i26, i27, f3, z10, z23, z6, z5, z14, i9, i10, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z13);
                            if (z) {
                                dependencyNode = verticalWidgetRun.start;
                                if (dependencyNode.resolved) {
                                    linearSystem2 = linearSystem;
                                    solverVariable8 = solverVariable3;
                                    linearSystem2.addEquality(solverVariable8, dependencyNode.value);
                                    solverVariable7 = solverVariable2;
                                    linearSystem2.addEquality(solverVariable7, this.mVerticalRun.end.value);
                                    solverVariable6 = solverVariable;
                                    linearSystem2.addEquality(solverVariable6, this.mVerticalRun.baseline.value);
                                    constraintWidget3 = this.mParent;
                                    if (constraintWidget3 == null) {
                                    }
                                    i15 = 8;
                                    i16 = 0;
                                    c = 1;
                                    z18 = false;
                                    if (this.mVerticalResolution == 2) {
                                    }
                                    if (!z19) {
                                    }
                                    solverVariable9 = solverVariable7;
                                    solverVariable10 = solverVariable8;
                                    if (z17) {
                                    }
                                    if (this.mCenter.isConnected()) {
                                    }
                                    this.mResolvedHorizontal = false;
                                    this.mResolvedVertical = false;
                                    metrics2 = LinearSystem.sMetrics;
                                    if (metrics2 != null) {
                                    }
                                }
                            }
                            linearSystem2 = linearSystem;
                            solverVariable6 = solverVariable;
                            solverVariable7 = solverVariable2;
                            solverVariable8 = solverVariable3;
                            i15 = 8;
                            i16 = 0;
                            c = 1;
                            z18 = true;
                            if (this.mVerticalResolution == 2) {
                            }
                            if (!z19) {
                            }
                            solverVariable9 = solverVariable7;
                            solverVariable10 = solverVariable8;
                            if (z17) {
                            }
                            if (this.mCenter.isConnected()) {
                            }
                            this.mResolvedHorizontal = false;
                            this.mResolvedVertical = false;
                            metrics2 = LinearSystem.sMetrics;
                            if (metrics2 != null) {
                            }
                        }
                        z15 = z2;
                        z16 = z3;
                        dimensionBehaviour6 = dimensionBehaviour2;
                        dimensionBehaviour7 = dimensionBehaviour5;
                        solverVariable = createObjectVariable5;
                        solverVariable2 = createObjectVariable4;
                        solverVariable3 = createObjectVariable3;
                        solverVariable4 = createObjectVariable2;
                        solverVariable5 = createObjectVariable;
                        z17 = z9;
                        if (z) {
                        }
                        linearSystem2 = linearSystem;
                        solverVariable6 = solverVariable;
                        solverVariable7 = solverVariable2;
                        solverVariable8 = solverVariable3;
                        i15 = 8;
                        i16 = 0;
                        c = 1;
                        z18 = true;
                        if (this.mVerticalResolution == 2) {
                        }
                        if (!z19) {
                        }
                        solverVariable9 = solverVariable7;
                        solverVariable10 = solverVariable8;
                        if (z17) {
                        }
                        if (this.mCenter.isConnected()) {
                        }
                        this.mResolvedHorizontal = false;
                        this.mResolvedVertical = false;
                        metrics2 = LinearSystem.sMetrics;
                        if (metrics2 != null) {
                        }
                    }
                } else {
                    i13 = -1;
                }
                z10 = false;
                if (!z9) {
                }
                z11 = false;
                dimensionBehaviour4 = this.mListDimensionBehaviors[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 != dimensionBehaviour5) {
                }
                z12 = false;
                if (!z12) {
                }
                z13 = !this.mCenter.isConnected();
                boolean[] zArr22 = this.mIsInBarrier;
                z14 = zArr22[0];
                boolean z262 = zArr22[1];
                if (this.mHorizontalResolution != 2) {
                    if (z) {
                        dependencyNode2 = horizontalWidgetRun.start;
                        if (dependencyNode2.resolved) {
                            if (!z) {
                            }
                        }
                    }
                    constraintWidget4 = this.mParent;
                    if (constraintWidget4 == null) {
                    }
                    constraintWidget5 = this.mParent;
                    if (constraintWidget5 == null) {
                    }
                    boolean z282 = this.isTerminalWidget[0];
                    dimensionBehaviourArr2 = this.mListDimensionBehaviors;
                    DimensionBehaviour dimensionBehaviour92 = dimensionBehaviourArr2[0];
                    ConstraintAnchor constraintAnchor42 = this.mLeft;
                    ConstraintAnchor constraintAnchor52 = this.mRight;
                    int i252 = this.mX;
                    int i262 = this.mMinWidth;
                    int i272 = this.mMaxDimension[0];
                    float f32 = this.mHorizontalBiasPercent;
                    if (dimensionBehaviourArr2[1] != dimensionBehaviour2) {
                    }
                    z15 = z2;
                    z16 = z3;
                    dimensionBehaviour6 = dimensionBehaviour2;
                    solverVariable = createObjectVariable5;
                    solverVariable2 = createObjectVariable4;
                    solverVariable3 = createObjectVariable3;
                    solverVariable4 = createObjectVariable2;
                    dimensionBehaviour7 = dimensionBehaviour5;
                    solverVariable5 = createObjectVariable;
                    z17 = z9;
                    applyConstraints(linearSystem, true, z2, z3, z282, solverVariable14, solverVariable13, dimensionBehaviour92, z12, constraintAnchor42, constraintAnchor52, i252, i14, i262, i272, f32, z10, z23, z6, z5, z14, i9, i10, this.mMatchConstraintMinWidth, this.mMatchConstraintMaxWidth, this.mMatchConstraintPercentWidth, z13);
                    if (z) {
                    }
                    linearSystem2 = linearSystem;
                    solverVariable6 = solverVariable;
                    solverVariable7 = solverVariable2;
                    solverVariable8 = solverVariable3;
                    i15 = 8;
                    i16 = 0;
                    c = 1;
                    z18 = true;
                    if (this.mVerticalResolution == 2) {
                    }
                    if (!z19) {
                    }
                    solverVariable9 = solverVariable7;
                    solverVariable10 = solverVariable8;
                    if (z17) {
                    }
                    if (this.mCenter.isConnected()) {
                    }
                    this.mResolvedHorizontal = false;
                    this.mResolvedVertical = false;
                    metrics2 = LinearSystem.sMetrics;
                    if (metrics2 != null) {
                    }
                }
                z15 = z2;
                z16 = z3;
                dimensionBehaviour6 = dimensionBehaviour2;
                dimensionBehaviour7 = dimensionBehaviour5;
                solverVariable = createObjectVariable5;
                solverVariable2 = createObjectVariable4;
                solverVariable3 = createObjectVariable3;
                solverVariable4 = createObjectVariable2;
                solverVariable5 = createObjectVariable;
                z17 = z9;
                if (z) {
                }
                linearSystem2 = linearSystem;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                solverVariable8 = solverVariable3;
                i15 = 8;
                i16 = 0;
                c = 1;
                z18 = true;
                if (this.mVerticalResolution == 2) {
                }
                if (!z19) {
                }
                solverVariable9 = solverVariable7;
                solverVariable10 = solverVariable8;
                if (z17) {
                }
                if (this.mCenter.isConnected()) {
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics2 = LinearSystem.sMetrics;
                if (metrics2 != null) {
                }
            } else {
                z2 = z24;
                z3 = false;
                if (this.mVisibility == 8) {
                    zArr = this.mIsInBarrier;
                    if (!zArr[0]) {
                        return;
                    }
                }
                z4 = this.mResolvedHorizontal;
                if (!z4) {
                }
                if (z4) {
                }
                if (this.mResolvedVertical) {
                }
                if (this.mResolvedHorizontal) {
                    this.mResolvedHorizontal = false;
                    this.mResolvedVertical = false;
                    return;
                }
                metrics = LinearSystem.sMetrics;
                if (metrics != null) {
                }
                if (z) {
                    dependencyNode3 = horizontalWidgetRun2.start;
                    if (dependencyNode3.resolved) {
                        if (metrics != null) {
                        }
                        linearSystem.addEquality(createObjectVariable, dependencyNode3.value);
                        linearSystem.addEquality(createObjectVariable2, this.mHorizontalRun.end.value);
                        linearSystem.addEquality(createObjectVariable3, this.mVerticalRun.start.value);
                        linearSystem.addEquality(createObjectVariable4, this.mVerticalRun.end.value);
                        linearSystem.addEquality(createObjectVariable5, this.mVerticalRun.baseline.value);
                        if (this.mParent != null) {
                        }
                        this.mResolvedHorizontal = false;
                        this.mResolvedVertical = false;
                        return;
                    }
                }
                if (metrics != null) {
                }
                if (this.mParent != null) {
                }
                i = this.mWidth;
                i2 = this.mMinWidth;
                if (i >= i2) {
                }
                i3 = this.mHeight;
                i4 = this.mMinHeight;
                if (i3 >= i4) {
                }
                DimensionBehaviour[] dimensionBehaviourArr32 = this.mListDimensionBehaviors;
                dimensionBehaviour = dimensionBehaviourArr32[0];
                dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
                i5 = i2;
                if (dimensionBehaviour != dimensionBehaviour2) {
                }
                dimensionBehaviour3 = dimensionBehaviourArr32[1];
                i6 = i4;
                if (dimensionBehaviour3 != dimensionBehaviour2) {
                }
                int i202 = this.mDimensionRatioSide;
                this.mResolvedDimensionRatioSide = i202;
                f = this.mDimensionRatio;
                this.mResolvedDimensionRatio = f;
                i7 = this.mMatchConstraintDefaultWidth;
                i8 = this.mMatchConstraintDefaultHeight;
                if (f <= 0.0f) {
                }
                i9 = i7;
                i10 = i8;
                i11 = i5;
                i12 = i6;
                z9 = false;
                int[] iArr2 = this.mResolvedMatchConstraintDefault;
                iArr2[0] = i9;
                iArr2[1] = i10;
                this.mResolvedHasRatio = z9;
                if (z9) {
                }
                z10 = false;
                if (!z9) {
                }
                z11 = false;
                dimensionBehaviour4 = this.mListDimensionBehaviors[0];
                dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
                if (dimensionBehaviour4 != dimensionBehaviour5) {
                }
                z12 = false;
                if (!z12) {
                }
                z13 = !this.mCenter.isConnected();
                boolean[] zArr222 = this.mIsInBarrier;
                z14 = zArr222[0];
                boolean z2622 = zArr222[1];
                if (this.mHorizontalResolution != 2) {
                }
                z15 = z2;
                z16 = z3;
                dimensionBehaviour6 = dimensionBehaviour2;
                dimensionBehaviour7 = dimensionBehaviour5;
                solverVariable = createObjectVariable5;
                solverVariable2 = createObjectVariable4;
                solverVariable3 = createObjectVariable3;
                solverVariable4 = createObjectVariable2;
                solverVariable5 = createObjectVariable;
                z17 = z9;
                if (z) {
                }
                linearSystem2 = linearSystem;
                solverVariable6 = solverVariable;
                solverVariable7 = solverVariable2;
                solverVariable8 = solverVariable3;
                i15 = 8;
                i16 = 0;
                c = 1;
                z18 = true;
                if (this.mVerticalResolution == 2) {
                }
                if (!z19) {
                }
                solverVariable9 = solverVariable7;
                solverVariable10 = solverVariable8;
                if (z17) {
                }
                if (this.mCenter.isConnected()) {
                }
                this.mResolvedHorizontal = false;
                this.mResolvedVertical = false;
                metrics2 = LinearSystem.sMetrics;
                if (metrics2 != null) {
                }
            }
        }
        z2 = false;
        z3 = false;
        if (this.mVisibility == 8) {
        }
        z4 = this.mResolvedHorizontal;
        if (!z4) {
        }
        if (z4) {
        }
        if (this.mResolvedVertical) {
        }
        if (this.mResolvedHorizontal) {
        }
        metrics = LinearSystem.sMetrics;
        if (metrics != null) {
        }
        if (z) {
        }
        if (metrics != null) {
        }
        if (this.mParent != null) {
        }
        i = this.mWidth;
        i2 = this.mMinWidth;
        if (i >= i2) {
        }
        i3 = this.mHeight;
        i4 = this.mMinHeight;
        if (i3 >= i4) {
        }
        DimensionBehaviour[] dimensionBehaviourArr322 = this.mListDimensionBehaviors;
        dimensionBehaviour = dimensionBehaviourArr322[0];
        dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        i5 = i2;
        if (dimensionBehaviour != dimensionBehaviour2) {
        }
        dimensionBehaviour3 = dimensionBehaviourArr322[1];
        i6 = i4;
        if (dimensionBehaviour3 != dimensionBehaviour2) {
        }
        int i2022 = this.mDimensionRatioSide;
        this.mResolvedDimensionRatioSide = i2022;
        f = this.mDimensionRatio;
        this.mResolvedDimensionRatio = f;
        i7 = this.mMatchConstraintDefaultWidth;
        i8 = this.mMatchConstraintDefaultHeight;
        if (f <= 0.0f) {
        }
        i9 = i7;
        i10 = i8;
        i11 = i5;
        i12 = i6;
        z9 = false;
        int[] iArr22 = this.mResolvedMatchConstraintDefault;
        iArr22[0] = i9;
        iArr22[1] = i10;
        this.mResolvedHasRatio = z9;
        if (z9) {
        }
        z10 = false;
        if (!z9) {
        }
        z11 = false;
        dimensionBehaviour4 = this.mListDimensionBehaviors[0];
        dimensionBehaviour5 = DimensionBehaviour.WRAP_CONTENT;
        if (dimensionBehaviour4 != dimensionBehaviour5) {
        }
        z12 = false;
        if (!z12) {
        }
        z13 = !this.mCenter.isConnected();
        boolean[] zArr2222 = this.mIsInBarrier;
        z14 = zArr2222[0];
        boolean z26222 = zArr2222[1];
        if (this.mHorizontalResolution != 2) {
        }
        z15 = z2;
        z16 = z3;
        dimensionBehaviour6 = dimensionBehaviour2;
        dimensionBehaviour7 = dimensionBehaviour5;
        solverVariable = createObjectVariable5;
        solverVariable2 = createObjectVariable4;
        solverVariable3 = createObjectVariable3;
        solverVariable4 = createObjectVariable2;
        solverVariable5 = createObjectVariable;
        z17 = z9;
        if (z) {
        }
        linearSystem2 = linearSystem;
        solverVariable6 = solverVariable;
        solverVariable7 = solverVariable2;
        solverVariable8 = solverVariable3;
        i15 = 8;
        i16 = 0;
        c = 1;
        z18 = true;
        if (this.mVerticalResolution == 2) {
        }
        if (!z19) {
        }
        solverVariable9 = solverVariable7;
        solverVariable10 = solverVariable8;
        if (z17) {
        }
        if (this.mCenter.isConnected()) {
        }
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        metrics2 = LinearSystem.sMetrics;
        if (metrics2 != null) {
        }
    }

    public boolean allowedInBarrier() {
        if (this.mVisibility != 8) {
            return true;
        }
        return false;
    }

    public void connect(ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i) {
        if (constraintAnchor.getOwner() == this) {
            connect(constraintAnchor.getType(), constraintAnchor2.getOwner(), constraintAnchor2.getType(), i);
        }
    }

    public void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        immediateConnect(type, constraintWidget, type, i, 0);
        this.mCircleConstraintAngle = f;
    }

    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        this.mHorizontalResolution = constraintWidget.mHorizontalResolution;
        this.mVerticalResolution = constraintWidget.mVerticalResolution;
        this.mMatchConstraintDefaultWidth = constraintWidget.mMatchConstraintDefaultWidth;
        this.mMatchConstraintDefaultHeight = constraintWidget.mMatchConstraintDefaultHeight;
        int[] iArr = this.mResolvedMatchConstraintDefault;
        int[] iArr2 = constraintWidget.mResolvedMatchConstraintDefault;
        iArr[0] = iArr2[0];
        iArr[1] = iArr2[1];
        this.mMatchConstraintMinWidth = constraintWidget.mMatchConstraintMinWidth;
        this.mMatchConstraintMaxWidth = constraintWidget.mMatchConstraintMaxWidth;
        this.mMatchConstraintMinHeight = constraintWidget.mMatchConstraintMinHeight;
        this.mMatchConstraintMaxHeight = constraintWidget.mMatchConstraintMaxHeight;
        this.mMatchConstraintPercentHeight = constraintWidget.mMatchConstraintPercentHeight;
        this.mIsWidthWrapContent = constraintWidget.mIsWidthWrapContent;
        this.mIsHeightWrapContent = constraintWidget.mIsHeightWrapContent;
        this.mResolvedDimensionRatioSide = constraintWidget.mResolvedDimensionRatioSide;
        this.mResolvedDimensionRatio = constraintWidget.mResolvedDimensionRatio;
        int[] iArr3 = constraintWidget.mMaxDimension;
        this.mMaxDimension = Arrays.copyOf(iArr3, iArr3.length);
        this.mCircleConstraintAngle = constraintWidget.mCircleConstraintAngle;
        this.mHasBaseline = constraintWidget.mHasBaseline;
        this.mInPlaceholder = constraintWidget.mInPlaceholder;
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mListDimensionBehaviors = (DimensionBehaviour[]) Arrays.copyOf(this.mListDimensionBehaviors, 2);
        ConstraintWidget constraintWidget4 = null;
        if (this.mParent == null) {
            constraintWidget2 = null;
        } else {
            constraintWidget2 = hashMap.get(constraintWidget.mParent);
        }
        this.mParent = constraintWidget2;
        this.mWidth = constraintWidget.mWidth;
        this.mHeight = constraintWidget.mHeight;
        this.mDimensionRatio = constraintWidget.mDimensionRatio;
        this.mDimensionRatioSide = constraintWidget.mDimensionRatioSide;
        this.mX = constraintWidget.mX;
        this.mY = constraintWidget.mY;
        this.mRelX = constraintWidget.mRelX;
        this.mRelY = constraintWidget.mRelY;
        this.mOffsetX = constraintWidget.mOffsetX;
        this.mOffsetY = constraintWidget.mOffsetY;
        this.mBaselineDistance = constraintWidget.mBaselineDistance;
        this.mMinWidth = constraintWidget.mMinWidth;
        this.mMinHeight = constraintWidget.mMinHeight;
        this.mHorizontalBiasPercent = constraintWidget.mHorizontalBiasPercent;
        this.mVerticalBiasPercent = constraintWidget.mVerticalBiasPercent;
        this.mCompanionWidget = constraintWidget.mCompanionWidget;
        this.mContainerItemSkip = constraintWidget.mContainerItemSkip;
        this.mVisibility = constraintWidget.mVisibility;
        this.mAnimated = constraintWidget.mAnimated;
        this.mDebugName = constraintWidget.mDebugName;
        this.mType = constraintWidget.mType;
        this.mDistToTop = constraintWidget.mDistToTop;
        this.mDistToLeft = constraintWidget.mDistToLeft;
        this.mDistToRight = constraintWidget.mDistToRight;
        this.mDistToBottom = constraintWidget.mDistToBottom;
        this.mLeftHasCentered = constraintWidget.mLeftHasCentered;
        this.mRightHasCentered = constraintWidget.mRightHasCentered;
        this.mTopHasCentered = constraintWidget.mTopHasCentered;
        this.mBottomHasCentered = constraintWidget.mBottomHasCentered;
        this.mHorizontalWrapVisited = constraintWidget.mHorizontalWrapVisited;
        this.mVerticalWrapVisited = constraintWidget.mVerticalWrapVisited;
        this.mHorizontalChainStyle = constraintWidget.mHorizontalChainStyle;
        this.mVerticalChainStyle = constraintWidget.mVerticalChainStyle;
        this.mHorizontalChainFixedPosition = constraintWidget.mHorizontalChainFixedPosition;
        this.mVerticalChainFixedPosition = constraintWidget.mVerticalChainFixedPosition;
        float[] fArr = this.mWeight;
        float[] fArr2 = constraintWidget.mWeight;
        fArr[0] = fArr2[0];
        fArr[1] = fArr2[1];
        ConstraintWidget[] constraintWidgetArr = this.mListNextMatchConstraintsWidget;
        ConstraintWidget[] constraintWidgetArr2 = constraintWidget.mListNextMatchConstraintsWidget;
        constraintWidgetArr[0] = constraintWidgetArr2[0];
        constraintWidgetArr[1] = constraintWidgetArr2[1];
        ConstraintWidget[] constraintWidgetArr3 = this.mNextChainWidget;
        ConstraintWidget[] constraintWidgetArr4 = constraintWidget.mNextChainWidget;
        constraintWidgetArr3[0] = constraintWidgetArr4[0];
        constraintWidgetArr3[1] = constraintWidgetArr4[1];
        ConstraintWidget constraintWidget5 = constraintWidget.mHorizontalNextWidget;
        if (constraintWidget5 == null) {
            constraintWidget3 = null;
        } else {
            constraintWidget3 = hashMap.get(constraintWidget5);
        }
        this.mHorizontalNextWidget = constraintWidget3;
        ConstraintWidget constraintWidget6 = constraintWidget.mVerticalNextWidget;
        if (constraintWidget6 != null) {
            constraintWidget4 = hashMap.get(constraintWidget6);
        }
        this.mVerticalNextWidget = constraintWidget4;
    }

    public void createObjectVariables(LinearSystem linearSystem) {
        linearSystem.createObjectVariable(this.mLeft);
        linearSystem.createObjectVariable(this.mTop);
        linearSystem.createObjectVariable(this.mRight);
        linearSystem.createObjectVariable(this.mBottom);
        if (this.mBaselineDistance > 0) {
            linearSystem.createObjectVariable(this.mBaseline);
        }
    }

    public void ensureMeasureRequested() {
        this.mMeasureRequested = true;
    }

    public void ensureWidgetRuns() {
        if (this.mHorizontalRun == null) {
            this.mHorizontalRun = new HorizontalWidgetRun(this);
        }
        if (this.mVerticalRun == null) {
            this.mVerticalRun = new VerticalWidgetRun(this);
        }
    }

    public ConstraintAnchor getAnchor(ConstraintAnchor.Type type) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()]) {
            case 1:
                return this.mLeft;
            case 2:
                return this.mTop;
            case 3:
                return this.mRight;
            case 4:
                return this.mBottom;
            case 5:
                return this.mBaseline;
            case 6:
                return this.mCenter;
            case 7:
                return this.mCenterX;
            case 8:
                return this.mCenterY;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public float getBiasPercent(int i) {
        if (i == 0) {
            return this.mHorizontalBiasPercent;
        }
        if (i == 1) {
            return this.mVerticalBiasPercent;
        }
        return -1.0f;
    }

    public int getBottom() {
        return getY() + this.mHeight;
    }

    public Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public int getContainerItemSkip() {
        return this.mContainerItemSkip;
    }

    public String getDebugName() {
        return this.mDebugName;
    }

    public DimensionBehaviour getDimensionBehaviour(int i) {
        if (i == 0) {
            return getHorizontalDimensionBehaviour();
        }
        if (i == 1) {
            return getVerticalDimensionBehaviour();
        }
        return null;
    }

    public float getDimensionRatio() {
        return this.mDimensionRatio;
    }

    public int getDimensionRatioSide() {
        return this.mDimensionRatioSide;
    }

    public boolean getHasBaseline() {
        return this.mHasBaseline;
    }

    public int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public float getHorizontalBiasPercent() {
        return this.mHorizontalBiasPercent;
    }

    public ConstraintWidget getHorizontalChainControlWidget() {
        ConstraintAnchor target;
        ConstraintWidget owner;
        ConstraintAnchor target2;
        if (!isInHorizontalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT);
            if (anchor == null) {
                target = null;
            } else {
                target = anchor.getTarget();
            }
            if (target == null) {
                owner = null;
            } else {
                owner = target.getOwner();
            }
            if (owner == getParent()) {
                return constraintWidget;
            }
            if (owner == null) {
                target2 = null;
            } else {
                target2 = owner.getAnchor(ConstraintAnchor.Type.RIGHT).getTarget();
            }
            if (target2 != null && target2.getOwner() != constraintWidget) {
                constraintWidget2 = constraintWidget;
            } else {
                constraintWidget = owner;
            }
        }
        return constraintWidget2;
    }

    public int getHorizontalChainStyle() {
        return this.mHorizontalChainStyle;
    }

    public DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public int getHorizontalMargin() {
        int i;
        ConstraintAnchor constraintAnchor = this.mLeft;
        if (constraintAnchor != null) {
            i = constraintAnchor.mMargin;
        } else {
            i = 0;
        }
        ConstraintAnchor constraintAnchor2 = this.mRight;
        if (constraintAnchor2 != null) {
            return i + constraintAnchor2.mMargin;
        }
        return i;
    }

    public int getLastHorizontalMeasureSpec() {
        return this.mLastHorizontalMeasureSpec;
    }

    public int getLastVerticalMeasureSpec() {
        return this.mLastVerticalMeasureSpec;
    }

    public int getLeft() {
        return getX();
    }

    public int getLength(int i) {
        if (i == 0) {
            return getWidth();
        }
        if (i == 1) {
            return getHeight();
        }
        return 0;
    }

    public int getMaxHeight() {
        return this.mMaxDimension[1];
    }

    public int getMaxWidth() {
        return this.mMaxDimension[0];
    }

    public int getMinHeight() {
        return this.mMinHeight;
    }

    public int getMinWidth() {
        return this.mMinWidth;
    }

    public ConstraintWidget getNextChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mRight;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3) {
                return constraintAnchor4.mOwner;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mBottom).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
            return constraintAnchor2.mOwner;
        }
        return null;
    }

    public int getOptimizerWrapHeight() {
        int i;
        int i2 = this.mHeight;
        if (this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultHeight == 1) {
                i = Math.max(this.mMatchConstraintMinHeight, i2);
            } else {
                i = this.mMatchConstraintMinHeight;
                if (i > 0) {
                    this.mHeight = i;
                } else {
                    i = 0;
                }
            }
            int i3 = this.mMatchConstraintMaxHeight;
            if (i3 > 0 && i3 < i) {
                return i3;
            }
            return i;
        }
        return i2;
    }

    public int getOptimizerWrapWidth() {
        int i;
        int i2 = this.mWidth;
        if (this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
            if (this.mMatchConstraintDefaultWidth == 1) {
                i = Math.max(this.mMatchConstraintMinWidth, i2);
            } else {
                i = this.mMatchConstraintMinWidth;
                if (i > 0) {
                    this.mWidth = i;
                } else {
                    i = 0;
                }
            }
            int i3 = this.mMatchConstraintMaxWidth;
            if (i3 > 0 && i3 < i) {
                return i3;
            }
            return i;
        }
        return i2;
    }

    public ConstraintWidget getParent() {
        return this.mParent;
    }

    public ConstraintWidget getPreviousChainMember(int i) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3) {
                return constraintAnchor4.mOwner;
            }
            return null;
        }
        if (i == 1 && (constraintAnchor2 = (constraintAnchor = this.mTop).mTarget) != null && constraintAnchor2.mTarget == constraintAnchor) {
            return constraintAnchor2.mOwner;
        }
        return null;
    }

    public int getRelativePositioning(int i) {
        if (i == 0) {
            return this.mRelX;
        }
        if (i == 1) {
            return this.mRelY;
        }
        return 0;
    }

    public int getRight() {
        return getX() + this.mWidth;
    }

    public int getRootX() {
        return this.mX + this.mOffsetX;
    }

    public int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public WidgetRun getRun(int i) {
        if (i == 0) {
            return this.mHorizontalRun;
        }
        if (i == 1) {
            return this.mVerticalRun;
        }
        return null;
    }

    public void getSceneString(StringBuilder sb) {
        sb.append("  " + this.stringId + ":{\n");
        StringBuilder sb2 = new StringBuilder("    actualWidth:");
        sb2.append(this.mWidth);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("    actualHeight:" + this.mHeight);
        sb.append("\n");
        sb.append("    actualLeft:" + this.mX);
        sb.append("\n");
        sb.append("    actualTop:" + this.mY);
        sb.append("\n");
        getSceneString(sb, "left", this.mLeft);
        getSceneString(sb, "top", this.mTop);
        getSceneString(sb, "right", this.mRight);
        getSceneString(sb, "bottom", this.mBottom);
        getSceneString(sb, "baseline", this.mBaseline);
        getSceneString(sb, "centerX", this.mCenterX);
        getSceneString(sb, "centerY", this.mCenterY);
        getSceneString(sb, "    width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mListDimensionBehaviors[0], this.mWeight[0]);
        getSceneString(sb, "    height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mListDimensionBehaviors[1], this.mWeight[1]);
        serializeDimensionRatio(sb, "    dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb, "    horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "    verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "    horizontalChainStyle", this.mHorizontalChainStyle, 0);
        serializeAttribute(sb, "    verticalChainStyle", this.mVerticalChainStyle, 0);
        sb.append("  }");
    }

    public int getTop() {
        return getY();
    }

    public String getType() {
        return this.mType;
    }

    public float getVerticalBiasPercent() {
        return this.mVerticalBiasPercent;
    }

    public ConstraintWidget getVerticalChainControlWidget() {
        ConstraintAnchor target;
        ConstraintWidget owner;
        ConstraintAnchor target2;
        if (!isInVerticalChain()) {
            return null;
        }
        ConstraintWidget constraintWidget = this;
        ConstraintWidget constraintWidget2 = null;
        while (constraintWidget2 == null && constraintWidget != null) {
            ConstraintAnchor anchor = constraintWidget.getAnchor(ConstraintAnchor.Type.TOP);
            if (anchor == null) {
                target = null;
            } else {
                target = anchor.getTarget();
            }
            if (target == null) {
                owner = null;
            } else {
                owner = target.getOwner();
            }
            if (owner == getParent()) {
                return constraintWidget;
            }
            if (owner == null) {
                target2 = null;
            } else {
                target2 = owner.getAnchor(ConstraintAnchor.Type.BOTTOM).getTarget();
            }
            if (target2 != null && target2.getOwner() != constraintWidget) {
                constraintWidget2 = constraintWidget;
            } else {
                constraintWidget = owner;
            }
        }
        return constraintWidget2;
    }

    public int getVerticalChainStyle() {
        return this.mVerticalChainStyle;
    }

    public DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public int getVerticalMargin() {
        int i;
        if (this.mLeft != null) {
            i = this.mTop.mMargin;
        } else {
            i = 0;
        }
        if (this.mRight != null) {
            return i + this.mBottom.mMargin;
        }
        return i;
    }

    public int getVisibility() {
        return this.mVisibility;
    }

    public int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public int getWrapBehaviorInParent() {
        return this.mWrapBehaviorInParent;
    }

    public int getX() {
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).mPaddingLeft + this.mX;
        }
        return this.mX;
    }

    public int getY() {
        ConstraintWidget constraintWidget = this.mParent;
        if (constraintWidget != null && (constraintWidget instanceof ConstraintWidgetContainer)) {
            return ((ConstraintWidgetContainer) constraintWidget).mPaddingTop + this.mY;
        }
        return this.mY;
    }

    public boolean hasBaseline() {
        return this.mHasBaseline;
    }

    public boolean hasDanglingDimension(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (i == 0) {
            if (this.mLeft.mTarget != null) {
                i5 = 1;
            } else {
                i5 = 0;
            }
            if (this.mRight.mTarget != null) {
                i6 = 1;
            } else {
                i6 = 0;
            }
            if (i5 + i6 >= 2) {
                return false;
            }
            return true;
        }
        if (this.mTop.mTarget != null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (this.mBottom.mTarget != null) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i7 = i2 + i3;
        if (this.mBaseline.mTarget != null) {
            i4 = 1;
        } else {
            i4 = 0;
        }
        if (i7 + i4 >= 2) {
            return false;
        }
        return true;
    }

    public boolean hasDependencies() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            if (this.mAnchors.get(i).hasDependents()) {
                return true;
            }
        }
        return false;
    }

    public boolean hasDimensionOverride() {
        if (this.mWidthOverride == -1 && this.mHeightOverride == -1) {
            return false;
        }
        return true;
    }

    public boolean hasResolvedTargets(int i, int i2) {
        ConstraintAnchor constraintAnchor;
        ConstraintAnchor constraintAnchor2;
        if (i == 0) {
            ConstraintAnchor constraintAnchor3 = this.mLeft.mTarget;
            if (constraintAnchor3 != null && constraintAnchor3.hasFinalValue() && (constraintAnchor2 = this.mRight.mTarget) != null && constraintAnchor2.hasFinalValue()) {
                if ((this.mRight.mTarget.getFinalValue() - this.mRight.getMargin()) - (this.mLeft.getMargin() + this.mLeft.mTarget.getFinalValue()) >= i2) {
                    return true;
                }
                return false;
            }
        } else {
            ConstraintAnchor constraintAnchor4 = this.mTop.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.hasFinalValue() && (constraintAnchor = this.mBottom.mTarget) != null && constraintAnchor.hasFinalValue()) {
                if ((this.mBottom.mTarget.getFinalValue() - this.mBottom.getMargin()) - (this.mTop.getMargin() + this.mTop.mTarget.getFinalValue()) >= i2) {
                    return true;
                }
                return false;
            }
        }
        return false;
    }

    public void immediateConnect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        getAnchor(type).connect(constraintWidget.getAnchor(type2), i, i2, true);
    }

    public boolean isAnimated() {
        return this.mAnimated;
    }

    public boolean isHeightWrapContent() {
        return this.mIsHeightWrapContent;
    }

    public boolean isHorizontalSolvingPassDone() {
        return this.mHorizontalSolvingPass;
    }

    public boolean isInBarrier(int i) {
        return this.mIsInBarrier[i];
    }

    public boolean isInHorizontalChain() {
        ConstraintAnchor constraintAnchor = this.mLeft;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.mRight;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public boolean isInPlaceholder() {
        return this.mInPlaceholder;
    }

    public boolean isInVerticalChain() {
        ConstraintAnchor constraintAnchor = this.mTop;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null || constraintAnchor2.mTarget != constraintAnchor) {
            ConstraintAnchor constraintAnchor3 = this.mBottom;
            ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
            if (constraintAnchor4 != null && constraintAnchor4.mTarget == constraintAnchor3) {
                return true;
            }
            return false;
        }
        return true;
    }

    public boolean isInVirtualLayout() {
        return this.mInVirtualLayout;
    }

    public boolean isMeasureRequested() {
        if (this.mMeasureRequested && this.mVisibility != 8) {
            return true;
        }
        return false;
    }

    public boolean isResolvedHorizontally() {
        if (!this.mResolvedHorizontal && (!this.mLeft.hasFinalValue() || !this.mRight.hasFinalValue())) {
            return false;
        }
        return true;
    }

    public boolean isResolvedVertically() {
        if (!this.mResolvedVertical && (!this.mTop.hasFinalValue() || !this.mBottom.hasFinalValue())) {
            return false;
        }
        return true;
    }

    public boolean isRoot() {
        if (this.mParent == null) {
            return true;
        }
        return false;
    }

    public boolean isSpreadHeight() {
        if (this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == 0.0f && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            return true;
        }
        return false;
    }

    public boolean isSpreadWidth() {
        if (this.mMatchConstraintDefaultWidth != 0 || this.mDimensionRatio != 0.0f || this.mMatchConstraintMinWidth != 0 || this.mMatchConstraintMaxWidth != 0 || this.mListDimensionBehaviors[0] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return false;
        }
        return true;
    }

    public boolean isVerticalSolvingPassDone() {
        return this.mVerticalSolvingPass;
    }

    public boolean isWidthWrapContent() {
        return this.mIsWidthWrapContent;
    }

    public void markHorizontalSolvingPassDone() {
        this.mHorizontalSolvingPass = true;
    }

    public void markVerticalSolvingPassDone() {
        this.mVerticalSolvingPass = true;
    }

    public boolean oppositeDimensionDependsOn(int i) {
        char c;
        if (i == 0) {
            c = 1;
        } else {
            c = 0;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[i];
        DimensionBehaviour dimensionBehaviour2 = dimensionBehaviourArr[c];
        DimensionBehaviour dimensionBehaviour3 = DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour != dimensionBehaviour3 || dimensionBehaviour2 != dimensionBehaviour3) {
            return false;
        }
        return true;
    }

    public boolean oppositeDimensionsTied() {
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour != dimensionBehaviour2 || dimensionBehaviourArr[1] != dimensionBehaviour2) {
            return false;
        }
        return true;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = Float.NaN;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        float[] fArr = this.mWeight;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        int[] iArr = this.mMaxDimension;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = Integer.MAX_VALUE;
        this.mMatchConstraintMaxHeight = Integer.MAX_VALUE;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedHasRatio = false;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mGroupsToSolver = false;
        boolean[] zArr = this.isTerminalWidget;
        zArr[0] = true;
        zArr[1] = true;
        this.mInVirtualLayout = false;
        boolean[] zArr2 = this.mIsInBarrier;
        zArr2[0] = false;
        zArr2[1] = false;
        this.mMeasureRequested = true;
        int[] iArr2 = this.mResolvedMatchConstraintDefault;
        iArr2[0] = 0;
        iArr2[1] = 0;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
    }

    public void resetAllConstraints() {
        resetAnchors();
        setVerticalBiasPercent(DEFAULT_BIAS);
        setHorizontalBiasPercent(DEFAULT_BIAS);
    }

    public void resetAnchor(ConstraintAnchor constraintAnchor) {
        if (getParent() != null && (getParent() instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        ConstraintAnchor anchor = getAnchor(ConstraintAnchor.Type.LEFT);
        ConstraintAnchor anchor2 = getAnchor(ConstraintAnchor.Type.RIGHT);
        ConstraintAnchor anchor3 = getAnchor(ConstraintAnchor.Type.TOP);
        ConstraintAnchor anchor4 = getAnchor(ConstraintAnchor.Type.BOTTOM);
        ConstraintAnchor anchor5 = getAnchor(ConstraintAnchor.Type.CENTER);
        ConstraintAnchor anchor6 = getAnchor(ConstraintAnchor.Type.CENTER_X);
        ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.CENTER_Y);
        if (constraintAnchor == anchor5) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
                anchor.reset();
                anchor2.reset();
            }
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor6) {
            if (anchor.isConnected() && anchor2.isConnected() && anchor.getTarget().getOwner() == anchor2.getTarget().getOwner()) {
                anchor.reset();
                anchor2.reset();
            }
            this.mHorizontalBiasPercent = 0.5f;
        } else if (constraintAnchor == anchor7) {
            if (anchor3.isConnected() && anchor4.isConnected() && anchor3.getTarget().getOwner() == anchor4.getTarget().getOwner()) {
                anchor3.reset();
                anchor4.reset();
            }
            this.mVerticalBiasPercent = 0.5f;
        } else if (constraintAnchor != anchor && constraintAnchor != anchor2) {
            if ((constraintAnchor == anchor3 || constraintAnchor == anchor4) && anchor3.isConnected() && anchor3.getTarget() == anchor4.getTarget()) {
                anchor5.reset();
            }
        } else if (anchor.isConnected() && anchor.getTarget() == anchor2.getTarget()) {
            anchor5.reset();
        }
        constraintAnchor.reset();
    }

    public void resetAnchors() {
        ConstraintWidget parent = getParent();
        if (parent != null && (parent instanceof ConstraintWidgetContainer) && ((ConstraintWidgetContainer) getParent()).handlesInternalConstraints()) {
            return;
        }
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).reset();
        }
    }

    public void resetFinalResolution() {
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            this.mAnchors.get(i).resetFinalResolution();
        }
    }

    public void resetSolverVariables(Cache cache) {
        this.mLeft.resetSolverVariable(cache);
        this.mTop.resetSolverVariable(cache);
        this.mRight.resetSolverVariable(cache);
        this.mBottom.resetSolverVariable(cache);
        this.mBaseline.resetSolverVariable(cache);
        this.mCenter.resetSolverVariable(cache);
        this.mCenterX.resetSolverVariable(cache);
        this.mCenterY.resetSolverVariable(cache);
    }

    public void resetSolvingPassFlag() {
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
    }

    public StringBuilder serialize(StringBuilder sb) {
        sb.append("{\n");
        serializeAnchor(sb, "left", this.mLeft);
        serializeAnchor(sb, "top", this.mTop);
        serializeAnchor(sb, "right", this.mRight);
        serializeAnchor(sb, "bottom", this.mBottom);
        serializeAnchor(sb, "baseline", this.mBaseline);
        serializeAnchor(sb, "centerX", this.mCenterX);
        serializeAnchor(sb, "centerY", this.mCenterY);
        serializeCircle(sb, this.mCenter, this.mCircleConstraintAngle);
        serializeSize(sb, "width", this.mWidth, this.mMinWidth, this.mMaxDimension[0], this.mWidthOverride, this.mMatchConstraintMinWidth, this.mMatchConstraintDefaultWidth, this.mMatchConstraintPercentWidth, this.mWeight[0]);
        serializeSize(sb, "height", this.mHeight, this.mMinHeight, this.mMaxDimension[1], this.mHeightOverride, this.mMatchConstraintMinHeight, this.mMatchConstraintDefaultHeight, this.mMatchConstraintPercentHeight, this.mWeight[1]);
        serializeDimensionRatio(sb, "dimensionRatio", this.mDimensionRatio, this.mDimensionRatioSide);
        serializeAttribute(sb, "horizontalBias", this.mHorizontalBiasPercent, DEFAULT_BIAS);
        serializeAttribute(sb, "verticalBias", this.mVerticalBiasPercent, DEFAULT_BIAS);
        sb.append("}\n");
        return sb;
    }

    public void setAnimated(boolean z) {
        this.mAnimated = z;
    }

    public void setBaselineDistance(int i) {
        boolean z;
        this.mBaselineDistance = i;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        this.mHasBaseline = z;
    }

    public void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public void setContainerItemSkip(int i) {
        if (i >= 0) {
            this.mContainerItemSkip = i;
        } else {
            this.mContainerItemSkip = 0;
        }
    }

    public void setDebugName(String str) {
        this.mDebugName = str;
    }

    public void setDebugSolverName(LinearSystem linearSystem, String str) {
        this.mDebugName = str;
        SolverVariable createObjectVariable = linearSystem.createObjectVariable(this.mLeft);
        SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(this.mTop);
        SolverVariable createObjectVariable3 = linearSystem.createObjectVariable(this.mRight);
        SolverVariable createObjectVariable4 = linearSystem.createObjectVariable(this.mBottom);
        createObjectVariable.setName(str + ".left");
        createObjectVariable2.setName(str + ".top");
        createObjectVariable3.setName(str + ".right");
        createObjectVariable4.setName(str + ".bottom");
        linearSystem.createObjectVariable(this.mBaseline).setName(str + ".baseline");
    }

    public void setDimension(int i, int i2) {
        this.mWidth = i;
        int i3 = this.mMinWidth;
        if (i < i3) {
            this.mWidth = i3;
        }
        this.mHeight = i2;
        int i4 = this.mMinHeight;
        if (i2 < i4) {
            this.mHeight = i4;
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0087 -> B:31:0x0088). Please report as a decompilation issue!!! */
    public void setDimensionRatio(String str) {
        float f;
        int i = 0;
        if (str != null && str.length() != 0) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i2 = 0;
            int i3 = -1;
            if (indexOf > 0 && indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (!substring.equalsIgnoreCase(ExifInterface.LONGITUDE_WEST)) {
                    i2 = substring.equalsIgnoreCase("H") ? 1 : -1;
                }
                i3 = i2;
                i2 = indexOf + 1;
            }
            int indexOf2 = str.indexOf(58);
            if (indexOf2 >= 0 && indexOf2 < length - 1) {
                String substring2 = str.substring(i2, indexOf2);
                String substring3 = str.substring(indexOf2 + 1);
                if (substring2.length() > 0 && substring3.length() > 0) {
                    float parseFloat = Float.parseFloat(substring2);
                    float parseFloat2 = Float.parseFloat(substring3);
                    if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                        if (i3 == 1) {
                            f = Math.abs(parseFloat2 / parseFloat);
                        } else {
                            f = Math.abs(parseFloat / parseFloat2);
                        }
                    }
                }
                f = 0.0f;
            } else {
                String substring4 = str.substring(i2);
                if (substring4.length() > 0) {
                    f = Float.parseFloat(substring4);
                }
                f = 0.0f;
            }
            i = (f > i ? 1 : (f == i ? 0 : -1));
            if (i > 0) {
                this.mDimensionRatio = f;
                this.mDimensionRatioSide = i3;
                return;
            }
            return;
        }
        this.mDimensionRatio = 0.0f;
    }

    public void setFinalBaseline(int i) {
        if (!this.mHasBaseline) {
            return;
        }
        int i2 = i - this.mBaselineDistance;
        int i3 = this.mHeight + i2;
        this.mY = i2;
        this.mTop.setFinalValue(i2);
        this.mBottom.setFinalValue(i3);
        this.mBaseline.setFinalValue(i);
        this.mResolvedVertical = true;
    }

    public void setFinalFrame(int i, int i2, int i3, int i4, int i5, int i6) {
        setFrame(i, i2, i3, i4);
        setBaselineDistance(i5);
        if (i6 == 0) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = false;
        } else if (i6 == 1) {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = true;
        } else if (i6 == 2) {
            this.mResolvedHorizontal = true;
            this.mResolvedVertical = true;
        } else {
            this.mResolvedHorizontal = false;
            this.mResolvedVertical = false;
        }
    }

    public void setFinalHorizontal(int i, int i2) {
        if (this.mResolvedHorizontal) {
            return;
        }
        this.mLeft.setFinalValue(i);
        this.mRight.setFinalValue(i2);
        this.mX = i;
        this.mWidth = i2 - i;
        this.mResolvedHorizontal = true;
    }

    public void setFinalLeft(int i) {
        this.mLeft.setFinalValue(i);
        this.mX = i;
    }

    public void setFinalTop(int i) {
        this.mTop.setFinalValue(i);
        this.mY = i;
    }

    public void setFinalVertical(int i, int i2) {
        if (this.mResolvedVertical) {
            return;
        }
        this.mTop.setFinalValue(i);
        this.mBottom.setFinalValue(i2);
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHasBaseline) {
            this.mBaseline.setFinalValue(i + this.mBaselineDistance);
        }
        this.mResolvedVertical = true;
    }

    public void setFrame(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.mX = i;
        this.mY = i2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        DimensionBehaviour[] dimensionBehaviourArr = this.mListDimensionBehaviors;
        DimensionBehaviour dimensionBehaviour = dimensionBehaviourArr[0];
        DimensionBehaviour dimensionBehaviour2 = DimensionBehaviour.FIXED;
        if (dimensionBehaviour == dimensionBehaviour2 && i7 < (i6 = this.mWidth)) {
            i7 = i6;
        }
        if (dimensionBehaviourArr[1] == dimensionBehaviour2 && i8 < (i5 = this.mHeight)) {
            i8 = i5;
        }
        this.mWidth = i7;
        this.mHeight = i8;
        int i9 = this.mMinHeight;
        if (i8 < i9) {
            this.mHeight = i9;
        }
        int i10 = this.mMinWidth;
        if (i7 < i10) {
            this.mWidth = i10;
        }
        int i11 = this.mMatchConstraintMaxWidth;
        if (i11 > 0 && dimensionBehaviour == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mWidth = Math.min(this.mWidth, i11);
        }
        int i12 = this.mMatchConstraintMaxHeight;
        if (i12 > 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
            this.mHeight = Math.min(this.mHeight, i12);
        }
        int i13 = this.mWidth;
        if (i7 != i13) {
            this.mWidthOverride = i13;
        }
        int i14 = this.mHeight;
        if (i8 != i14) {
            this.mHeightOverride = i14;
        }
    }

    public void setGoneMargin(ConstraintAnchor.Type type, int i) {
        int i2 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[type.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            this.mBaseline.mGoneMargin = i;
                            return;
                        }
                        return;
                    }
                    this.mBottom.mGoneMargin = i;
                    return;
                }
                this.mRight.mGoneMargin = i;
                return;
            }
            this.mTop.mGoneMargin = i;
            return;
        }
        this.mLeft.mGoneMargin = i;
    }

    public void setHasBaseline(boolean z) {
        this.mHasBaseline = z;
    }

    public void setHeight(int i) {
        this.mHeight = i;
        int i2 = this.mMinHeight;
        if (i < i2) {
            this.mHeight = i2;
        }
    }

    public void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        int i3 = i2 - i;
        this.mWidth = i3;
        int i4 = this.mMinWidth;
        if (i3 < i4) {
            this.mWidth = i4;
        }
    }

    public void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
    }

    public void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f > 0.0f && f < 1.0f && i == 0) {
            this.mMatchConstraintDefaultWidth = 2;
        }
    }

    public void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public void setInBarrier(int i, boolean z) {
        this.mIsInBarrier[i] = z;
    }

    public void setInPlaceholder(boolean z) {
        this.mInPlaceholder = z;
    }

    public void setInVirtualLayout(boolean z) {
        this.mInVirtualLayout = z;
    }

    public void setLastMeasureSpec(int i, int i2) {
        this.mLastHorizontalMeasureSpec = i;
        this.mLastVerticalMeasureSpec = i2;
        setMeasureRequested(false);
    }

    public void setLength(int i, int i2) {
        if (i2 == 0) {
            setWidth(i);
        } else if (i2 == 1) {
            setHeight(i);
        }
    }

    public void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public void setMeasureRequested(boolean z) {
        this.mMeasureRequested = z;
    }

    public void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setParent(ConstraintWidget constraintWidget) {
        this.mParent = constraintWidget;
    }

    public void setRelativePositioning(int i, int i2) {
        if (i2 == 0) {
            this.mRelX = i;
        } else if (i2 == 1) {
            this.mRelY = i;
        }
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public void setVerticalDimension(int i, int i2) {
        this.mY = i;
        int i3 = i2 - i;
        this.mHeight = i3;
        int i4 = this.mMinHeight;
        if (i3 < i4) {
            this.mHeight = i4;
        }
    }

    public void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
    }

    public void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f > 0.0f && f < 1.0f && i == 0) {
            this.mMatchConstraintDefaultHeight = 2;
        }
    }

    public void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public void setVisibility(int i) {
        this.mVisibility = i;
    }

    public void setWidth(int i) {
        this.mWidth = i;
        int i2 = this.mMinWidth;
        if (i < i2) {
            this.mWidth = i2;
        }
    }

    public void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public void setWrapBehaviorInParent(int i) {
        if (i >= 0 && i <= 3) {
            this.mWrapBehaviorInParent = i;
        }
    }

    public void setX(int i) {
        this.mX = i;
    }

    public void setY(int i) {
        this.mY = i;
    }

    public void setupDimensionRatio(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.mResolvedDimensionRatioSide == -1) {
            if (z3 && !z4) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (!z3 && z4) {
                this.mResolvedDimensionRatioSide = 1;
                if (this.mDimensionRatioSide == -1) {
                    this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                }
            }
        }
        if (this.mResolvedDimensionRatioSide == 0 && (!this.mTop.isConnected() || !this.mBottom.isConnected())) {
            this.mResolvedDimensionRatioSide = 1;
        } else if (this.mResolvedDimensionRatioSide == 1 && (!this.mLeft.isConnected() || !this.mRight.isConnected())) {
            this.mResolvedDimensionRatioSide = 0;
        }
        if (this.mResolvedDimensionRatioSide == -1 && (!this.mTop.isConnected() || !this.mBottom.isConnected() || !this.mLeft.isConnected() || !this.mRight.isConnected())) {
            if (this.mTop.isConnected() && this.mBottom.isConnected()) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (this.mLeft.isConnected() && this.mRight.isConnected()) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
        if (this.mResolvedDimensionRatioSide == -1) {
            int i = this.mMatchConstraintMinWidth;
            if (i > 0 && this.mMatchConstraintMinHeight == 0) {
                this.mResolvedDimensionRatioSide = 0;
            } else if (i == 0 && this.mMatchConstraintMinHeight > 0) {
                this.mResolvedDimensionRatio = 1.0f / this.mResolvedDimensionRatio;
                this.mResolvedDimensionRatioSide = 1;
            }
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.mType == null) {
            str = "";
        } else {
            str = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder("type: "), this.mType, " ");
        }
        sb.append(str);
        if (this.mDebugName != null) {
            str2 = AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder("id: "), this.mDebugName, " ");
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.mX);
        sb.append(", ");
        sb.append(this.mY);
        sb.append(") - (");
        sb.append(this.mWidth);
        sb.append(" x ");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, ")", this.mHeight);
    }

    public void updateFromRuns(boolean z, boolean z2) {
        int i;
        int i2;
        boolean isResolved = z & this.mHorizontalRun.isResolved();
        boolean isResolved2 = z2 & this.mVerticalRun.isResolved();
        HorizontalWidgetRun horizontalWidgetRun = this.mHorizontalRun;
        int i3 = horizontalWidgetRun.start.value;
        VerticalWidgetRun verticalWidgetRun = this.mVerticalRun;
        int i4 = verticalWidgetRun.start.value;
        int i5 = horizontalWidgetRun.end.value;
        int i6 = verticalWidgetRun.end.value;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (isResolved) {
            this.mX = i3;
        }
        if (isResolved2) {
            this.mY = i4;
        }
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (isResolved) {
            if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && i8 < (i2 = this.mWidth)) {
                i8 = i2;
            }
            this.mWidth = i8;
            int i10 = this.mMinWidth;
            if (i8 < i10) {
                this.mWidth = i10;
            }
        }
        if (isResolved2) {
            if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && i9 < (i = this.mHeight)) {
                i9 = i;
            }
            this.mHeight = i9;
            int i11 = this.mMinHeight;
            if (i9 < i11) {
                this.mHeight = i11;
            }
        }
    }

    public void updateFromSolver(LinearSystem linearSystem, boolean z) {
        VerticalWidgetRun verticalWidgetRun;
        HorizontalWidgetRun horizontalWidgetRun;
        int objectVariableValue = linearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = linearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = linearSystem.getObjectVariableValue(this.mRight);
        int objectVariableValue4 = linearSystem.getObjectVariableValue(this.mBottom);
        if (z && (horizontalWidgetRun = this.mHorizontalRun) != null) {
            DependencyNode dependencyNode = horizontalWidgetRun.start;
            if (dependencyNode.resolved) {
                DependencyNode dependencyNode2 = horizontalWidgetRun.end;
                if (dependencyNode2.resolved) {
                    objectVariableValue = dependencyNode.value;
                    objectVariableValue3 = dependencyNode2.value;
                }
            }
        }
        if (z && (verticalWidgetRun = this.mVerticalRun) != null) {
            DependencyNode dependencyNode3 = verticalWidgetRun.start;
            if (dependencyNode3.resolved) {
                DependencyNode dependencyNode4 = verticalWidgetRun.end;
                if (dependencyNode4.resolved) {
                    objectVariableValue2 = dependencyNode3.value;
                    objectVariableValue4 = dependencyNode4.value;
                }
            }
        }
        int i = objectVariableValue4 - objectVariableValue2;
        if (objectVariableValue3 - objectVariableValue < 0 || i < 0 || objectVariableValue == Integer.MIN_VALUE || objectVariableValue == Integer.MAX_VALUE || objectVariableValue2 == Integer.MIN_VALUE || objectVariableValue2 == Integer.MAX_VALUE || objectVariableValue3 == Integer.MIN_VALUE || objectVariableValue3 == Integer.MAX_VALUE || objectVariableValue4 == Integer.MIN_VALUE || objectVariableValue4 == Integer.MAX_VALUE) {
            objectVariableValue = 0;
            objectVariableValue4 = 0;
            objectVariableValue2 = 0;
            objectVariableValue3 = 0;
        }
        setFrame(objectVariableValue, objectVariableValue2, objectVariableValue3, objectVariableValue4);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2) {
        connect(type, constraintWidget, type2, 0);
    }

    public void connect(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i) {
        ConstraintAnchor.Type type3;
        ConstraintAnchor.Type type4;
        boolean z;
        ConstraintAnchor.Type type5 = ConstraintAnchor.Type.CENTER;
        if (type == type5) {
            if (type2 == type5) {
                ConstraintAnchor.Type type6 = ConstraintAnchor.Type.LEFT;
                ConstraintAnchor anchor = getAnchor(type6);
                ConstraintAnchor.Type type7 = ConstraintAnchor.Type.RIGHT;
                ConstraintAnchor anchor2 = getAnchor(type7);
                ConstraintAnchor.Type type8 = ConstraintAnchor.Type.TOP;
                ConstraintAnchor anchor3 = getAnchor(type8);
                ConstraintAnchor.Type type9 = ConstraintAnchor.Type.BOTTOM;
                ConstraintAnchor anchor4 = getAnchor(type9);
                boolean z2 = true;
                if ((anchor == null || !anchor.isConnected()) && (anchor2 == null || !anchor2.isConnected())) {
                    connect(type6, constraintWidget, type6, 0);
                    connect(type7, constraintWidget, type7, 0);
                    z = true;
                } else {
                    z = false;
                }
                if ((anchor3 == null || !anchor3.isConnected()) && (anchor4 == null || !anchor4.isConnected())) {
                    connect(type8, constraintWidget, type8, 0);
                    connect(type9, constraintWidget, type9, 0);
                } else {
                    z2 = false;
                }
                if (z && z2) {
                    getAnchor(type5).connect(constraintWidget.getAnchor(type5), 0);
                    return;
                }
                if (z) {
                    ConstraintAnchor.Type type10 = ConstraintAnchor.Type.CENTER_X;
                    getAnchor(type10).connect(constraintWidget.getAnchor(type10), 0);
                    return;
                } else {
                    if (z2) {
                        ConstraintAnchor.Type type11 = ConstraintAnchor.Type.CENTER_Y;
                        getAnchor(type11).connect(constraintWidget.getAnchor(type11), 0);
                        return;
                    }
                    return;
                }
            }
            ConstraintAnchor.Type type12 = ConstraintAnchor.Type.LEFT;
            if (type2 != type12 && type2 != ConstraintAnchor.Type.RIGHT) {
                ConstraintAnchor.Type type13 = ConstraintAnchor.Type.TOP;
                if (type2 == type13 || type2 == ConstraintAnchor.Type.BOTTOM) {
                    connect(type13, constraintWidget, type2, 0);
                    connect(ConstraintAnchor.Type.BOTTOM, constraintWidget, type2, 0);
                    getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
                    return;
                }
                return;
            }
            connect(type12, constraintWidget, type2, 0);
            connect(ConstraintAnchor.Type.RIGHT, constraintWidget, type2, 0);
            getAnchor(type5).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor.Type type14 = ConstraintAnchor.Type.CENTER_X;
        if (type == type14 && (type2 == (type4 = ConstraintAnchor.Type.LEFT) || type2 == ConstraintAnchor.Type.RIGHT)) {
            ConstraintAnchor anchor5 = getAnchor(type4);
            ConstraintAnchor anchor6 = constraintWidget.getAnchor(type2);
            ConstraintAnchor anchor7 = getAnchor(ConstraintAnchor.Type.RIGHT);
            anchor5.connect(anchor6, 0);
            anchor7.connect(anchor6, 0);
            getAnchor(type14).connect(anchor6, 0);
            return;
        }
        ConstraintAnchor.Type type15 = ConstraintAnchor.Type.CENTER_Y;
        if (type == type15 && (type2 == (type3 = ConstraintAnchor.Type.TOP) || type2 == ConstraintAnchor.Type.BOTTOM)) {
            ConstraintAnchor anchor8 = constraintWidget.getAnchor(type2);
            getAnchor(type3).connect(anchor8, 0);
            getAnchor(ConstraintAnchor.Type.BOTTOM).connect(anchor8, 0);
            getAnchor(type15).connect(anchor8, 0);
            return;
        }
        if (type == type14 && type2 == type14) {
            ConstraintAnchor.Type type16 = ConstraintAnchor.Type.LEFT;
            getAnchor(type16).connect(constraintWidget.getAnchor(type16), 0);
            ConstraintAnchor.Type type17 = ConstraintAnchor.Type.RIGHT;
            getAnchor(type17).connect(constraintWidget.getAnchor(type17), 0);
            getAnchor(type14).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        if (type == type15 && type2 == type15) {
            ConstraintAnchor.Type type18 = ConstraintAnchor.Type.TOP;
            getAnchor(type18).connect(constraintWidget.getAnchor(type18), 0);
            ConstraintAnchor.Type type19 = ConstraintAnchor.Type.BOTTOM;
            getAnchor(type19).connect(constraintWidget.getAnchor(type19), 0);
            getAnchor(type15).connect(constraintWidget.getAnchor(type2), 0);
            return;
        }
        ConstraintAnchor anchor9 = getAnchor(type);
        ConstraintAnchor anchor10 = constraintWidget.getAnchor(type2);
        if (anchor9.isValidConnection(anchor10)) {
            ConstraintAnchor.Type type20 = ConstraintAnchor.Type.BASELINE;
            if (type == type20) {
                ConstraintAnchor anchor11 = getAnchor(ConstraintAnchor.Type.TOP);
                ConstraintAnchor anchor12 = getAnchor(ConstraintAnchor.Type.BOTTOM);
                if (anchor11 != null) {
                    anchor11.reset();
                }
                if (anchor12 != null) {
                    anchor12.reset();
                }
            } else if (type != ConstraintAnchor.Type.TOP && type != ConstraintAnchor.Type.BOTTOM) {
                if (type == ConstraintAnchor.Type.LEFT || type == ConstraintAnchor.Type.RIGHT) {
                    ConstraintAnchor anchor13 = getAnchor(type5);
                    if (anchor13.getTarget() != anchor10) {
                        anchor13.reset();
                    }
                    ConstraintAnchor opposite = getAnchor(type).getOpposite();
                    ConstraintAnchor anchor14 = getAnchor(type14);
                    if (anchor14.isConnected()) {
                        opposite.reset();
                        anchor14.reset();
                    }
                }
            } else {
                ConstraintAnchor anchor15 = getAnchor(type20);
                if (anchor15 != null) {
                    anchor15.reset();
                }
                ConstraintAnchor anchor16 = getAnchor(type5);
                if (anchor16.getTarget() != anchor10) {
                    anchor16.reset();
                }
                ConstraintAnchor opposite2 = getAnchor(type).getOpposite();
                ConstraintAnchor anchor17 = getAnchor(type15);
                if (anchor17.isConnected()) {
                    opposite2.reset();
                    anchor17.reset();
                }
            }
            anchor9.connect(anchor10, i);
        }
    }

    private void serializeAttribute(StringBuilder sb, String str, int i, int i2) {
        if (i == i2) {
            return;
        }
        sb.append(str);
        sb.append(" :   ");
        sb.append(i);
        sb.append(",\n");
    }

    private void serializeAttribute(StringBuilder sb, String str, String str2, String str3) {
        if (str3.equals(str2)) {
            return;
        }
        AbstractC0749x8313616e.m3350x5ac5058d(sb, str, " :   ", str2, ",\n");
    }

    public void setDimensionRatio(float f, int i) {
        this.mDimensionRatio = f;
        this.mDimensionRatioSide = i;
    }

    public void setFrame(int i, int i2, int i3) {
        if (i3 == 0) {
            setHorizontalDimension(i, i2);
        } else if (i3 == 1) {
            setVerticalDimension(i, i2);
        }
    }

    private void getSceneString(StringBuilder sb, String str, int i, int i2, int i3, int i4, int i5, int i6, float f, DimensionBehaviour dimensionBehaviour, float f2) {
        sb.append(str);
        sb.append(" :  {\n");
        serializeAttribute(sb, "      behavior", dimensionBehaviour.toString(), DimensionBehaviour.FIXED.toString());
        serializeAttribute(sb, "      size", i, 0);
        serializeAttribute(sb, "      min", i2, 0);
        serializeAttribute(sb, "      max", i3, Integer.MAX_VALUE);
        serializeAttribute(sb, "      matchMin", i5, 0);
        serializeAttribute(sb, "      matchDef", i6, 0);
        serializeAttribute(sb, "      matchPercent", f, 1.0f);
        sb.append("    },\n");
    }

    private void getSceneString(StringBuilder sb, String str, ConstraintAnchor constraintAnchor) {
        if (constraintAnchor.mTarget == null) {
            return;
        }
        sb.append("    ");
        sb.append(str);
        sb.append(" : [ '");
        sb.append(constraintAnchor.mTarget);
        sb.append("'");
        if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE || constraintAnchor.mMargin != 0) {
            sb.append(",");
            sb.append(constraintAnchor.mMargin);
            if (constraintAnchor.mGoneMargin != Integer.MIN_VALUE) {
                sb.append(",");
                sb.append(constraintAnchor.mGoneMargin);
                sb.append(",");
            }
        }
        sb.append(" ] ,\n");
    }

    public ConstraintWidget(String str) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        addAnchors();
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2, int i3, int i4) {
        this.measured = false;
        this.run = new WidgetRun[2];
        this.mHorizontalRun = null;
        this.mVerticalRun = null;
        this.isTerminalWidget = new boolean[]{true, true};
        this.mResolvedHasRatio = false;
        this.mMeasureRequested = true;
        this.mOptimizeWrapO = false;
        this.mOptimizeWrapOnResolved = true;
        this.mWidthOverride = -1;
        this.mHeightOverride = -1;
        this.frame = new WidgetFrame(this);
        this.mResolvedHorizontal = false;
        this.mResolvedVertical = false;
        this.mHorizontalSolvingPass = false;
        this.mVerticalSolvingPass = false;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mWrapBehaviorInParent = 0;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mResolvedMatchConstraintDefault = new int[2];
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMaxWidth = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintMinHeight = 0;
        this.mMatchConstraintMaxHeight = 0;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        this.mMaxDimension = new int[]{Integer.MAX_VALUE, Integer.MAX_VALUE};
        this.mCircleConstraintAngle = Float.NaN;
        this.mHasBaseline = false;
        this.mInVirtualLayout = false;
        this.mLastHorizontalMeasureSpec = 0;
        this.mLastVerticalMeasureSpec = 0;
        this.mLeft = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);
        this.mTop = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);
        this.mRight = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);
        this.mBottom = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);
        this.mBaseline = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);
        this.mCenterX = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);
        this.mCenterY = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.mCenter = constraintAnchor;
        this.mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, constraintAnchor};
        this.mAnchors = new ArrayList<>();
        this.mIsInBarrier = new boolean[2];
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        this.mParent = null;
        this.mDimensionRatio = 0.0f;
        this.mDimensionRatioSide = -1;
        this.mRelX = 0;
        this.mRelY = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        float f = DEFAULT_BIAS;
        this.mHorizontalBiasPercent = f;
        this.mVerticalBiasPercent = f;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mAnimated = false;
        this.mDebugName = null;
        this.mType = null;
        this.mGroupsToSolver = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mWeight = new float[]{-1.0f, -1.0f};
        this.mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
        this.mNextChainWidget = new ConstraintWidget[]{null, null};
        this.mHorizontalNextWidget = null;
        this.mVerticalNextWidget = null;
        this.horizontalGroup = -1;
        this.verticalGroup = -1;
        this.mX = i;
        this.mY = i2;
        this.mWidth = i3;
        this.mHeight = i4;
        addAnchors();
    }

    public ConstraintWidget(String str, int i, int i2, int i3, int i4) {
        this(i, i2, i3, i4);
        setDebugName(str);
    }

    public ConstraintWidget(int i, int i2) {
        this(0, 0, i, i2);
    }

    public ConstraintWidget(String str, int i, int i2) {
        this(i, i2);
        setDebugName(str);
    }
}
