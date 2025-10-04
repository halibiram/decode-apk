package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.RestrictTo;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ComplexColorCompat {
    private static final String LOG_TAG = "ComplexColorCompat";
    private int mColor;
    private final ColorStateList mColorStateList;
    private final Shader mShader;

    private ComplexColorCompat(Shader shader, ColorStateList colorStateList, @ColorInt int i) {
        this.mShader = shader;
        this.mColorStateList = colorStateList;
        this.mColor = i;
    }

    private static ComplexColorCompat createFromXml(Resources resources, @ColorRes int i, Resources.Theme theme) {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            String name = xml.getName();
            name.getClass();
            if (!name.equals("gradient")) {
                if (name.equals("selector")) {
                    return from(ColorStateListInflaterCompat.createFromXmlInner(resources, xml, asAttributeSet, theme));
                }
                throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
            }
            return from(GradientColorInflaterCompat.createFromXmlInner(resources, xml, asAttributeSet, theme));
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static ComplexColorCompat from(Shader shader) {
        return new ComplexColorCompat(shader, null, 0);
    }

    public static ComplexColorCompat inflate(Resources resources, @ColorRes int i, Resources.Theme theme) {
        try {
            return createFromXml(resources, i, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    @ColorInt
    public int getColor() {
        return this.mColor;
    }

    public Shader getShader() {
        return this.mShader;
    }

    public boolean isGradient() {
        if (this.mShader != null) {
            return true;
        }
        return false;
    }

    public boolean isStateful() {
        ColorStateList colorStateList;
        if (this.mShader == null && (colorStateList = this.mColorStateList) != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public boolean onStateChanged(int[] iArr) {
        if (isStateful()) {
            ColorStateList colorStateList = this.mColorStateList;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.mColor) {
                this.mColor = colorForState;
                return true;
            }
        }
        return false;
    }

    public void setColor(@ColorInt int i) {
        this.mColor = i;
    }

    public boolean willDraw() {
        if (!isGradient() && this.mColor == 0) {
            return false;
        }
        return true;
    }

    public static ComplexColorCompat from(ColorStateList colorStateList) {
        return new ComplexColorCompat(null, colorStateList, colorStateList.getDefaultColor());
    }

    public static ComplexColorCompat from(@ColorInt int i) {
        return new ComplexColorCompat(null, null, i);
    }
}
