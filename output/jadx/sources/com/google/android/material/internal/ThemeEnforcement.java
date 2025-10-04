package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class ThemeEnforcement {
    private static final String APPCOMPAT_THEME_NAME = new ObfuscatedString(new long[]{-5873031699280745230L, 4703250678251580422L, -259339607641801466L}).toString();
    private static final String MATERIAL_THEME_NAME = new ObfuscatedString(new long[]{-1658780941810110971L, 1607604257507224825L, -8441631979595099628L, 1740482529789331369L}).toString();
    private static final int[] APPCOMPAT_CHECK_ATTRS = {R.attr.colorPrimary};
    private static final int[] MATERIAL_CHECK_ATTRS = {R.attr.colorPrimaryVariant};

    private ThemeEnforcement() {
    }

    public static void checkAppCompatTheme(@NonNull Context context) {
        checkTheme(context, APPCOMPAT_CHECK_ATTRS, new ObfuscatedString(new long[]{5659577702029206214L, -794311337094233767L, -7523514234097817983L}).toString());
    }

    private static void checkCompatibleTheme(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                checkMaterialTheme(context);
            }
        }
        checkAppCompatTheme(context);
    }

    public static void checkMaterialTheme(@NonNull Context context) {
        checkTheme(context, MATERIAL_CHECK_ATTRS, new ObfuscatedString(new long[]{-6390456381328481659L, 2853793703370329084L, -6407207636833909180L, -4993545278617456594L}).toString());
    }

    private static void checkTextAppearance(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @Nullable @StyleableRes int... iArr2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i, i2);
        boolean z2 = false;
        if (!obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceTextAppearance, false)) {
            obtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 != null && iArr2.length != 0) {
            z = isCustomTextAppearanceValid(context, attributeSet, iArr, i, i2, iArr2);
        } else {
            if (obtainStyledAttributes.getResourceId(R.styleable.ThemeEnforcement_android_textAppearance, -1) != -1) {
                z2 = true;
            }
            z = z2;
        }
        obtainStyledAttributes.recycle();
        if (z) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2878400176637289212L, -8773604867246366233L, -2423020218094841122L, -3955976239386074060L, -8657284902828568358L, -8363576589741717726L, 7319908568364061301L, -435917790094492768L, 950078995509073754L, -5812322332137139811L, 2044031680732952852L, 8554453433510605360L, 962735504997576670L, 8656426520098576294L, -392005121007937413L, -2853731338617175169L, -5964454805145389350L, -1258281917396131560L, 7952336169357977157L, -7993841727889171964L, 853955467962940695L}).toString());
        }
    }

    private static void checkTheme(@NonNull Context context, @NonNull int[] iArr, String str) {
        if (isTheme(context, iArr)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{4768368898037056055L, -90606061605042404L, -6902678316394490009L, 4825107651228488564L, 7326957908982146930L, 4650765036168159653L, 6131752149863425554L, -5258568820219592730L, -2337520800510213103L}).toString());
        sb.append(str);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4767027692386709265L, 8597924112728476756L, -8297914830108838405L, 2197966745026378453L}), sb));
    }

    public static boolean isAppCompatTheme(@NonNull Context context) {
        return isTheme(context, APPCOMPAT_CHECK_ATTRS);
    }

    private static boolean isCustomTextAppearanceValid(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @NonNull @StyleableRes int... iArr2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (obtainStyledAttributes.getResourceId(i3, -1) == -1) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    public static boolean isMaterial3Theme(@NonNull Context context) {
        return MaterialAttributes.resolveBoolean(context, R.attr.isMaterial3Theme, false);
    }

    public static boolean isMaterialTheme(@NonNull Context context) {
        return isTheme(context, MATERIAL_CHECK_ATTRS);
    }

    private static boolean isTheme(@NonNull Context context, @NonNull int[] iArr) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!obtainStyledAttributes.hasValue(i)) {
                obtainStyledAttributes.recycle();
                return false;
            }
        }
        obtainStyledAttributes.recycle();
        return true;
    }

    @NonNull
    public static TypedArray obtainStyledAttributes(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        checkCompatibleTheme(context, attributeSet, i, i2);
        checkTextAppearance(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    public static TintTypedArray obtainTintedStyledAttributes(@NonNull Context context, AttributeSet attributeSet, @NonNull @StyleableRes int[] iArr, @AttrRes int i, @StyleRes int i2, @StyleableRes int... iArr2) {
        checkCompatibleTheme(context, attributeSet, i, i2);
        checkTextAppearance(context, attributeSet, iArr, i, i2, iArr2);
        return TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, i2);
    }
}
