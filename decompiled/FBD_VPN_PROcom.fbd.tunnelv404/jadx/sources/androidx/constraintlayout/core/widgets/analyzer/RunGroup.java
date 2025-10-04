package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int mDirection;
    WidgetRun mFirstRun;
    int mGroupIndex;
    WidgetRun mLastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> mRuns = new ArrayList<>();

    public RunGroup(WidgetRun widgetRun, int i) {
        this.mFirstRun = null;
        this.mLastRun = null;
        int i2 = index;
        this.mGroupIndex = i2;
        index = i2 + 1;
        this.mFirstRun = widgetRun;
        this.mLastRun = widgetRun;
        this.mDirection = i;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.mWidget.isTerminalWidget[i]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.mDependencies) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).mRun) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it = ((ChainRun) widgetRun).mWidgets.iterator();
                    while (it.hasNext()) {
                        defineTerminalWidget(it.next(), i);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i] = false;
                }
                defineTerminalWidget(dependencyNode2.mRun, i);
            }
        }
        for (Dependency dependency2 : widgetRun.end.mDependencies) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).mRun) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).mWidgets.iterator();
                    while (it2.hasNext()) {
                        defineTerminalWidget(it2.next(), i);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i] = false;
                }
                defineTerminalWidget(dependencyNode.mRun, i);
            }
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.mDependencies.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.mDependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    j2 = Math.min(j2, traverseEnd(dependencyNode2, dependencyNode2.mMargin + j));
                }
            }
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = j - widgetRun.getWrapDimension();
            return Math.min(Math.min(j2, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.mMargin);
        }
        return j2;
    }

    private long traverseStart(DependencyNode dependencyNode, long j) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j;
        }
        int size = dependencyNode.mDependencies.size();
        long j2 = j;
        for (int i = 0; i < size; i++) {
            Dependency dependency = dependencyNode.mDependencies.get(i);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    j2 = Math.max(j2, traverseStart(dependencyNode2, dependencyNode2.mMargin + j));
                }
            }
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = j + widgetRun.getWrapDimension();
            return Math.max(Math.max(j2, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.mMargin);
        }
        return j2;
    }

    public void add(WidgetRun widgetRun) {
        this.mRuns.add(widgetRun);
        this.mLastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i) {
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        WidgetRun widgetRun3 = this.mFirstRun;
        long j = 0;
        if (widgetRun3 instanceof ChainRun) {
            if (((ChainRun) widgetRun3).orientation != i) {
                return 0L;
            }
        } else if (i == 0) {
            if (!(widgetRun3 instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun3 instanceof VerticalWidgetRun)) {
            return 0L;
        }
        if (i == 0) {
            widgetRun = constraintWidgetContainer.mHorizontalRun;
        } else {
            widgetRun = constraintWidgetContainer.mVerticalRun;
        }
        DependencyNode dependencyNode = widgetRun.start;
        if (i == 0) {
            widgetRun2 = constraintWidgetContainer.mHorizontalRun;
        } else {
            widgetRun2 = constraintWidgetContainer.mVerticalRun;
        }
        DependencyNode dependencyNode2 = widgetRun2.end;
        boolean contains = widgetRun3.start.mTargets.contains(dependencyNode);
        boolean contains2 = this.mFirstRun.end.mTargets.contains(dependencyNode2);
        long wrapDimension = this.mFirstRun.getWrapDimension();
        if (contains && contains2) {
            long traverseStart = traverseStart(this.mFirstRun.start, 0L);
            long traverseEnd = traverseEnd(this.mFirstRun.end, 0L);
            long j2 = traverseStart - wrapDimension;
            WidgetRun widgetRun4 = this.mFirstRun;
            int i2 = widgetRun4.end.mMargin;
            if (j2 >= (-i2)) {
                j2 += i2;
            }
            int i3 = widgetRun4.start.mMargin;
            long j3 = ((-traverseEnd) - wrapDimension) - i3;
            if (j3 >= i3) {
                j3 -= i3;
            }
            float biasPercent = widgetRun4.mWidget.getBiasPercent(i);
            if (biasPercent > 0.0f) {
                j = (((float) j2) / (1.0f - biasPercent)) + (((float) j3) / biasPercent);
            }
            float f = (float) j;
            long m2925xfbe0c504 = (f * biasPercent) + 0.5f + wrapDimension + AbstractC0362x4440ab85.m2925xfbe0c504(1.0f, biasPercent, f, 0.5f);
            WidgetRun widgetRun5 = this.mFirstRun;
            return (widgetRun5.start.mMargin + m2925xfbe0c504) - widgetRun5.end.mMargin;
        }
        if (contains) {
            return Math.max(traverseStart(this.mFirstRun.start, r13.mMargin), this.mFirstRun.start.mMargin + wrapDimension);
        }
        if (contains2) {
            return Math.max(-traverseEnd(this.mFirstRun.end, r13.mMargin), (-this.mFirstRun.end.mMargin) + wrapDimension);
        }
        return (this.mFirstRun.getWrapDimension() + r13.start.mMargin) - this.mFirstRun.end.mMargin;
    }

    public void defineTerminalWidgets(boolean z, boolean z2) {
        if (z) {
            WidgetRun widgetRun = this.mFirstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z2) {
            WidgetRun widgetRun2 = this.mFirstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
