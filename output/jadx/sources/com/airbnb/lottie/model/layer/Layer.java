package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.value.Keyframe;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Layer {
    private final LBlendMode blendMode;

    @Nullable
    private final BlurEffect blurEffect;
    private final LottieComposition composition;

    @Nullable
    private final DropShadowEffect dropShadowEffect;
    private final boolean hidden;
    private final List<Keyframe<Float>> inOutKeyframes;
    private final long layerId;
    private final String layerName;
    private final LayerType layerType;
    private final List<Mask> masks;
    private final MatteType matteType;
    private final long parentId;
    private final float preCompHeight;
    private final float preCompWidth;

    @Nullable
    private final String refId;
    private final List<ContentModel> shapes;
    private final int solidColor;
    private final int solidHeight;
    private final int solidWidth;
    private final float startFrame;

    @Nullable
    private final AnimatableTextFrame text;

    @Nullable
    private final AnimatableTextProperties textProperties;

    @Nullable
    private final AnimatableFloatValue timeRemapping;
    private final float timeStretch;
    private final AnimatableTransform transform;

    /* loaded from: classes.dex */
    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* loaded from: classes.dex */
    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, @Nullable String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, float f3, float f4, @Nullable AnimatableTextFrame animatableTextFrame, @Nullable AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, @Nullable AnimatableFloatValue animatableFloatValue, boolean z, @Nullable BlurEffect blurEffect, @Nullable DropShadowEffect dropShadowEffect, LBlendMode lBlendMode) {
        this.shapes = list;
        this.composition = lottieComposition;
        this.layerName = str;
        this.layerId = j;
        this.layerType = layerType;
        this.parentId = j2;
        this.refId = str2;
        this.masks = list2;
        this.transform = animatableTransform;
        this.solidWidth = i;
        this.solidHeight = i2;
        this.solidColor = i3;
        this.timeStretch = f;
        this.startFrame = f2;
        this.preCompWidth = f3;
        this.preCompHeight = f4;
        this.text = animatableTextFrame;
        this.textProperties = animatableTextProperties;
        this.inOutKeyframes = list3;
        this.matteType = matteType;
        this.timeRemapping = animatableFloatValue;
        this.hidden = z;
        this.blurEffect = blurEffect;
        this.dropShadowEffect = dropShadowEffect;
        this.blendMode = lBlendMode;
    }

    @Nullable
    public LBlendMode getBlendMode() {
        return this.blendMode;
    }

    @Nullable
    public BlurEffect getBlurEffect() {
        return this.blurEffect;
    }

    public LottieComposition getComposition() {
        return this.composition;
    }

    @Nullable
    public DropShadowEffect getDropShadowEffect() {
        return this.dropShadowEffect;
    }

    public long getId() {
        return this.layerId;
    }

    public List<Keyframe<Float>> getInOutKeyframes() {
        return this.inOutKeyframes;
    }

    public LayerType getLayerType() {
        return this.layerType;
    }

    public List<Mask> getMasks() {
        return this.masks;
    }

    public MatteType getMatteType() {
        return this.matteType;
    }

    public String getName() {
        return this.layerName;
    }

    public long getParentId() {
        return this.parentId;
    }

    public float getPreCompHeight() {
        return this.preCompHeight;
    }

    public float getPreCompWidth() {
        return this.preCompWidth;
    }

    @Nullable
    public String getRefId() {
        return this.refId;
    }

    public List<ContentModel> getShapes() {
        return this.shapes;
    }

    public int getSolidColor() {
        return this.solidColor;
    }

    public int getSolidHeight() {
        return this.solidHeight;
    }

    public int getSolidWidth() {
        return this.solidWidth;
    }

    public float getStartProgress() {
        return this.startFrame / this.composition.getDurationFrames();
    }

    @Nullable
    public AnimatableTextFrame getText() {
        return this.text;
    }

    @Nullable
    public AnimatableTextProperties getTextProperties() {
        return this.textProperties;
    }

    @Nullable
    public AnimatableFloatValue getTimeRemapping() {
        return this.timeRemapping;
    }

    public float getTimeStretch() {
        return this.timeStretch;
    }

    public AnimatableTransform getTransform() {
        return this.transform;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public String toString(String str) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(getName());
        m3341xc20437a5.append(new ObfuscatedString(new long[]{8260034309077015689L, -4869458179385339534L}).toString());
        Layer layerModelForId = this.composition.layerModelForId(getParentId());
        if (layerModelForId != null) {
            m3341xc20437a5.append(new ObfuscatedString(new long[]{6153193659735237312L, 3930511270238091138L, 3517659004426120686L}).toString());
            m3341xc20437a5.append(layerModelForId.getName());
            Layer layerModelForId2 = this.composition.layerModelForId(layerModelForId.getParentId());
            while (layerModelForId2 != null) {
                m3341xc20437a5.append(new ObfuscatedString(new long[]{4338859521620589986L, 2587873191187277131L}).toString());
                m3341xc20437a5.append(layerModelForId2.getName());
                layerModelForId2 = this.composition.layerModelForId(layerModelForId2.getParentId());
            }
            m3341xc20437a5.append(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2265386436452938028L, -4813681849028504628L}).toString());
        }
        if (!getMasks().isEmpty()) {
            m3341xc20437a5.append(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{2604221093261752809L, -3101129329953099621L}).toString());
            m3341xc20437a5.append(getMasks().size());
            m3341xc20437a5.append(new ObfuscatedString(new long[]{7625151987488020881L, 1130301318697499276L}).toString());
        }
        if (getSolidWidth() != 0 && getSolidHeight() != 0) {
            m3341xc20437a5.append(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{355335223200495360L, -7300643627912392908L, -7957366167654534680L}).toString());
            m3341xc20437a5.append(String.format(Locale.US, new ObfuscatedString(new long[]{1071921895040002096L, 2214410704214419854L, -7942855522274376718L}).toString(), Integer.valueOf(getSolidWidth()), Integer.valueOf(getSolidHeight()), Integer.valueOf(getSolidColor())));
        }
        if (!this.shapes.isEmpty()) {
            m3341xc20437a5.append(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-4715179530807529253L, -4931272422495042006L, -8356394101796511144L}).toString());
            for (ContentModel contentModel : this.shapes) {
                m3341xc20437a5.append(str);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{7516729864108114347L, -8202707254607398493L}).toString());
                m3341xc20437a5.append(contentModel);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{3087982984038837924L, 730323357502144000L}).toString());
            }
        }
        return m3341xc20437a5.toString();
    }

    public String toString() {
        return toString(new ObfuscatedString(new long[]{1442800733720456552L}).toString());
    }
}
