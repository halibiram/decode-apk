package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class IntegerKeyframeAnimation extends KeyframeAnimation<Integer> {
    public IntegerKeyframeAnimation(List<Keyframe<Integer>> list) {
        super(list);
    }

    public int getIntValue(Keyframe<Integer> keyframe, float f) {
        Integer num;
        if (keyframe.startValue != null) {
            int startValueInt = keyframe.endValue == null ? keyframe.getStartValueInt() : keyframe.getEndValueInt();
            LottieValueCallback<A> lottieValueCallback = this.valueCallback;
            if (lottieValueCallback != 0 && (num = (Integer) lottieValueCallback.getValueInternal(keyframe.startFrame, keyframe.endFrame.floatValue(), keyframe.startValue, Integer.valueOf(startValueInt), f, getLinearCurrentKeyframeProgress(), getProgress())) != null) {
                return num.intValue();
            }
            return MiscUtils.lerp(keyframe.getStartValueInt(), startValueInt, f);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1113452142795404551L, -3484067702870231832L, -6381890368839543689L, 7393918269030280591L, 5080464483045832160L}).toString());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public /* bridge */ /* synthetic */ Object getValue(Keyframe keyframe, float f) {
        return getValue((Keyframe<Integer>) keyframe, f);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    public Integer getValue(Keyframe<Integer> keyframe, float f) {
        return Integer.valueOf(getIntValue(keyframe, f));
    }

    public int getIntValue() {
        return getIntValue(getCurrentKeyframe(), getInterpolatedCurrentKeyframeProgress());
    }
}
