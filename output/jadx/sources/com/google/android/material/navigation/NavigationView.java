package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.activity.BackEventCompat;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeableDelegate;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0419x35cc9f53;
import defpackage.RunnableC0450xb2a4f6ac;
import j$.util.Objects;

/* loaded from: classes2.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements MaterialBackHandler {
    private static final int PRESENTER_NAVIGATION_VIEW_ID = 1;
    private final DrawerLayout.DrawerListener backDrawerListener;
    private final MaterialBackOrchestrator backOrchestrator;
    private boolean bottomInsetScrimEnabled;

    @Px
    private int drawerLayoutCornerSize;
    private final boolean drawerLayoutCornerSizeBackAnimationEnabled;

    @Px
    private final int drawerLayoutCornerSizeBackAnimationMax;
    OnNavigationItemSelectedListener listener;
    private final int maxWidth;

    @NonNull
    private final NavigationMenu menu;
    private MenuInflater menuInflater;
    private ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener;
    private final NavigationMenuPresenter presenter;
    private final ShapeableDelegate shapeableDelegate;
    private final MaterialSideContainerBackHelper sideContainerBackHelper;
    private final int[] tmpLocation;
    private boolean topInsetScrimEnabled;
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DISABLED_STATE_SET = {-16842910};
    private static final int DEF_STYLE_RES = com.google.android.material.R.style.Widget_Design_NavigationView;

    /* renamed from: com.google.android.material.navigation.NavigationView$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends DrawerLayout.SimpleDrawerListener {
        public AnonymousClass1() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.backOrchestrator.stopListeningForBackCallbacks();
                NavigationView.this.maybeClearCornerSizeAnimationForDrawerLayout();
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                MaterialBackOrchestrator materialBackOrchestrator = navigationView.backOrchestrator;
                Objects.requireNonNull(materialBackOrchestrator);
                view.post(new RunnableC0450xb2a4f6ac(materialBackOrchestrator, 27));
            }
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 implements MenuBuilder.Callback {
        public AnonymousClass2() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
            if (onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem)) {
                return true;
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 implements ViewTreeObserver.OnGlobalLayoutListener {
        public AnonymousClass3() {
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onGlobalLayout() {
            boolean z;
            boolean z2;
            boolean z3;
            Activity activity;
            boolean z4;
            boolean z5;
            boolean z6;
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.tmpLocation);
            boolean z7 = true;
            if (NavigationView.this.tmpLocation[1] == 0) {
                z = true;
            } else {
                z = false;
            }
            NavigationView.this.presenter.setBehindStatusBar(z);
            NavigationView navigationView2 = NavigationView.this;
            if (z && navigationView2.isTopInsetScrimEnabled()) {
                z2 = true;
            } else {
                z2 = false;
            }
            navigationView2.setDrawTopInsetForeground(z2);
            if (NavigationView.this.tmpLocation[0] != 0) {
                if (NavigationView.this.getWidth() + NavigationView.this.tmpLocation[0] != 0) {
                    z3 = false;
                    NavigationView.this.setDrawLeftInsetForeground(z3);
                    activity = ContextUtils.getActivity(NavigationView.this.getContext());
                    if (activity == null) {
                        Rect currentWindowBounds = WindowUtils.getCurrentWindowBounds(activity);
                        if (currentWindowBounds.height() - NavigationView.this.getHeight() == NavigationView.this.tmpLocation[1]) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        NavigationView navigationView3 = NavigationView.this;
                        if (z4 && z5 && navigationView3.isBottomInsetScrimEnabled()) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        navigationView3.setDrawBottomInsetForeground(z6);
                        if (currentWindowBounds.width() != NavigationView.this.tmpLocation[0] && currentWindowBounds.width() - NavigationView.this.getWidth() != NavigationView.this.tmpLocation[0]) {
                            z7 = false;
                        }
                        NavigationView.this.setDrawRightInsetForeground(z7);
                        return;
                    }
                    return;
                }
            }
            z3 = true;
            NavigationView.this.setDrawLeftInsetForeground(z3);
            activity = ContextUtils.getActivity(NavigationView.this.getContext());
            if (activity == null) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private ColorStateList createDefaultColorStateList(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(androidx.appcompat.R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = DISABLED_STATE_SET;
        return new ColorStateList(new int[][]{iArr, CHECKED_STATE_SET, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @NonNull
    private Drawable createDefaultItemBackground(@NonNull TintTypedArray tintTypedArray) {
        return createDefaultItemDrawable(tintTypedArray, MaterialResources.getColorStateList(getContext(), tintTypedArray, com.google.android.material.R.styleable.NavigationView_itemShapeFillColor));
    }

    @NonNull
    private Drawable createDefaultItemDrawable(@NonNull TintTypedArray tintTypedArray, @Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).build());
        materialShapeDrawable.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    private MenuInflater getMenuInflater() {
        if (this.menuInflater == null) {
            this.menuInflater = new SupportMenuInflater(getContext());
        }
        return this.menuInflater;
    }

    private boolean hasShapeAppearance(@NonNull TintTypedArray tintTypedArray) {
        if (!tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearance) && !tintTypedArray.hasValue(com.google.android.material.R.styleable.NavigationView_itemShapeAppearanceOverlay)) {
            return false;
        }
        return true;
    }

    public /* synthetic */ void lambda$dispatchDraw$0(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public void maybeClearCornerSizeAnimationForDrawerLayout() {
        if (this.drawerLayoutCornerSizeBackAnimationEnabled && this.drawerLayoutCornerSize != 0) {
            this.drawerLayoutCornerSize = 0;
            maybeUpdateCornerSizeForDrawerLayout(getWidth(), getHeight());
        }
    }

    private void maybeUpdateCornerSizeForDrawerLayout(@Px int i, @Px int i2) {
        boolean z;
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
            if ((this.drawerLayoutCornerSize > 0 || this.drawerLayoutCornerSizeBackAnimationEnabled) && (getBackground() instanceof MaterialShapeDrawable)) {
                if (GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams) getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) == 3) {
                    z = true;
                } else {
                    z = false;
                }
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
                ShapeAppearanceModel.Builder allCornerSizes = materialShapeDrawable.getShapeAppearanceModel().toBuilder().setAllCornerSizes(this.drawerLayoutCornerSize);
                if (z) {
                    allCornerSizes.setTopLeftCornerSize(0.0f);
                    allCornerSizes.setBottomLeftCornerSize(0.0f);
                } else {
                    allCornerSizes.setTopRightCornerSize(0.0f);
                    allCornerSizes.setBottomRightCornerSize(0.0f);
                }
                ShapeAppearanceModel build = allCornerSizes.build();
                materialShapeDrawable.setShapeAppearanceModel(build);
                this.shapeableDelegate.onShapeAppearanceChanged(this, build);
                this.shapeableDelegate.onMaskChanged(this, new RectF(0.0f, 0.0f, i, i2));
                this.shapeableDelegate.setOffsetZeroCornerEdgeBoundsEnabled(this, true);
            }
        }
    }

    @CanIgnoreReturnValue
    private Pair<DrawerLayout, DrawerLayout.LayoutParams> requireDrawerLayoutParent() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair<>((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{3527529095993034658L, -86746314917517757L, 3299470869631950659L, 7807501127477363160L, 5339902858819516697L, -1490957592478510625L, 1154545438657230210L, 2429888414915988600L, 2432364948972129285L, 2643662493721677308L, -8420882763958900067L, 1509773641249547936L}).toString());
    }

    private void setupInsetScrimsListener() {
        this.onGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.google.android.material.navigation.NavigationView.3
            public AnonymousClass3() {
            }

            /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
            /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onGlobalLayout() {
                boolean z;
                boolean z2;
                boolean z3;
                Activity activity;
                boolean z4;
                boolean z5;
                boolean z6;
                NavigationView navigationView = NavigationView.this;
                navigationView.getLocationOnScreen(navigationView.tmpLocation);
                boolean z7 = true;
                if (NavigationView.this.tmpLocation[1] == 0) {
                    z = true;
                } else {
                    z = false;
                }
                NavigationView.this.presenter.setBehindStatusBar(z);
                NavigationView navigationView2 = NavigationView.this;
                if (z && navigationView2.isTopInsetScrimEnabled()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                navigationView2.setDrawTopInsetForeground(z2);
                if (NavigationView.this.tmpLocation[0] != 0) {
                    if (NavigationView.this.getWidth() + NavigationView.this.tmpLocation[0] != 0) {
                        z3 = false;
                        NavigationView.this.setDrawLeftInsetForeground(z3);
                        activity = ContextUtils.getActivity(NavigationView.this.getContext());
                        if (activity == null) {
                            Rect currentWindowBounds = WindowUtils.getCurrentWindowBounds(activity);
                            if (currentWindowBounds.height() - NavigationView.this.getHeight() == NavigationView.this.tmpLocation[1]) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0) {
                                z5 = true;
                            } else {
                                z5 = false;
                            }
                            NavigationView navigationView3 = NavigationView.this;
                            if (z4 && z5 && navigationView3.isBottomInsetScrimEnabled()) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            navigationView3.setDrawBottomInsetForeground(z6);
                            if (currentWindowBounds.width() != NavigationView.this.tmpLocation[0] && currentWindowBounds.width() - NavigationView.this.getWidth() != NavigationView.this.tmpLocation[0]) {
                                z7 = false;
                            }
                            NavigationView.this.setDrawRightInsetForeground(z7);
                            return;
                        }
                        return;
                    }
                }
                z3 = true;
                NavigationView.this.setDrawLeftInsetForeground(z3);
                activity = ContextUtils.getActivity(NavigationView.this.getContext());
                if (activity == null) {
                }
            }
        };
        getViewTreeObserver().addOnGlobalLayoutListener(this.onGlobalLayoutListener);
    }

    public void addHeaderView(@NonNull View view) {
        this.presenter.addHeaderView(view);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.cancelBackProgress();
        maybeClearCornerSizeAnimationForDrawerLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        this.shapeableDelegate.maybeClip(canvas, new C0419x35cc9f53(this, 18));
    }

    @VisibleForTesting
    public MaterialSideContainerBackHelper getBackHelper() {
        return this.sideContainerBackHelper;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.presenter.getCheckedItem();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.presenter.getDividerInsetEnd();
    }

    @Px
    public int getDividerInsetStart() {
        return this.presenter.getDividerInsetStart();
    }

    public int getHeaderCount() {
        return this.presenter.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.presenter.getHeaderView(i);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.presenter.getItemBackground();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.presenter.getItemHorizontalPadding();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.presenter.getItemIconPadding();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.presenter.getItemTintList();
    }

    public int getItemMaxLines() {
        return this.presenter.getItemMaxLines();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.presenter.getItemTextColor();
    }

    @Px
    public int getItemVerticalPadding() {
        return this.presenter.getItemVerticalPadding();
    }

    @NonNull
    public Menu getMenu() {
        return this.menu;
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.presenter.getSubheaderInsetEnd();
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.presenter.getSubheaderInsetStart();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        Pair<DrawerLayout, DrawerLayout.LayoutParams> requireDrawerLayoutParent = requireDrawerLayoutParent();
        DrawerLayout drawerLayout = (DrawerLayout) requireDrawerLayoutParent.first;
        BackEventCompat onHandleBackInvoked = this.sideContainerBackHelper.onHandleBackInvoked();
        if (onHandleBackInvoked != null && Build.VERSION.SDK_INT >= 34) {
            this.sideContainerBackHelper.finishBackProgress(onHandleBackInvoked, ((DrawerLayout.LayoutParams) requireDrawerLayoutParent.second).gravity, DrawerLayoutUtils.getScrimCloseAnimatorListener(drawerLayout, this), DrawerLayoutUtils.getScrimCloseAnimatorUpdateListener(drawerLayout));
            return;
        }
        drawerLayout.closeDrawer(this);
    }

    public View inflateHeaderView(@LayoutRes int i) {
        return this.presenter.inflateHeaderView(i);
    }

    public void inflateMenu(int i) {
        this.presenter.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.menu);
        this.presenter.setUpdateSuspended(false);
        this.presenter.updateMenuView(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.bottomInsetScrimEnabled;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.topInsetScrimEnabled;
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.backOrchestrator.shouldListenForBackCallbacks()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.removeDrawerListener(this.backDrawerListener);
            drawerLayout.addDrawerListener(this.backDrawerListener);
            if (drawerLayout.isDrawerOpen(this)) {
                this.backOrchestrator.startListeningForBackCallbacksWithPriorityOverlay();
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.onGlobalLayoutListener);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.backDrawerListener);
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onInsetsChanged(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.presenter.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i = View.MeasureSpec.makeMeasureSpec(this.maxWidth, 1073741824);
            }
        } else {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.maxWidth), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.menu.restorePresenterStates(savedState.menuState);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.menu.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        maybeUpdateCornerSizeForDrawerLayout(i, i2);
    }

    public void removeHeaderView(@NonNull View view) {
        this.presenter.removeHeaderView(view);
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.bottomInsetScrimEnabled = z;
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem findItem = this.menu.findItem(i);
        if (findItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) findItem);
        }
    }

    public void setDividerInsetEnd(@Px int i) {
        this.presenter.setDividerInsetEnd(i);
    }

    public void setDividerInsetStart(@Px int i) {
        this.presenter.setDividerInsetStart(i);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setForceCompatClippingEnabled(boolean z) {
        this.shapeableDelegate.setForceCompatClippingEnabled(this, z);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.presenter.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.presenter.setItemHorizontalPadding(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        this.presenter.setItemHorizontalPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(@Dimension int i) {
        this.presenter.setItemIconPadding(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.presenter.setItemIconPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(@Dimension int i) {
        this.presenter.setItemIconSize(i);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.presenter.setItemIconTintList(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.presenter.setItemMaxLines(i);
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.presenter.setItemTextAppearance(i);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.presenter.setItemTextAppearanceActiveBoldEnabled(z);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.presenter.setItemTextColor(colorStateList);
    }

    public void setItemVerticalPadding(@Px int i) {
        this.presenter.setItemVerticalPadding(i);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i) {
        this.presenter.setItemVerticalPadding(getResources().getDimensionPixelSize(i));
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.listener = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.presenter;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i);
        }
    }

    public void setSubheaderInsetEnd(@Px int i) {
        this.presenter.setSubheaderInsetEnd(i);
    }

    public void setSubheaderInsetStart(@Px int i) {
        this.presenter.setSubheaderInsetStart(i);
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.topInsetScrimEnabled = z;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        requireDrawerLayoutParent();
        this.sideContainerBackHelper.startBackProgress(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        this.sideContainerBackHelper.updateBackProgress(backEventCompat, ((DrawerLayout.LayoutParams) requireDrawerLayoutParent().second).gravity);
        if (this.drawerLayoutCornerSizeBackAnimationEnabled) {
            this.drawerLayoutCornerSize = AnimationUtils.lerp(0, this.drawerLayoutCornerSizeBackAnimationMax, this.sideContainerBackHelper.interpolateProgress(backEventCompat.getProgress()));
            maybeUpdateCornerSizeForDrawerLayout(getWidth(), getHeight());
        }
    }

    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.navigation.NavigationView.SavedState.1
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }
        };

        @Nullable
        public Bundle menuState;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @NonNull
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @Nullable
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, r9), attributeSet, i);
        ColorStateList createDefaultColorStateList;
        int i2;
        int i3;
        int i4 = DEF_STYLE_RES;
        NavigationMenuPresenter navigationMenuPresenter = new NavigationMenuPresenter();
        this.presenter = navigationMenuPresenter;
        this.tmpLocation = new int[2];
        this.topInsetScrimEnabled = true;
        this.bottomInsetScrimEnabled = true;
        this.drawerLayoutCornerSize = 0;
        this.shapeableDelegate = ShapeableDelegate.create(this);
        this.sideContainerBackHelper = new MaterialSideContainerBackHelper(this);
        this.backOrchestrator = new MaterialBackOrchestrator(this);
        this.backDrawerListener = new DrawerLayout.SimpleDrawerListener() { // from class: com.google.android.material.navigation.NavigationView.1
            public AnonymousClass1() {
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(@NonNull View view) {
                NavigationView navigationView = NavigationView.this;
                if (view == navigationView) {
                    navigationView.backOrchestrator.stopListeningForBackCallbacks();
                    NavigationView.this.maybeClearCornerSizeAnimationForDrawerLayout();
                }
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(@NonNull View view) {
                NavigationView navigationView = NavigationView.this;
                if (view == navigationView) {
                    MaterialBackOrchestrator materialBackOrchestrator = navigationView.backOrchestrator;
                    Objects.requireNonNull(materialBackOrchestrator);
                    view.post(new RunnableC0450xb2a4f6ac(materialBackOrchestrator, 27));
                }
            }
        };
        Context context2 = getContext();
        NavigationMenu navigationMenu = new NavigationMenu(context2);
        this.menu = navigationMenu;
        TintTypedArray obtainTintedStyledAttributes = ThemeEnforcement.obtainTintedStyledAttributes(context2, attributeSet, com.google.android.material.R.styleable.NavigationView, i, i4, new int[0]);
        int i5 = com.google.android.material.R.styleable.NavigationView_android_background;
        if (obtainTintedStyledAttributes.hasValue(i5)) {
            ViewCompat.setBackground(this, obtainTintedStyledAttributes.getDrawable(i5));
        }
        int dimensionPixelSize = obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_drawerLayoutCornerSize, 0);
        this.drawerLayoutCornerSize = dimensionPixelSize;
        this.drawerLayoutCornerSizeBackAnimationEnabled = dimensionPixelSize == 0;
        this.drawerLayoutCornerSizeBackAnimationMax = getResources().getDimensionPixelSize(com.google.android.material.R.dimen.m3_navigation_drawer_layout_corner_size);
        Drawable background = getBackground();
        ColorStateList colorStateListOrNull = DrawableUtils.getColorStateListOrNull(background);
        if (background == null || colorStateListOrNull != null) {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(context2, attributeSet, i, i4).build());
            if (colorStateListOrNull != null) {
                materialShapeDrawable.setFillColor(colorStateListOrNull);
            }
            materialShapeDrawable.initializeElevationOverlay(context2);
            ViewCompat.setBackground(this, materialShapeDrawable);
        }
        if (obtainTintedStyledAttributes.hasValue(com.google.android.material.R.styleable.NavigationView_elevation)) {
            setElevation(obtainTintedStyledAttributes.getDimensionPixelSize(r2, 0));
        }
        setFitsSystemWindows(obtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_android_fitsSystemWindows, false));
        this.maxWidth = obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_android_maxWidth, 0);
        int i6 = com.google.android.material.R.styleable.NavigationView_subheaderColor;
        ColorStateList colorStateList = obtainTintedStyledAttributes.hasValue(i6) ? obtainTintedStyledAttributes.getColorStateList(i6) : null;
        int i7 = com.google.android.material.R.styleable.NavigationView_subheaderTextAppearance;
        int resourceId = obtainTintedStyledAttributes.hasValue(i7) ? obtainTintedStyledAttributes.getResourceId(i7, 0) : 0;
        if (resourceId == 0 && colorStateList == null) {
            colorStateList = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        int i8 = com.google.android.material.R.styleable.NavigationView_itemIconTint;
        if (obtainTintedStyledAttributes.hasValue(i8)) {
            createDefaultColorStateList = obtainTintedStyledAttributes.getColorStateList(i8);
        } else {
            createDefaultColorStateList = createDefaultColorStateList(R.attr.textColorSecondary);
        }
        int i9 = com.google.android.material.R.styleable.NavigationView_itemTextAppearance;
        int resourceId2 = obtainTintedStyledAttributes.hasValue(i9) ? obtainTintedStyledAttributes.getResourceId(i9, 0) : 0;
        boolean z = obtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_itemTextAppearanceActiveBoldEnabled, true);
        int i10 = com.google.android.material.R.styleable.NavigationView_itemIconSize;
        if (obtainTintedStyledAttributes.hasValue(i10)) {
            setItemIconSize(obtainTintedStyledAttributes.getDimensionPixelSize(i10, 0));
        }
        int i11 = com.google.android.material.R.styleable.NavigationView_itemTextColor;
        ColorStateList colorStateList2 = obtainTintedStyledAttributes.hasValue(i11) ? obtainTintedStyledAttributes.getColorStateList(i11) : null;
        if (resourceId2 == 0 && colorStateList2 == null) {
            colorStateList2 = createDefaultColorStateList(R.attr.textColorPrimary);
        }
        Drawable drawable = obtainTintedStyledAttributes.getDrawable(com.google.android.material.R.styleable.NavigationView_itemBackground);
        if (drawable == null && hasShapeAppearance(obtainTintedStyledAttributes)) {
            drawable = createDefaultItemBackground(obtainTintedStyledAttributes);
            ColorStateList colorStateList3 = MaterialResources.getColorStateList(context2, obtainTintedStyledAttributes, com.google.android.material.R.styleable.NavigationView_itemRippleColor);
            if (colorStateList3 != null) {
                navigationMenuPresenter.setItemForeground(new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(colorStateList3), null, createDefaultItemDrawable(obtainTintedStyledAttributes, null)));
            }
        }
        int i12 = com.google.android.material.R.styleable.NavigationView_itemHorizontalPadding;
        if (obtainTintedStyledAttributes.hasValue(i12)) {
            i2 = 0;
            setItemHorizontalPadding(obtainTintedStyledAttributes.getDimensionPixelSize(i12, 0));
        } else {
            i2 = 0;
        }
        int i13 = com.google.android.material.R.styleable.NavigationView_itemVerticalPadding;
        if (obtainTintedStyledAttributes.hasValue(i13)) {
            setItemVerticalPadding(obtainTintedStyledAttributes.getDimensionPixelSize(i13, i2));
        }
        setDividerInsetStart(obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetStart, i2));
        setDividerInsetEnd(obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_dividerInsetEnd, i2));
        setSubheaderInsetStart(obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetStart, i2));
        setSubheaderInsetEnd(obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_subheaderInsetEnd, i2));
        setTopInsetScrimEnabled(obtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_topInsetScrimEnabled, this.topInsetScrimEnabled));
        setBottomInsetScrimEnabled(obtainTintedStyledAttributes.getBoolean(com.google.android.material.R.styleable.NavigationView_bottomInsetScrimEnabled, this.bottomInsetScrimEnabled));
        int dimensionPixelSize2 = obtainTintedStyledAttributes.getDimensionPixelSize(com.google.android.material.R.styleable.NavigationView_itemIconPadding, i2);
        setItemMaxLines(obtainTintedStyledAttributes.getInt(com.google.android.material.R.styleable.NavigationView_itemMaxLines, 1));
        navigationMenu.setCallback(new MenuBuilder.Callback() { // from class: com.google.android.material.navigation.NavigationView.2
            public AnonymousClass2() {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.listener;
                if (onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem)) {
                    return true;
                }
                return false;
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
        navigationMenuPresenter.setId(1);
        navigationMenuPresenter.initForMenu(context2, navigationMenu);
        if (resourceId != 0) {
            navigationMenuPresenter.setSubheaderTextAppearance(resourceId);
        }
        navigationMenuPresenter.setSubheaderColor(colorStateList);
        navigationMenuPresenter.setItemIconTintList(createDefaultColorStateList);
        navigationMenuPresenter.setOverScrollMode(getOverScrollMode());
        if (resourceId2 != 0) {
            navigationMenuPresenter.setItemTextAppearance(resourceId2);
        }
        navigationMenuPresenter.setItemTextAppearanceActiveBoldEnabled(z);
        navigationMenuPresenter.setItemTextColor(colorStateList2);
        navigationMenuPresenter.setItemBackground(drawable);
        navigationMenuPresenter.setItemIconPadding(dimensionPixelSize2);
        navigationMenu.addMenuPresenter(navigationMenuPresenter);
        addView((View) navigationMenuPresenter.getMenuView(this));
        int i14 = com.google.android.material.R.styleable.NavigationView_menu;
        if (obtainTintedStyledAttributes.hasValue(i14)) {
            i3 = 0;
            inflateMenu(obtainTintedStyledAttributes.getResourceId(i14, 0));
        } else {
            i3 = 0;
        }
        int i15 = com.google.android.material.R.styleable.NavigationView_headerLayout;
        if (obtainTintedStyledAttributes.hasValue(i15)) {
            inflateHeaderView(obtainTintedStyledAttributes.getResourceId(i15, i3));
        }
        obtainTintedStyledAttributes.recycle();
        setupInsetScrimsListener();
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.menu.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.presenter.setCheckedItem((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6561925358255249715L, 2963713920513183726L, -7292877391698601424L, -9044942436712852122L, 6202330303820978085L, -4658106881850282464L, 1525914577624044803L, 987382564524599761L, -4631999337207107520L, 2698567125174265249L, 8336159196407304937L}).toString());
    }
}
