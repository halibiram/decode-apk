package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes.dex */
public class ShapeTrimPath implements ContentModel {
    private final AnimatableFloatValue end;
    private final boolean hidden;
    private final String name;
    private final AnimatableFloatValue offset;
    private final AnimatableFloatValue start;
    private final Type type;

    /* loaded from: classes.dex */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i) {
            if (i != 1) {
                if (i == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7925819625916894057L, 1660829481855919551L, 8885976344917187832L, -7684692218538902979L}), new StringBuilder(), i));
            }
            return SIMULTANEOUSLY;
        }
    }

    public ShapeTrimPath(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, boolean z) {
        this.name = str;
        this.type = type;
        this.start = animatableFloatValue;
        this.end = animatableFloatValue2;
        this.offset = animatableFloatValue3;
        this.hidden = z;
    }

    public AnimatableFloatValue getEnd() {
        return this.end;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableFloatValue getOffset() {
        return this.offset;
    }

    public AnimatableFloatValue getStart() {
        return this.start;
    }

    public Type getType() {
        return this.type;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new TrimPathContent(baseLayer, this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{839057175996439435L, -6666414796191879682L, 3472858870442113587L, 1013190220713667299L}).toString());
        sb.append(this.start);
        sb.append(new ObfuscatedString(new long[]{-5430280435376717997L, 4373764454509664481L}).toString());
        sb.append(this.end);
        sb.append(new ObfuscatedString(new long[]{-3560691589233917144L, -1306860804997912922L, -8981654679682466142L}).toString());
        sb.append(this.offset);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7911044815310932558L, -6033554618222279969L}), sb);
    }
}
