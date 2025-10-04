package com.airbnb.lottie.value;

import com.airbnb.lottie.utils.MiscUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class LottieRelativeIntegerValueCallback extends LottieValueCallback<Integer> {
    /* JADX WARN: Multi-variable type inference failed */
    public Integer getOffset(LottieFrameInfo<Integer> lottieFrameInfo) {
        T t = this.value;
        if (t != 0) {
            return (Integer) t;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7148376672954314583L, 8061207116535483598L, -4720397457673369233L, -1579205943056016831L, 8158862976922847445L, -6691574958667827302L, -6850060308494818042L, -7410585968473309452L, 7568035413164406247L, 5098890826157164377L, -2007492543332316206L, -6156222227773196754L, 8353918185508920750L}).toString());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public Integer getValue(LottieFrameInfo<Integer> lottieFrameInfo) {
        return Integer.valueOf(getOffset(lottieFrameInfo).intValue() + MiscUtils.lerp(lottieFrameInfo.getStartValue().intValue(), lottieFrameInfo.getEndValue().intValue(), lottieFrameInfo.getInterpolatedKeyframeProgress()));
    }
}
