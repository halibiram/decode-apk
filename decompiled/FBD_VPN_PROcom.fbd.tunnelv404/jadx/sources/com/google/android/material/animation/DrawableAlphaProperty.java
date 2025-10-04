package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.WeakHashMap;

/* loaded from: classes2.dex */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {
    public static final Property<Drawable, Integer> DRAWABLE_ALPHA_COMPAT = new DrawableAlphaProperty();
    private final WeakHashMap<Drawable, Integer> alphaCache;

    private DrawableAlphaProperty() {
        super(Integer.class, new ObfuscatedString(new long[]{-3689603513760216409L, -2464860526173102656L, -8309742868485317840L, 3391820214803767462L}).toString());
        this.alphaCache = new WeakHashMap<>();
    }

    @Override // android.util.Property
    @Nullable
    public Integer get(@NonNull Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public void set(@NonNull Drawable drawable, @NonNull Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
