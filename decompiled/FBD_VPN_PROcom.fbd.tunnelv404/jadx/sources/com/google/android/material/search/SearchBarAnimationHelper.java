package com.google.android.material.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.view.ViewCompat;
import com.google.android.material.animation.AnimatableView;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.ExpandCollapseAnimationHelper;
import com.google.android.material.internal.MultiViewUpdateListener;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.search.SearchBar;
import com.google.android.material.shape.MaterialShapeDrawable;
import defpackage.C0419x35cc9f53;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class SearchBarAnimationHelper {
    private static final long COLLAPSE_DURATION_MS = 250;
    private static final long COLLAPSE_FADE_IN_CHILDREN_DURATION_MS = 100;
    private static final long EXPAND_DURATION_MS = 300;
    private static final long EXPAND_FADE_OUT_CHILDREN_DURATION_MS = 75;
    private static final long ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_DURATION_MS = 250;
    private static final long ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS = 500;
    private static final long ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS = 750;
    private static final long ON_LOAD_ANIM_SECONDARY_DURATION_MS = 250;
    private static final long ON_LOAD_ANIM_SECONDARY_START_DELAY_MS = 250;
    private boolean collapsing;

    @Nullable
    private Animator defaultCenterViewAnimator;
    private boolean expanding;

    @Nullable
    private Animator secondaryViewAnimator;
    private final Set<SearchBar.OnLoadAnimationCallback> onLoadAnimationCallbacks = new LinkedHashSet();
    private final Set<AnimatorListenerAdapter> expandAnimationListeners = new LinkedHashSet();
    private final Set<AnimatorListenerAdapter> collapseAnimationListeners = new LinkedHashSet();
    private boolean onLoadAnimationFadeInEnabled = true;
    private Animator runningExpandOrCollapseAnimator = null;

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends AnimatorListenerAdapter {
        public AnonymousClass1() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SearchBarAnimationHelper.this.dispatchOnLoadAnimation(new C0219x3271d0aa(1));
        }
    }

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends AnimatorListenerAdapter {
        final /* synthetic */ View val$centerView;
        final /* synthetic */ Animator val$secondaryViewAnimator;

        public AnonymousClass2(View view, Animator animator) {
            r2 = view;
            r3 = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            r2.setVisibility(8);
            r3.start();
        }
    }

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 extends AnimatorListenerAdapter {
        public AnonymousClass3() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SearchBarAnimationHelper.this.runningExpandOrCollapseAnimator = null;
        }
    }

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$4 */
    /* loaded from: classes2.dex */
    public class AnonymousClass4 extends AnimatorListenerAdapter {
        final /* synthetic */ SearchBar val$searchBar;

        public AnonymousClass4(SearchBar searchBar) {
            r2 = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SearchBarAnimationHelper.this.expanding = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            r2.setVisibility(4);
        }
    }

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$5 */
    /* loaded from: classes2.dex */
    public class AnonymousClass5 extends AnimatorListenerAdapter {
        public AnonymousClass5() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SearchBarAnimationHelper.this.runningExpandOrCollapseAnimator = null;
        }
    }

    /* renamed from: com.google.android.material.search.SearchBarAnimationHelper$6 */
    /* loaded from: classes2.dex */
    public class AnonymousClass6 extends AnimatorListenerAdapter {
        final /* synthetic */ SearchBar val$searchBar;

        public AnonymousClass6(SearchBar searchBar) {
            r2 = searchBar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            r2.setVisibility(0);
            SearchBarAnimationHelper.this.collapsing = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            r2.stopOnLoadAnimation();
        }
    }

    /* loaded from: classes2.dex */
    public interface OnLoadAnimationInvocation {
        void invoke(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback);
    }

    public void dispatchOnLoadAnimation(OnLoadAnimationInvocation onLoadAnimationInvocation) {
        Iterator<SearchBar.OnLoadAnimationCallback> it = this.onLoadAnimationCallbacks.iterator();
        while (it.hasNext()) {
            onLoadAnimationInvocation.invoke(it.next());
        }
    }

    private Animator getCollapseAnimator(SearchBar searchBar, View view, AppBarLayout appBarLayout) {
        return getExpandCollapseAnimationHelper(searchBar, view, appBarLayout).setDuration(250L).addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.6
            final /* synthetic */ SearchBar val$searchBar;

            public AnonymousClass6(SearchBar searchBar2) {
                r2 = searchBar2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                r2.setVisibility(0);
                SearchBarAnimationHelper.this.collapsing = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                r2.stopOnLoadAnimation();
            }
        }).getCollapseAnimator();
    }

    private Animator getDefaultCenterViewAnimator(@Nullable View view) {
        long j;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        ofFloat.setInterpolator(timeInterpolator);
        long j2 = 0;
        if (this.onLoadAnimationFadeInEnabled) {
            j = 250;
        } else {
            j = 0;
        }
        ofFloat.setDuration(j);
        if (this.onLoadAnimationFadeInEnabled) {
            j2 = ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_IN_START_DELAY_MS;
        }
        ofFloat.setStartDelay(j2);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(250L);
        ofFloat2.setStartDelay(ON_LOAD_ANIM_CENTER_VIEW_DEFAULT_FADE_OUT_START_DELAY_MS);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(ofFloat, ofFloat2);
        return animatorSet;
    }

    private List<View> getEndAnchoredViews(View view) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(view);
        ArrayList arrayList = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if ((!isLayoutRtl && (childAt instanceof ActionMenuView)) || (isLayoutRtl && !(childAt instanceof ActionMenuView))) {
                    arrayList.add(childAt);
                }
            }
        }
        return arrayList;
    }

    private Animator getExpandAnimator(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        return getExpandCollapseAnimationHelper(searchBar, view, appBarLayout).setDuration(EXPAND_DURATION_MS).addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.4
            final /* synthetic */ SearchBar val$searchBar;

            public AnonymousClass4(SearchBar searchBar2) {
                r2 = searchBar2;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SearchBarAnimationHelper.this.expanding = false;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                r2.setVisibility(4);
            }
        }).getExpandAnimator();
    }

    private ExpandCollapseAnimationHelper getExpandCollapseAnimationHelper(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout) {
        int i;
        ExpandCollapseAnimationHelper additionalUpdateListener = new ExpandCollapseAnimationHelper(searchBar, view).setAdditionalUpdateListener(getExpandedViewBackgroundUpdateListener(searchBar, view));
        if (appBarLayout != null) {
            i = appBarLayout.getTop();
        } else {
            i = 0;
        }
        return additionalUpdateListener.setCollapsedViewOffsetY(i).addEndAnchoredViews(getEndAnchoredViews(view));
    }

    private ValueAnimator.AnimatorUpdateListener getExpandedViewBackgroundUpdateListener(SearchBar searchBar, final View view) {
        final MaterialShapeDrawable createWithElevationOverlay = MaterialShapeDrawable.createWithElevationOverlay(view.getContext());
        createWithElevationOverlay.setCornerSize(searchBar.getCornerSize());
        createWithElevationOverlay.setElevation(ViewCompat.getElevation(searchBar));
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.search.뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchBarAnimationHelper.lambda$getExpandedViewBackgroundUpdateListener$1(createWithElevationOverlay, view, valueAnimator);
            }
        };
    }

    private List<View> getFadeChildren(SearchBar searchBar) {
        List<View> children = ViewUtils.getChildren(searchBar);
        if (searchBar.getCenterView() != null) {
            children.remove(searchBar.getCenterView());
        }
        return children;
    }

    private Animator getFadeInChildrenAnimator(SearchBar searchBar) {
        List<View> fadeChildren = getFadeChildren(searchBar);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(fadeChildren));
        ofFloat.setDuration(COLLAPSE_FADE_IN_CHILDREN_DURATION_MS);
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        return ofFloat;
    }

    private Animator getFadeOutChildrenAnimator(SearchBar searchBar, View view) {
        List<View> fadeChildren = getFadeChildren(searchBar);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(fadeChildren));
        ofFloat.addUpdateListener(new C0218xfbe0c504(view, 0));
        ofFloat.setDuration(75L);
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        return ofFloat;
    }

    private Animator getSecondaryActionMenuItemAnimator(@Nullable View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(view));
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        ofFloat.setDuration(250L);
        return ofFloat;
    }

    private Animator getSecondaryViewAnimator(TextView textView, @Nullable View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setStartDelay(250L);
        animatorSet.play(getTextViewAnimator(textView));
        if (view != null) {
            animatorSet.play(getSecondaryActionMenuItemAnimator(view));
        }
        return animatorSet;
    }

    private Animator getTextViewAnimator(TextView textView) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(MultiViewUpdateListener.alphaListener(textView));
        ofFloat.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
        ofFloat.setDuration(250L);
        return ofFloat;
    }

    public static /* synthetic */ void lambda$getExpandedViewBackgroundUpdateListener$1(MaterialShapeDrawable materialShapeDrawable, View view, ValueAnimator valueAnimator) {
        materialShapeDrawable.setInterpolation(1.0f - valueAnimator.getAnimatedFraction());
        ViewCompat.setBackground(view, materialShapeDrawable);
        view.setAlpha(1.0f);
    }

    public /* synthetic */ void lambda$startExpandAnimation$0(SearchBar searchBar, View view, AppBarLayout appBarLayout, boolean z) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(getFadeOutChildrenAnimator(searchBar, view), getExpandAnimator(searchBar, view, appBarLayout));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.3
            public AnonymousClass3() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SearchBarAnimationHelper.this.runningExpandOrCollapseAnimator = null;
            }
        });
        Iterator<AnimatorListenerAdapter> it = this.expandAnimationListeners.iterator();
        while (it.hasNext()) {
            animatorSet.addListener(it.next());
        }
        if (z) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.runningExpandOrCollapseAnimator = animatorSet;
    }

    public void addCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.collapseAnimationListeners.add(animatorListenerAdapter);
    }

    public void addExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.expandAnimationListeners.add(animatorListenerAdapter);
    }

    public void addOnLoadAnimationCallback(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
        this.onLoadAnimationCallbacks.add(onLoadAnimationCallback);
    }

    public boolean isCollapsing() {
        return this.collapsing;
    }

    public boolean isExpanding() {
        return this.expanding;
    }

    public boolean isOnLoadAnimationFadeInEnabled() {
        return this.onLoadAnimationFadeInEnabled;
    }

    public boolean removeCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.collapseAnimationListeners.remove(animatorListenerAdapter);
    }

    public boolean removeExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.expandAnimationListeners.remove(animatorListenerAdapter);
    }

    public boolean removeOnLoadAnimationCallback(SearchBar.OnLoadAnimationCallback onLoadAnimationCallback) {
        return this.onLoadAnimationCallbacks.remove(onLoadAnimationCallback);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z) {
        this.onLoadAnimationFadeInEnabled = z;
    }

    public void startCollapseAnimation(SearchBar searchBar, View view, @Nullable AppBarLayout appBarLayout, boolean z) {
        Animator animator;
        if (isExpanding() && (animator = this.runningExpandOrCollapseAnimator) != null) {
            animator.cancel();
        }
        this.collapsing = true;
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playSequentially(getCollapseAnimator(searchBar, view, appBarLayout), getFadeInChildrenAnimator(searchBar));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.5
            public AnonymousClass5() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                SearchBarAnimationHelper.this.runningExpandOrCollapseAnimator = null;
            }
        });
        Iterator<AnimatorListenerAdapter> it = this.collapseAnimationListeners.iterator();
        while (it.hasNext()) {
            animatorSet.addListener(it.next());
        }
        if (z) {
            animatorSet.setDuration(0L);
        }
        animatorSet.start();
        this.runningExpandOrCollapseAnimator = animatorSet;
    }

    public void startExpandAnimation(final SearchBar searchBar, final View view, @Nullable final AppBarLayout appBarLayout, final boolean z) {
        Animator animator;
        if (isCollapsing() && (animator = this.runningExpandOrCollapseAnimator) != null) {
            animator.cancel();
        }
        this.expanding = true;
        view.setVisibility(4);
        view.post(new Runnable() { // from class: com.google.android.material.search.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉
            @Override // java.lang.Runnable
            public final void run() {
                SearchBarAnimationHelper.this.lambda$startExpandAnimation$0(searchBar, view, appBarLayout, z);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void startOnLoadAnimation(SearchBar searchBar) {
        dispatchOnLoadAnimation(new C0219x3271d0aa(0));
        TextView textView = searchBar.getTextView();
        View centerView = searchBar.getCenterView();
        View secondaryActionMenuItemView = ToolbarUtils.getSecondaryActionMenuItemView(searchBar);
        Animator secondaryViewAnimator = getSecondaryViewAnimator(textView, secondaryActionMenuItemView);
        secondaryViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.1
            public AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                SearchBarAnimationHelper.this.dispatchOnLoadAnimation(new C0219x3271d0aa(1));
            }
        });
        this.secondaryViewAnimator = secondaryViewAnimator;
        textView.setAlpha(0.0f);
        if (secondaryActionMenuItemView != null) {
            secondaryActionMenuItemView.setAlpha(0.0f);
        }
        if (centerView instanceof AnimatableView) {
            ((AnimatableView) centerView).startAnimation(new C0419x35cc9f53(secondaryViewAnimator, 25));
            return;
        }
        if (centerView != 0) {
            centerView.setAlpha(0.0f);
            centerView.setVisibility(0);
            Animator defaultCenterViewAnimator = getDefaultCenterViewAnimator(centerView);
            this.defaultCenterViewAnimator = defaultCenterViewAnimator;
            defaultCenterViewAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.search.SearchBarAnimationHelper.2
                final /* synthetic */ View val$centerView;
                final /* synthetic */ Animator val$secondaryViewAnimator;

                public AnonymousClass2(View centerView2, Animator secondaryViewAnimator2) {
                    r2 = centerView2;
                    r3 = secondaryViewAnimator2;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    r2.setVisibility(8);
                    r3.start();
                }
            });
            defaultCenterViewAnimator.start();
            return;
        }
        secondaryViewAnimator2.start();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void stopOnLoadAnimation(SearchBar searchBar) {
        Animator animator = this.secondaryViewAnimator;
        if (animator != null) {
            animator.end();
        }
        Animator animator2 = this.defaultCenterViewAnimator;
        if (animator2 != null) {
            animator2.end();
        }
        View centerView = searchBar.getCenterView();
        if (centerView instanceof AnimatableView) {
            ((AnimatableView) centerView).stopAnimation();
        }
        if (centerView != 0) {
            centerView.setAlpha(0.0f);
        }
    }
}
