package androidx.core.view.insets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import androidx.core.R;
import androidx.core.graphics.Insets;
import androidx.core.view.insets.Protection;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    private static final Object PROTECTION_VIEW = new Object();
    private ProtectionGroup mGroup;
    private final List<Protection> mProtections;

    public ProtectionLayout(Context context) {
        super(context);
        this.mProtections = new ArrayList();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0088  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void addProtectionView(Context context, int i, Protection protection) {
        int width;
        int i2;
        int i3;
        Protection.Attributes attributes = protection.getAttributes();
        int side = protection.getSide();
        int i4 = 4;
        int i5 = -1;
        if (side != 1) {
            if (side != 2) {
                if (side != 4) {
                    if (side == 8) {
                        i3 = attributes.getHeight();
                        i2 = 80;
                    } else {
                        throw new IllegalArgumentException("Unexpected side: " + protection.getSide());
                    }
                } else {
                    width = attributes.getWidth();
                    i2 = 5;
                }
            } else {
                i3 = attributes.getHeight();
                i2 = 48;
            }
            final FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i3, i2);
            Insets margin = attributes.getMargin();
            layoutParams.leftMargin = margin.left;
            layoutParams.topMargin = margin.top;
            layoutParams.rightMargin = margin.right;
            layoutParams.bottomMargin = margin.bottom;
            final View view = new View(context);
            view.setTag(PROTECTION_VIEW);
            view.setTranslationX(attributes.getTranslationX());
            view.setTranslationY(attributes.getTranslationY());
            view.setAlpha(attributes.getAlpha());
            if (attributes.isVisible()) {
                i4 = 0;
            }
            view.setVisibility(i4);
            view.setBackground(attributes.getDrawable());
            attributes.setCallback(new Protection.Attributes.Callback() { // from class: androidx.core.view.insets.ProtectionLayout.1
                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onAlphaChanged(float f) {
                    view.setAlpha(f);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onDrawableChanged(Drawable drawable) {
                    view.setBackground(drawable);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onHeightChanged(int i6) {
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.height = i6;
                    view.setLayoutParams(layoutParams2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onMarginChanged(Insets insets) {
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.leftMargin = insets.left;
                    layoutParams2.topMargin = insets.top;
                    layoutParams2.rightMargin = insets.right;
                    layoutParams2.bottomMargin = insets.bottom;
                    view.setLayoutParams(layoutParams2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onTranslationXChanged(float f) {
                    view.setTranslationX(f);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onTranslationYChanged(float f) {
                    view.setTranslationY(f);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onVisibilityChanged(boolean z) {
                    int i6;
                    View view2 = view;
                    if (z) {
                        i6 = 0;
                    } else {
                        i6 = 4;
                    }
                    view2.setVisibility(i6);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public void onWidthChanged(int i6) {
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.width = i6;
                    view.setLayoutParams(layoutParams2);
                }
            });
            addView(view, i, layoutParams);
        }
        width = attributes.getWidth();
        i2 = 3;
        i5 = width;
        i3 = -1;
        final FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i5, i3, i2);
        Insets margin2 = attributes.getMargin();
        layoutParams2.leftMargin = margin2.left;
        layoutParams2.topMargin = margin2.top;
        layoutParams2.rightMargin = margin2.right;
        layoutParams2.bottomMargin = margin2.bottom;
        final View view2 = new View(context);
        view2.setTag(PROTECTION_VIEW);
        view2.setTranslationX(attributes.getTranslationX());
        view2.setTranslationY(attributes.getTranslationY());
        view2.setAlpha(attributes.getAlpha());
        if (attributes.isVisible()) {
        }
        view2.setVisibility(i4);
        view2.setBackground(attributes.getDrawable());
        attributes.setCallback(new Protection.Attributes.Callback() { // from class: androidx.core.view.insets.ProtectionLayout.1
            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onAlphaChanged(float f) {
                view2.setAlpha(f);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onDrawableChanged(Drawable drawable) {
                view2.setBackground(drawable);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onHeightChanged(int i6) {
                FrameLayout.LayoutParams layoutParams22 = layoutParams2;
                layoutParams22.height = i6;
                view2.setLayoutParams(layoutParams22);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onMarginChanged(Insets insets) {
                FrameLayout.LayoutParams layoutParams22 = layoutParams2;
                layoutParams22.leftMargin = insets.left;
                layoutParams22.topMargin = insets.top;
                layoutParams22.rightMargin = insets.right;
                layoutParams22.bottomMargin = insets.bottom;
                view2.setLayoutParams(layoutParams22);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onTranslationXChanged(float f) {
                view2.setTranslationX(f);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onTranslationYChanged(float f) {
                view2.setTranslationY(f);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onVisibilityChanged(boolean z) {
                int i6;
                View view22 = view2;
                if (z) {
                    i6 = 0;
                } else {
                    i6 = 4;
                }
                view22.setVisibility(i6);
            }

            @Override // androidx.core.view.insets.Protection.Attributes.Callback
            public void onWidthChanged(int i6) {
                FrameLayout.LayoutParams layoutParams22 = layoutParams2;
                layoutParams22.width = i6;
                view2.setLayoutParams(layoutParams22);
            }
        });
        addView(view2, i, layoutParams2);
    }

    private void addProtectionViews() {
        if (this.mProtections.isEmpty()) {
            return;
        }
        this.mGroup = new ProtectionGroup(getOrInstallSystemBarStateMonitor(), this.mProtections);
        int childCount = getChildCount();
        int size = this.mGroup.size();
        for (int i = 0; i < size; i++) {
            addProtectionView(getContext(), i + childCount, this.mGroup.getProtection(i));
        }
    }

    private SystemBarStateMonitor getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        int i = R.id.tag_system_bar_state_monitor;
        Object tag = viewGroup.getTag(i);
        if (tag instanceof SystemBarStateMonitor) {
            return (SystemBarStateMonitor) tag;
        }
        SystemBarStateMonitor systemBarStateMonitor = new SystemBarStateMonitor(viewGroup);
        viewGroup.setTag(i, systemBarStateMonitor);
        return systemBarStateMonitor;
    }

    private void maybeUninstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        int i = R.id.tag_system_bar_state_monitor;
        Object tag = viewGroup.getTag(i);
        if (!(tag instanceof SystemBarStateMonitor)) {
            return;
        }
        SystemBarStateMonitor systemBarStateMonitor = (SystemBarStateMonitor) tag;
        if (systemBarStateMonitor.hasCallback()) {
            return;
        }
        systemBarStateMonitor.detachFromWindow();
        viewGroup.setTag(i, null);
    }

    private void removeProtectionViews() {
        if (this.mGroup != null) {
            removeViews(getChildCount() - this.mGroup.size(), this.mGroup.size());
            int size = this.mGroup.size();
            for (int i = 0; i < size; i++) {
                this.mGroup.getProtection(i).getAttributes().setCallback(null);
            }
            this.mGroup.dispose();
            this.mGroup = null;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int i2;
        if (view != null && view.getTag() != PROTECTION_VIEW) {
            ProtectionGroup protectionGroup = this.mGroup;
            if (protectionGroup != null) {
                i2 = protectionGroup.size();
            } else {
                i2 = 0;
            }
            int childCount = getChildCount() - i2;
            if (i > childCount || i < 0) {
                i = childCount;
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mGroup != null) {
            removeProtectionViews();
        }
        addProtectionViews();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeProtectionViews();
        maybeUninstallSystemBarStateMonitor();
    }

    public void setProtections(List<Protection> list) {
        this.mProtections.clear();
        this.mProtections.addAll(list);
        if (isAttachedToWindow()) {
            removeProtectionViews();
            addProtectionViews();
            requestApplyInsets();
        }
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, @AttrRes int i) {
        this(context, attributeSet, i, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        super(context, attributeSet, i, i2);
        this.mProtections = new ArrayList();
    }

    public ProtectionLayout(Context context, List<Protection> list) {
        super(context);
        this.mProtections = new ArrayList();
        setProtections(list);
    }
}
