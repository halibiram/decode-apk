package androidx.core.view.insets;

import android.graphics.RectF;
import androidx.core.graphics.Insets;
import androidx.core.view.insets.SystemBarStateMonitor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class ProtectionGroup implements SystemBarStateMonitor.Callback {
    private int mAnimationCount;
    private boolean mDisposed;
    private Insets mInsets;
    private Insets mInsetsIgnoringVisibility;
    private final SystemBarStateMonitor mMonitor;
    private final ArrayList<Protection> mProtections = new ArrayList<>();

    public ProtectionGroup(SystemBarStateMonitor systemBarStateMonitor, List<Protection> list) {
        Insets insets = Insets.NONE;
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets;
        addProtections(list, false);
        addProtections(list, true);
        systemBarStateMonitor.addCallback(this);
        this.mMonitor = systemBarStateMonitor;
    }

    private void addProtections(List<Protection> list, boolean z) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protection protection = list.get(i);
            if (protection.occupiesCorners() == z) {
                Object controller = protection.getController();
                if (controller == null) {
                    protection.setController(this);
                    this.mProtections.add(protection);
                } else {
                    throw new IllegalStateException(protection + " is already controlled by " + controller);
                }
            }
        }
    }

    private void updateInsets() {
        Insets insets = Insets.NONE;
        for (int size = this.mProtections.size() - 1; size >= 0; size--) {
            insets = Insets.max(insets, this.mProtections.get(size).dispatchInsets(this.mInsets, this.mInsetsIgnoringVisibility, insets));
        }
    }

    public void dispose() {
        if (this.mDisposed) {
            return;
        }
        this.mDisposed = true;
        this.mMonitor.removeCallback(this);
        for (int size = this.mProtections.size() - 1; size >= 0; size--) {
            this.mProtections.get(size).setController(null);
        }
        this.mProtections.clear();
    }

    public Protection getProtection(int i) {
        return this.mProtections.get(i);
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public void onAnimationEnd() {
        boolean z;
        int i = this.mAnimationCount;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        int i2 = i - 1;
        this.mAnimationCount = i2;
        if (z && i2 == 0) {
            updateInsets();
        }
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public void onAnimationProgress(int i, Insets insets, RectF rectF) {
        Insets insets2 = this.mInsetsIgnoringVisibility;
        for (int size = this.mProtections.size() - 1; size >= 0; size--) {
            Protection protection = this.mProtections.get(size);
            int side = protection.getSide();
            if ((side & i) != 0) {
                protection.setSystemVisible(true);
                if (side != 1) {
                    if (side != 2) {
                        if (side != 4) {
                            if (side == 8) {
                                int i2 = insets2.bottom;
                                if (i2 > 0) {
                                    protection.setSystemInsetAmount(insets.bottom / i2);
                                }
                                protection.setSystemAlpha(rectF.bottom);
                            }
                        } else {
                            int i3 = insets2.right;
                            if (i3 > 0) {
                                protection.setSystemInsetAmount(insets.right / i3);
                            }
                            protection.setSystemAlpha(rectF.right);
                        }
                    } else {
                        int i4 = insets2.top;
                        if (i4 > 0) {
                            protection.setSystemInsetAmount(insets.top / i4);
                        }
                        protection.setSystemAlpha(rectF.top);
                    }
                } else {
                    int i5 = insets2.left;
                    if (i5 > 0) {
                        protection.setSystemInsetAmount(insets.left / i5);
                    }
                    protection.setSystemAlpha(rectF.left);
                }
            }
        }
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public void onAnimationStart() {
        this.mAnimationCount++;
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public void onColorHintChanged(int i) {
        for (int size = this.mProtections.size() - 1; size >= 0; size--) {
            this.mProtections.get(size).dispatchColorHint(i);
        }
    }

    @Override // androidx.core.view.insets.SystemBarStateMonitor.Callback
    public void onInsetsChanged(Insets insets, Insets insets2) {
        this.mInsets = insets;
        this.mInsetsIgnoringVisibility = insets2;
        updateInsets();
    }

    public int size() {
        return this.mProtections.size();
    }
}
