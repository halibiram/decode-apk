package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Preconditions;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class BaseMotionStrategy implements MotionStrategy {
    private final Context context;

    @Nullable
    private MotionSpec defaultMotionSpec;

    @NonNull
    private final ExtendedFloatingActionButton fab;
    private final ArrayList<Animator.AnimatorListener> listeners = new ArrayList<>();

    @Nullable
    private MotionSpec motionSpec;
    private final AnimatorTracker tracker;

    public BaseMotionStrategy(@NonNull ExtendedFloatingActionButton extendedFloatingActionButton, AnimatorTracker animatorTracker) {
        this.fab = extendedFloatingActionButton;
        this.context = extendedFloatingActionButton.getContext();
        this.tracker = animatorTracker;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void addAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.listeners.add(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public AnimatorSet createAnimator() {
        return createAnimator(getCurrentMotionSpec());
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final MotionSpec getCurrentMotionSpec() {
        MotionSpec motionSpec = this.motionSpec;
        if (motionSpec != null) {
            return motionSpec;
        }
        if (this.defaultMotionSpec == null) {
            this.defaultMotionSpec = MotionSpec.createFromResource(this.context, getDefaultMotionSpecResource());
        }
        return (MotionSpec) Preconditions.checkNotNull(this.defaultMotionSpec);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @NonNull
    public final List<Animator.AnimatorListener> getListeners() {
        return this.listeners;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @Nullable
    public MotionSpec getMotionSpec() {
        return this.motionSpec;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationCancel() {
        this.tracker.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationEnd() {
        this.tracker.clear();
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    @CallSuper
    public void onAnimationStart(Animator animator) {
        this.tracker.onNextAnimationStart(animator);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void removeAnimationListener(@NonNull Animator.AnimatorListener animatorListener) {
        this.listeners.remove(animatorListener);
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public final void setMotionSpec(@Nullable MotionSpec motionSpec) {
        this.motionSpec = motionSpec;
    }

    @NonNull
    public AnimatorSet createAnimator(@NonNull MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{-2629664425737385862L, 7631548795620733838L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{-3568907875374678557L, 7836155320679927387L}).toString(), this.fab, View.ALPHA));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{1886686011380798056L, 1252406870665119792L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{11178983935073404L, -986539498823292469L}).toString(), this.fab, View.SCALE_Y));
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{974599018163123990L, -4218572607826809053L}).toString(), this.fab, View.SCALE_X));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{5612106217761223211L, 612072265490394137L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{4706893722691712539L, -7914187614568295827L}).toString(), this.fab, ExtendedFloatingActionButton.WIDTH));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{-637530356042970174L, -2396345558929333020L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{-1586074236937814859L, 6503423757501688444L}).toString(), this.fab, ExtendedFloatingActionButton.HEIGHT));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{-3113369756271528797L, 8327639238929396916L, 6803951671152454009L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{3471172941288417057L, -247763091545102390L, 4894814055301156597L}).toString(), this.fab, ExtendedFloatingActionButton.PADDING_START));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{8194503434400956724L, -5415658140086283198L, -2910767816776021256L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{2989912017942987861L, 7574354341042944815L, -2785118948879154368L}).toString(), this.fab, ExtendedFloatingActionButton.PADDING_END));
        }
        if (motionSpec.hasPropertyValues(new ObfuscatedString(new long[]{4131624515210687645L, 8579792418246801690L, -806662628052968959L}).toString())) {
            arrayList.add(motionSpec.getAnimator(new ObfuscatedString(new long[]{-6905516383405603306L, -9040064644296340658L, -8924424458800749446L}).toString(), this.fab, new Property<ExtendedFloatingActionButton, Float>(Float.class, new ObfuscatedString(new long[]{-1225265311741861333L, 3183921307605304592L, 5676504613268456910L, 7370264049811084701L}).toString()) { // from class: com.google.android.material.floatingactionbutton.BaseMotionStrategy.1
                @Override // android.util.Property
                public Float get(ExtendedFloatingActionButton extendedFloatingActionButton) {
                    return Float.valueOf(AnimationUtils.lerp(0.0f, 1.0f, (Color.alpha(extendedFloatingActionButton.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), BaseMotionStrategy.this.fab.originalTextCsl.getDefaultColor()))));
                }

                @Override // android.util.Property
                public void set(ExtendedFloatingActionButton extendedFloatingActionButton, Float f) {
                    int colorForState = extendedFloatingActionButton.originalTextCsl.getColorForState(extendedFloatingActionButton.getDrawableState(), BaseMotionStrategy.this.fab.originalTextCsl.getDefaultColor());
                    ColorStateList valueOf = ColorStateList.valueOf(Color.argb((int) (AnimationUtils.lerp(0.0f, Color.alpha(colorForState) / 255.0f, f.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                    if (f.floatValue() == 1.0f) {
                        extendedFloatingActionButton.silentlyUpdateTextColor(extendedFloatingActionButton.originalTextCsl);
                    } else {
                        extendedFloatingActionButton.silentlyUpdateTextColor(valueOf);
                    }
                }
            }));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.playTogether(animatorSet, arrayList);
        return animatorSet;
    }
}
