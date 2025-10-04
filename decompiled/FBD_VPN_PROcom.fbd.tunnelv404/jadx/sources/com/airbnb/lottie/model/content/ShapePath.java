package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ShapeContent;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public class ShapePath implements ContentModel {
    private final boolean hidden;
    private final int index;
    private final String name;
    private final AnimatableShapeValue shapePath;

    public ShapePath(String str, int i, AnimatableShapeValue animatableShapeValue, boolean z) {
        this.name = str;
        this.index = i;
        this.shapePath = animatableShapeValue;
        this.hidden = z;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableShapeValue getShapePath() {
        return this.shapePath;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ShapeContent(lottieDrawable, baseLayer, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7893122411676595052L, 2553135936406486226L, -4586376888694535262L}).toString());
        sb.append(this.name);
        sb.append(new ObfuscatedString(new long[]{-2812547175716038770L, -129120749596095129L}).toString());
        return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.index, '}');
    }
}
