package com.airbnb.lottie.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
import com.airbnb.lottie.FontAssetDelegate;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.MutablePair;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FontAssetManager {
    private final AssetManager assetManager;

    @Nullable
    private FontAssetDelegate delegate;
    private final MutablePair<String> tempPair = new MutablePair<>();
    private final Map<MutablePair<String>, Typeface> fontMap = new HashMap();
    private final Map<String, Typeface> fontFamilies = new HashMap();
    private String defaultFontFileExtension = new ObfuscatedString(new long[]{-5794285410952136896L, 738553262469757933L}).toString();

    public FontAssetManager(Drawable.Callback callback, @Nullable FontAssetDelegate fontAssetDelegate) {
        this.delegate = fontAssetDelegate;
        if (!(callback instanceof View)) {
            Logger.warning(new ObfuscatedString(new long[]{3385077509377070777L, 2291583355118868393L, 8969521985104686402L, 1082181181311389408L, -6257655213417784428L, -7789510405487602868L, 6127062143570556747L, 81110257423570974L, -8885860178295735366L}).toString());
            this.assetManager = null;
        } else {
            this.assetManager = ((View) callback).getContext().getAssets();
        }
    }

    private Typeface getFontFamily(Font font) {
        Typeface typeface;
        String family = font.getFamily();
        Typeface typeface2 = this.fontFamilies.get(family);
        if (typeface2 != null) {
            return typeface2;
        }
        String style = font.getStyle();
        String name = font.getName();
        FontAssetDelegate fontAssetDelegate = this.delegate;
        if (fontAssetDelegate != null) {
            typeface = fontAssetDelegate.fetchFont(family, style, name);
            if (typeface == null) {
                typeface = this.delegate.fetchFont(family);
            }
        } else {
            typeface = null;
        }
        FontAssetDelegate fontAssetDelegate2 = this.delegate;
        if (fontAssetDelegate2 != null && typeface == null) {
            String fontPath = fontAssetDelegate2.getFontPath(family, style, name);
            if (fontPath == null) {
                fontPath = this.delegate.getFontPath(family);
            }
            if (fontPath != null) {
                typeface = Typeface.createFromAsset(this.assetManager, fontPath);
            }
        }
        if (font.getTypeface() != null) {
            return font.getTypeface();
        }
        if (typeface == null) {
            typeface = Typeface.createFromAsset(this.assetManager, new ObfuscatedString(new long[]{-3990902867683089067L, 9096433898964362166L}).toString() + family + this.defaultFontFileExtension);
        }
        this.fontFamilies.put(family, typeface);
        return typeface;
    }

    private Typeface typefaceForStyle(Typeface typeface, String str) {
        int i = 2;
        boolean contains = str.contains(new ObfuscatedString(new long[]{-5444631497452473213L, -1652910729703276753L}).toString());
        boolean contains2 = str.contains(new ObfuscatedString(new long[]{-252240248414093378L, 5809164823670743466L}).toString());
        if (contains && contains2) {
            i = 3;
        } else if (!contains) {
            if (contains2) {
                i = 1;
            } else {
                i = 0;
            }
        }
        if (typeface.getStyle() == i) {
            return typeface;
        }
        return Typeface.create(typeface, i);
    }

    public Typeface getTypeface(Font font) {
        this.tempPair.set(font.getFamily(), font.getStyle());
        Typeface typeface = this.fontMap.get(this.tempPair);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceForStyle = typefaceForStyle(getFontFamily(font), font.getStyle());
        this.fontMap.put(this.tempPair, typefaceForStyle);
        return typefaceForStyle;
    }

    public void setDefaultFontFileExtension(String str) {
        this.defaultFontFileExtension = str;
    }

    public void setDelegate(@Nullable FontAssetDelegate fontAssetDelegate) {
        this.delegate = fontAssetDelegate;
    }
}
