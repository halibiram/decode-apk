package com.airbnb.lottie.animation.keyframe;

import android.annotation.SuppressLint;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.L;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.google.android.material.color.utilities.Contrast;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseKeyframeAnimation<K, A> {
    private final KeyframesWrapper<K> keyframesWrapper;

    @Nullable
    protected LottieValueCallback<A> valueCallback;
    final List<AnimationListener> listeners = new ArrayList(1);
    private boolean isDiscrete = false;
    protected float progress = 0.0f;

    @Nullable
    private A cachedGetValue = null;
    private float cachedStartDelayProgress = -1.0f;
    private float cachedEndProgress = -1.0f;

    /* loaded from: classes.dex */
    public interface AnimationListener {
        void onValueChanged();
    }

    /* loaded from: classes.dex */
    public static final class EmptyKeyframeWrapper<T> implements KeyframesWrapper<T> {
        private EmptyKeyframeWrapper() {
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe<T> getCurrentKeyframe() {
            throw new IllegalStateException(new ObfuscatedString(new long[]{485097640281511336L, -4413355426072965303L, 6051953664329450418L}).toString());
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return 1.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return 0.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float f) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{3930309154860364236L, -1095310018705422697L, -7852944551240663304L}).toString());
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return true;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float f) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface KeyframesWrapper<T> {
        Keyframe<T> getCurrentKeyframe();

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        float getEndProgress();

        @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
        float getStartDelayProgress();

        boolean isCachedValueEnabled(float f);

        boolean isEmpty();

        boolean isValueChanged(float f);
    }

    /* loaded from: classes.dex */
    public static final class KeyframesWrapperImpl<T> implements KeyframesWrapper<T> {
        private Keyframe<T> cachedCurrentKeyframe = null;
        private float cachedInterpolatedProgress = -1.0f;

        @NonNull
        private Keyframe<T> currentKeyframe = findKeyframe(0.0f);
        private final List<? extends Keyframe<T>> keyframes;

        public KeyframesWrapperImpl(List<? extends Keyframe<T>> list) {
            this.keyframes = list;
        }

        private Keyframe<T> findKeyframe(float f) {
            Keyframe<T> keyframe = (Keyframe) AbstractC0362x4440ab85.m2928x75d576dc(1, this.keyframes);
            if (f >= keyframe.getStartProgress()) {
                return keyframe;
            }
            for (int size = this.keyframes.size() - 2; size >= 1; size--) {
                Keyframe<T> keyframe2 = this.keyframes.get(size);
                if (this.currentKeyframe != keyframe2 && keyframe2.containsProgress(f)) {
                    return keyframe2;
                }
            }
            return this.keyframes.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        @NonNull
        public Keyframe<T> getCurrentKeyframe() {
            return this.currentKeyframe;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return ((Keyframe) AbstractC0362x4440ab85.m2928x75d576dc(1, this.keyframes)).getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return this.keyframes.get(0).getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float f) {
            Keyframe<T> keyframe = this.cachedCurrentKeyframe;
            Keyframe<T> keyframe2 = this.currentKeyframe;
            if (keyframe == keyframe2 && this.cachedInterpolatedProgress == f) {
                return true;
            }
            this.cachedCurrentKeyframe = keyframe2;
            this.cachedInterpolatedProgress = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float f) {
            if (this.currentKeyframe.containsProgress(f)) {
                return !this.currentKeyframe.isStatic();
            }
            this.currentKeyframe = findKeyframe(f);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static final class SingleKeyframeWrapper<T> implements KeyframesWrapper<T> {
        private float cachedInterpolatedProgress = -1.0f;

        @NonNull
        private final Keyframe<T> keyframe;

        public SingleKeyframeWrapper(List<? extends Keyframe<T>> list) {
            this.keyframe = list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public Keyframe<T> getCurrentKeyframe() {
            return this.keyframe;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getEndProgress() {
            return this.keyframe.getEndProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public float getStartDelayProgress() {
            return this.keyframe.getStartProgress();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isCachedValueEnabled(float f) {
            if (this.cachedInterpolatedProgress == f) {
                return true;
            }
            this.cachedInterpolatedProgress = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isValueChanged(float f) {
            return !this.keyframe.isStatic();
        }
    }

    public BaseKeyframeAnimation(List<? extends Keyframe<K>> list) {
        this.keyframesWrapper = wrap(list);
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    @SuppressLint({"Range"})
    private float getStartDelayProgress() {
        if (this.cachedStartDelayProgress == -1.0f) {
            this.cachedStartDelayProgress = this.keyframesWrapper.getStartDelayProgress();
        }
        return this.cachedStartDelayProgress;
    }

    private static <T> KeyframesWrapper<T> wrap(List<? extends Keyframe<T>> list) {
        if (list.isEmpty()) {
            return new EmptyKeyframeWrapper();
        }
        if (list.size() == 1) {
            return new SingleKeyframeWrapper(list);
        }
        return new KeyframesWrapperImpl(list);
    }

    public void addUpdateListener(AnimationListener animationListener) {
        this.listeners.add(animationListener);
    }

    public Keyframe<K> getCurrentKeyframe() {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{1764042686574852254L, 6691109188148931809L, 5056747024247839604L, -8746893857252218708L, -7528590577005559526L, -3833549316935107080L}).toString());
        }
        Keyframe<K> currentKeyframe = this.keyframesWrapper.getCurrentKeyframe();
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{-8180552685051864274L, -648107863743344772L, -5508856919116359233L, 6532717816046096765L, -4045070912936677309L, 6215726597010273264L}).toString());
        }
        return currentKeyframe;
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    @SuppressLint({"Range"})
    public float getEndProgress() {
        if (this.cachedEndProgress == -1.0f) {
            this.cachedEndProgress = this.keyframesWrapper.getEndProgress();
        }
        return this.cachedEndProgress;
    }

    public float getInterpolatedCurrentKeyframeProgress() {
        Interpolator interpolator;
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe != null && !currentKeyframe.isStatic() && (interpolator = currentKeyframe.interpolator) != null) {
            return interpolator.getInterpolation(getLinearCurrentKeyframeProgress());
        }
        return 0.0f;
    }

    public float getLinearCurrentKeyframeProgress() {
        if (this.isDiscrete) {
            return 0.0f;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        if (currentKeyframe.isStatic()) {
            return 0.0f;
        }
        return (this.progress - currentKeyframe.getStartProgress()) / (currentKeyframe.getEndProgress() - currentKeyframe.getStartProgress());
    }

    public float getProgress() {
        return this.progress;
    }

    public A getValue() {
        A value;
        float linearCurrentKeyframeProgress = getLinearCurrentKeyframeProgress();
        if (this.valueCallback == null && this.keyframesWrapper.isCachedValueEnabled(linearCurrentKeyframeProgress) && !skipCache()) {
            return this.cachedGetValue;
        }
        Keyframe<K> currentKeyframe = getCurrentKeyframe();
        Interpolator interpolator = currentKeyframe.xInterpolator;
        if (interpolator != null && currentKeyframe.yInterpolator != null) {
            value = getValue(currentKeyframe, linearCurrentKeyframeProgress, interpolator.getInterpolation(linearCurrentKeyframeProgress), currentKeyframe.yInterpolator.getInterpolation(linearCurrentKeyframeProgress));
        } else {
            value = getValue(currentKeyframe, getInterpolatedCurrentKeyframeProgress());
        }
        this.cachedGetValue = value;
        return value;
    }

    public abstract A getValue(Keyframe<K> keyframe, float f);

    public boolean hasValueCallback() {
        if (this.valueCallback != null) {
            return true;
        }
        return false;
    }

    public void notifyListeners() {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{-1255716228558816333L, 6988912137356930068L, 8751622133488188788L, 172329273693222208L, -8801815193842399209L, 4822069410699081467L}).toString());
        }
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onValueChanged();
        }
        if (L.isTraceEnabled()) {
            L.endSection(new ObfuscatedString(new long[]{8972491856797768341L, -5673649524884733091L, 6889024909618822735L, -1715605594218610910L, 5524047674292429421L, -3636059217902102677L}).toString());
        }
    }

    public void setIsDiscrete() {
        this.isDiscrete = true;
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        if (L.isTraceEnabled()) {
            L.beginSection(new ObfuscatedString(new long[]{5897191442253995340L, -8705403574714540092L, 4947629163545522092L, -4440697807846477985L, -4698633525117520034L, -632499275246284924L}).toString());
        }
        if (this.keyframesWrapper.isEmpty()) {
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{3308127581264950940L, 7150048850074361859L, -4490694481423420306L, 5567447144053075916L, -3179051279398601584L, 4526711636213604352L}).toString());
                return;
            }
            return;
        }
        if (f < getStartDelayProgress()) {
            f = getStartDelayProgress();
        } else if (f > getEndProgress()) {
            f = getEndProgress();
        }
        if (f == this.progress) {
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-1717746767585975202L, -1321394122216978175L, 3596831255635033070L, 6110175581268293834L, -6235989552180013514L, -3703400719513867409L}).toString());
            }
        } else {
            this.progress = f;
            if (this.keyframesWrapper.isValueChanged(f)) {
                notifyListeners();
            }
            if (L.isTraceEnabled()) {
                L.endSection(new ObfuscatedString(new long[]{-3288033176972795478L, 7925124881653600095L, 4866823479255668812L, 6048235809932371913L, 6868217409490231625L, 8669321159570815048L}).toString());
            }
        }
    }

    public void setValueCallback(@Nullable LottieValueCallback<A> lottieValueCallback) {
        LottieValueCallback<A> lottieValueCallback2 = this.valueCallback;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.setAnimation(null);
        }
        this.valueCallback = lottieValueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.setAnimation(this);
        }
    }

    public boolean skipCache() {
        return false;
    }

    public A getValue(Keyframe<K> keyframe, float f, float f2, float f3) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6665568653413119879L, 2456522851793051402L, -4118598086266762204L, -6836279489686580330L, -4359049669235553050L, 8249021632717917381L, -8109213636256670105L, -5479950807871765641L}).toString());
    }
}
