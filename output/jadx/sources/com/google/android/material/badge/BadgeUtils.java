package com.google.android.material.badge;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.SparseArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.ParcelableSparseArray;
import com.google.android.material.internal.ToolbarUtils;
import com.panda912.muddy.ObfuscatedString;

@ExperimentalBadgeUtils
/* loaded from: classes2.dex */
public class BadgeUtils {
    private static final String LOG_TAG = new ObfuscatedString(new long[]{-8296695192540959549L, 2614606951993394104L, 3171416235489783375L}).toString();
    public static final boolean USE_COMPAT_PARENT = false;

    private BadgeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void attachBadgeContentDescription(@NonNull final BadgeDrawable badgeDrawable, @NonNull View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (Build.VERSION.SDK_INT >= 29 && ViewCompat.hasAccessibilityDelegate(view)) {
            accessibilityDelegate = view.getAccessibilityDelegate();
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat(accessibilityDelegate) { // from class: com.google.android.material.badge.BadgeUtils.2
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(badgeDrawable.getContentDescription());
                }
            });
        } else {
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat() { // from class: com.google.android.material.badge.BadgeUtils.3
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(BadgeDrawable.this.getContentDescription());
                }
            });
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view) {
        attachBadgeDrawable(badgeDrawable, view, (FrameLayout) null);
    }

    @NonNull
    public static SparseArray<BadgeDrawable> createBadgeDrawablesFromSavedStates(Context context, @NonNull ParcelableSparseArray parcelableSparseArray) {
        BadgeDrawable badgeDrawable;
        SparseArray<BadgeDrawable> sparseArray = new SparseArray<>(parcelableSparseArray.size());
        for (int i = 0; i < parcelableSparseArray.size(); i++) {
            int keyAt = parcelableSparseArray.keyAt(i);
            BadgeState.State state = (BadgeState.State) parcelableSparseArray.valueAt(i);
            if (state != null) {
                badgeDrawable = BadgeDrawable.createFromSavedState(context, state);
            } else {
                badgeDrawable = null;
            }
            sparseArray.put(keyAt, badgeDrawable);
        }
        return sparseArray;
    }

    @NonNull
    public static ParcelableSparseArray createParcelableBadgeStates(@NonNull SparseArray<BadgeDrawable> sparseArray) {
        BadgeState.State state;
        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            BadgeDrawable valueAt = sparseArray.valueAt(i);
            if (valueAt != null) {
                state = valueAt.getSavedState();
            } else {
                state = null;
            }
            parcelableSparseArray.put(keyAt, state);
        }
        return parcelableSparseArray;
    }

    private static void detachBadgeContentDescription(@NonNull View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (Build.VERSION.SDK_INT >= 29 && ViewCompat.hasAccessibilityDelegate(view)) {
            accessibilityDelegate = view.getAccessibilityDelegate();
            ViewCompat.setAccessibilityDelegate(view, new AccessibilityDelegateCompat(accessibilityDelegate) { // from class: com.google.android.material.badge.BadgeUtils.4
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                    accessibilityNodeInfoCompat.setContentDescription(null);
                }
            });
        } else {
            ViewCompat.setAccessibilityDelegate(view, null);
        }
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull View view) {
        if (badgeDrawable == null) {
            return;
        }
        if (!USE_COMPAT_PARENT && badgeDrawable.getCustomBadgeParent() == null) {
            view.getOverlay().remove(badgeDrawable);
        } else {
            badgeDrawable.getCustomBadgeParent().setForeground(null);
        }
    }

    @VisibleForTesting
    public static void removeToolbarOffset(BadgeDrawable badgeDrawable) {
        badgeDrawable.setAdditionalHorizontalOffset(0);
        badgeDrawable.setAdditionalVerticalOffset(0);
    }

    public static void setBadgeDrawableBounds(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        badgeDrawable.setBounds(rect);
        badgeDrawable.updateBadgeCoordinates(view, frameLayout);
    }

    @VisibleForTesting
    public static void setToolbarOffset(BadgeDrawable badgeDrawable, Resources resources) {
        badgeDrawable.setAdditionalHorizontalOffset(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_horizontal_offset));
        badgeDrawable.setAdditionalVerticalOffset(resources.getDimensionPixelOffset(R.dimen.mtrl_badge_toolbar_action_menu_item_vertical_offset));
    }

    public static void updateBadgeBounds(@NonNull Rect rect, float f, float f2, float f3, float f4) {
        rect.set((int) (f - f3), (int) (f2 - f4), (int) (f + f3), (int) (f2 + f4));
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull View view, @Nullable FrameLayout frameLayout) {
        setBadgeDrawableBounds(badgeDrawable, view, frameLayout);
        if (badgeDrawable.getCustomBadgeParent() != null) {
            badgeDrawable.getCustomBadgeParent().setForeground(badgeDrawable);
        } else {
            if (!USE_COMPAT_PARENT) {
                view.getOverlay().add(badgeDrawable);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6046887225717414118L, 3962000200712353735L, 5432730957688097879L, 6530463368390467777L, -6562724983500446057L, 7573907408520029638L, -5068962855827068666L}).toString());
        }
    }

    public static void detachBadgeDrawable(@Nullable BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        if (badgeDrawable == null) {
            return;
        }
        ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(toolbar, i);
        if (actionMenuItemView != null) {
            removeToolbarOffset(badgeDrawable);
            detachBadgeDrawable(badgeDrawable, actionMenuItemView);
            detachBadgeContentDescription(actionMenuItemView);
        } else {
            new ObfuscatedString(new long[]{-770882467886031619L, 9157991530034526338L, 5577488672674901147L}).toString();
            new ObfuscatedString(new long[]{229232635070737628L, 3345406053836466146L, -8106900422221342127L, 7631487434748148374L, -5914346647745554000L, 4204360846310518507L, 7907498738484995814L, 4333063132184167830L}).toString();
        }
    }

    public static void attachBadgeDrawable(@NonNull BadgeDrawable badgeDrawable, @NonNull Toolbar toolbar, @IdRes int i) {
        attachBadgeDrawable(badgeDrawable, toolbar, i, null);
    }

    public static void attachBadgeDrawable(@NonNull final BadgeDrawable badgeDrawable, @NonNull final Toolbar toolbar, @IdRes final int i, @Nullable final FrameLayout frameLayout) {
        toolbar.post(new Runnable() { // from class: com.google.android.material.badge.BadgeUtils.1
            @Override // java.lang.Runnable
            public void run() {
                ActionMenuItemView actionMenuItemView = ToolbarUtils.getActionMenuItemView(Toolbar.this, i);
                if (actionMenuItemView != null) {
                    BadgeUtils.setToolbarOffset(badgeDrawable, Toolbar.this.getResources());
                    BadgeUtils.attachBadgeDrawable(badgeDrawable, actionMenuItemView, frameLayout);
                    BadgeUtils.attachBadgeContentDescription(badgeDrawable, actionMenuItemView);
                }
            }
        });
    }
}
