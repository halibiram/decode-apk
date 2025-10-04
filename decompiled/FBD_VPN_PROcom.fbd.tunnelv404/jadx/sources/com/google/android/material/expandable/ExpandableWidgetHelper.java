package com.google.android.material.expandable;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class ExpandableWidgetHelper {
    private boolean expanded = false;

    @IdRes
    private int expandedComponentIdHint = 0;

    @NonNull
    private final View widget;

    /* JADX WARN: Multi-variable type inference failed */
    public ExpandableWidgetHelper(ExpandableWidget expandableWidget) {
        this.widget = (View) expandableWidget;
    }

    private void dispatchExpandedStateChanged() {
        ViewParent parent = this.widget.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.widget);
        }
    }

    @IdRes
    public int getExpandedComponentIdHint() {
        return this.expandedComponentIdHint;
    }

    public boolean isExpanded() {
        return this.expanded;
    }

    public void onRestoreInstanceState(@NonNull Bundle bundle) {
        this.expanded = bundle.getBoolean(new ObfuscatedString(new long[]{-7294534352576821144L, -7960200914235546562L}).toString(), false);
        this.expandedComponentIdHint = bundle.getInt(new ObfuscatedString(new long[]{-8743730522211852680L, 4594307260868458909L, -1714246349567152487L, -9046373256420051185L}).toString(), 0);
        if (this.expanded) {
            dispatchExpandedStateChanged();
        }
    }

    @NonNull
    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(new ObfuscatedString(new long[]{4839527106515154626L, -7316737811368814093L}).toString(), this.expanded);
        bundle.putInt(new ObfuscatedString(new long[]{5257198464021771304L, -3806237297657112128L, -5214410457099156102L, -3126476583949305421L}).toString(), this.expandedComponentIdHint);
        return bundle;
    }

    public boolean setExpanded(boolean z) {
        if (this.expanded != z) {
            this.expanded = z;
            dispatchExpandedStateChanged();
            return true;
        }
        return false;
    }

    public void setExpandedComponentIdHint(@IdRes int i) {
        this.expandedComponentIdHint = i;
    }
}
