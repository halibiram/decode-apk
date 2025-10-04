package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class TextScale extends Transition {
    private static final String PROPNAME_SCALE = new ObfuscatedString(new long[]{1659433456726611906L, -3776709227548690410L, 1704468203110341726L, -3417438040831247115L}).toString();

    private void captureValues(@NonNull TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (view instanceof TextView) {
            transitionValues.values.put(new ObfuscatedString(new long[]{-1208913243325115323L, -7264496735112671106L, -3978564633100912052L, -1388737566178730499L}).toString(), Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Transition
    public Animator createAnimator(@NonNull ViewGroup viewGroup, @Nullable TransitionValues transitionValues, @Nullable TransitionValues transitionValues2) {
        float f;
        if (transitionValues != null && transitionValues2 != null && (transitionValues.view instanceof TextView)) {
            View view = transitionValues2.view;
            if (view instanceof TextView) {
                final TextView textView = (TextView) view;
                Map<String, Object> map = transitionValues.values;
                Map<String, Object> map2 = transitionValues2.values;
                float f2 = 1.0f;
                if (map.get(new ObfuscatedString(new long[]{-5919843989231875996L, -1158009086598514714L, -505005428711581645L, -628959282277279723L}).toString()) != null) {
                    f = ((Float) map.get(new ObfuscatedString(new long[]{6534445385869060548L, 1740103353918649274L, 1654661628324045028L, -8295422454458184233L}).toString())).floatValue();
                } else {
                    f = 1.0f;
                }
                if (map2.get(new ObfuscatedString(new long[]{7700635915284914984L, 8376682686803538866L, 2529696048615728342L, 474977810883820576L}).toString()) != null) {
                    f2 = ((Float) map2.get(new ObfuscatedString(new long[]{-2622323743655894998L, 7104842549713284265L, -7636637589205569513L, -5875474609370070798L}).toString())).floatValue();
                }
                if (f == f2) {
                    return null;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        textView.setScaleX(floatValue);
                        textView.setScaleY(floatValue);
                    }
                });
                return ofFloat;
            }
        }
        return null;
    }
}
