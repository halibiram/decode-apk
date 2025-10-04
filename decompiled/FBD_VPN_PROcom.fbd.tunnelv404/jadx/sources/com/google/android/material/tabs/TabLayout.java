package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.TooltipCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.badge.BadgeUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

@ViewPager.DecorView
/* loaded from: classes2.dex */
public class TabLayout extends HorizontalScrollView {
    private static final int ANIMATION_DURATION = 300;

    @Dimension(unit = 0)
    static final int DEFAULT_GAP_TEXT_ICON = 8;

    @Dimension(unit = 0)
    private static final int DEFAULT_HEIGHT = 48;

    @Dimension(unit = 0)
    private static final int DEFAULT_HEIGHT_WITH_TEXT_ICON = 72;

    @Dimension(unit = 0)
    static final int FIXED_WRAP_GUTTER_MIN = 16;
    public static final int GRAVITY_CENTER = 1;
    public static final int GRAVITY_FILL = 0;
    public static final int GRAVITY_START = 2;
    public static final int INDICATOR_ANIMATION_MODE_ELASTIC = 1;
    public static final int INDICATOR_ANIMATION_MODE_FADE = 2;
    public static final int INDICATOR_ANIMATION_MODE_LINEAR = 0;
    public static final int INDICATOR_GRAVITY_BOTTOM = 0;
    public static final int INDICATOR_GRAVITY_CENTER = 1;
    public static final int INDICATOR_GRAVITY_STRETCH = 3;
    public static final int INDICATOR_GRAVITY_TOP = 2;
    private static final int INVALID_WIDTH = -1;
    public static final int MODE_AUTO = 2;
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLLABLE = 0;
    private static final int SELECTED_INDICATOR_HEIGHT_DEFAULT = -1;
    public static final int TAB_LABEL_VISIBILITY_LABELED = 1;
    public static final int TAB_LABEL_VISIBILITY_UNLABELED = 0;

    @Dimension(unit = 0)
    private static final int TAB_MIN_WIDTH_MARGIN = 56;
    private AdapterChangeListener adapterChangeListener;
    private int contentInsetStart;

    @Nullable
    private BaseOnTabSelectedListener currentVpSelectedListener;
    private final int defaultTabTextAppearance;
    int indicatorPosition;
    boolean inlineLabel;
    int mode;
    private TabLayoutOnPageChangeListener pageChangeListener;

    @Nullable
    private PagerAdapter pagerAdapter;
    private DataSetObserver pagerAdapterObserver;
    private final int requestedTabMaxWidth;
    private final int requestedTabMinWidth;
    private ValueAnimator scrollAnimator;
    private final int scrollableTabMinWidth;

    @Nullable
    private BaseOnTabSelectedListener selectedListener;
    private final ArrayList<BaseOnTabSelectedListener> selectedListeners;

    @Nullable
    private Tab selectedTab;
    private int selectedTabTextAppearance;
    float selectedTabTextSize;
    private boolean setupViewPagerImplicitly;

    @NonNull
    final SlidingTabIndicator slidingTabIndicator;
    final int tabBackgroundResId;
    int tabGravity;
    ColorStateList tabIconTint;
    PorterDuff.Mode tabIconTintMode;
    int tabIndicatorAnimationDuration;
    int tabIndicatorAnimationMode;
    boolean tabIndicatorFullWidth;
    int tabIndicatorGravity;
    int tabIndicatorHeight;
    private TabIndicatorInterpolator tabIndicatorInterpolator;
    private final TimeInterpolator tabIndicatorTimeInterpolator;
    int tabMaxWidth;
    int tabPaddingBottom;
    int tabPaddingEnd;
    int tabPaddingStart;
    int tabPaddingTop;
    ColorStateList tabRippleColorStateList;

    @NonNull
    Drawable tabSelectedIndicator;
    private int tabSelectedIndicatorColor;
    private final int tabTextAppearance;
    ColorStateList tabTextColors;
    float tabTextMultiLineSize;
    float tabTextSize;
    private final Pools.Pool<TabView> tabViewPool;
    private final ArrayList<Tab> tabs;
    boolean unboundedRipple;

    @Nullable
    ViewPager viewPager;
    private int viewPagerScrollState;
    private static final String LOG_TAG = new ObfuscatedString(new long[]{-1493219428633649112L, -4475180620069537809L, 1254681322409609729L}).toString();
    private static final int DEF_STYLE_RES = R.style.Widget_Design_TabLayout;
    private static final Pools.Pool<Tab> tabPool = new Pools.SynchronizedPool(16);

    /* loaded from: classes2.dex */
    public class AdapterChangeListener implements ViewPager.OnAdapterChangeListener {
        private boolean autoRefresh;

