package com.airbnb.lottie.model.animatable;

import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
abstract class BaseAnimatableValue<V, O> implements AnimatableValue<V, O> {
    final List<Keyframe<V>> keyframes;

    public BaseAnimatableValue(V v) {
        this(Collections.singletonList(new Keyframe(v)));
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public List<Keyframe<V>> getKeyframes() {
        return this.keyframes;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    public boolean isStatic() {
        if (this.keyframes.isEmpty()) {
            return true;
        }
        if (this.keyframes.size() == 1 && this.keyframes.get(0).isStatic()) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (!this.keyframes.isEmpty()) {
            sb.append(new ObfuscatedString(new long[]{7330385311085357677L, 8991910487666394735L}).toString());
            sb.append(Arrays.toString(this.keyframes.toArray()));
        }
        return sb.toString();
    }

    public BaseAnimatableValue(List<Keyframe<V>> list) {
        this.keyframes = list;
    }
}
