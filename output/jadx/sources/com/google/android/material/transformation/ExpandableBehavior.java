package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.expandable.ExpandableWidget;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

@Deprecated
/* loaded from: classes2.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private static final int STATE_COLLAPSED = 2;
    private static final int STATE_EXPANDED = 1;
    private static final int STATE_UNINITIALIZED = 0;
    private int currentState;

    public ExpandableBehavior() {
        this.currentState = 0;
    }

    private boolean didStateChange(boolean z) {
        if (z) {
            int i = this.currentState;
            if (i != 0 && i != 2) {
                return false;
            }
            return true;
        }
        if (this.currentState != 1) {
            return false;
        }
        return true;
    }

    @Nullable
    public static <T extends ExpandableBehavior> T from(@NonNull View view, @NonNull Class<T> cls) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof ExpandableBehavior) {
                return cls.cast(behavior);
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6292480996028310589L, -281573094636105914L, -8233133087986442923L, -1285368360858856648L, 3330369025941554586L, -6953566869092850242L, 4247660591249858965L, -3895863887716137189L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2027276664956702254L, -6538551641657757481L, 312331018766201150L, -2661413912216657727L, -7247566174468383939L, 6166520875163403305L, 987704168021069587L}).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public ExpandableWidget findExpandableWidget(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view) {
        List<View> dependencies = coordinatorLayout.getDependencies(view);
        int size = dependencies.size();
        for (int i = 0; i < size; i++) {
            View view2 = dependencies.get(i);
            if (layoutDependsOn(coordinatorLayout, view, view2)) {
                return (ExpandableWidget) view2;
            }
        }
        return null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, View view, View view2) {
        int i;
        ExpandableWidget expandableWidget = (ExpandableWidget) view2;
        if (didStateChange(expandableWidget.isExpanded())) {
            if (expandableWidget.isExpanded()) {
                i = 1;
            } else {
                i = 2;
            }
            this.currentState = i;
            return onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), true);
        }
        return false;
    }

    public abstract boolean onExpandedStateChange(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull final View view, int i) {
        final ExpandableWidget findExpandableWidget;
        final int i2;
        if (!ViewCompat.isLaidOut(view) && (findExpandableWidget = findExpandableWidget(coordinatorLayout, view)) != null && didStateChange(findExpandableWidget.isExpanded())) {
            if (findExpandableWidget.isExpanded()) {
                i2 = 1;
            } else {
                i2 = 2;
            }
            this.currentState = i2;
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.google.android.material.transformation.ExpandableBehavior.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    if (ExpandableBehavior.this.currentState == i2) {
                        ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                        ExpandableWidget expandableWidget = findExpandableWidget;
                        expandableBehavior.onExpandedStateChange((View) expandableWidget, view, expandableWidget.isExpanded(), false);
                    }
                    return false;
                }
            });
            return false;
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentState = 0;
    }
}
