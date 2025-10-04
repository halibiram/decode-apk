package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class FloatKeyframeAnimation extends KeyframeAnimation<Float> {
    public FloatKeyframeAnimation(List<Keyframe<Float>> list) {
        super(list);
    }

    public float getFloatValue(Keyframe<Float> keyframe, float f) {
        Float f2;
        if (keyframe.startValue != null && keyframe.endValue != null) {
            LottieValueCallback<A> lottieValueCallback = this.valueCallback;
            if (lottieValueCallback != 0 && (f2 = (Float) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), keyframe.startValue, keyframe.endValue, f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
                return f2.floatValue();
            }
            return MiscUtils.lerp(keyframe.getStartValueFloat(), keyframe.getEndValueFloat(), f);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3312918148973019943L, 3667416315851513163L, -7955155789963635651L, 7373315906493223688L, 4591479379772294409L}).toString());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<Float>) keyframe, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public Float getValue(Keyframe<Float> keyframe, float f) {
        return Float.valueOf(getFloatValue(keyframe, f));
    }

    public float getFloatValue() {
        return getFloatValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
