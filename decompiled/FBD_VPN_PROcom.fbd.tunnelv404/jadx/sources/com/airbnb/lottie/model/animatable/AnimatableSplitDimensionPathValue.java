package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.SplitDimensionPathKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes.dex */
public class AnimatableSplitDimensionPathValue implements AnimatableValue<PointF, PointF> {
    private final AnimatableFloatValue animatableXDimension;
    private final AnimatableFloatValue animatableYDimension;

    public AnimatableSplitDimensionPathValue(AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2) {
        this.animatableXDimension = animatableFloatValue;
        this.animatableYDimension = animatableFloatValue2;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public BaseKeyframeAnimation<PointF, PointF> createAnimation() {
        return new SplitDimensionPathKeyframeAnimation(this.animatableXDimension.createAnimation(), this.animatableYDimension.createAnimation());
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List<Keyframe<PointF>> getKeyframes() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8752913532930504371L, 5073790990710078824L, -5681081207833181458L, -3132909955964333613L, 2096730702746221600L, -631185765532173468L, 779506475775120396L, 9210268359927347397L, -1137928133660990576L}).toString());
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        if (this.animatableXDimension.isStatic() && this.animatableYDimension.isStatic()) {
            return true;
        }
        return false;
    }
}
