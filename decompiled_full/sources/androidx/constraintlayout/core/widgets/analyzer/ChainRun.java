package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ChainRun extends WidgetRun {
    private int mChainStyle;
    ArrayList<WidgetRun> mWidgets;

    public ChainRun(ConstraintWidget constraintWidget, int i) {
        super(constraintWidget);
        this.mWidgets = new ArrayList<>();
        this.orientation = i;
        build();
    }

    private void build() {
        ConstraintWidget constraintWidget;
        int verticalChainStyle;
        ConstraintWidget constraintWidget2 = this.mWidget;
        ConstraintWidget previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
        while (true) {
            ConstraintWidget constraintWidget3 = previousChainMember;
            constraintWidget = constraintWidget2;
            constraintWidget2 = constraintWidget3;
            if (constraintWidget2 == null) {
                break;
            } else {
                previousChainMember = constraintWidget2.getPreviousChainMember(this.orientation);
            }
        }
        this.mWidget = constraintWidget;
        this.mWidgets.add(constraintWidget.getRun(this.orientation));
        ConstraintWidget nextChainMember = constraintWidget.getNextChainMember(this.orientation);
        while (nextChainMember != null) {
            this.mWidgets.add(nextChainMember.getRun(this.orientation));
            nextChainMember = nextChainMember.getNextChainMember(this.orientation);
        }
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            int i = this.orientation;
            if (i == 0) {
                next.mWidget.horizontalChainRun = this;
            } else if (i == 1) {
                next.mWidget.verticalChainRun = this;
            }
        }
        if (this.orientation == 0 && ((ConstraintWidgetContainer) this.mWidget.getParent()).isRtl() && this.mWidgets.size() > 1) {
            ArrayList<WidgetRun> arrayList = this.mWidgets;
            this.mWidget = arrayList.get(arrayList.size() - 1).mWidget;
        }
        if (this.orientation == 0) {
            verticalChainStyle = this.mWidget.getHorizontalChainStyle();
        } else {
            verticalChainStyle = this.mWidget.getVerticalChainStyle();
        }
        this.mChainStyle = verticalChainStyle;
    }

    private ConstraintWidget getFirstVisibleWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            WidgetRun widgetRun = this.mWidgets.get(i);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    private ConstraintWidget getLastVisibleWidget() {
        for (int size = this.mWidgets.size() - 1; size >= 0; size--) {
            WidgetRun widgetRun = this.mWidgets.get(size);
            if (widgetRun.mWidget.getVisibility() != 8) {
                return widgetRun.mWidget;
            }
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void apply() {
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().apply();
        }
        int size = this.mWidgets.size();
        if (size < 1) {
            return;
        }
        ConstraintWidget constraintWidget = this.mWidgets.get(0).mWidget;
        ConstraintWidget constraintWidget2 = this.mWidgets.get(size - 1).mWidget;
        if (this.orientation == 0) {
            ConstraintAnchor constraintAnchor = constraintWidget.mLeft;
            ConstraintAnchor constraintAnchor2 = constraintWidget2.mRight;
            DependencyNode target = getTarget(constraintAnchor, 0);
            int margin = constraintAnchor.getMargin();
            ConstraintWidget firstVisibleWidget = getFirstVisibleWidget();
            if (firstVisibleWidget != null) {
                margin = firstVisibleWidget.mLeft.getMargin();
            }
            if (target != null) {
                addTarget(this.start, target, margin);
            }
            DependencyNode target2 = getTarget(constraintAnchor2, 0);
            int margin2 = constraintAnchor2.getMargin();
            ConstraintWidget lastVisibleWidget = getLastVisibleWidget();
            if (lastVisibleWidget != null) {
                margin2 = lastVisibleWidget.mRight.getMargin();
            }
            if (target2 != null) {
                addTarget(this.end, target2, -margin2);
            }
        } else {
            ConstraintAnchor constraintAnchor3 = constraintWidget.mTop;
            ConstraintAnchor constraintAnchor4 = constraintWidget2.mBottom;
            DependencyNode target3 = getTarget(constraintAnchor3, 1);
            int margin3 = constraintAnchor3.getMargin();
            ConstraintWidget firstVisibleWidget2 = getFirstVisibleWidget();
            if (firstVisibleWidget2 != null) {
                margin3 = firstVisibleWidget2.mTop.getMargin();
            }
            if (target3 != null) {
                addTarget(this.start, target3, margin3);
            }
            DependencyNode target4 = getTarget(constraintAnchor4, 1);
            int margin4 = constraintAnchor4.getMargin();
            ConstraintWidget lastVisibleWidget2 = getLastVisibleWidget();
            if (lastVisibleWidget2 != null) {
                margin4 = lastVisibleWidget2.mBottom.getMargin();
            }
            if (target4 != null) {
                addTarget(this.end, target4, -margin4);
            }
        }
        this.start.updateDelegate = this;
        this.end.updateDelegate = this;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        for (int i = 0; i < this.mWidgets.size(); i++) {
            this.mWidgets.get(i).applyToWidget();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public long getWrapDimension() {
        int size = this.mWidgets.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r4.end.mMargin + this.mWidgets.get(i).getWrapDimension() + j + r4.start.mMargin;
        }
        return j;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.start.resolved = false;
        this.end.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public boolean supportsWrapComputation() {
        int size = this.mWidgets.size();
        for (int i = 0; i < size; i++) {
            if (!this.mWidgets.get(i).supportsWrapComputation()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("ChainRun ");
        if (this.orientation == 0) {
            str = "horizontal : ";
        } else {
            str = "vertical : ";
        }
        sb.append(str);
        Iterator<WidgetRun> it = this.mWidgets.iterator();
        while (it.hasNext()) {
            WidgetRun next = it.next();
            sb.append("<");
            sb.append(next);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x0400, code lost:
    
        r7 = r7 - r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00e9  */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void update(Dependency dependency) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        float f;
        boolean z2;
        int i6;
        int i7;
        int i8;
        float verticalBiasPercent;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        float f2;
        boolean z3;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z4;
        int i21;
        int i22;
        if (this.start.resolved && this.end.resolved) {
            ConstraintWidget parent = this.mWidget.getParent();
            if (parent instanceof ConstraintWidgetContainer) {
                z = ((ConstraintWidgetContainer) parent).isRtl();
            } else {
                z = false;
            }
            int i23 = this.end.value - this.start.value;
            int size = this.mWidgets.size();
            int i24 = 0;
            while (true) {
                i = -1;
                i2 = 8;
                if (i24 < size) {
                    if (this.mWidgets.get(i24).mWidget.getVisibility() != 8) {
                        break;
                    } else {
                        i24++;
                    }
                } else {
                    i24 = -1;
                    break;
                }
            }
            int i25 = size - 1;
            int i26 = i25;
            while (true) {
                if (i26 < 0) {
                    break;
                }
                if (this.mWidgets.get(i26).mWidget.getVisibility() != 8) {
                    i = i26;
                    break;
                }
                i26--;
            }
            int i27 = 0;
            while (i27 < 2) {
                int i28 = 0;
                i4 = 0;
                i5 = 0;
                int i29 = 0;
                f = 0.0f;
                while (i28 < size) {
                    WidgetRun widgetRun = this.mWidgets.get(i28);
                    if (widgetRun.mWidget.getVisibility() != i2) {
                        i29++;
                        if (i28 > 0 && i28 >= i24) {
                            i4 += widgetRun.start.mMargin;
                        }
                        DimensionDependency dimensionDependency = widgetRun.mDimension;
                        int i30 = dimensionDependency.value;
                        if (widgetRun.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (z4) {
                            int i31 = this.orientation;
                            if (i31 == 0 && !widgetRun.mWidget.mHorizontalRun.mDimension.resolved) {
                                return;
                            }
                            if (i31 == 1 && !widgetRun.mWidget.mVerticalRun.mDimension.resolved) {
                                return;
                            } else {
                                i21 = i30;
                            }
                        } else {
                            i21 = i30;
                            if (widgetRun.matchConstraintsType == 1 && i27 == 0) {
                                i22 = dimensionDependency.wrapValue;
                                i5++;
                            } else if (dimensionDependency.resolved) {
                                i22 = i21;
                            }
                            z4 = true;
                            if (z4) {
                                i5++;
                                float f3 = widgetRun.mWidget.mWeight[this.orientation];
                                if (f3 >= 0.0f) {
                                    f += f3;
                                }
                            } else {
                                i4 += i22;
                            }
                            if (i28 < i25 && i28 < i) {
                                i4 += -widgetRun.end.mMargin;
                            }
                        }
                        i22 = i21;
                        if (z4) {
                        }
                        if (i28 < i25) {
                            i4 += -widgetRun.end.mMargin;
                        }
                    }
                    i28++;
                    i2 = 8;
                }
                if (i4 >= i23 && i5 != 0) {
                    i27++;
                    i2 = 8;
                } else {
                    i3 = i29;
                    break;
                }
            }
            i3 = 0;
            i4 = 0;
            i5 = 0;
            f = 0.0f;
            int i32 = this.start.value;
            if (z) {
                i32 = this.end.value;
            }
            if (i4 > i23) {
                if (z) {
                    i32 += (int) (((i4 - i23) / 2.0f) + 0.5f);
                } else {
                    i32 -= (int) (((i4 - i23) / 2.0f) + 0.5f);
                }
            }
            if (i5 > 0) {
                float f4 = i23 - i4;
                int i33 = (int) ((f4 / i5) + 0.5f);
                int i34 = 0;
                int i35 = 0;
                while (i34 < size) {
                    WidgetRun widgetRun2 = this.mWidgets.get(i34);
                    int i36 = i33;
                    int i37 = i4;
                    if (widgetRun2.mWidget.getVisibility() != 8 && widgetRun2.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                        DimensionDependency dimensionDependency2 = widgetRun2.mDimension;
                        if (!dimensionDependency2.resolved) {
                            if (f > 0.0f) {
                                i15 = i32;
                                i16 = (int) (((widgetRun2.mWidget.mWeight[this.orientation] * f4) / f) + 0.5f);
                            } else {
                                i15 = i32;
                                i16 = i36;
                            }
                            if (this.orientation == 0) {
                                ConstraintWidget constraintWidget = widgetRun2.mWidget;
                                f2 = f4;
                                i18 = constraintWidget.mMatchConstraintMaxWidth;
                                i17 = constraintWidget.mMatchConstraintMinWidth;
                                z3 = z;
                            } else {
                                f2 = f4;
                                ConstraintWidget constraintWidget2 = widgetRun2.mWidget;
                                int i38 = constraintWidget2.mMatchConstraintMaxHeight;
                                z3 = z;
                                i17 = constraintWidget2.mMatchConstraintMinHeight;
                                i18 = i38;
                            }
                            i19 = i3;
                            if (widgetRun2.matchConstraintsType == 1) {
                                i20 = Math.min(i16, dimensionDependency2.wrapValue);
                            } else {
                                i20 = i16;
                            }
                            int max = Math.max(i17, i20);
                            if (i18 > 0) {
                                max = Math.min(i18, max);
                            }
                            if (max != i16) {
                                i35++;
                                i16 = max;
                            }
                            widgetRun2.mDimension.resolve(i16);
                            i34++;
                            i33 = i36;
                            i4 = i37;
                            i32 = i15;
                            f4 = f2;
                            z = z3;
                            i3 = i19;
                        }
                    }
                    z3 = z;
                    i19 = i3;
                    i15 = i32;
                    f2 = f4;
                    i34++;
                    i33 = i36;
                    i4 = i37;
                    i32 = i15;
                    f4 = f2;
                    z = z3;
                    i3 = i19;
                }
                z2 = z;
                i6 = i3;
                i7 = i32;
                int i39 = i4;
                if (i35 > 0) {
                    i5 -= i35;
                    i4 = 0;
                    for (int i40 = 0; i40 < size; i40++) {
                        WidgetRun widgetRun3 = this.mWidgets.get(i40);
                        if (widgetRun3.mWidget.getVisibility() != 8) {
                            if (i40 > 0 && i40 >= i24) {
                                i4 += widgetRun3.start.mMargin;
                            }
                            i4 += widgetRun3.mDimension.value;
                            if (i40 < i25 && i40 < i) {
                                i4 += -widgetRun3.end.mMargin;
                            }
                        }
                    }
                } else {
                    i4 = i39;
                }
                i8 = 2;
                if (this.mChainStyle == 2 && i35 == 0) {
                    this.mChainStyle = 0;
                }
            } else {
                z2 = z;
                i6 = i3;
                i7 = i32;
                i8 = 2;
            }
            if (i4 > i23) {
                this.mChainStyle = i8;
            }
            if (i6 > 0 && i5 == 0 && i24 == i) {
                this.mChainStyle = i8;
            }
            int i41 = this.mChainStyle;
            if (i41 == 1) {
                int i42 = i6;
                if (i42 > 1) {
                    i13 = (i23 - i4) / (i42 - 1);
                } else if (i42 == 1) {
                    i13 = (i23 - i4) / 2;
                } else {
                    i13 = 0;
                }
                if (i5 > 0) {
                    i13 = 0;
                }
                int i43 = i7;
                for (int i44 = 0; i44 < size; i44++) {
                    if (z2) {
                        i14 = size - (i44 + 1);
                    } else {
                        i14 = i44;
                    }
                    WidgetRun widgetRun4 = this.mWidgets.get(i14);
                    if (widgetRun4.mWidget.getVisibility() == 8) {
                        widgetRun4.start.resolve(i43);
                        widgetRun4.end.resolve(i43);
                    } else {
                        if (i44 > 0) {
                            if (z2) {
                                i43 -= i13;
                            } else {
                                i43 += i13;
                            }
                        }
                        if (i44 > 0 && i44 >= i24) {
                            if (z2) {
                                i43 -= widgetRun4.start.mMargin;
                            } else {
                                i43 += widgetRun4.start.mMargin;
                            }
                        }
                        if (z2) {
                            widgetRun4.end.resolve(i43);
                        } else {
                            widgetRun4.start.resolve(i43);
                        }
                        DimensionDependency dimensionDependency3 = widgetRun4.mDimension;
                        int i45 = dimensionDependency3.value;
                        if (widgetRun4.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun4.matchConstraintsType == 1) {
                            i45 = dimensionDependency3.wrapValue;
                        }
                        if (z2) {
                            i43 -= i45;
                        } else {
                            i43 += i45;
                        }
                        if (z2) {
                            widgetRun4.start.resolve(i43);
                        } else {
                            widgetRun4.end.resolve(i43);
                        }
                        widgetRun4.mResolved = true;
                        if (i44 < i25 && i44 < i) {
                            if (z2) {
                                i43 -= -widgetRun4.end.mMargin;
                            } else {
                                i43 += -widgetRun4.end.mMargin;
                            }
                        }
                    }
                }
                return;
            }
            int i46 = i6;
            if (i41 == 0) {
                int i47 = (i23 - i4) / (i46 + 1);
                if (i5 > 0) {
                    i47 = 0;
                }
                int i48 = i7;
                for (int i49 = 0; i49 < size; i49++) {
                    if (z2) {
                        i11 = size - (i49 + 1);
                    } else {
                        i11 = i49;
                    }
                    WidgetRun widgetRun5 = this.mWidgets.get(i11);
                    if (widgetRun5.mWidget.getVisibility() == 8) {
                        widgetRun5.start.resolve(i48);
                        widgetRun5.end.resolve(i48);
                    } else {
                        if (z2) {
                            i12 = i48 - i47;
                        } else {
                            i12 = i48 + i47;
                        }
                        if (i49 > 0 && i49 >= i24) {
                            if (z2) {
                                i12 -= widgetRun5.start.mMargin;
                            } else {
                                i12 += widgetRun5.start.mMargin;
                            }
                        }
                        if (z2) {
                            widgetRun5.end.resolve(i12);
                        } else {
                            widgetRun5.start.resolve(i12);
                        }
                        DimensionDependency dimensionDependency4 = widgetRun5.mDimension;
                        int i50 = dimensionDependency4.value;
                        if (widgetRun5.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun5.matchConstraintsType == 1) {
                            i50 = Math.min(i50, dimensionDependency4.wrapValue);
                        }
                        if (z2) {
                            i48 = i12 - i50;
                        } else {
                            i48 = i12 + i50;
                        }
                        if (z2) {
                            widgetRun5.start.resolve(i48);
                        } else {
                            widgetRun5.end.resolve(i48);
                        }
                        if (i49 < i25 && i49 < i) {
                            if (z2) {
                                i48 -= -widgetRun5.end.mMargin;
                            } else {
                                i48 += -widgetRun5.end.mMargin;
                            }
                        }
                    }
                }
                return;
            }
            if (i41 == 2) {
                if (this.orientation == 0) {
                    verticalBiasPercent = this.mWidget.getHorizontalBiasPercent();
                } else {
                    verticalBiasPercent = this.mWidget.getVerticalBiasPercent();
                }
                if (z2) {
                    verticalBiasPercent = 1.0f - verticalBiasPercent;
                }
                int i51 = (int) (((i23 - i4) * verticalBiasPercent) + 0.5f);
                if (i51 < 0 || i5 > 0) {
                    i51 = 0;
                }
                if (z2) {
                    i9 = i7 - i51;
                } else {
                    i9 = i7 + i51;
                }
                for (int i52 = 0; i52 < size; i52++) {
                    if (z2) {
                        i10 = size - (i52 + 1);
                    } else {
                        i10 = i52;
                    }
                    WidgetRun widgetRun6 = this.mWidgets.get(i10);
                    if (widgetRun6.mWidget.getVisibility() == 8) {
                        widgetRun6.start.resolve(i9);
                        widgetRun6.end.resolve(i9);
                    } else {
                        if (i52 > 0 && i52 >= i24) {
                            if (z2) {
                                i9 -= widgetRun6.start.mMargin;
                            } else {
                                i9 += widgetRun6.start.mMargin;
                            }
                        }
                        if (z2) {
                            widgetRun6.end.resolve(i9);
                        } else {
                            widgetRun6.start.resolve(i9);
                        }
                        DimensionDependency dimensionDependency5 = widgetRun6.mDimension;
                        int i53 = dimensionDependency5.value;
                        if (widgetRun6.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && widgetRun6.matchConstraintsType == 1) {
                            i53 = dimensionDependency5.wrapValue;
                        }
                        i9 += i53;
                        if (z2) {
                            widgetRun6.start.resolve(i9);
                        } else {
                            widgetRun6.end.resolve(i9);
                        }
                        if (i52 < i25 && i52 < i) {
                            if (z2) {
                                i9 -= -widgetRun6.end.mMargin;
                            } else {
                                i9 += -widgetRun6.end.mMargin;
                            }
                        }
                    }
                }
            }
        }
    }
}
