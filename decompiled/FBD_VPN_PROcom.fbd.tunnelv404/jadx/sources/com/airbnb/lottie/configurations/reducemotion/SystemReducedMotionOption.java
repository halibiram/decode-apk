package com.airbnb.lottie.configurations.reducemotion;

import android.content.Context;
import androidx.annotation.Nullable;
import com.airbnb.lottie.utils.Utils;

/* loaded from: classes.dex */
public class SystemReducedMotionOption implements ReducedMotionOption {
    @Override // com.airbnb.lottie.configurations.reducemotion.ReducedMotionOption
    public ReducedMotionMode getCurrentReducedMotionMode(@Nullable Context context) {
        if (context != null && Utils.getAnimationScale(context) == 0.0f) {
            return ReducedMotionMode.REDUCED_MOTION;
        }
        return ReducedMotionMode.STANDARD_MOTION;
    }
}
