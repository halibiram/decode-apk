package com.airbnb.lottie.value;

import androidx.annotation.NonNull;
import com.airbnb.lottie.utils.MiscUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class LottieRelativeFloatValueCallback extends LottieValueCallback<Float> {
    public LottieRelativeFloatValueCallback() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Float getOffset(LottieFrameInfo<Float> lottieFrameInfo) {
        T t = this.value;
        if (t != 0) {
            return (Float) t;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7572651234712510083L, -984715622469618009L, 8609414671681905725L, -5872501095052078219L, -8820153767319600136L, -7843334741320661430L, -5029649990708466067L, -7888923559866368606L, 2478083513302314858L, 5523273310035386366L, -8490945479990063104L, -9054494549751650204L, 2530475153540106325L}).toString());
    }

    public LottieRelativeFloatValueCallback(@NonNull Float f) {
        super(f);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.airbnb.lottie.value.LottieValueCallback
    public Float getValue(LottieFrameInfo<Float> lottieFrameInfo) {
        return Float.valueOf(getOffset(lottieFrameInfo).floatValue() + MiscUtils.lerp(lottieFrameInfo.getStartValue().floatValue(), lottieFrameInfo.getEndValue().floatValue(), lottieFrameInfo.getInterpolatedKeyframeProgress()));
    }
}
