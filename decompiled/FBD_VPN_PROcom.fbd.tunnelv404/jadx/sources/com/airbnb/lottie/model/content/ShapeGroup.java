package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeGroup implements ContentModel {
    private final boolean hidden;
    private final List<ContentModel> items;
    private final String name;

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.name = str;
        this.items = list;
        this.hidden = z;
    }

    public List<ContentModel> getItems() {
        return this.items;
    }

    public String getName() {
        return this.name;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    public Content toContent(LottieDrawable lottieDrawable, LottieComposition lottieComposition, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this, lottieComposition);
    }

    public String toString() {
        return new ObfuscatedString(new long[]{2065569402169496891L, -7698137956465235529L, -4763266931754362654L, -3906428559341547034L}).toString() + this.name + new ObfuscatedString(new long[]{8226467938561219333L, 5540264116907740994L, 4153845963969750224L}).toString() + Arrays.toString(this.items.toArray()) + '}';
    }
}
