package com.google.android.gms.common.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.Button;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import com.google.android.gms.common.util.DeviceProperties;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zaaa extends Button {
    public zaaa(Context context, @Nullable AttributeSet attributeSet) {
        super(context, null, R.attr.buttonStyle);
    }

    private static final int zab(int i, int i2, int i3, int i4) {
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return i4;
                }
                throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3440906158264003799L, 4246312209425968981L, 4004869194506131130L, 5350713176185060999L}), new StringBuilder(33), i));
            }
            return i3;
        }
        return i2;
    }

    public final void zaa(Resources resources, int i, int i2) {
        setTypeface(Typeface.DEFAULT_BOLD);
        setTextSize(14.0f);
        int i3 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
        setMinHeight(i3);
        setMinWidth(i3);
        int i4 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_dark;
        int i5 = com.google.android.gms.base.R.drawable.common_google_signin_btn_icon_light;
        int zab = zab(i2, i4, i5, i5);
        int i6 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_dark;
        int i7 = com.google.android.gms.base.R.drawable.common_google_signin_btn_text_light;
        int zab2 = zab(i2, i6, i7, i7);
        if (i != 0 && i != 1) {
            if (i != 2) {
                throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8250466889846979392L, -4946743211490903260L, 8993119658397142503L, 6021487294740137138L}), new StringBuilder(32), i));
            }
        } else {
            zab = zab2;
        }
        Drawable wrap = DrawableCompat.wrap(resources.getDrawable(zab));
        DrawableCompat.setTintList(wrap, resources.getColorStateList(com.google.android.gms.base.R.color.common_google_signin_btn_tint));
        DrawableCompat.setTintMode(wrap, PorterDuff.Mode.SRC_ATOP);
        setBackgroundDrawable(wrap);
        int i8 = com.google.android.gms.base.R.color.common_google_signin_btn_text_dark;
        int i9 = com.google.android.gms.base.R.color.common_google_signin_btn_text_light;
        setTextColor((ColorStateList) Preconditions.checkNotNull(resources.getColorStateList(zab(i2, i8, i9, i9))));
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    setText((CharSequence) null);
                } else {
                    throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{381553968183168097L, 7143516056179880228L, 2664422774376494418L, 1255944581579918385L}), new StringBuilder(32), i));
                }
            } else {
                setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text_long));
            }
        } else {
            setText(resources.getString(com.google.android.gms.base.R.string.common_signin_button_text));
        }
        setTransformationMethod(null);
        if (DeviceProperties.isWearable(getContext())) {
            setGravity(19);
        }
    }
}
