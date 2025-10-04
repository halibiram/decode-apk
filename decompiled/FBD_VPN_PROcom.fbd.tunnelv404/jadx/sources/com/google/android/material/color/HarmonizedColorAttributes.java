package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class HarmonizedColorAttributes {
    private static final int[] HARMONIZED_MATERIAL_ATTRIBUTES = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};
    private final int[] attributes;

    @StyleRes
    private final int themeOverlay;

    private HarmonizedColorAttributes(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        if (i != 0 && iArr.length == 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5782037854023423711L, 156108185175659960L, -4406260998103401694L, 8546088867231121787L, 8372354118515065591L, -9491431605625313L, 6414092234243789769L, -2544609820235496875L, -5060863004576811832L, -9186532339221663427L}).toString());
        }
        this.attributes = iArr;
        this.themeOverlay = i;
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr) {
        return new HarmonizedColorAttributes(iArr, 0);
    }

    @NonNull
    public static HarmonizedColorAttributes createMaterialDefaults() {
        return create(HARMONIZED_MATERIAL_ATTRIBUTES, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    @NonNull
    public int[] getAttributes() {
        return this.attributes;
    }

    @StyleRes
    public int getThemeOverlay() {
        return this.themeOverlay;
    }

    @NonNull
    public static HarmonizedColorAttributes create(@AttrRes @NonNull int[] iArr, @StyleRes int i) {
        return new HarmonizedColorAttributes(iArr, i);
    }
}
