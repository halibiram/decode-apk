package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;

/* loaded from: classes.dex */
public class HorizontalWidgetRun extends WidgetRun {
    private static int[] sTempDimensions = new int[2];

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        this.start.mType = DependencyNode.Type.LEFT;
        this.end.mType = DependencyNode.Type.RIGHT;
        this.orientation = 0;
    }

    private void computeInsetRatio(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 != 0) {
                if (i5 == 1) {
                    iArr[0] = i6;
                    iArr[1] = (int) ((i6 * f) + 0.5f);
                    return;
                }
                return;
            }
            iArr[0] = (int) ((i7 * f) + 0.5f);
            iArr[1] = i7;
            return;
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.mWidget;
        if (constraintWidget.measured) {
            this.mDimension.resolve(constraintWidget.getWidth());
        }
        if (!this.mDimension.resolved) {
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = this.mWidget.getHorizontalDimensionBehaviour();
            this.mDimensionBehavior = horizontalDimensionBehaviour;
            if (horizontalDimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
                if (horizontalDimensionBehaviour == dimensionBehaviour && (parent2 = this.mWidget.getParent()) != null && (parent2.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent2.getHorizontalDimensionBehaviour() == dimensionBehaviour)) {
                    int width = (parent2.getWidth() - this.mWidget.mLeft.getMargin()) - this.mWidget.mRight.getMargin();
                    addTarget(this.start, parent2.mHorizontalRun.start, this.mWidget.mLeft.getMargin());
                    addTarget(this.end, parent2.mHorizontalRun.end, -this.mWidget.mRight.getMargin());
                    this.mDimension.resolve(width);
                    return;
                }
                if (this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.mDimension.resolve(this.mWidget.getWidth());
                }
            }
        } else {
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mDimensionBehavior;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            if (dimensionBehaviour2 == dimensionBehaviour3 && (parent = this.mWidget.getParent()) != null && (parent.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED || parent.getHorizontalDimensionBehaviour() == dimensionBehaviour3)) {
                addTarget(this.start, parent.mHorizontalRun.start, this.mWidget.mLeft.getMargin());
                addTarget(this.end, parent.mHorizontalRun.end, -this.mWidget.mRight.getMargin());
                return;
            }
        }
        DimensionDependency dimensionDependency = this.mDimension;
        if (dimensionDependency.resolved) {
            ConstraintWidget constraintWidget2 = this.mWidget;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[0];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[1].mTarget != null) {
                    if (constraintWidget2.isInHorizontalChain()) {
                        this.start.mMargin = this.mWidget.mListAnchors[0].getMargin();
                        this.end.mMargin = -this.mWidget.mListAnchors[1].getMargin();
                        return;
                    }
                    DependencyNode target = getTarget(this.mWidget.mListAnchors[0]);
                    if (target != null) {
                        addTarget(this.start, target, this.mWidget.mListAnchors[0].getMargin());
                    }
                    DependencyNode target2 = getTarget(this.mWidget.mListAnchors[1]);
                    if (target2 != null) {
                        addTarget(this.end, target2, -this.mWidget.mListAnchors[1].getMargin());
                    }
                    this.start.delegateToWidgetRun = true;
                    this.end.delegateToWidgetRun = true;
                    return;
                }
                if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.mWidget.mListAnchors[0].getMargin());
                        addTarget(this.end, this.start, this.mDimension.value);
                        return;
                    }
                    return;
                }
                ConstraintAnchor constraintAnchor3 = constraintAnchorArr[1];
                if (constraintAnchor3.mTarget != null) {
                    DependencyNode target4 = getTarget(constraintAnchor3);
                    if (target4 != null) {
                        addTarget(this.end, target4, -this.mWidget.mListAnchors[1].getMargin());
                        addTarget(this.start, this.end, -this.mDimension.value);
                        return;
                    }
                    return;
                }
                if (!(constraintWidget2 instanceof Helper) && constraintWidget2.getParent() != null && this.mWidget.getAnchor(ConstraintAnchor.Type.CENTER).mTarget == null) {
                    addTarget(this.start, this.mWidget.getParent().mHorizontalRun.start, this.mWidget.getX());
                    addTarget(this.end, this.start, this.mDimension.value);
                    return;
                }
                return;
            }
        }
        if (this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.mWidget;
            int i = constraintWidget3.mMatchConstraintDefaultWidth;
            if (i != 2) {
                if (i == 3) {
                    if (constraintWidget3.mMatchConstraintDefaultHeight == 3) {
                        this.start.updateDelegate = this;
                        this.end.updateDelegate = this;
                        VerticalWidgetRun verticalWidgetRun = constraintWidget3.mVerticalRun;
                        verticalWidgetRun.start.updateDelegate = this;
                        verticalWidgetRun.end.updateDelegate = this;
                        dimensionDependency.updateDelegate = this;
                        if (constraintWidget3.isInVerticalChain()) {
                            this.mDimension.mTargets.add(this.mWidget.mVerticalRun.mDimension);
                            this.mWidget.mVerticalRun.mDimension.mDependencies.add(this.mDimension);
                            VerticalWidgetRun verticalWidgetRun2 = this.mWidget.mVerticalRun;
                            verticalWidgetRun2.mDimension.updateDelegate = this;
                            this.mDimension.mTargets.add(verticalWidgetRun2.start);
                            this.mDimension.mTargets.add(this.mWidget.mVerticalRun.end);
                            this.mWidget.mVerticalRun.start.mDependencies.add(this.mDimension);
                            this.mWidget.mVerticalRun.end.mDependencies.add(this.mDimension);
                        } else if (this.mWidget.isInHorizontalChain()) {
                            this.mWidget.mVerticalRun.mDimension.mTargets.add(this.mDimension);
                            this.mDimension.mDependencies.add(this.mWidget.mVerticalRun.mDimension);
                        } else {
                            this.mWidget.mVerticalRun.mDimension.mTargets.add(this.mDimension);
                        }
                    } else {
                        DimensionDependency dimensionDependency2 = constraintWidget3.mVerticalRun.mDimension;
                        dimensionDependency.mTargets.add(dimensionDependency2);
                        dimensionDependency2.mDependencies.add(this.mDimension);
                        this.mWidget.mVerticalRun.start.mDependencies.add(this.mDimension);
                        this.mWidget.mVerticalRun.end.mDependencies.add(this.mDimension);
                        DimensionDependency dimensionDependency3 = this.mDimension;
                        dimensionDependency3.delegateToWidgetRun = true;
                        dimensionDependency3.mDependencies.add(this.start);
                        this.mDimension.mDependencies.add(this.end);
                        this.start.mTargets.add(this.mDimension);
                        this.end.mTargets.add(this.mDimension);
                    }
                }
            } else {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    DimensionDependency dimensionDependency4 = parent3.mVerticalRun.mDimension;
                    this.mDimension.mTargets.add(dimensionDependency4);
                    dimensionDependency4.mDependencies.add(this.mDimension);
                    DimensionDependency dimensionDependency5 = this.mDimension;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.mDependencies.add(this.start);
                    this.mDimension.mDependencies.add(this.end);
                }
            }
        }
        ConstraintWidget constraintWidget4 = this.mWidget;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget4.mListAnchors;
        ConstraintAnchor constraintAnchor4 = constraintAnchorArr2[0];
        ConstraintAnchor constraintAnchor5 = constraintAnchor4.mTarget;
        if (constraintAnchor5 != null && constraintAnchorArr2[1].mTarget != null) {
            if (constraintWidget4.isInHorizontalChain()) {
                this.start.mMargin = this.mWidget.mListAnchors[0].getMargin();
                this.end.mMargin = -this.mWidget.mListAnchors[1].getMargin();
                return;
            }
            DependencyNode target5 = getTarget(this.mWidget.mListAnchors[0]);
            DependencyNode target6 = getTarget(this.mWidget.mListAnchors[1]);
            if (target5 != null) {
                target5.addDependency(this);
            }
            if (target6 != null) {
                target6.addDependency(this);
            }
            this.mRunType = WidgetRun.RunType.CENTER;
            return;
        }
        if (constraintAnchor5 != null) {
            DependencyNode target7 = getTarget(constraintAnchor4);
            if (target7 != null) {
                addTarget(this.start, target7, this.mWidget.mListAnchors[0].getMargin());
                addTarget(this.end, this.start, 1, this.mDimension);
                return;
            }
            return;
        }
        ConstraintAnchor constraintAnchor6 = constraintAnchorArr2[1];
        if (constraintAnchor6.mTarget != null) {
            DependencyNode target8 = getTarget(constraintAnchor6);
            if (target8 != null) {
                addTarget(this.end, target8, -this.mWidget.mListAnchors[1].getMargin());
                addTarget(this.start, this.end, -1, this.mDimension);
                return;
            }
            return;
        }
        if (!(constraintWidget4 instanceof Helper) && constraintWidget4.getParent() != null) {
            addTarget(this.start, this.mWidget.getParent().mHorizontalRun.start, this.mWidget.getX());
            addTarget(this.end, this.start, 1, this.mDimension);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.mWidget.setX(dependencyNode.value);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        this.start.clear();
        this.end.clear();
        this.mDimension.clear();
        this.mResolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.mResolved = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.mDimension.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        if (this.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.mWidget.mMatchConstraintDefaultWidth == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "HorizontalRun " + this.mWidget.getDebugName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:110:0x02bf, code lost:
    
        if (r14 != 1) goto L134;
     */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(Dependency dependency) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        float f;
        float dimensionRatio;
        int i;
        int i2 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[this.mRunType.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 3) {
                    ConstraintWidget constraintWidget = this.mWidget;
                    updateRunCenter(dependency, constraintWidget.mLeft, constraintWidget.mRight, 0);
                    return;
                }
            } else {
                updateRunEnd(dependency);
            }
        } else {
            updateRunStart(dependency);
        }
        if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget2 = this.mWidget;
            int i3 = constraintWidget2.mMatchConstraintDefaultWidth;
            if (i3 != 2) {
                if (i3 == 3) {
                    int i4 = constraintWidget2.mMatchConstraintDefaultHeight;
                    if (i4 != 0 && i4 != 3) {
                        int dimensionRatioSide = constraintWidget2.getDimensionRatioSide();
                        if (dimensionRatioSide != -1) {
                            if (dimensionRatioSide != 0) {
                                if (dimensionRatioSide != 1) {
                                    i = 0;
                                } else {
                                    ConstraintWidget constraintWidget3 = this.mWidget;
                                    f = constraintWidget3.mVerticalRun.mDimension.value;
                                    dimensionRatio = constraintWidget3.getDimensionRatio();
                                }
                            } else {
                                i = (int) ((r0.mVerticalRun.mDimension.value / this.mWidget.getDimensionRatio()) + 0.5f);
                            }
                            this.mDimension.resolve(i);
                        } else {
                            ConstraintWidget constraintWidget4 = this.mWidget;
                            f = constraintWidget4.mVerticalRun.mDimension.value;
                            dimensionRatio = constraintWidget4.getDimensionRatio();
                        }
                        i = (int) ((dimensionRatio * f) + 0.5f);
                        this.mDimension.resolve(i);
                    } else {
                        VerticalWidgetRun verticalWidgetRun = constraintWidget2.mVerticalRun;
                        DependencyNode dependencyNode = verticalWidgetRun.start;
                        DependencyNode dependencyNode2 = verticalWidgetRun.end;
                        if (constraintWidget2.mLeft.mTarget != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (constraintWidget2.mTop.mTarget != null) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (constraintWidget2.mRight.mTarget != null) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if (constraintWidget2.mBottom.mTarget != null) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        int dimensionRatioSide2 = constraintWidget2.getDimensionRatioSide();
                        if (z && z2 && z3 && z4) {
                            float dimensionRatio2 = this.mWidget.getDimensionRatio();
                            if (dependencyNode.resolved && dependencyNode2.resolved) {
                                DependencyNode dependencyNode3 = this.start;
                                if (dependencyNode3.readyToSolve && this.end.readyToSolve) {
                                    computeInsetRatio(sTempDimensions, dependencyNode3.mTargets.get(0).value + this.start.mMargin, this.end.mTargets.get(0).value - this.end.mMargin, dependencyNode.value + dependencyNode.mMargin, dependencyNode2.value - dependencyNode2.mMargin, dimensionRatio2, dimensionRatioSide2);
                                    this.mDimension.resolve(sTempDimensions[0]);
                                    this.mWidget.mVerticalRun.mDimension.resolve(sTempDimensions[1]);
                                    return;
                                }
                                return;
                            }
                            DependencyNode dependencyNode4 = this.start;
                            if (dependencyNode4.resolved) {
                                DependencyNode dependencyNode5 = this.end;
                                if (dependencyNode5.resolved) {
                                    if (dependencyNode.readyToSolve && dependencyNode2.readyToSolve) {
                                        computeInsetRatio(sTempDimensions, dependencyNode4.value + dependencyNode4.mMargin, dependencyNode5.value - dependencyNode5.mMargin, dependencyNode.mTargets.get(0).value + dependencyNode.mMargin, dependencyNode2.mTargets.get(0).value - dependencyNode2.mMargin, dimensionRatio2, dimensionRatioSide2);
                                        this.mDimension.resolve(sTempDimensions[0]);
                                        this.mWidget.mVerticalRun.mDimension.resolve(sTempDimensions[1]);
                                    } else {
                                        return;
                                    }
                                }
                            }
                            DependencyNode dependencyNode6 = this.start;
                            if (dependencyNode6.readyToSolve && this.end.readyToSolve && dependencyNode.readyToSolve && dependencyNode2.readyToSolve) {
                                computeInsetRatio(sTempDimensions, dependencyNode6.mTargets.get(0).value + this.start.mMargin, this.end.mTargets.get(0).value - this.end.mMargin, dependencyNode.mTargets.get(0).value + dependencyNode.mMargin, dependencyNode2.mTargets.get(0).value - dependencyNode2.mMargin, dimensionRatio2, dimensionRatioSide2);
                                this.mDimension.resolve(sTempDimensions[0]);
                                this.mWidget.mVerticalRun.mDimension.resolve(sTempDimensions[1]);
                            } else {
                                return;
                            }
                        } else if (z && z3) {
                            if (this.start.readyToSolve && this.end.readyToSolve) {
                                float dimensionRatio3 = this.mWidget.getDimensionRatio();
                                int i5 = this.start.mTargets.get(0).value + this.start.mMargin;
                                int i6 = this.end.mTargets.get(0).value - this.end.mMargin;
                                if (dimensionRatioSide2 != -1 && dimensionRatioSide2 != 0) {
                                    if (dimensionRatioSide2 == 1) {
                                        int limitedDimension = getLimitedDimension(i6 - i5, 0);
                                        int i7 = (int) ((limitedDimension / dimensionRatio3) + 0.5f);
                                        int limitedDimension2 = getLimitedDimension(i7, 1);
                                        if (i7 != limitedDimension2) {
                                            limitedDimension = (int) ((limitedDimension2 * dimensionRatio3) + 0.5f);
                                        }
                                        this.mDimension.resolve(limitedDimension);
                                        this.mWidget.mVerticalRun.mDimension.resolve(limitedDimension2);
                                    }
                                } else {
                                    int limitedDimension3 = getLimitedDimension(i6 - i5, 0);
                                    int i8 = (int) ((limitedDimension3 * dimensionRatio3) + 0.5f);
                                    int limitedDimension4 = getLimitedDimension(i8, 1);
                                    if (i8 != limitedDimension4) {
                                        limitedDimension3 = (int) ((limitedDimension4 / dimensionRatio3) + 0.5f);
                                    }
                                    this.mDimension.resolve(limitedDimension3);
                                    this.mWidget.mVerticalRun.mDimension.resolve(limitedDimension4);
                                }
                            } else {
                                return;
                            }
                        } else if (z2 && z4) {
                            if (dependencyNode.readyToSolve && dependencyNode2.readyToSolve) {
                                float dimensionRatio4 = this.mWidget.getDimensionRatio();
                                int i9 = dependencyNode.mTargets.get(0).value + dependencyNode.mMargin;
                                int i10 = dependencyNode2.mTargets.get(0).value - dependencyNode2.mMargin;
                                if (dimensionRatioSide2 != -1) {
                                    if (dimensionRatioSide2 == 0) {
                                        int limitedDimension5 = getLimitedDimension(i10 - i9, 1);
                                        int i11 = (int) ((limitedDimension5 * dimensionRatio4) + 0.5f);
                                        int limitedDimension6 = getLimitedDimension(i11, 0);
                                        if (i11 != limitedDimension6) {
                                            limitedDimension5 = (int) ((limitedDimension6 / dimensionRatio4) + 0.5f);
                                        }
                                        this.mDimension.resolve(limitedDimension6);
                                        this.mWidget.mVerticalRun.mDimension.resolve(limitedDimension5);
                                    }
                                }
                                int limitedDimension7 = getLimitedDimension(i10 - i9, 1);
                                int i12 = (int) ((limitedDimension7 / dimensionRatio4) + 0.5f);
                                int limitedDimension8 = getLimitedDimension(i12, 0);
                                if (i12 != limitedDimension8) {
                                    limitedDimension7 = (int) ((limitedDimension8 * dimensionRatio4) + 0.5f);
                                }
                                this.mDimension.resolve(limitedDimension8);
                                this.mWidget.mVerticalRun.mDimension.resolve(limitedDimension7);
                            } else {
                                return;
                            }
                        }
                    }
                }
            } else {
                ConstraintWidget parent = constraintWidget2.getParent();
                if (parent != null) {
                    if (parent.mHorizontalRun.mDimension.resolved) {
                        this.mDimension.resolve((int) ((r0.value * this.mWidget.mMatchConstraintPercentWidth) + 0.5f));
                    }
                }
            }
        }
        DependencyNode dependencyNode7 = this.start;
        if (dependencyNode7.readyToSolve) {
            DependencyNode dependencyNode8 = this.end;
            if (dependencyNode8.readyToSolve) {
                if (dependencyNode7.resolved && dependencyNode8.resolved && this.mDimension.resolved) {
                    return;
                }
                if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget5 = this.mWidget;
                    if (constraintWidget5.mMatchConstraintDefaultWidth == 0 && !constraintWidget5.isInHorizontalChain()) {
                        DependencyNode dependencyNode9 = this.start.mTargets.get(0);
                        DependencyNode dependencyNode10 = this.end.mTargets.get(0);
                        int i13 = dependencyNode9.value;
                        DependencyNode dependencyNode11 = this.start;
                        int i14 = i13 + dependencyNode11.mMargin;
                        int i15 = dependencyNode10.value + this.end.mMargin;
                        dependencyNode11.resolve(i14);
                        this.end.resolve(i15);
                        this.mDimension.resolve(i15 - i14);
                        return;
                    }
                }
                if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.mTargets.size() > 0 && this.end.mTargets.size() > 0) {
                    DependencyNode dependencyNode12 = this.start.mTargets.get(0);
                    int min = Math.min((this.end.mTargets.get(0).value + this.end.mMargin) - (dependencyNode12.value + this.start.mMargin), this.mDimension.wrapValue);
                    ConstraintWidget constraintWidget6 = this.mWidget;
                    int i16 = constraintWidget6.mMatchConstraintMaxWidth;
                    int max = Math.max(constraintWidget6.mMatchConstraintMinWidth, min);
                    if (i16 > 0) {
                        max = Math.min(i16, max);
                    }
                    this.mDimension.resolve(max);
                }
                if (!this.mDimension.resolved) {
                    return;
                }
                DependencyNode dependencyNode13 = this.start.mTargets.get(0);
                DependencyNode dependencyNode14 = this.end.mTargets.get(0);
                int i17 = dependencyNode13.value + this.start.mMargin;
                int i18 = dependencyNode14.value + this.end.mMargin;
                float horizontalBiasPercent = this.mWidget.getHorizontalBiasPercent();
                if (dependencyNode13 == dependencyNode14) {
                    i17 = dependencyNode13.value;
                    i18 = dependencyNode14.value;
                    horizontalBiasPercent = 0.5f;
                }
                this.start.resolve((int) ((((i18 - i17) - this.mDimension.value) * horizontalBiasPercent) + i17 + 0.5f));
                this.end.resolve(this.start.value + this.mDimension.value);
            }
        }
    }
}
