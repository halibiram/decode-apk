package com.airbnb.lottie.model;

import androidx.annotation.RestrictTo;
import com.airbnb.lottie.model.content.ShapeGroup;
import defpackage.AbstractC0362x4440ab85;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class FontCharacter {
    private final char character;
    private final String fontFamily;
    private final List<ShapeGroup> shapes;
    private final double size;
    private final String style;
    private final double width;

    public FontCharacter(List<ShapeGroup> list, char c, double d, double d2, String str, String str2) {
        this.shapes = list;
        this.character = c;
        this.size = d;
        this.width = d2;
        this.style = str;
        this.fontFamily = str2;
    }

    public static int hashFor(char c, String str, String str2) {
        return str2.hashCode() + AbstractC0362x4440ab85.m2927x1378447b(c * 31, 31, str);
    }

    public List<ShapeGroup> getShapes() {
        return this.shapes;
    }

    public double getWidth() {
        return this.width;
    }

    public int hashCode() {
        return hashFor(this.character, this.fontFamily, this.style);
    }
}
