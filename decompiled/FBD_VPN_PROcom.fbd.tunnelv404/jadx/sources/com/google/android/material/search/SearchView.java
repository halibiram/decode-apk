package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0662x5574934e;
import defpackage.C1111xf223e919;
import defpackage.RunnableC1110xe326bafa;
import defpackage.ViewOnClickListenerC1109xaf80450c;
import defpackage.ViewOnTouchListenerC0685x19514a05;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, MaterialBackHandler {
    private static final int DEF_STYLE_RES = R.style.Widget_Material3_SearchView;
    private static final long TALKBACK_FOCUS_CHANGE_DELAY_MS = 100;
    private boolean animatedMenuItems;
    private boolean animatedNavigationIcon;
    private boolean autoShowKeyboard;
    private final boolean backHandlingEnabled;

    @NonNull
    private final MaterialBackOrchestrator backOrchestrator;

    @ColorInt
    private final int backgroundColor;
    final View backgroundView;
    private Map<View, Integer> childImportantForAccessibilityMap;
    final ImageButton clearButton;
    final TouchObserverFrameLayout contentContainer;

    @NonNull
    private TransitionState currentTransitionState;
    final View divider;
    final Toolbar dummyToolbar;
    final EditText editText;
    private final ElevationOverlayProvider elevationOverlayProvider;
    final FrameLayout headerContainer;
    private final boolean layoutInflated;
    final ClippableRoundedCornerLayout rootView;
    final View scrim;

    @Nullable
    private SearchBar searchBar;
    final TextView searchPrefix;
    private final SearchViewAnimationHelper searchViewAnimationHelper;
    private int softInputMode;
    final View statusBarSpacer;
    private boolean statusBarSpacerEnabledOverride;
    final MaterialToolbar toolbar;
    final FrameLayout toolbarContainer;
    private final Set<TransitionListener> transitionListeners;
    private boolean useWindowInsetsController;

    /* renamed from: com.google.android.material.search.SearchView$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements TextWatcher {
        public AnonymousClass1() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            int i4;
            ImageButton imageButton = SearchView.this.clearButton;
            if (charSequence.length() > 0) {
                i4 = 0;
            } else {
                i4 = 8;
            }
            imageButton.setVisibility(i4);
        }
    }

    /* loaded from: classes2.dex */
    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull SearchView searchView, @NonNull View view) {
            if (searchView.isSetupWithSearchBar() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.search.SearchView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        };
        String text;
        int visibility;

        /* renamed from: com.google.android.material.search.SearchView$SavedState$1 */
        /* loaded from: classes2.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
            parcel.writeInt(this.visibility);
        }

        public SavedState(Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.text = parcel.readString();
            this.visibility = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes2.dex */
    public interface TransitionListener {
        void onStateChanged(@NonNull SearchView searchView, @NonNull TransitionState transitionState, @NonNull TransitionState transitionState2);
    }

    /* loaded from: classes2.dex */
    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activity = ContextUtils.getActivity(getContext());
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.searchBar;
        if (searchBar != null) {
            return searchBar.getCompatElevation();
        }
        return getResources().getDimension(R.dimen.m3_searchview_elevation);
    }

    @Px
    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier(new ObfuscatedString(new long[]{-2827072252067415618L, 7154559166185497922L, 9074555935988941319L, -1515055967072698271L}).toString(), new ObfuscatedString(new long[]{-5316867538358513473L, -8726999869008161171L}).toString(), new ObfuscatedString(new long[]{4496432775154634899L, 3707980567634020160L}).toString());
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private boolean isHiddenOrHiding() {
        if (!this.currentTransitionState.equals(TransitionState.HIDDEN) && !this.currentTransitionState.equals(TransitionState.HIDING)) {
            return false;
        }
        return true;
    }

    private boolean isNavigationIconDrawerArrowDrawable(@NonNull Toolbar toolbar) {
        return DrawableCompat.unwrap(toolbar.getNavigationIcon()) instanceof DrawerArrowDrawable;
    }

    public /* synthetic */ void lambda$clearFocusAndHideKeyboard$9() {
        this.editText.clearFocus();
        SearchBar searchBar = this.searchBar;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        ViewUtils.hideKeyboard(this.editText, this.useWindowInsetsController);
    }

    public /* synthetic */ void lambda$requestFocusAndShowKeyboard$8() {
        if (this.editText.requestFocus()) {
            this.editText.sendAccessibilityEvent(8);
        }
        ViewUtils.showKeyboard(this.editText, this.useWindowInsetsController);
    }

    public /* synthetic */ void lambda$setUpBackButton$1(View view) {
        hide();
    }

    public /* synthetic */ void lambda$setUpClearButton$2(View view) {
        clearText();
        requestFocusAndShowKeyboardIfNeeded();
    }

    public /* synthetic */ boolean lambda$setUpContentOnTouchListener$3(View view, MotionEvent motionEvent) {
        if (isAdjustNothingSoftInputMode()) {
            clearFocusAndHideKeyboard();
            return false;
        }
        return false;
    }

    public static /* synthetic */ WindowInsetsCompat lambda$setUpDividerInsetListener$6(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, View view, WindowInsetsCompat windowInsetsCompat) {
        marginLayoutParams.leftMargin = windowInsetsCompat.getSystemWindowInsetLeft() + i;
        marginLayoutParams.rightMargin = windowInsetsCompat.getSystemWindowInsetRight() + i2;
        return windowInsetsCompat;
    }

    public static /* synthetic */ boolean lambda$setUpRootView$0(View view, MotionEvent motionEvent) {
        return true;
    }

    public /* synthetic */ WindowInsetsCompat lambda$setUpStatusBarSpacerInsetListener$5(View view, WindowInsetsCompat windowInsetsCompat) {
        boolean z;
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        setUpStatusBarSpacer(systemWindowInsetTop);
        if (!this.statusBarSpacerEnabledOverride) {
            if (systemWindowInsetTop > 0) {
                z = true;
            } else {
                z = false;
            }
            setStatusBarSpacerEnabledInternal(z);
        }
        return windowInsetsCompat;
    }

    public /* synthetic */ WindowInsetsCompat lambda$setUpToolbarInsetListener$4(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
        int i;
        int i2;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this.toolbar);
        if (isLayoutRtl) {
            i = relativePadding.end;
        } else {
            i = relativePadding.start;
        }
        if (isLayoutRtl) {
            i2 = relativePadding.start;
        } else {
            i2 = relativePadding.end;
        }
        this.toolbar.setPadding(windowInsetsCompat.getSystemWindowInsetLeft() + i, relativePadding.top, windowInsetsCompat.getSystemWindowInsetRight() + i2, relativePadding.bottom);
        return windowInsetsCompat;
    }

    public /* synthetic */ void lambda$setupWithSearchBar$7(View view) {
        show();
    }

    private void setStatusBarSpacerEnabledInternal(boolean z) {
        int i;
        View view = this.statusBarSpacer;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        view.setVisibility(i);
    }

    private void setUpBackButton(boolean z, boolean z2) {
        if (z2) {
            this.toolbar.setNavigationIcon((Drawable) null);
            return;
        }
        this.toolbar.setNavigationOnClickListener(new ViewOnClickListenerC1109xaf80450c(this, 0));
        if (z) {
            DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getContext());
            drawerArrowDrawable.setColor(MaterialColors.getColor(this, R.attr.colorOnSurface));
            this.toolbar.setNavigationIcon(drawerArrowDrawable);
        }
    }

    private void setUpBackgroundViewElevationOverlay() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    private void setUpClearButton() {
        this.clearButton.setOnClickListener(new ViewOnClickListenerC1109xaf80450c(this, 1));
        this.editText.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.search.SearchView.1
            public AnonymousClass1() {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                int i4;
                ImageButton imageButton = SearchView.this.clearButton;
                if (charSequence.length() > 0) {
                    i4 = 0;
                } else {
                    i4 = 8;
                }
                imageButton.setVisibility(i4);
            }
        });
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setUpContentOnTouchListener() {
        this.contentContainer.setOnTouchListener(new ViewOnTouchListenerC0685x19514a05(this, 2));
    }

    private void setUpDividerInsetListener() {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.divider.getLayoutParams();
        ViewCompat.setOnApplyWindowInsetsListener(this.divider, new C0662x5574934e(marginLayoutParams, marginLayoutParams.leftMargin, marginLayoutParams.rightMargin));
    }

    private void setUpEditText(@StyleRes int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.editText, i);
        }
        this.editText.setText(str);
        this.editText.setHint(str2);
    }

    private void setUpHeaderLayout(int i) {
        if (i != -1) {
            addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.headerContainer, false));
        }
    }

    private void setUpInsetListeners() {
        setUpToolbarInsetListener();
        setUpDividerInsetListener();
        setUpStatusBarSpacerInsetListener();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, android.view.View$OnTouchListener] */
    @SuppressLint({"ClickableViewAccessibility"})
    private void setUpRootView() {
        this.rootView.setOnTouchListener(new Object());
    }

    private void setUpStatusBarSpacer(@Px int i) {
        if (this.statusBarSpacer.getLayoutParams().height != i) {
            this.statusBarSpacer.getLayoutParams().height = i;
            this.statusBarSpacer.requestLayout();
        }
    }

    private void setUpStatusBarSpacerInsetListener() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.statusBarSpacer, new C1111xf223e919(this));
    }

    private void setUpToolbarInsetListener() {
        ViewUtils.doOnApplyWindowInsets(this.toolbar, new C1111xf223e919(this));
    }

    @SuppressLint({"InlinedApi"})
    private void updateChildImportantForAccessibility(ViewGroup viewGroup, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != this) {
                if (childAt.findViewById(this.rootView.getId()) != null) {
                    updateChildImportantForAccessibility((ViewGroup) childAt, z);
                } else if (!z) {
                    Map<View, Integer> map = this.childImportantForAccessibilityMap;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.childImportantForAccessibilityMap.get(childAt).intValue());
                    }
                } else {
                    this.childImportantForAccessibilityMap.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.setImportantForAccessibility(childAt, 4);
                }
            }
        }
    }

    private void updateListeningForBackCallbacks(@NonNull TransitionState transitionState) {
        if (this.searchBar != null && this.backHandlingEnabled) {
            if (transitionState.equals(TransitionState.SHOWN)) {
                this.backOrchestrator.startListeningForBackCallbacks();
            } else if (transitionState.equals(TransitionState.HIDDEN)) {
                this.backOrchestrator.stopListeningForBackCallbacks();
            }
        }
    }

    private void updateNavigationIconIfNeeded() {
        MaterialToolbar materialToolbar = this.toolbar;
        if (materialToolbar == null || isNavigationIconDrawerArrowDrawable(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.searchBar == null) {
            this.toolbar.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable wrap = DrawableCompat.wrap(AppCompatResources.getDrawable(getContext(), defaultNavigationIconResource).mutate());
        if (this.toolbar.getNavigationIconTint() != null) {
            DrawableCompat.setTint(wrap, this.toolbar.getNavigationIconTint().intValue());
        }
        this.toolbar.setNavigationIcon(new FadeThroughDrawable(this.searchBar.getNavigationIcon(), wrap));
        updateNavigationIconProgressIfNeeded();
    }

    private void updateNavigationIconProgressIfNeeded() {
        int i;
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.toolbar);
        if (navigationIconButton == null) {
            return;
        }
        if (this.rootView.getVisibility() == 0) {
            i = 1;
        } else {
            i = 0;
        }
        Drawable unwrap = DrawableCompat.unwrap(navigationIconButton.getDrawable());
        if (unwrap instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) unwrap).setProgress(i);
        }
        if (unwrap instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) unwrap).setProgress(i);
        }
    }

    public void addHeaderView(@NonNull View view) {
        this.headerContainer.addView(view);
        this.headerContainer.setVisibility(0);
    }

    public void addTransitionListener(@NonNull TransitionListener transitionListener) {
        this.transitionListeners.add(transitionListener);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.layoutInflated) {
            this.contentContainer.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        if (!isHiddenOrHiding() && this.searchBar != null && Build.VERSION.SDK_INT >= 34) {
            this.searchViewAnimationHelper.cancelBackProgress();
        }
    }

    public void clearFocusAndHideKeyboard() {
        this.editText.post(new RunnableC1110xe326bafa(this, 0));
    }

    public void clearText() {
        this.editText.setText(new ObfuscatedString(new long[]{-1764537597896770535L}).toString());
    }

    @VisibleForTesting
    public MaterialMainContainerBackHelper getBackHelper() {
        return this.searchViewAnimationHelper.getBackHelper();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.currentTransitionState;
    }

    @DrawableRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDefaultNavigationIconResource() {
        return R.drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return this.editText;
    }

    @Nullable
    public CharSequence getHint() {
        return this.editText.getHint();
    }

    @NonNull
    public TextView getSearchPrefix() {
        return this.searchPrefix;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        return this.searchPrefix.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.softInputMode;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.editText.getText();
    }

    @NonNull
    public Toolbar getToolbar() {
        return this.toolbar;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        if (isHiddenOrHiding()) {
            return;
        }
        BackEventCompat onHandleBackInvoked = this.searchViewAnimationHelper.onHandleBackInvoked();
        if (Build.VERSION.SDK_INT >= 34 && this.searchBar != null && onHandleBackInvoked != null) {
            this.searchViewAnimationHelper.finishBackProgress();
        } else {
            hide();
        }
    }

    public void hide() {
        if (!this.currentTransitionState.equals(TransitionState.HIDDEN) && !this.currentTransitionState.equals(TransitionState.HIDING)) {
            this.searchViewAnimationHelper.hide();
        }
    }

    public void inflateMenu(@MenuRes int i) {
        this.toolbar.inflateMenu(i);
    }

    public boolean isAdjustNothingSoftInputMode() {
        if (this.softInputMode == 48) {
            return true;
        }
        return false;
    }

    public boolean isAnimatedNavigationIcon() {
        return this.animatedNavigationIcon;
    }

    public boolean isAutoShowKeyboard() {
        return this.autoShowKeyboard;
    }

    public boolean isMenuItemsAnimated() {
        return this.animatedMenuItems;
    }

    public boolean isSetupWithSearchBar() {
        if (this.searchBar != null) {
            return true;
        }
        return false;
    }

    public boolean isShowing() {
        if (!this.currentTransitionState.equals(TransitionState.SHOWN) && !this.currentTransitionState.equals(TransitionState.SHOWING)) {
            return false;
        }
        return true;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isUseWindowInsetsController() {
        return this.useWindowInsetsController;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        updateSoftInputMode();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        boolean z;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
        if (savedState.visibility == 0) {
            z = true;
        } else {
            z = false;
        }
        setVisible(z);
    }

    @Override // android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        String charSequence;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        if (text == null) {
            charSequence = null;
        } else {
            charSequence = text.toString();
        }
        savedState.text = charSequence;
        savedState.visibility = this.rootView.getVisibility();
        return savedState;
    }

    public void removeAllHeaderViews() {
        this.headerContainer.removeAllViews();
        this.headerContainer.setVisibility(8);
    }

    public void removeHeaderView(@NonNull View view) {
        this.headerContainer.removeView(view);
        if (this.headerContainer.getChildCount() == 0) {
            this.headerContainer.setVisibility(8);
        }
    }

    public void removeTransitionListener(@NonNull TransitionListener transitionListener) {
        this.transitionListeners.remove(transitionListener);
    }

    public void requestFocusAndShowKeyboard() {
        this.editText.postDelayed(new RunnableC1110xe326bafa(this, 1), TALKBACK_FOCUS_CHANGE_DELAY_MS);
    }

    public void requestFocusAndShowKeyboardIfNeeded() {
        if (this.autoShowKeyboard) {
            requestFocusAndShowKeyboard();
        }
    }

    public void setAnimatedNavigationIcon(boolean z) {
        this.animatedNavigationIcon = z;
    }

    public void setAutoShowKeyboard(boolean z) {
        this.autoShowKeyboard = z;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        setUpBackgroundViewElevationOverlay(f);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.editText.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z) {
        this.animatedMenuItems = z;
    }

    public void setModalForAccessibility(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z) {
            this.childImportantForAccessibilityMap = new HashMap(viewGroup.getChildCount());
        }
        updateChildImportantForAccessibility(viewGroup, z);
        if (!z) {
            this.childImportantForAccessibilityMap = null;
        }
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.toolbar.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        int i;
        this.searchPrefix.setText(charSequence);
        TextView textView = this.searchPrefix;
        if (TextUtils.isEmpty(charSequence)) {
            i = 8;
        } else {
            i = 0;
        }
        textView.setVisibility(i);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStatusBarSpacerEnabled(boolean z) {
        this.statusBarSpacerEnabledOverride = true;
        setStatusBarSpacerEnabledInternal(z);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        this.editText.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z) {
        this.toolbar.setTouchscreenBlocksFocus(z);
    }

    public void setTransitionState(@NonNull TransitionState transitionState) {
        setTransitionState(transitionState, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setUseWindowInsetsController(boolean z) {
        this.useWindowInsetsController = z;
    }

    public void setVisible(boolean z) {
        boolean z2;
        int i;
        TransitionState transitionState;
        boolean z3 = true;
        if (this.rootView.getVisibility() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.rootView;
        if (z) {
            i = 0;
        } else {
            i = 8;
        }
        clippableRoundedCornerLayout.setVisibility(i);
        updateNavigationIconProgressIfNeeded();
        if (z) {
            transitionState = TransitionState.SHOWN;
        } else {
            transitionState = TransitionState.HIDDEN;
        }
        if (z2 == z) {
            z3 = false;
        }
        setTransitionState(transitionState, z3);
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.searchBar = searchBar;
        this.searchViewAnimationHelper.setSearchBar(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new ViewOnClickListenerC1109xaf80450c(this, 2));
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new RunnableC1110xe326bafa(this, 2));
                    this.editText.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        updateNavigationIconIfNeeded();
        setUpBackgroundViewElevationOverlay();
        updateListeningForBackCallbacks(getCurrentTransitionState());
    }

    public void show() {
        if (!this.currentTransitionState.equals(TransitionState.SHOWN) && !this.currentTransitionState.equals(TransitionState.SHOWING)) {
            this.searchViewAnimationHelper.show();
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (!isHiddenOrHiding() && this.searchBar != null) {
            this.searchViewAnimationHelper.startBackProgress(backEventCompat);
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (!isHiddenOrHiding() && this.searchBar != null && Build.VERSION.SDK_INT >= 34) {
            this.searchViewAnimationHelper.updateBackProgress(backEventCompat);
        }
    }

    public void updateSoftInputMode() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.softInputMode = activityWindow.getAttributes().softInputMode;
        }
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchViewStyle);
    }

    private void setTransitionState(@NonNull TransitionState transitionState, boolean z) {
        if (this.currentTransitionState.equals(transitionState)) {
            return;
        }
        if (z) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        TransitionState transitionState2 = this.currentTransitionState;
        this.currentTransitionState = transitionState;
        Iterator it = new LinkedHashSet(this.transitionListeners).iterator();
        while (it.hasNext()) {
            ((TransitionListener) it.next()).onStateChanged(this, transitionState2, transitionState);
        }
        updateListeningForBackCallbacks(transitionState);
    }

    private void setUpBackgroundViewElevationOverlay(float f) {
        ElevationOverlayProvider elevationOverlayProvider = this.elevationOverlayProvider;
        if (elevationOverlayProvider == null || this.backgroundView == null) {
            return;
        }
        this.backgroundView.setBackgroundColor(elevationOverlayProvider.compositeOverlayIfNeeded(this.backgroundColor, f));
    }

    public void setHint(@StringRes int i) {
        this.editText.setHint(i);
    }

    public void setText(@StringRes int i) {
        this.editText.setText(i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, r4), attributeSet, i);
        int i2 = DEF_STYLE_RES;
        this.backOrchestrator = new MaterialBackOrchestrator(this);
        this.transitionListeners = new LinkedHashSet();
        this.softInputMode = 16;
        this.currentTransitionState = TransitionState.HIDDEN;
        Context context2 = getContext();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.SearchView, i, i2, new int[0]);
        this.backgroundColor = obtainStyledAttributes.getColor(R.styleable.SearchView_backgroundTint, 0);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SearchView_headerLayout, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.SearchView_android_textAppearance, -1);
        String string = obtainStyledAttributes.getString(R.styleable.SearchView_android_text);
        String string2 = obtainStyledAttributes.getString(R.styleable.SearchView_android_hint);
        String string3 = obtainStyledAttributes.getString(R.styleable.SearchView_searchPrefixText);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.SearchView_useDrawerArrowDrawable, false);
        this.animatedNavigationIcon = obtainStyledAttributes.getBoolean(R.styleable.SearchView_animateNavigationIcon, true);
        this.animatedMenuItems = obtainStyledAttributes.getBoolean(R.styleable.SearchView_animateMenuItems, true);
        boolean z2 = obtainStyledAttributes.getBoolean(R.styleable.SearchView_hideNavigationIcon, false);
        this.autoShowKeyboard = obtainStyledAttributes.getBoolean(R.styleable.SearchView_autoShowKeyboard, true);
        this.backHandlingEnabled = obtainStyledAttributes.getBoolean(R.styleable.SearchView_backHandlingEnabled, true);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_view, this);
        this.layoutInflated = true;
        this.scrim = findViewById(R.id.open_search_view_scrim);
        this.rootView = (ClippableRoundedCornerLayout) findViewById(R.id.open_search_view_root);
        this.backgroundView = findViewById(R.id.open_search_view_background);
        this.statusBarSpacer = findViewById(R.id.open_search_view_status_bar_spacer);
        this.headerContainer = (FrameLayout) findViewById(R.id.open_search_view_header_container);
        this.toolbarContainer = (FrameLayout) findViewById(R.id.open_search_view_toolbar_container);
        this.toolbar = (MaterialToolbar) findViewById(R.id.open_search_view_toolbar);
        this.dummyToolbar = (Toolbar) findViewById(R.id.open_search_view_dummy_toolbar);
        this.searchPrefix = (TextView) findViewById(R.id.open_search_view_search_prefix);
        this.editText = (EditText) findViewById(R.id.open_search_view_edit_text);
        this.clearButton = (ImageButton) findViewById(R.id.open_search_view_clear_button);
        this.divider = findViewById(R.id.open_search_view_divider);
        this.contentContainer = (TouchObserverFrameLayout) findViewById(R.id.open_search_view_content_container);
        this.searchViewAnimationHelper = new SearchViewAnimationHelper(this);
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        setUpRootView();
        setUpBackgroundViewElevationOverlay();
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        setUpEditText(resourceId2, string, string2);
        setUpBackButton(z, z2);
        setUpClearButton();
        setUpContentOnTouchListener();
        setUpInsetListeners();
    }
}