        public AdapterChangeListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnAdapterChangeListener
        public void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.viewPager == viewPager) {
                tabLayout.setPagerAdapter(pagerAdapter2, this.autoRefresh);
            }
        }

        public void setAutoRefresh(boolean z) {
            this.autoRefresh = z;
        }
    }

    @Deprecated
    /* loaded from: classes2.dex */
    public interface BaseOnTabSelectedListener<T extends Tab> {
        void onTabReselected(T t);

        void onTabSelected(T t);

        void onTabUnselected(T t);
    }

    /* loaded from: classes2.dex */
    public @interface LabelVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface Mode {
    }

    /* loaded from: classes2.dex */
    public interface OnTabSelectedListener extends BaseOnTabSelectedListener<Tab> {
    }

    /* loaded from: classes2.dex */
    public class PagerAdapterObserver extends DataSetObserver {
        public PagerAdapterObserver() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabLayout.this.populateFromPagerAdapter();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabLayout.this.populateFromPagerAdapter();
        }
    }

    /* loaded from: classes2.dex */
    public class SlidingTabIndicator extends LinearLayout {
        ValueAnimator indicatorAnimator;
        private int layoutDirection;

        public SlidingTabIndicator(Context context) {
            super(context);
            this.layoutDirection = -1;
            setWillNotDraw(false);
        }

        private void jumpIndicatorToIndicatorPosition() {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.indicatorPosition == -1) {
                tabLayout.indicatorPosition = tabLayout.getSelectedTabPosition();
            }
            jumpIndicatorToPosition(TabLayout.this.indicatorPosition);
        }

        private void jumpIndicatorToPosition(int i) {
            if (TabLayout.this.viewPagerScrollState != 0 && (TabLayout.this.getTabSelectedIndicator().getBounds().left != -1 || TabLayout.this.getTabSelectedIndicator().getBounds().right != -1)) {
                return;
            }
            View childAt = getChildAt(i);
            TabIndicatorInterpolator tabIndicatorInterpolator = TabLayout.this.tabIndicatorInterpolator;
            TabLayout tabLayout = TabLayout.this;
            tabIndicatorInterpolator.setIndicatorBoundsForTab(tabLayout, childAt, tabLayout.tabSelectedIndicator);
            TabLayout.this.indicatorPosition = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void jumpIndicatorToSelectedPosition() {
            jumpIndicatorToPosition(TabLayout.this.getSelectedTabPosition());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void tweenIndicatorPosition(View view, View view2, float f) {
            if (view != null && view.getWidth() > 0) {
                TabIndicatorInterpolator tabIndicatorInterpolator = TabLayout.this.tabIndicatorInterpolator;
                TabLayout tabLayout = TabLayout.this;
                tabIndicatorInterpolator.updateIndicatorForOffset(tabLayout, view, view2, f, tabLayout.tabSelectedIndicator);
            } else {
                Drawable drawable = TabLayout.this.tabSelectedIndicator;
                drawable.setBounds(-1, drawable.getBounds().top, -1, TabLayout.this.tabSelectedIndicator.getBounds().bottom);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }

        private void updateOrRecreateIndicatorAnimation(boolean z, int i, int i2) {
            TabLayout tabLayout = TabLayout.this;
            if (tabLayout.indicatorPosition == i) {
                return;
            }
            final View childAt = getChildAt(tabLayout.getSelectedTabPosition());
            final View childAt2 = getChildAt(i);
            if (childAt2 == null) {
                jumpIndicatorToSelectedPosition();
                return;
            }
            TabLayout.this.indicatorPosition = i;
            ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.SlidingTabIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                    SlidingTabIndicator.this.tweenIndicatorPosition(childAt, childAt2, valueAnimator.getAnimatedFraction());
                }
            };
            if (z) {
                ValueAnimator valueAnimator = new ValueAnimator();
                this.indicatorAnimator = valueAnimator;
                valueAnimator.setInterpolator(TabLayout.this.tabIndicatorTimeInterpolator);
                valueAnimator.setDuration(i2);
                valueAnimator.setFloatValues(0.0f, 1.0f);
                valueAnimator.addUpdateListener(animatorUpdateListener);
                valueAnimator.start();
                return;
            }
            this.indicatorAnimator.removeAllUpdateListeners();
            this.indicatorAnimator.addUpdateListener(animatorUpdateListener);
        }

        public void animateIndicatorToPosition(int i, int i2) {
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning() && TabLayout.this.indicatorPosition != i) {
                this.indicatorAnimator.cancel();
            }
            updateOrRecreateIndicatorAnimation(true, i, i2);
        }

        public boolean childrenNeedLayout() {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i).getWidth() <= 0) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.view.View
        public void draw(@NonNull Canvas canvas) {
            int height;
            int height2 = TabLayout.this.tabSelectedIndicator.getBounds().height();
            if (height2 < 0) {
                height2 = TabLayout.this.tabSelectedIndicator.getIntrinsicHeight();
            }
            int i = TabLayout.this.tabIndicatorGravity;
            if (i != 0) {
                if (i != 1) {
                    height = 0;
                    if (i != 2) {
                        if (i != 3) {
                            height2 = 0;
                        } else {
                            height2 = getHeight();
                        }
                    }
                } else {
                    height = (getHeight() - height2) / 2;
                    height2 = (getHeight() + height2) / 2;
                }
            } else {
                height = getHeight() - height2;
                height2 = getHeight();
            }
            if (TabLayout.this.tabSelectedIndicator.getBounds().width() > 0) {
                Rect bounds = TabLayout.this.tabSelectedIndicator.getBounds();
                TabLayout.this.tabSelectedIndicator.setBounds(bounds.left, height, bounds.right, height2);
                TabLayout.this.tabSelectedIndicator.draw(canvas);
            }
            super.draw(canvas);
        }

        @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                updateOrRecreateIndicatorAnimation(false, TabLayout.this.getSelectedTabPosition(), -1);
            } else {
                jumpIndicatorToIndicatorPosition();
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (View.MeasureSpec.getMode(i) != 1073741824) {
                return;
            }
            TabLayout tabLayout = TabLayout.this;
            boolean z = true;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                int childCount = getChildCount();
                int i3 = 0;
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt.getVisibility() == 0) {
                        i3 = Math.max(i3, childAt.getMeasuredWidth());
                    }
                }
                if (i3 <= 0) {
                    return;
                }
                if (i3 * childCount <= getMeasuredWidth() - (((int) ViewUtils.dpToPx(getContext(), 16)) * 2)) {
                    boolean z2 = false;
                    for (int i5 = 0; i5 < childCount; i5++) {
                        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i5).getLayoutParams();
                        if (layoutParams.width != i3 || layoutParams.weight != 0.0f) {
                            layoutParams.width = i3;
                            layoutParams.weight = 0.0f;
                            z2 = true;
                        }
                    }
                    z = z2;
                } else {
                    TabLayout tabLayout2 = TabLayout.this;
                    tabLayout2.tabGravity = 0;
                    tabLayout2.updateTabViews(false);
                }
                if (z) {
                    super.onMeasure(i, i2);
                }
            }
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onRtlPropertiesChanged(int i) {
            super.onRtlPropertiesChanged(i);
            if (Build.VERSION.SDK_INT < 23 && this.layoutDirection != i) {
                requestLayout();
                this.layoutDirection = i;
            }
        }

        public void setIndicatorPositionFromTabPosition(int i, float f) {
            TabLayout.this.indicatorPosition = Math.round(i + f);
            ValueAnimator valueAnimator = this.indicatorAnimator;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.indicatorAnimator.cancel();
            }
            tweenIndicatorPosition(getChildAt(i), getChildAt(i + 1), f);
        }

        public void setSelectedIndicatorHeight(int i) {
            Rect bounds = TabLayout.this.tabSelectedIndicator.getBounds();
            TabLayout.this.tabSelectedIndicator.setBounds(bounds.left, 0, bounds.right, i);
            requestLayout();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface TabGravity {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface TabIndicatorAnimationMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface TabIndicatorGravity {
    }

    /* loaded from: classes2.dex */
    public static class TabLayoutOnPageChangeListener implements ViewPager.OnPageChangeListener {
        private int previousScrollState;
        private int scrollState;

        @NonNull
        private final WeakReference<TabLayout> tabLayoutRef;

        public TabLayoutOnPageChangeListener(TabLayout tabLayout) {
            this.tabLayoutRef = new WeakReference<>(tabLayout);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            this.previousScrollState = this.scrollState;
            this.scrollState = i;
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null) {
                tabLayout.updateViewPagerScrollState(this.scrollState);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            boolean z;
            boolean z2;
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null) {
                int i3 = this.scrollState;
                if (i3 == 2 && this.previousScrollState != 1) {
                    z = false;
                } else {
                    z = true;
                }
                if (i3 == 2 && this.previousScrollState == 0) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                tabLayout.setScrollPosition(i, f, z, z2, false);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            boolean z;
            TabLayout tabLayout = this.tabLayoutRef.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.scrollState;
                if (i2 != 0 && (i2 != 2 || this.previousScrollState != 0)) {
                    z = false;
                } else {
                    z = true;
                }
                tabLayout.selectTab(tabLayout.getTabAt(i), z);
            }
        }

        public void reset() {
            this.scrollState = 0;
            this.previousScrollState = 0;
        }
    }

    /* loaded from: classes2.dex */
    public final class TabView extends LinearLayout {

        @Nullable
        private View badgeAnchorView;

        @Nullable
        private BadgeDrawable badgeDrawable;

        @Nullable
        private Drawable baseBackgroundDrawable;

        @Nullable
        private ImageView customIconView;

        @Nullable
        private TextView customTextView;

        @Nullable
        private View customView;
        private int defaultMaxLines;
        private ImageView iconView;
        private Tab tab;
        private TextView textView;

        public TabView(@NonNull Context context) {
            super(context);
            this.defaultMaxLines = 2;
            updateBackgroundDrawable(context);
            ViewCompat.setPaddingRelative(this, TabLayout.this.tabPaddingStart, TabLayout.this.tabPaddingTop, TabLayout.this.tabPaddingEnd, TabLayout.this.tabPaddingBottom);
            setGravity(17);
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            setClickable(true);
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
        }

        private void addOnLayoutChangeListener(@Nullable final View view) {
            if (view == null) {
                return;
            }
            view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.google.android.material.tabs.TabLayout.TabView.1
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (view.getVisibility() == 0) {
                        TabView.this.tryUpdateBadgeDrawableBounds(view);
                    }
                }
            });
        }

        private float approximateLineWidth(@NonNull Layout layout, int i, float f) {
            return (f / layout.getPaint().getTextSize()) * layout.getLineWidth(i);
        }

        private void clipViewToPaddingForBadge(boolean z) {
            setClipChildren(z);
            setClipToPadding(z);
            ViewGroup viewGroup = (ViewGroup) getParent();
            if (viewGroup != null) {
                viewGroup.setClipChildren(z);
                viewGroup.setClipToPadding(z);
            }
        }

        @NonNull
        private FrameLayout createPreApi18BadgeAnchorRoot() {
            FrameLayout frameLayout = new FrameLayout(getContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            return frameLayout;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void drawBackground(@NonNull Canvas canvas) {
            Drawable drawable = this.baseBackgroundDrawable;
            if (drawable != null) {
                drawable.setBounds(getLeft(), getTop(), getRight(), getBottom());
                this.baseBackgroundDrawable.draw(canvas);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public BadgeDrawable getBadge() {
            return this.badgeDrawable;
        }

        @Nullable
        private FrameLayout getCustomParentForBadge(@NonNull View view) {
            if ((view != this.iconView && view != this.textView) || !BadgeUtils.USE_COMPAT_PARENT) {
                return null;
            }
            return (FrameLayout) view.getParent();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            if (this.badgeDrawable == null) {
                this.badgeDrawable = BadgeDrawable.create(getContext());
            }
            tryUpdateBadgeAnchor();
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null) {
                return badgeDrawable;
            }
            throw new IllegalStateException(new ObfuscatedString(new long[]{-8133389703951101526L, 2337673921093282695L, 254876506433824256L, -7838016271055912544L}).toString());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasBadgeDrawable() {
            if (this.badgeDrawable != null) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void inflateAndAddDefaultIconView() {
            FrameLayout frameLayout;
            if (BadgeUtils.USE_COMPAT_PARENT) {
                frameLayout = createPreApi18BadgeAnchorRoot();
                addView(frameLayout, 0);
            } else {
                frameLayout = this;
            }
            ImageView imageView = (ImageView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, (ViewGroup) frameLayout, false);
            this.iconView = imageView;
            frameLayout.addView(imageView, 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private void inflateAndAddDefaultTextView() {
            FrameLayout frameLayout;
            if (BadgeUtils.USE_COMPAT_PARENT) {
                frameLayout = createPreApi18BadgeAnchorRoot();
                addView(frameLayout);
            } else {
                frameLayout = this;
            }
            TextView textView = (TextView) LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, (ViewGroup) frameLayout, false);
            this.textView = textView;
            frameLayout.addView(textView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeBadge() {
            if (this.badgeAnchorView != null) {
                tryRemoveBadgeFromAnchor();
            }
            this.badgeDrawable = null;
        }

        private void tryAttachBadgeToAnchor(@Nullable View view) {
            if (hasBadgeDrawable() && view != null) {
                clipViewToPaddingForBadge(false);
                BadgeUtils.attachBadgeDrawable(this.badgeDrawable, view, getCustomParentForBadge(view));
                this.badgeAnchorView = view;
            }
        }

        private void tryRemoveBadgeFromAnchor() {
            if (!hasBadgeDrawable()) {
                return;
            }
            clipViewToPaddingForBadge(true);
            View view = this.badgeAnchorView;
            if (view != null) {
                BadgeUtils.detachBadgeDrawable(this.badgeDrawable, view);
                this.badgeAnchorView = null;
            }
        }

        private void tryUpdateBadgeAnchor() {
            Tab tab;
            Tab tab2;
            if (!hasBadgeDrawable()) {
                return;
            }
            if (this.customView != null) {
                tryRemoveBadgeFromAnchor();
                return;
            }
            if (this.iconView != null && (tab2 = this.tab) != null && tab2.getIcon() != null) {
                View view = this.badgeAnchorView;
                ImageView imageView = this.iconView;
                if (view != imageView) {
                    tryRemoveBadgeFromAnchor();
                    tryAttachBadgeToAnchor(this.iconView);
                    return;
                } else {
                    tryUpdateBadgeDrawableBounds(imageView);
                    return;
                }
            }
            if (this.textView != null && (tab = this.tab) != null && tab.getTabLabelVisibility() == 1) {
                View view2 = this.badgeAnchorView;
                TextView textView = this.textView;
                if (view2 != textView) {
                    tryRemoveBadgeFromAnchor();
                    tryAttachBadgeToAnchor(this.textView);
                    return;
                } else {
                    tryUpdateBadgeDrawableBounds(textView);
                    return;
                }
            }
            tryRemoveBadgeFromAnchor();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void tryUpdateBadgeDrawableBounds(@NonNull View view) {
            if (hasBadgeDrawable() && view == this.badgeAnchorView) {
                BadgeUtils.setBadgeDrawableBounds(this.badgeDrawable, view, getCustomParentForBadge(view));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [android.graphics.drawable.RippleDrawable] */
        public void updateBackgroundDrawable(Context context) {
            int i = TabLayout.this.tabBackgroundResId;
            GradientDrawable gradientDrawable = null;
            if (i != 0) {
                Drawable drawable = AppCompatResources.getDrawable(context, i);
                this.baseBackgroundDrawable = drawable;
                if (drawable != null && drawable.isStateful()) {
                    this.baseBackgroundDrawable.setState(getDrawableState());
                }
            } else {
                this.baseBackgroundDrawable = null;
            }
            GradientDrawable gradientDrawable2 = new GradientDrawable();
            gradientDrawable2.setColor(0);
            if (TabLayout.this.tabRippleColorStateList != null) {
                GradientDrawable gradientDrawable3 = new GradientDrawable();
                gradientDrawable3.setCornerRadius(1.0E-5f);
                gradientDrawable3.setColor(-1);
                ColorStateList convertToRippleDrawableColor = RippleUtils.convertToRippleDrawableColor(TabLayout.this.tabRippleColorStateList);
                boolean z = TabLayout.this.unboundedRipple;
                if (z) {
                    gradientDrawable2 = null;
                }
                if (!z) {
                    gradientDrawable = gradientDrawable3;
                }
                gradientDrawable2 = new RippleDrawable(convertToRippleDrawableColor, gradientDrawable2, gradientDrawable);
            }
            ViewCompat.setBackground(this, gradientDrawable2);
            TabLayout.this.invalidate();
        }

        /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        
            if (r7.tab.labelVisibilityMode == 1) goto L28;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void updateTextAndIcon(@Nullable TextView textView, @Nullable ImageView imageView, boolean z) {
            Drawable drawable;
            CharSequence charSequence;
            boolean z2;
            int i;
            CharSequence charSequence2;
            int i2;
            Tab tab = this.tab;
            CharSequence charSequence3 = null;
            if (tab != null && tab.getIcon() != null) {
                drawable = DrawableCompat.wrap(this.tab.getIcon()).mutate();
            } else {
                drawable = null;
            }
            if (drawable != null) {
                DrawableCompat.setTintList(drawable, TabLayout.this.tabIconTint);
                PorterDuff.Mode mode = TabLayout.this.tabIconTintMode;
                if (mode != null) {
                    DrawableCompat.setTintMode(drawable, mode);
                }
            }
            Tab tab2 = this.tab;
            if (tab2 != null) {
                charSequence = tab2.getText();
            } else {
                charSequence = null;
            }
            if (imageView != null) {
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                    imageView.setVisibility(0);
                    setVisibility(0);
                } else {
                    imageView.setVisibility(8);
                    imageView.setImageDrawable(null);
                }
            }
            boolean isEmpty = TextUtils.isEmpty(charSequence);
            if (textView != null) {
                if (!isEmpty) {
                    z2 = true;
                }
                z2 = false;
                if (!isEmpty) {
                    charSequence2 = charSequence;
                } else {
                    charSequence2 = null;
                }
                textView.setText(charSequence2);
                if (z2) {
                    i2 = 0;
                } else {
                    i2 = 8;
                }
                textView.setVisibility(i2);
                if (!isEmpty) {
                    setVisibility(0);
                }
            } else {
                z2 = false;
            }
            if (z && imageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
                if (z2 && imageView.getVisibility() == 0) {
                    i = (int) ViewUtils.dpToPx(getContext(), 8);
                } else {
                    i = 0;
                }
                if (TabLayout.this.inlineLabel) {
                    if (i != MarginLayoutParamsCompat.getMarginEnd(marginLayoutParams)) {
                        MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, i);
                        marginLayoutParams.bottomMargin = 0;
                        imageView.setLayoutParams(marginLayoutParams);
                        imageView.requestLayout();
                    }
                } else if (i != marginLayoutParams.bottomMargin) {
                    marginLayoutParams.bottomMargin = i;
                    MarginLayoutParamsCompat.setMarginEnd(marginLayoutParams, 0);
                    imageView.setLayoutParams(marginLayoutParams);
                    imageView.requestLayout();
                }
            }
            Tab tab3 = this.tab;
            if (tab3 != null) {
                charSequence3 = tab3.contentDesc;
            }
            if (Build.VERSION.SDK_INT > 23) {
                if (isEmpty) {
                    charSequence = charSequence3;
                }
                TooltipCompat.setTooltipText(this, charSequence);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void drawableStateChanged() {
            boolean z;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            Drawable drawable = this.baseBackgroundDrawable;
            if (drawable != null && drawable.isStateful()) {
                z = this.baseBackgroundDrawable.setState(drawableState);
            } else {
                z = false;
            }
            if (z) {
                invalidate();
                TabLayout.this.invalidate();
            }
        }

        public int getContentHeight() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    if (z) {
                        i2 = Math.min(i2, view.getTop());
                    } else {
                        i2 = view.getTop();
                    }
                    if (z) {
                        i = Math.max(i, view.getBottom());
                    } else {
                        i = view.getBottom();
                    }
                    z = true;
                }
            }
            return i - i2;
        }

        public int getContentWidth() {
            View[] viewArr = {this.textView, this.iconView, this.customView};
            int i = 0;
            int i2 = 0;
            boolean z = false;
            for (int i3 = 0; i3 < 3; i3++) {
                View view = viewArr[i3];
                if (view != null && view.getVisibility() == 0) {
                    if (z) {
                        i2 = Math.min(i2, view.getLeft());
                    } else {
                        i2 = view.getLeft();
                    }
                    if (z) {
                        i = Math.max(i, view.getRight());
                    } else {
                        i = view.getRight();
                    }
                    z = true;
                }
            }
            return i - i2;
        }

        @Nullable
        public Tab getTab() {
            return this.tab;
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            BadgeDrawable badgeDrawable = this.badgeDrawable;
            if (badgeDrawable != null && badgeDrawable.isVisible()) {
                wrap.setContentDescription(this.badgeDrawable.getContentDescription());
            }
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(0, 1, this.tab.getPosition(), 1, false, isSelected()));
            if (isSelected()) {
                wrap.setClickable(false);
                wrap.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            }
            wrap.setRoleDescription(getResources().getString(R.string.item_view_role_description));
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            Layout layout;
            int size = View.MeasureSpec.getSize(i);
            int mode = View.MeasureSpec.getMode(i);
            int tabMaxWidth = TabLayout.this.getTabMaxWidth();
            if (tabMaxWidth > 0 && (mode == 0 || size > tabMaxWidth)) {
                i = View.MeasureSpec.makeMeasureSpec(TabLayout.this.tabMaxWidth, Integer.MIN_VALUE);
            }
            super.onMeasure(i, i2);
            if (this.textView != null) {
                float f = TabLayout.this.tabTextSize;
                int i3 = this.defaultMaxLines;
                ImageView imageView = this.iconView;
                if (imageView != null && imageView.getVisibility() == 0) {
                    i3 = 1;
                } else {
                    TextView textView = this.textView;
                    if (textView != null && textView.getLineCount() > 1) {
                        f = TabLayout.this.tabTextMultiLineSize;
                    }
                }
                float textSize = this.textView.getTextSize();
                int lineCount = this.textView.getLineCount();
                int maxLines = TextViewCompat.getMaxLines(this.textView);
                if (f != textSize || (maxLines >= 0 && i3 != maxLines)) {
                    if (TabLayout.this.mode != 1 || f <= textSize || lineCount != 1 || ((layout = this.textView.getLayout()) != null && approximateLineWidth(layout, 0, f) <= (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) {
                        this.textView.setTextSize(0, f);
                        this.textView.setMaxLines(i3);
                        super.onMeasure(i, i2);
                    }
                }
            }
        }

        @Override // android.view.View
        public boolean performClick() {
            boolean performClick = super.performClick();
            if (this.tab != null) {
                if (!performClick) {
                    playSoundEffect(0);
                }
                this.tab.select();
                return true;
            }
            return performClick;
        }

        public void reset() {
            setTab(null);
            setSelected(false);
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            isSelected();
            super.setSelected(z);
            TextView textView = this.textView;
            if (textView != null) {
                textView.setSelected(z);
            }
            ImageView imageView = this.iconView;
            if (imageView != null) {
                imageView.setSelected(z);
            }
            View view = this.customView;
            if (view != null) {
                view.setSelected(z);
            }
        }

        public void setTab(@Nullable Tab tab) {
            if (tab != this.tab) {
                this.tab = tab;
                update();
            }
        }

        public final void update() {
            boolean z;
            updateTab();
            Tab tab = this.tab;
            if (tab != null && tab.isSelected()) {
                z = true;
            } else {
                z = false;
            }
            setSelected(z);
        }

        public final void updateOrientation() {
            setOrientation(!TabLayout.this.inlineLabel ? 1 : 0);
            TextView textView = this.customTextView;
            if (textView == null && this.customIconView == null) {
                updateTextAndIcon(this.textView, this.iconView, true);
            } else {
                updateTextAndIcon(textView, this.customIconView, false);
            }
        }

        public final void updateTab() {
            View view;
            ViewParent parent;
            Tab tab = this.tab;
            if (tab != null) {
                view = tab.getCustomView();
            } else {
                view = null;
            }
            if (view != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 != this) {
                    if (parent2 != null) {
                        ((ViewGroup) parent2).removeView(view);
                    }
                    View view2 = this.customView;
                    if (view2 != null && (parent = view2.getParent()) != null) {
                        ((ViewGroup) parent).removeView(this.customView);
                    }
                    addView(view);
                }
                this.customView = view;
                TextView textView = this.textView;
                if (textView != null) {
                    textView.setVisibility(8);
                }
                ImageView imageView = this.iconView;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    this.iconView.setImageDrawable(null);
                }
                TextView textView2 = (TextView) view.findViewById(android.R.id.text1);
                this.customTextView = textView2;
                if (textView2 != null) {
                    this.defaultMaxLines = TextViewCompat.getMaxLines(textView2);
                }
                this.customIconView = (ImageView) view.findViewById(android.R.id.icon);
            } else {
                View view3 = this.customView;
                if (view3 != null) {
                    removeView(view3);
                    this.customView = null;
                }
                this.customTextView = null;
                this.customIconView = null;
            }
            if (this.customView == null) {
                if (this.iconView == null) {
                    inflateAndAddDefaultIconView();
                }
                if (this.textView == null) {
                    inflateAndAddDefaultTextView();
                    this.defaultMaxLines = TextViewCompat.getMaxLines(this.textView);
                }
                TextViewCompat.setTextAppearance(this.textView, TabLayout.this.defaultTabTextAppearance);
                if (isSelected() && TabLayout.this.selectedTabTextAppearance != -1) {
                    TextViewCompat.setTextAppearance(this.textView, TabLayout.this.selectedTabTextAppearance);
                } else {
                    TextViewCompat.setTextAppearance(this.textView, TabLayout.this.tabTextAppearance);
                }
                ColorStateList colorStateList = TabLayout.this.tabTextColors;
                if (colorStateList != null) {
                    this.textView.setTextColor(colorStateList);
                }
                updateTextAndIcon(this.textView, this.iconView, true);
                tryUpdateBadgeAnchor();
                addOnLayoutChangeListener(this.iconView);
                addOnLayoutChangeListener(this.textView);
            } else {
                TextView textView3 = this.customTextView;
                if (textView3 != null || this.customIconView != null) {
                    updateTextAndIcon(textView3, this.customIconView, false);
                }
            }
            if (tab != null && !TextUtils.isEmpty(tab.contentDesc)) {
                setContentDescription(tab.contentDesc);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ViewPagerOnTabSelectedListener implements OnTabSelectedListener {
        private final ViewPager viewPager;

        public ViewPagerOnTabSelectedListener(ViewPager viewPager) {
            this.viewPager = viewPager;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull Tab tab) {
            this.viewPager.setCurrentItem(tab.getPosition());
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(Tab tab) {
        }
    }

    public TabLayout(@NonNull Context context) {
        this(context, null);
    }

    private void addTabFromItemView(@NonNull TabItem tabItem) {
        Tab newTab = newTab();
        CharSequence charSequence = tabItem.text;
        if (charSequence != null) {
            newTab.setText(charSequence);
        }
        Drawable drawable = tabItem.icon;
        if (drawable != null) {
            newTab.setIcon(drawable);
        }
        int i = tabItem.customLayout;
        if (i != 0) {
            newTab.setCustomView(i);
        }
        if (!TextUtils.isEmpty(tabItem.getContentDescription())) {
            newTab.setContentDescription(tabItem.getContentDescription());
        }
        addTab(newTab);
    }

    private void addTabView(@NonNull Tab tab) {
        TabView tabView = tab.view;
        tabView.setSelected(false);
        tabView.setActivated(false);
        this.slidingTabIndicator.addView(tabView, tab.getPosition(), createLayoutParamsForTabs());
    }

    private void addViewInternal(View view) {
        if (view instanceof TabItem) {
            addTabFromItemView((TabItem) view);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1142355567505143717L, -7474291028085131056L, 4044560907059958761L, -6525418133942879936L, 8315016857211419281L, -6531178919439464974L, -161790830360231976L}).toString());
    }

    private void animateToTab(int i) {
        if (i == -1) {
            return;
        }
        if (getWindowToken() != null && ViewCompat.isLaidOut(this) && !this.slidingTabIndicator.childrenNeedLayout()) {
            int scrollX = getScrollX();
            int calculateScrollXForTab = calculateScrollXForTab(i, 0.0f);
            if (scrollX != calculateScrollXForTab) {
                ensureScrollAnimator();
                this.scrollAnimator.setIntValues(scrollX, calculateScrollXForTab);
                this.scrollAnimator.start();
            }
            this.slidingTabIndicator.animateIndicatorToPosition(i, this.tabIndicatorAnimationDuration);
            return;
        }
        setScrollPosition(i, 0.0f, true);
    }

    private void applyGravityForModeScrollable(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
            } else {
                this.slidingTabIndicator.setGravity(1);
                return;
            }
        } else {
            new ObfuscatedString(new long[]{360953857885212910L, -1587921284520705582L, -2805043142258173919L}).toString();
            new ObfuscatedString(new long[]{-5360989905552720759L, -4797796407057378970L, -8585608066738447517L, -2927415819890481607L, 6994813975547870500L, 3609167343433388812L, 3035940058410562532L, -6322148459763195652L, -8808835559859575390L, 7256629738549905983L, -7034055811082982116L, 6187011340123440293L}).toString();
        }
        this.slidingTabIndicator.setGravity(GravityCompat.START);
    }

    private void applyModeAndGravity() {
        int max;
        int i = this.mode;
        if (i != 0 && i != 2) {
            max = 0;
        } else {
            max = Math.max(0, this.contentInsetStart - this.tabPaddingStart);
        }
        ViewCompat.setPaddingRelative(this.slidingTabIndicator, max, 0, 0, 0);
        int i2 = this.mode;
        if (i2 != 0) {
            if (i2 == 1 || i2 == 2) {
                if (this.tabGravity == 2) {
                    new ObfuscatedString(new long[]{-6693586489350627715L, -2598864949387739173L, 5776923239414791284L}).toString();
                    new ObfuscatedString(new long[]{-4311971997197876635L, -6365443857998315543L, -6847246204663391245L, -5992757606000399138L, -606895558054671470L, 8423715232322795615L, -2908295697466719703L, -4198453680121047481L, 3072233002055122880L, -6714477541093442294L, 997397077280680526L, -3582877429553396860L, 6293418017040416952L}).toString();
                }
                this.slidingTabIndicator.setGravity(1);
            }
        } else {
            applyGravityForModeScrollable(this.tabGravity);
        }
        updateTabViews(true);
    }

    private int calculateScrollXForTab(int i, float f) {
        View childAt;
        View view;
        int i2 = this.mode;
        int i3 = 0;
        if ((i2 != 0 && i2 != 2) || (childAt = this.slidingTabIndicator.getChildAt(i)) == null) {
            return 0;
        }
        int i4 = i + 1;
        if (i4 < this.slidingTabIndicator.getChildCount()) {
            view = this.slidingTabIndicator.getChildAt(i4);
        } else {
            view = null;
        }
        int width = childAt.getWidth();
        if (view != null) {
            i3 = view.getWidth();
        }
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i5 = (int) ((width + i3) * 0.5f * f);
        if (ViewCompat.getLayoutDirection(this) == 0) {
            return left + i5;
        }
        return left - i5;
    }

    private void configureTab(@NonNull Tab tab, int i) {
        tab.setPosition(i);
        this.tabs.add(i, tab);
        int size = this.tabs.size();
        int i2 = -1;
        for (int i3 = i + 1; i3 < size; i3++) {
            if (this.tabs.get(i3).getPosition() == this.indicatorPosition) {
                i2 = i3;
            }
            this.tabs.get(i3).setPosition(i3);
        }
        this.indicatorPosition = i2;
    }

    @NonNull
    private static ColorStateList createColorStateList(int i, int i2) {
        return new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{i2, i});
    }

    @NonNull
    private LinearLayout.LayoutParams createLayoutParamsForTabs() {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
        updateTabViewLayoutParams(layoutParams);
        return layoutParams;
    }

    @NonNull
    private TabView createTabView(@NonNull Tab tab) {
        TabView tabView;
        Pools.Pool<TabView> pool = this.tabViewPool;
        if (pool != null) {
            tabView = pool.acquire();
        } else {
            tabView = null;
        }
        if (tabView == null) {
            tabView = new TabView(getContext());
        }
        tabView.setTab(tab);
        tabView.setFocusable(true);
        tabView.setMinimumWidth(getTabMinWidth());
        if (TextUtils.isEmpty(tab.contentDesc)) {
            tabView.setContentDescription(tab.text);
        } else {
            tabView.setContentDescription(tab.contentDesc);
        }
        return tabView;
    }

    private void dispatchTabReselected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabReselected(tab);
        }
    }

    private void dispatchTabSelected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabSelected(tab);
        }
    }

    private void dispatchTabUnselected(@NonNull Tab tab) {
        for (int size = this.selectedListeners.size() - 1; size >= 0; size--) {
            this.selectedListeners.get(size).onTabUnselected(tab);
        }
    }

    private void ensureScrollAnimator() {
        if (this.scrollAnimator == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.scrollAnimator = valueAnimator;
            valueAnimator.setInterpolator(this.tabIndicatorTimeInterpolator);
            this.scrollAnimator.setDuration(this.tabIndicatorAnimationDuration);
            this.scrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.tabs.TabLayout.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator2) {
                    TabLayout.this.scrollTo(((Integer) valueAnimator2.getAnimatedValue()).intValue(), 0);
                }
            });
        }
    }

    @Dimension(unit = 0)
    private int getDefaultHeight() {
        int size = this.tabs.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            Tab tab = this.tabs.get(i);
            if (tab != null && tab.getIcon() != null && !TextUtils.isEmpty(tab.getText())) {
                if (!this.inlineLabel) {
                    return 72;
                }
            } else {
                i++;
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i = this.requestedTabMinWidth;
        if (i != -1) {
            return i;
        }
        int i2 = this.mode;
        if (i2 != 0 && i2 != 2) {
            return 0;
        }
        return this.scrollableTabMinWidth;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.slidingTabIndicator.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private boolean isScrollingEnabled() {
        if (getTabMode() != 0 && getTabMode() != 2) {
            return false;
        }
        return true;
    }

    private void removeTabViewAt(int i) {
        TabView tabView = (TabView) this.slidingTabIndicator.getChildAt(i);
        this.slidingTabIndicator.removeViewAt(i);
        if (tabView != null) {
            tabView.reset();
            this.tabViewPool.release(tabView);
        }
        requestLayout();
    }

    private void setSelectedTabView(int i) {
        boolean z;
        boolean z2;
        int childCount = this.slidingTabIndicator.getChildCount();
        if (i < childCount) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = this.slidingTabIndicator.getChildAt(i2);
                boolean z3 = true;
                if ((i2 == i && !childAt.isSelected()) || (i2 != i && childAt.isSelected())) {
                    if (i2 == i) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    childAt.setSelected(z2);
                    if (i2 != i) {
                        z3 = false;
                    }
                    childAt.setActivated(z3);
                    if (childAt instanceof TabView) {
                        ((TabView) childAt).updateTab();
                    }
                } else {
                    if (i2 == i) {
                        z = true;
                    } else {
                        z = false;
                    }
                    childAt.setSelected(z);
                    if (i2 != i) {
                        z3 = false;
                    }
                    childAt.setActivated(z3);
                }
            }
        }
    }

    private void updateAllTabs() {
        int size = this.tabs.size();
        for (int i = 0; i < size; i++) {
            this.tabs.get(i).updateView();
        }
    }

    private void updateTabViewLayoutParams(@NonNull LinearLayout.LayoutParams layoutParams) {
        if (this.mode == 1 && this.tabGravity == 0) {
            layoutParams.width = 0;
            layoutParams.weight = 1.0f;
        } else {
            layoutParams.width = -2;
            layoutParams.weight = 0.0f;
        }
    }

    public void addOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        addOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab) {
        addTab(tab, this.tabs.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view) {
        addViewInternal(view);
    }

    public void clearOnTabSelectedListeners() {
        this.selectedListeners.clear();
    }

    public Tab createTabFromPool() {
        Tab acquire = tabPool.acquire();
        if (acquire == null) {
            return new Tab();
        }
        return acquire;
    }

    public int getSelectedTabPosition() {
        Tab tab = this.selectedTab;
        if (tab != null) {
            return tab.getPosition();
        }
        return -1;
    }

    @Nullable
    public Tab getTabAt(int i) {
        if (i >= 0 && i < getTabCount()) {
            return this.tabs.get(i);
        }
        return null;
    }

    public int getTabCount() {
        return this.tabs.size();
    }

    public int getTabGravity() {
        return this.tabGravity;
    }

    @Nullable
    public ColorStateList getTabIconTint() {
        return this.tabIconTint;
    }

    public int getTabIndicatorAnimationMode() {
        return this.tabIndicatorAnimationMode;
    }

    public int getTabIndicatorGravity() {
        return this.tabIndicatorGravity;
    }

    public int getTabMaxWidth() {
        return this.tabMaxWidth;
    }

    public int getTabMode() {
        return this.mode;
    }

    @Nullable
    public ColorStateList getTabRippleColor() {
        return this.tabRippleColorStateList;
    }

    @NonNull
    public Drawable getTabSelectedIndicator() {
        return this.tabSelectedIndicator;
    }

    @Nullable
    public ColorStateList getTabTextColors() {
        return this.tabTextColors;
    }

    public boolean hasUnboundedRipple() {
        return this.unboundedRipple;
    }

    public boolean isInlineLabel() {
        return this.inlineLabel;
    }

    public boolean isTabIndicatorFullWidth() {
        return this.tabIndicatorFullWidth;
    }

    @NonNull
    public Tab newTab() {
        Tab createTabFromPool = createTabFromPool();
        createTabFromPool.parent = this;
        createTabFromPool.view = createTabView(createTabFromPool);
        if (createTabFromPool.id != -1) {
            createTabFromPool.view.setId(createTabFromPool.id);
        }
        return createTabFromPool;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        if (this.viewPager == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                setupWithViewPager((ViewPager) parent, true, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.setupViewPagerImplicitly) {
            setupWithViewPager(null);
            this.setupViewPagerImplicitly = false;
        }
    }

    @Override // android.view.View
    public void onDraw(@NonNull Canvas canvas) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
            if (childAt instanceof TabView) {
                ((TabView) childAt).drawBackground(canvas);
            }
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getTabCount(), false, 1));
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (isScrollingEnabled() && super.onInterceptTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int round = Math.round(ViewUtils.dpToPx(getContext(), getDefaultHeight()));
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i2 = View.MeasureSpec.makeMeasureSpec(getPaddingBottom() + getPaddingTop() + round, 1073741824);
            }
        } else if (getChildCount() == 1 && View.MeasureSpec.getSize(i2) >= round) {
            getChildAt(0).setMinimumHeight(round);
        }
        int size = View.MeasureSpec.getSize(i);
        if (View.MeasureSpec.getMode(i) != 0) {
            int i3 = this.requestedTabMaxWidth;
            if (i3 <= 0) {
                i3 = (int) (size - ViewUtils.dpToPx(getContext(), 56));
            }
            this.tabMaxWidth = i3;
        }
        super.onMeasure(i, i2);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i4 = this.mode;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        return;
                    }
                } else {
                    if (childAt.getMeasuredWidth() == getMeasuredWidth()) {
                        return;
                    }
                    childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
                }
            }
            if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 8 && !isScrollingEnabled()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void populateFromPagerAdapter() {
        int currentItem;
        removeAllTabs();
        PagerAdapter pagerAdapter = this.pagerAdapter;
        if (pagerAdapter != null) {
            int count = pagerAdapter.getCount();
            for (int i = 0; i < count; i++) {
                addTab(newTab().setText(this.pagerAdapter.getPageTitle(i)), false);
            }
            ViewPager viewPager = this.viewPager;
            if (viewPager != null && count > 0 && (currentItem = viewPager.getCurrentItem()) != getSelectedTabPosition() && currentItem < getTabCount()) {
                selectTab(getTabAt(currentItem));
            }
        }
    }

    public boolean releaseFromTabPool(Tab tab) {
        return tabPool.release(tab);
    }

    public void removeAllTabs() {
        for (int childCount = this.slidingTabIndicator.getChildCount() - 1; childCount >= 0; childCount--) {
            removeTabViewAt(childCount);
        }
        Iterator<Tab> it = this.tabs.iterator();
        while (it.hasNext()) {
            Tab next = it.next();
            it.remove();
            next.reset();
            releaseFromTabPool(next);
        }
        this.selectedTab = null;
    }

    public void removeOnTabSelectedListener(@NonNull OnTabSelectedListener onTabSelectedListener) {
        removeOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void removeTab(@NonNull Tab tab) {
        if (tab.parent == this) {
            removeTabAt(tab.getPosition());
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7505786193260889662L, -4502134921390442458L, -5451022931548330019L, 2274584878571551539L, 3061868079332842125L, -2938849022054467898L}).toString());
    }

    public void removeTabAt(int i) {
        int i2;
        Tab tab;
        Tab tab2 = this.selectedTab;
        if (tab2 != null) {
            i2 = tab2.getPosition();
        } else {
            i2 = 0;
        }
        removeTabViewAt(i);
        Tab remove = this.tabs.remove(i);
        if (remove != null) {
            remove.reset();
            releaseFromTabPool(remove);
        }
        int size = this.tabs.size();
        int i3 = -1;
        for (int i4 = i; i4 < size; i4++) {
            if (this.tabs.get(i4).getPosition() == this.indicatorPosition) {
                i3 = i4;
            }
            this.tabs.get(i4).setPosition(i4);
        }
        this.indicatorPosition = i3;
        if (i2 == i) {
            if (this.tabs.isEmpty()) {
                tab = null;
            } else {
                tab = this.tabs.get(Math.max(0, i - 1));
            }
            selectTab(tab);
        }
    }

    public void selectTab(@Nullable Tab tab) {
        selectTab(tab, true);
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    public void setInlineLabel(boolean z) {
        if (this.inlineLabel != z) {
            this.inlineLabel = z;
            for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
                View childAt = this.slidingTabIndicator.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateOrientation();
                }
            }
            applyModeAndGravity();
        }
    }

    public void setInlineLabelResource(@BoolRes int i) {
        setInlineLabel(getResources().getBoolean(i));
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable OnTabSelectedListener onTabSelectedListener) {
        setOnTabSelectedListener((BaseOnTabSelectedListener) onTabSelectedListener);
    }

    public void setPagerAdapter(@Nullable PagerAdapter pagerAdapter, boolean z) {
        DataSetObserver dataSetObserver;
        PagerAdapter pagerAdapter2 = this.pagerAdapter;
        if (pagerAdapter2 != null && (dataSetObserver = this.pagerAdapterObserver) != null) {
            pagerAdapter2.unregisterDataSetObserver(dataSetObserver);
        }
        this.pagerAdapter = pagerAdapter;
        if (z && pagerAdapter != null) {
            if (this.pagerAdapterObserver == null) {
                this.pagerAdapterObserver = new PagerAdapterObserver();
            }
            pagerAdapter.registerDataSetObserver(this.pagerAdapterObserver);
        }
        populateFromPagerAdapter();
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        ensureScrollAnimator();
        this.scrollAnimator.addListener(animatorListener);
    }

    public void setScrollPosition(int i, float f, boolean z) {
        setScrollPosition(i, f, z, true);
    }

    public void setSelectedTabIndicator(@Nullable Drawable drawable) {
        if (drawable == null) {
            drawable = new GradientDrawable();
        }
        Drawable mutate = DrawableCompat.wrap(drawable).mutate();
        this.tabSelectedIndicator = mutate;
        DrawableUtils.setTint(mutate, this.tabSelectedIndicatorColor);
        int i = this.tabIndicatorHeight;
        if (i == -1) {
            i = this.tabSelectedIndicator.getIntrinsicHeight();
        }
        this.slidingTabIndicator.setSelectedIndicatorHeight(i);
    }

    public void setSelectedTabIndicatorColor(@ColorInt int i) {
        this.tabSelectedIndicatorColor = i;
        DrawableUtils.setTint(this.tabSelectedIndicator, i);
        updateTabViews(false);
    }

    public void setSelectedTabIndicatorGravity(int i) {
        if (this.tabIndicatorGravity != i) {
            this.tabIndicatorGravity = i;
            ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i) {
        this.tabIndicatorHeight = i;
        this.slidingTabIndicator.setSelectedIndicatorHeight(i);
    }

    public void setTabGravity(int i) {
        if (this.tabGravity != i) {
            this.tabGravity = i;
            applyModeAndGravity();
        }
    }

    public void setTabIconTint(@Nullable ColorStateList colorStateList) {
        if (this.tabIconTint != colorStateList) {
            this.tabIconTint = colorStateList;
            updateAllTabs();
        }
    }

    public void setTabIconTintResource(@ColorRes int i) {
        setTabIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabIndicatorAnimationMode(int i) {
        this.tabIndicatorAnimationMode = i;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    this.tabIndicatorInterpolator = new FadeTabIndicatorInterpolator();
                    return;
                } else {
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{817166599152564365L, -8905216377072075508L, -3428051738763920364L, -3641129680302637621L, -105458735305069924L, 5214739245650097234L, -4828307414128730099L}), AbstractC0749x8313616e.m3340x952a0a9e(i)));
                }
            }
            this.tabIndicatorInterpolator = new ElasticTabIndicatorInterpolator();
            return;
        }
        this.tabIndicatorInterpolator = new TabIndicatorInterpolator();
    }

    public void setTabIndicatorFullWidth(boolean z) {
        this.tabIndicatorFullWidth = z;
        this.slidingTabIndicator.jumpIndicatorToSelectedPosition();
        ViewCompat.postInvalidateOnAnimation(this.slidingTabIndicator);
    }

    public void setTabMode(int i) {
        if (i != this.mode) {
            this.mode = i;
            applyModeAndGravity();
        }
    }

    public void setTabRippleColor(@Nullable ColorStateList colorStateList) {
        if (this.tabRippleColorStateList != colorStateList) {
            this.tabRippleColorStateList = colorStateList;
            for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
                View childAt = this.slidingTabIndicator.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateBackgroundDrawable(getContext());
                }
            }
        }
    }

    public void setTabRippleColorResource(@ColorRes int i) {
        setTabRippleColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    public void setTabTextColors(@Nullable ColorStateList colorStateList) {
        if (this.tabTextColors != colorStateList) {
            this.tabTextColors = colorStateList;
            updateAllTabs();
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(@Nullable PagerAdapter pagerAdapter) {
        setPagerAdapter(pagerAdapter, false);
    }

    public void setUnboundedRipple(boolean z) {
        if (this.unboundedRipple != z) {
            this.unboundedRipple = z;
            for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
                View childAt = this.slidingTabIndicator.getChildAt(i);
                if (childAt instanceof TabView) {
                    ((TabView) childAt).updateBackgroundDrawable(getContext());
                }
            }
        }
    }

    public void setUnboundedRippleResource(@BoolRes int i) {
        setUnboundedRipple(getResources().getBoolean(i));
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager) {
        setupWithViewPager(viewPager, true);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        if (getTabScrollRange() > 0) {
            return true;
        }
        return false;
    }

    public void updateTabViews(boolean z) {
        for (int i = 0; i < this.slidingTabIndicator.getChildCount(); i++) {
            View childAt = this.slidingTabIndicator.getChildAt(i);
            childAt.setMinimumWidth(getTabMinWidth());
            updateTabViewLayoutParams((LinearLayout.LayoutParams) childAt.getLayoutParams());
            if (z) {
                childAt.requestLayout();
            }
        }
    }

    public void updateViewPagerScrollState(int i) {
        this.viewPagerScrollState = i;
    }

    /* loaded from: classes2.dex */
    public static class Tab {
        public static final int INVALID_POSITION = -1;

        @Nullable
        private CharSequence contentDesc;

        @Nullable
        private View customView;

        @Nullable
        private Drawable icon;

        @Nullable
        public TabLayout parent;

        @Nullable
        private Object tag;

        @Nullable
        private CharSequence text;

        @NonNull
        public TabView view;
        private int position = -1;

        @LabelVisibility
        private int labelVisibilityMode = 1;
        private int id = -1;

        @Nullable
        public BadgeDrawable getBadge() {
            return this.view.getBadge();
        }

        @Nullable
        public CharSequence getContentDescription() {
            TabView tabView = this.view;
            if (tabView == null) {
                return null;
            }
            return tabView.getContentDescription();
        }

        @Nullable
        public View getCustomView() {
            return this.customView;
        }

        @Nullable
        public Drawable getIcon() {
            return this.icon;
        }

        public int getId() {
            return this.id;
        }

        @NonNull
        public BadgeDrawable getOrCreateBadge() {
            return this.view.getOrCreateBadge();
        }

        public int getPosition() {
            return this.position;
        }

        @LabelVisibility
        public int getTabLabelVisibility() {
            return this.labelVisibilityMode;
        }

        @Nullable
        public Object getTag() {
            return this.tag;
        }

        @Nullable
        public CharSequence getText() {
            return this.text;
        }

        public boolean isSelected() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                int selectedTabPosition = tabLayout.getSelectedTabPosition();
                if (selectedTabPosition != -1 && selectedTabPosition == this.position) {
                    return true;
                }
                return false;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6821694614858443094L, 8489241721741538120L, -858470883177706297L, -3153476162139962747L, 1201795572808704553L}).toString());
        }

        public void removeBadge() {
            this.view.removeBadge();
        }

        public void reset() {
            this.parent = null;
            this.view = null;
            this.tag = null;
            this.icon = null;
            this.id = -1;
            this.text = null;
            this.contentDesc = null;
            this.position = -1;
            this.customView = null;
        }

        public void select() {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                tabLayout.selectTab(this);
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5817828977533845431L, -3906196875878539808L, 945199810498954479L, 2881461570806022696L, -6899558021979745459L}).toString());
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setContentDescription(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setContentDescription(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6310535578120616245L, 3205836821206067827L, 1255915409835553170L, -6343155983532482860L, -1827554573371841909L}).toString());
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setCustomView(@Nullable View view) {
            this.customView = view;
            updateView();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setIcon(@Nullable Drawable drawable) {
            this.icon = drawable;
            TabLayout tabLayout = this.parent;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                tabLayout.updateTabViews(true);
            }
            updateView();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setId(int i) {
            this.id = i;
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.setId(i);
            }
            return this;
        }

        public void setPosition(int i) {
            this.position = i;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setTabLabelVisibility(@LabelVisibility int i) {
            this.labelVisibilityMode = i;
            TabLayout tabLayout = this.parent;
            if (tabLayout.tabGravity == 1 || tabLayout.mode == 2) {
                tabLayout.updateTabViews(true);
            }
            updateView();
            if (BadgeUtils.USE_COMPAT_PARENT && this.view.hasBadgeDrawable() && this.view.badgeDrawable.isVisible()) {
                this.view.invalidate();
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setTag(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setText(@Nullable CharSequence charSequence) {
            if (TextUtils.isEmpty(this.contentDesc) && !TextUtils.isEmpty(charSequence)) {
                this.view.setContentDescription(charSequence);
            }
            this.text = charSequence;
            updateView();
            return this;
        }

        public void updateView() {
            TabView tabView = this.view;
            if (tabView != null) {
                tabView.update();
            }
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setCustomView(@LayoutRes int i) {
            return setCustomView(LayoutInflater.from(this.view.getContext()).inflate(i, (ViewGroup) this.view, false));
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setContentDescription(@Nullable CharSequence charSequence) {
            this.contentDesc = charSequence;
            updateView();
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setText(@StringRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setText(tabLayout.getResources().getText(i));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1139741953635897987L, 7474047872174185343L, -3694551538998846430L, -1776741750060447961L, -6451107869530644572L}).toString());
        }

        @NonNull
        @CanIgnoreReturnValue
        public Tab setIcon(@DrawableRes int i) {
            TabLayout tabLayout = this.parent;
            if (tabLayout != null) {
                return setIcon(AppCompatResources.getDrawable(tabLayout.getContext(), i));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6567029428810762294L, -150940311298894727L, 9211576357266140392L, 2349102415705240232L, -752753321375685505L}).toString());
        }
    }

    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.tabStyle);
    }

    @Deprecated
    public void addOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        if (this.selectedListeners.contains(baseOnTabSelectedListener)) {
            return;
        }
        this.selectedListeners.add(baseOnTabSelectedListener);
    }

    public void addTab(@NonNull Tab tab, int i) {
        addTab(tab, i, this.tabs.isEmpty());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i) {
        addViewInternal(view);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Deprecated
    public void removeOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        this.selectedListeners.remove(baseOnTabSelectedListener);
    }

    public void selectTab(@Nullable Tab tab, boolean z) {
        Tab tab2 = this.selectedTab;
        if (tab2 == tab) {
            if (tab2 != null) {
                dispatchTabReselected(tab);
                animateToTab(tab.getPosition());
                return;
            }
            return;
        }
        int position = tab != null ? tab.getPosition() : -1;
        if (z) {
            if ((tab2 == null || tab2.getPosition() == -1) && position != -1) {
                setScrollPosition(position, 0.0f, true);
            } else {
                animateToTab(position);
            }
            if (position != -1) {
                setSelectedTabView(position);
            }
        }
        this.selectedTab = tab;
        if (tab2 != null && tab2.parent != null) {
            dispatchTabUnselected(tab2);
        }
        if (tab != null) {
            dispatchTabSelected(tab);
        }
    }

    @Deprecated
    public void setOnTabSelectedListener(@Nullable BaseOnTabSelectedListener baseOnTabSelectedListener) {
        BaseOnTabSelectedListener baseOnTabSelectedListener2 = this.selectedListener;
        if (baseOnTabSelectedListener2 != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener2);
        }
        this.selectedListener = baseOnTabSelectedListener;
        if (baseOnTabSelectedListener != null) {
            addOnTabSelectedListener(baseOnTabSelectedListener);
        }
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2) {
        setScrollPosition(i, f, z, z2, true);
    }

    public void setupWithViewPager(@Nullable ViewPager viewPager, boolean z) {
        setupWithViewPager(viewPager, z, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TabLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, r4), attributeSet, i);
        int i2 = DEF_STYLE_RES;
        this.indicatorPosition = -1;
        this.tabs = new ArrayList<>();
        this.selectedTabTextAppearance = -1;
        this.tabSelectedIndicatorColor = 0;
        this.tabMaxWidth = Integer.MAX_VALUE;
        this.tabIndicatorHeight = -1;
        this.selectedListeners = new ArrayList<>();
        this.tabViewPool = new Pools.SimplePool(12);
        Context context2 = getContext();
        setHorizontalScrollBarEnabled(false);
        SlidingTabIndicator slidingTabIndicator = new SlidingTabIndicator(context2);
        this.slidingTabIndicator = slidingTabIndicator;
        super.addView(slidingTabIndicator, 0, new FrameLayout.LayoutParams(-2, -1));
        int[] iArr = R.styleable.TabLayout;
        int i3 = R.styleable.TabLayout_tabTextAppearance;
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, iArr, i, i2, i3);
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(getBackground());
        if (colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
            materialShapeDrawable.setFillColor(colorStateListOrNull);
            materialShapeDrawable.initializeElevationOverlay(context2);
            materialShapeDrawable.setElevation(ViewCompat.getElevation(this));
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        setSelectedTabIndicator(MaterialResources.getDrawable(context2, obtainStyledAttributes, R.styleable.TabLayout_tabIndicator));
        setSelectedTabIndicatorColor(obtainStyledAttributes.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
        slidingTabIndicator.setSelectedIndicatorHeight(obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, -1));
        setSelectedTabIndicatorGravity(obtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorGravity, 0));
        setTabIndicatorAnimationMode(obtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorAnimationMode, 0));
        setTabIndicatorFullWidth(obtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabIndicatorFullWidth, true));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
        this.tabPaddingBottom = dimensionPixelSize;
        this.tabPaddingEnd = dimensionPixelSize;
        this.tabPaddingTop = dimensionPixelSize;
        this.tabPaddingStart = dimensionPixelSize;
        this.tabPaddingStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, dimensionPixelSize);
        this.tabPaddingTop = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, this.tabPaddingTop);
        this.tabPaddingEnd = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, this.tabPaddingEnd);
        this.tabPaddingBottom = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, this.tabPaddingBottom);
        if (ThemeEnforcement.isMaterial3Theme(context2)) {
            this.defaultTabTextAppearance = R.attr.textAppearanceTitleSmall;
        } else {
            this.defaultTabTextAppearance = R.attr.textAppearanceButton;
        }
        int resourceId = obtainStyledAttributes.getResourceId(i3, R.style.TextAppearance_Design_Tab);
        this.tabTextAppearance = resourceId;
        int[] iArr2 = androidx.appcompat.R.styleable.TextAppearance;
        TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(resourceId, iArr2);
        try {
            int i4 = androidx.appcompat.R.styleable.TextAppearance_android_textSize;
            this.tabTextSize = obtainStyledAttributes2.getDimensionPixelSize(i4, 0);
            int i5 = androidx.appcompat.R.styleable.TextAppearance_android_textColor;
            this.tabTextColors = MaterialResources.getColorStateList(context2, obtainStyledAttributes2, i5);
            obtainStyledAttributes2.recycle();
            int i6 = R.styleable.TabLayout_tabSelectedTextAppearance;
            if (obtainStyledAttributes.hasValue(i6)) {
                this.selectedTabTextAppearance = obtainStyledAttributes.getResourceId(i6, resourceId);
            }
            int i7 = this.selectedTabTextAppearance;
            if (i7 != -1) {
                obtainStyledAttributes2 = context2.obtainStyledAttributes(i7, iArr2);
                try {
                    this.selectedTabTextSize = obtainStyledAttributes2.getDimensionPixelSize(i4, (int) this.tabTextSize);
                    ColorStateList colorStateList = MaterialResources.getColorStateList(context2, obtainStyledAttributes2, i5);
                    if (colorStateList != null) {
                        this.tabTextColors = createColorStateList(this.tabTextColors.getDefaultColor(), colorStateList.getColorForState(new int[]{android.R.attr.state_selected}, colorStateList.getDefaultColor()));
                    }
                } finally {
                }
            }
            int i8 = R.styleable.TabLayout_tabTextColor;
            if (obtainStyledAttributes.hasValue(i8)) {
                this.tabTextColors = MaterialResources.getColorStateList(context2, obtainStyledAttributes, i8);
            }
            int i9 = R.styleable.TabLayout_tabSelectedTextColor;
            if (obtainStyledAttributes.hasValue(i9)) {
                this.tabTextColors = createColorStateList(this.tabTextColors.getDefaultColor(), obtainStyledAttributes.getColor(i9, 0));
            }
            this.tabIconTint = MaterialResources.getColorStateList(context2, obtainStyledAttributes, R.styleable.TabLayout_tabIconTint);
            this.tabIconTintMode = ViewUtils.parseTintMode(obtainStyledAttributes.getInt(R.styleable.TabLayout_tabIconTintMode, -1), null);
            this.tabRippleColorStateList = MaterialResources.getColorStateList(context2, obtainStyledAttributes, R.styleable.TabLayout_tabRippleColor);
            this.tabIndicatorAnimationDuration = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabIndicatorAnimationDuration, 300);
            this.tabIndicatorTimeInterpolator = MotionUtils.resolveThemeInterpolator(context2, R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
            this.requestedTabMinWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
            this.requestedTabMaxWidth = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
            this.tabBackgroundResId = obtainStyledAttributes.getResourceId(R.styleable.TabLayout_tabBackground, 0);
            this.contentInsetStart = obtainStyledAttributes.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
            this.mode = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabMode, 1);
            this.tabGravity = obtainStyledAttributes.getInt(R.styleable.TabLayout_tabGravity, 0);
            this.inlineLabel = obtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabInlineLabel, false);
            this.unboundedRipple = obtainStyledAttributes.getBoolean(R.styleable.TabLayout_tabUnboundedRipple, false);
            obtainStyledAttributes.recycle();
            Resources resources = getResources();
            this.tabTextMultiLineSize = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.scrollableTabMinWidth = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            applyModeAndGravity();
        } finally {
        }
    }

    private void setupWithViewPager(@Nullable ViewPager viewPager, boolean z, boolean z2) {
        ViewPager viewPager2 = this.viewPager;
        if (viewPager2 != null) {
            TabLayoutOnPageChangeListener tabLayoutOnPageChangeListener = this.pageChangeListener;
            if (tabLayoutOnPageChangeListener != null) {
                viewPager2.removeOnPageChangeListener(tabLayoutOnPageChangeListener);
            }
            AdapterChangeListener adapterChangeListener = this.adapterChangeListener;
            if (adapterChangeListener != null) {
                this.viewPager.removeOnAdapterChangeListener(adapterChangeListener);
            }
        }
        BaseOnTabSelectedListener baseOnTabSelectedListener = this.currentVpSelectedListener;
        if (baseOnTabSelectedListener != null) {
            removeOnTabSelectedListener(baseOnTabSelectedListener);
            this.currentVpSelectedListener = null;
        }
        if (viewPager != null) {
            this.viewPager = viewPager;
            if (this.pageChangeListener == null) {
                this.pageChangeListener = new TabLayoutOnPageChangeListener(this);
            }
            this.pageChangeListener.reset();
            viewPager.addOnPageChangeListener(this.pageChangeListener);
            ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager);
            this.currentVpSelectedListener = viewPagerOnTabSelectedListener;
            addOnTabSelectedListener((BaseOnTabSelectedListener) viewPagerOnTabSelectedListener);
            PagerAdapter adapter = viewPager.getAdapter();
            if (adapter != null) {
                setPagerAdapter(adapter, z);
            }
            if (this.adapterChangeListener == null) {
                this.adapterChangeListener = new AdapterChangeListener();
            }
            this.adapterChangeListener.setAutoRefresh(z);
            viewPager.addOnAdapterChangeListener(this.adapterChangeListener);
            setScrollPosition(viewPager.getCurrentItem(), 0.0f, true);
        } else {
            this.viewPager = null;
            setPagerAdapter(null, false);
        }
        this.setupViewPagerImplicitly = z2;
    }

    public void addTab(@NonNull Tab tab, boolean z) {
        addTab(tab, this.tabs.size(), z);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public void setScrollPosition(int i, float f, boolean z, boolean z2, boolean z3) {
        int round = Math.round(i + f);
        if (round < 0 || round >= this.slidingTabIndicator.getChildCount()) {
            return;
        }
        if (z2) {
            this.slidingTabIndicator.setIndicatorPositionFromTabPosition(i, f);
        }
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.scrollAnimator.cancel();
        }
        int calculateScrollXForTab = calculateScrollXForTab(i, f);
        int scrollX = getScrollX();
        boolean z4 = (i < getSelectedTabPosition() && calculateScrollXForTab >= scrollX) || (i > getSelectedTabPosition() && calculateScrollXForTab <= scrollX) || i == getSelectedTabPosition();
        if (ViewCompat.getLayoutDirection(this) == 1) {
            z4 = (i < getSelectedTabPosition() && calculateScrollXForTab <= scrollX) || (i > getSelectedTabPosition() && calculateScrollXForTab >= scrollX) || i == getSelectedTabPosition();
        }
        if (z4 || this.viewPagerScrollState == 1 || z3) {
            if (i < 0) {
                calculateScrollXForTab = 0;
            }
            scrollTo(calculateScrollXForTab, 0);
        }
        if (z) {
            setSelectedTabView(round);
        }
    }

    public void addTab(@NonNull Tab tab, int i, boolean z) {
        if (tab.parent == this) {
            configureTab(tab, i);
            addTabView(tab);
            if (z) {
                tab.select();
                return;
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4554144093412647575L, 3148845845464329214L, 4468366112320278440L, -7946039595821866449L, -8984885695747305861L, -88585073539828356L}).toString());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        addViewInternal(view);
    }

    public void setTabTextColors(int i, int i2) {
        setTabTextColors(createColorStateList(i, i2));
    }

    public void setSelectedTabIndicator(@DrawableRes int i) {
        if (i != 0) {
            setSelectedTabIndicator(AppCompatResources.getDrawable(getContext(), i));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
