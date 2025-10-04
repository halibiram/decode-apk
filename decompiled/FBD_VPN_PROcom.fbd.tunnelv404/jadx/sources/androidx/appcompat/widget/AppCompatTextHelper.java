package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.TypedValueCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.inputmethod.EditorInfoCompat;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int TEXT_FONT_WEIGHT_UNSPECIFIED = -1;
    private boolean mAsyncFontPending;

    @NonNull
    private final AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private TintInfo mDrawableBottomTint;
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableLeftTint;
    private TintInfo mDrawableRightTint;
    private TintInfo mDrawableStartTint;
    private TintInfo mDrawableTint;
    private TintInfo mDrawableTopTint;
    private Typeface mFontTypeface;

    @NonNull
    private final TextView mView;
    private int mStyle = 0;
    private int mFontWeight = -1;

    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        public static LocaleList forLanguageTags(String str) {
            return LocaleList.forLanguageTags(str);
        }

        @DoNotInline
        public static void setTextLocales(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    @RequiresApi(26)
    /* loaded from: classes.dex */
    public static class Api26Impl {
        private Api26Impl() {
        }

        @DoNotInline
        public static int getAutoSizeStepGranularity(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        @DoNotInline
        public static void setAutoSizeTextTypeUniformWithConfiguration(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        @DoNotInline
        public static void setAutoSizeTextTypeUniformWithPresetSizes(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        @DoNotInline
        public static boolean setFontVariationSettings(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    @RequiresApi(28)
    /* loaded from: classes.dex */
    public static class Api28Impl {
        private Api28Impl() {
        }

        @DoNotInline
        public static Typeface create(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }

    public AppCompatTextHelper(@NonNull TextView textView) {
        this.mView = textView;
        this.mAutoSizeTextHelper = new AppCompatTextViewAutoSizeHelper(textView);
    }

    private void applyCompoundDrawableTint(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.tintDrawable(drawable, tintInfo, this.mView.getDrawableState());
        }
    }

    private static TintInfo createTintInfo(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList tintList = appCompatDrawableManager.getTintList(context, i);
        if (tintList != null) {
            TintInfo tintInfo = new TintInfo();
            tintInfo.mHasTintList = true;
            tintInfo.mTintList = tintList;
            return tintInfo;
        }
        return null;
    }

    private void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
                Drawable drawable7 = compoundDrawablesRelative[0];
                if (drawable7 == null && compoundDrawablesRelative[2] == null) {
                    Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
                    TextView textView = this.mView;
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                    return;
                }
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative[1];
                }
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative[3];
                }
                this.mView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative[2], drawable4);
                return;
            }
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.mView.getCompoundDrawablesRelative();
        if (drawable5 == null) {
            drawable5 = compoundDrawablesRelative2[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawablesRelative2[1];
        }
        if (drawable6 == null) {
            drawable6 = compoundDrawablesRelative2[2];
        }
        TextView textView2 = this.mView;
        if (drawable4 == null) {
            drawable4 = compoundDrawablesRelative2[3];
        }
        textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
    }

    private void setCompoundTints() {
        TintInfo tintInfo = this.mDrawableTint;
        this.mDrawableLeftTint = tintInfo;
        this.mDrawableTopTint = tintInfo;
        this.mDrawableRightTint = tintInfo;
        this.mDrawableBottomTint = tintInfo;
        this.mDrawableStartTint = tintInfo;
        this.mDrawableEndTint = tintInfo;
    }

    private void setTextSizeInternal(int i, float f) {
        this.mAutoSizeTextHelper.setTextSizeInternal(i, f);
    }

    private void updateTypefaceAndStyle(Context context, TintTypedArray tintTypedArray) {
        String string;
        boolean z;
        boolean z2;
        this.mStyle = tintTypedArray.getInt(R.styleable.TextAppearance_android_textStyle, this.mStyle);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            int i2 = tintTypedArray.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.mFontWeight = i2;
            if (i2 != -1) {
                this.mStyle &= 2;
            }
        }
        int i3 = R.styleable.TextAppearance_android_fontFamily;
        boolean z3 = true;
        if (!tintTypedArray.hasValue(i3) && !tintTypedArray.hasValue(R.styleable.TextAppearance_fontFamily)) {
            int i4 = R.styleable.TextAppearance_android_typeface;
            if (tintTypedArray.hasValue(i4)) {
                this.mAsyncFontPending = false;
                int i5 = tintTypedArray.getInt(i4, 1);
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 == 3) {
                            this.mFontTypeface = Typeface.MONOSPACE;
                            return;
                        }
                        return;
                    }
                    this.mFontTypeface = Typeface.SERIF;
                    return;
                }
                this.mFontTypeface = Typeface.SANS_SERIF;
                return;
            }
            return;
        }
        this.mFontTypeface = null;
        int i6 = R.styleable.TextAppearance_fontFamily;
        if (tintTypedArray.hasValue(i6)) {
            i3 = i6;
        }
        final int i7 = this.mFontWeight;
        final int i8 = this.mStyle;
        if (!context.isRestricted()) {
            final WeakReference weakReference = new WeakReference(this.mView);
            try {
                Typeface font = tintTypedArray.getFont(i3, this.mStyle, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* renamed from: onFontRetrievalFailed */
                    public void lambda$callbackFailAsync$1(int i9) {
                    }

                    @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                    /* renamed from: onFontRetrieved */
                    public void lambda$callbackSuccessAsync$0(@NonNull Typeface typeface) {
                        int i9;
                        boolean z4;
                        if (Build.VERSION.SDK_INT >= 28 && (i9 = i7) != -1) {
                            if ((i8 & 2) != 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            typeface = Api28Impl.create(typeface, i9, z4);
                        }
                        AppCompatTextHelper.this.onAsyncTypefaceReceived(weakReference, typeface);
                    }
                });
                if (font != null) {
                    if (i >= 28 && this.mFontWeight != -1) {
                        Typeface create = Typeface.create(font, 0);
                        int i9 = this.mFontWeight;
                        if ((this.mStyle & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.mFontTypeface = Api28Impl.create(create, i9, z2);
                    } else {
                        this.mFontTypeface = font;
                    }
                }
                if (this.mFontTypeface == null) {
                    z = true;
                } else {
                    z = false;
                }
                this.mAsyncFontPending = z;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.mFontTypeface == null && (string = tintTypedArray.getString(i3)) != null) {
            if (Build.VERSION.SDK_INT >= 28 && this.mFontWeight != -1) {
                Typeface create2 = Typeface.create(string, 0);
                int i10 = this.mFontWeight;
                if ((this.mStyle & 2) == 0) {
                    z3 = false;
                }
                this.mFontTypeface = Api28Impl.create(create2, i10, z3);
                return;
            }
            this.mFontTypeface = Typeface.create(string, this.mStyle);
        }
    }

    public void applyCompoundDrawablesTints() {
        if (this.mDrawableLeftTint != null || this.mDrawableTopTint != null || this.mDrawableRightTint != null || this.mDrawableBottomTint != null) {
            Drawable[] compoundDrawables = this.mView.getCompoundDrawables();
            applyCompoundDrawableTint(compoundDrawables[0], this.mDrawableLeftTint);
            applyCompoundDrawableTint(compoundDrawables[1], this.mDrawableTopTint);
            applyCompoundDrawableTint(compoundDrawables[2], this.mDrawableRightTint);
            applyCompoundDrawableTint(compoundDrawables[3], this.mDrawableBottomTint);
        }
        if (this.mDrawableStartTint != null || this.mDrawableEndTint != null) {
            Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
            applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
            applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void autoSizeText() {
        this.mAutoSizeTextHelper.autoSizeText();
    }

    public int getAutoSizeMaxTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    public int getAutoSizeMinTextSize() {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    public int getAutoSizeStepGranularity() {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    public int[] getAutoSizeTextAvailableSizes() {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    public int getAutoSizeTextType() {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    @Nullable
    public ColorStateList getCompoundDrawableTintList() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintList;
        }
        return null;
    }

    @Nullable
    public PorterDuff.Mode getCompoundDrawableTintMode() {
        TintInfo tintInfo = this.mDrawableTint;
        if (tintInfo != null) {
            return tintInfo.mTintMode;
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isAutoSizeEnabled() {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x021e  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:153:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02aa  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x029b  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01be A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e2  */
    @SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadFromAttributes(@Nullable AttributeSet attributeSet, int i) {
        String str;
        ColorStateList colorStateList;
        boolean z;
        boolean z2;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        String str2;
        boolean z3;
        int i2;
        int i3;
        AppCompatDrawableManager appCompatDrawableManager;
        Typeface typeface;
        TintTypedArray obtainStyledAttributes;
        int resourceId;
        Drawable drawable;
        int resourceId2;
        Drawable drawable2;
        int resourceId3;
        Drawable drawable3;
        int resourceId4;
        Drawable drawable4;
        int resourceId5;
        Drawable drawable5;
        int resourceId6;
        Drawable drawable6;
        int i4;
        int i5;
        int i6;
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int i7;
        int i8;
        float f;
        int i9;
        int[] autoSizeTextAvailableSizes;
        int i10;
        int i11;
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager2 = AppCompatDrawableManager.get();
        int[] iArr = R.styleable.AppCompatTextHelper;
        TintTypedArray obtainStyledAttributes2 = TintTypedArray.obtainStyledAttributes(context, attributeSet, iArr, i, 0);
        TextView textView = this.mView;
        ViewCompat.saveAttributeDataForStyleable(textView, textView.getContext(), iArr, attributeSet, obtainStyledAttributes2.getWrappedTypeArray(), i, 0);
        int resourceId7 = obtainStyledAttributes2.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        int i12 = R.styleable.AppCompatTextHelper_android_drawableLeft;
        if (obtainStyledAttributes2.hasValue(i12)) {
            this.mDrawableLeftTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i12, 0));
        }
        int i13 = R.styleable.AppCompatTextHelper_android_drawableTop;
        if (obtainStyledAttributes2.hasValue(i13)) {
            this.mDrawableTopTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i13, 0));
        }
        int i14 = R.styleable.AppCompatTextHelper_android_drawableRight;
        if (obtainStyledAttributes2.hasValue(i14)) {
            this.mDrawableRightTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i14, 0));
        }
        int i15 = R.styleable.AppCompatTextHelper_android_drawableBottom;
        if (obtainStyledAttributes2.hasValue(i15)) {
            this.mDrawableBottomTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i15, 0));
        }
        int i16 = R.styleable.AppCompatTextHelper_android_drawableStart;
        if (obtainStyledAttributes2.hasValue(i16)) {
            this.mDrawableStartTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i16, 0));
        }
        int i17 = R.styleable.AppCompatTextHelper_android_drawableEnd;
        if (obtainStyledAttributes2.hasValue(i17)) {
            this.mDrawableEndTint = createTintInfo(context, appCompatDrawableManager2, obtainStyledAttributes2.getResourceId(i17, 0));
        }
        obtainStyledAttributes2.recycle();
        boolean z4 = this.mView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId7 != -1) {
            TintTypedArray obtainStyledAttributes3 = TintTypedArray.obtainStyledAttributes(context, resourceId7, R.styleable.TextAppearance);
            if (!z4) {
                int i18 = R.styleable.TextAppearance_textAllCaps;
                if (obtainStyledAttributes3.hasValue(i18)) {
                    z = obtainStyledAttributes3.getBoolean(i18, false);
                    z2 = true;
                    updateTypefaceAndStyle(context, obtainStyledAttributes3);
                    i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 23) {
                        int i19 = R.styleable.TextAppearance_android_textColor;
                        if (obtainStyledAttributes3.hasValue(i19)) {
                            colorStateList = obtainStyledAttributes3.getColorStateList(i19);
                        } else {
                            colorStateList = null;
                        }
                        int i20 = R.styleable.TextAppearance_android_textColorHint;
                        if (obtainStyledAttributes3.hasValue(i20)) {
                            colorStateList2 = obtainStyledAttributes3.getColorStateList(i20);
                        } else {
                            colorStateList2 = null;
                        }
                        int i21 = R.styleable.TextAppearance_android_textColorLink;
                        if (obtainStyledAttributes3.hasValue(i21)) {
                            colorStateList3 = obtainStyledAttributes3.getColorStateList(i21);
                            i11 = R.styleable.TextAppearance_textLocale;
                            if (obtainStyledAttributes3.hasValue(i11)) {
                                str = obtainStyledAttributes3.getString(i11);
                            } else {
                                str = null;
                            }
                            if (i10 >= 26) {
                                int i22 = R.styleable.TextAppearance_fontVariationSettings;
                                if (obtainStyledAttributes3.hasValue(i22)) {
                                    str2 = obtainStyledAttributes3.getString(i22);
                                    obtainStyledAttributes3.recycle();
                                }
                            }
                            str2 = null;
                            obtainStyledAttributes3.recycle();
                        }
                    } else {
                        colorStateList = null;
                        colorStateList2 = null;
                    }
                    colorStateList3 = null;
                    i11 = R.styleable.TextAppearance_textLocale;
                    if (obtainStyledAttributes3.hasValue(i11)) {
                    }
                    if (i10 >= 26) {
                    }
                    str2 = null;
                    obtainStyledAttributes3.recycle();
                }
            }
            z = false;
            z2 = false;
            updateTypefaceAndStyle(context, obtainStyledAttributes3);
            i10 = Build.VERSION.SDK_INT;
            if (i10 >= 23) {
            }
            colorStateList3 = null;
            i11 = R.styleable.TextAppearance_textLocale;
            if (obtainStyledAttributes3.hasValue(i11)) {
            }
            if (i10 >= 26) {
            }
            str2 = null;
            obtainStyledAttributes3.recycle();
        } else {
            str = null;
            colorStateList = null;
            z = false;
            z2 = false;
            colorStateList2 = null;
            colorStateList3 = null;
            str2 = null;
        }
        TintTypedArray obtainStyledAttributes4 = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i, 0);
        if (!z4) {
            int i23 = R.styleable.TextAppearance_textAllCaps;
            if (obtainStyledAttributes4.hasValue(i23)) {
                z = obtainStyledAttributes4.getBoolean(i23, false);
                z3 = true;
                i2 = Build.VERSION.SDK_INT;
                if (i2 < 23) {
                    int i24 = R.styleable.TextAppearance_android_textColor;
                    if (obtainStyledAttributes4.hasValue(i24)) {
                        colorStateList = obtainStyledAttributes4.getColorStateList(i24);
                    }
                    int i25 = R.styleable.TextAppearance_android_textColorHint;
                    if (obtainStyledAttributes4.hasValue(i25)) {
                        colorStateList2 = obtainStyledAttributes4.getColorStateList(i25);
                    }
                    int i26 = R.styleable.TextAppearance_android_textColorLink;
                    if (obtainStyledAttributes4.hasValue(i26)) {
                        colorStateList3 = obtainStyledAttributes4.getColorStateList(i26);
                    }
                }
                i3 = R.styleable.TextAppearance_textLocale;
                if (obtainStyledAttributes4.hasValue(i3)) {
                    str = obtainStyledAttributes4.getString(i3);
                }
                if (i2 >= 26) {
                    int i27 = R.styleable.TextAppearance_fontVariationSettings;
                    if (obtainStyledAttributes4.hasValue(i27)) {
                        str2 = obtainStyledAttributes4.getString(i27);
                    }
                }
                if (i2 >= 28) {
                    int i28 = R.styleable.TextAppearance_android_textSize;
                    if (obtainStyledAttributes4.hasValue(i28) && obtainStyledAttributes4.getDimensionPixelSize(i28, -1) == 0) {
                        appCompatDrawableManager = appCompatDrawableManager2;
                        this.mView.setTextSize(0, 0.0f);
                        updateTypefaceAndStyle(context, obtainStyledAttributes4);
                        obtainStyledAttributes4.recycle();
                        if (colorStateList != null) {
                            this.mView.setTextColor(colorStateList);
                        }
                        if (colorStateList2 != null) {
                            this.mView.setHintTextColor(colorStateList2);
                        }
                        if (colorStateList3 != null) {
                            this.mView.setLinkTextColor(colorStateList3);
                        }
                        if (!z4 && z3) {
                            setAllCaps(z);
                        }
                        typeface = this.mFontTypeface;
                        if (typeface != null) {
                            if (this.mFontWeight == -1) {
                                this.mView.setTypeface(typeface, this.mStyle);
                            } else {
                                this.mView.setTypeface(typeface);
                            }
                        }
                        if (str2 != null) {
                            Api26Impl.setFontVariationSettings(this.mView, str2);
                        }
                        if (str != null) {
                            if (i2 >= 24) {
                                Api24Impl.setTextLocales(this.mView, Api24Impl.forLanguageTags(str));
                            } else {
                                this.mView.setTextLocale(Api21Impl.forLanguageTag(str.split(",")[0]));
                            }
                        }
                        this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i);
                        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE && this.mAutoSizeTextHelper.getAutoSizeTextType() != 0) {
                            autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
                            if (autoSizeTextAvailableSizes.length > 0) {
                                if (Api26Impl.getAutoSizeStepGranularity(this.mView) != -1.0f) {
                                    Api26Impl.setAutoSizeTextTypeUniformWithConfiguration(this.mView, this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
                                } else {
                                    Api26Impl.setAutoSizeTextTypeUniformWithPresetSizes(this.mView, autoSizeTextAvailableSizes, 0);
                                }
                            }
                        }
                        obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
                        resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
                        AppCompatDrawableManager appCompatDrawableManager3 = appCompatDrawableManager;
                        if (resourceId != -1) {
                            drawable = appCompatDrawableManager3.getDrawable(context, resourceId);
                        } else {
                            drawable = null;
                        }
                        resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
                        if (resourceId2 != -1) {
                            drawable2 = appCompatDrawableManager3.getDrawable(context, resourceId2);
                        } else {
                            drawable2 = null;
                        }
                        resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
                        if (resourceId3 != -1) {
                            drawable3 = appCompatDrawableManager3.getDrawable(context, resourceId3);
                        } else {
                            drawable3 = null;
                        }
                        resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
                        if (resourceId4 != -1) {
                            drawable4 = appCompatDrawableManager3.getDrawable(context, resourceId4);
                        } else {
                            drawable4 = null;
                        }
                        resourceId5 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
                        if (resourceId5 != -1) {
                            drawable5 = appCompatDrawableManager3.getDrawable(context, resourceId5);
                        } else {
                            drawable5 = null;
                        }
                        resourceId6 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
                        if (resourceId6 != -1) {
                            drawable6 = appCompatDrawableManager3.getDrawable(context, resourceId6);
                        } else {
                            drawable6 = null;
                        }
                        setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, drawable6);
                        i4 = R.styleable.AppCompatTextView_drawableTint;
                        if (obtainStyledAttributes.hasValue(i4)) {
                            TextViewCompat.setCompoundDrawableTintList(this.mView, obtainStyledAttributes.getColorStateList(i4));
                        }
                        i5 = R.styleable.AppCompatTextView_drawableTintMode;
                        if (obtainStyledAttributes.hasValue(i5)) {
                            i6 = -1;
                            TextViewCompat.setCompoundDrawableTintMode(this.mView, DrawableUtils.parseTintMode(obtainStyledAttributes.getInt(i5, -1), null));
                        } else {
                            i6 = -1;
                        }
                        dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i6);
                        dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i6);
                        i7 = R.styleable.AppCompatTextView_lineHeight;
                        if (obtainStyledAttributes.hasValue(i7)) {
                            TypedValue peekValue = obtainStyledAttributes.peekValue(i7);
                            if (peekValue != null && peekValue.type == 5) {
                                int unitFromComplexDimension = TypedValueCompat.getUnitFromComplexDimension(peekValue.data);
                                f = TypedValue.complexToFloat(peekValue.data);
                                i9 = unitFromComplexDimension;
                                i8 = -1;
                                obtainStyledAttributes.recycle();
                                if (dimensionPixelSize != i8) {
                                    TextViewCompat.setFirstBaselineToTopHeight(this.mView, dimensionPixelSize);
                                }
                                if (dimensionPixelSize2 != i8) {
                                    TextViewCompat.setLastBaselineToBottomHeight(this.mView, dimensionPixelSize2);
                                }
                                if (f == -1.0f) {
                                    if (i9 == i8) {
                                        TextViewCompat.setLineHeight(this.mView, (int) f);
                                        return;
                                    } else {
                                        TextViewCompat.setLineHeight(this.mView, i9, f);
                                        return;
                                    }
                                }
                                return;
                            }
                            i8 = -1;
                            f = obtainStyledAttributes.getDimensionPixelSize(i7, -1);
                        } else {
                            i8 = -1;
                            f = -1.0f;
                        }
                        i9 = -1;
                        obtainStyledAttributes.recycle();
                        if (dimensionPixelSize != i8) {
                        }
                        if (dimensionPixelSize2 != i8) {
                        }
                        if (f == -1.0f) {
                        }
                    }
                }
                appCompatDrawableManager = appCompatDrawableManager2;
                updateTypefaceAndStyle(context, obtainStyledAttributes4);
                obtainStyledAttributes4.recycle();
                if (colorStateList != null) {
                }
                if (colorStateList2 != null) {
                }
                if (colorStateList3 != null) {
                }
                if (!z4) {
                    setAllCaps(z);
                }
                typeface = this.mFontTypeface;
                if (typeface != null) {
                }
                if (str2 != null) {
                }
                if (str != null) {
                }
                this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i);
                if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
                    autoSizeTextAvailableSizes = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
                    if (autoSizeTextAvailableSizes.length > 0) {
                    }
                }
                obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
                resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
                AppCompatDrawableManager appCompatDrawableManager32 = appCompatDrawableManager;
                if (resourceId != -1) {
                }
                resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
                if (resourceId2 != -1) {
                }
                resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
                if (resourceId3 != -1) {
                }
                resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
                if (resourceId4 != -1) {
                }
                resourceId5 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
                if (resourceId5 != -1) {
                }
                resourceId6 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
                if (resourceId6 != -1) {
                }
                setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, drawable6);
                i4 = R.styleable.AppCompatTextView_drawableTint;
                if (obtainStyledAttributes.hasValue(i4)) {
                }
                i5 = R.styleable.AppCompatTextView_drawableTintMode;
                if (obtainStyledAttributes.hasValue(i5)) {
                }
                dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i6);
                dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i6);
                i7 = R.styleable.AppCompatTextView_lineHeight;
                if (obtainStyledAttributes.hasValue(i7)) {
                }
                i9 = -1;
                obtainStyledAttributes.recycle();
                if (dimensionPixelSize != i8) {
                }
                if (dimensionPixelSize2 != i8) {
                }
                if (f == -1.0f) {
                }
            }
        }
        z3 = z2;
        i2 = Build.VERSION.SDK_INT;
        if (i2 < 23) {
        }
        i3 = R.styleable.TextAppearance_textLocale;
        if (obtainStyledAttributes4.hasValue(i3)) {
        }
        if (i2 >= 26) {
        }
        if (i2 >= 28) {
        }
        appCompatDrawableManager = appCompatDrawableManager2;
        updateTypefaceAndStyle(context, obtainStyledAttributes4);
        obtainStyledAttributes4.recycle();
        if (colorStateList != null) {
        }
        if (colorStateList2 != null) {
        }
        if (colorStateList3 != null) {
        }
        if (!z4) {
        }
        typeface = this.mFontTypeface;
        if (typeface != null) {
        }
        if (str2 != null) {
        }
        if (str != null) {
        }
        this.mAutoSizeTextHelper.loadFromAttributes(attributeSet, i);
        if (ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
        }
        obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
        resourceId = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        AppCompatDrawableManager appCompatDrawableManager322 = appCompatDrawableManager;
        if (resourceId != -1) {
        }
        resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        if (resourceId2 != -1) {
        }
        resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        if (resourceId3 != -1) {
        }
        resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        if (resourceId4 != -1) {
        }
        resourceId5 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        if (resourceId5 != -1) {
        }
        resourceId6 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        if (resourceId6 != -1) {
        }
        setCompoundDrawables(drawable, drawable2, drawable3, drawable4, drawable5, drawable6);
        i4 = R.styleable.AppCompatTextView_drawableTint;
        if (obtainStyledAttributes.hasValue(i4)) {
        }
        i5 = R.styleable.AppCompatTextView_drawableTintMode;
        if (obtainStyledAttributes.hasValue(i5)) {
        }
        dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i6);
        dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i6);
        i7 = R.styleable.AppCompatTextView_lineHeight;
        if (obtainStyledAttributes.hasValue(i7)) {
        }
        i9 = -1;
        obtainStyledAttributes.recycle();
        if (dimensionPixelSize != i8) {
        }
        if (dimensionPixelSize2 != i8) {
        }
        if (f == -1.0f) {
        }
    }

    public void onAsyncTypefaceReceived(WeakReference<TextView> weakReference, final Typeface typeface) {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = typeface;
            final TextView textView = weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    final int i = this.mStyle;
                    textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                        @Override // java.lang.Runnable
                        public void run() {
                            textView.setTypeface(typeface, i);
                        }
                    });
                } else {
                    textView.setTypeface(typeface, this.mStyle);
                }
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (!ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE) {
            autoSizeText();
        }
    }

    public void onSetCompoundDrawables() {
        applyCompoundDrawablesTints();
    }

    public void onSetTextAppearance(Context context, int i) {
        String string;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, i, R.styleable.TextAppearance);
        int i2 = R.styleable.TextAppearance_textAllCaps;
        if (obtainStyledAttributes.hasValue(i2)) {
            setAllCaps(obtainStyledAttributes.getBoolean(i2, false));
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 < 23) {
            int i4 = R.styleable.TextAppearance_android_textColor;
            if (obtainStyledAttributes.hasValue(i4) && (colorStateList3 = obtainStyledAttributes.getColorStateList(i4)) != null) {
                this.mView.setTextColor(colorStateList3);
            }
            int i5 = R.styleable.TextAppearance_android_textColorLink;
            if (obtainStyledAttributes.hasValue(i5) && (colorStateList2 = obtainStyledAttributes.getColorStateList(i5)) != null) {
                this.mView.setLinkTextColor(colorStateList2);
            }
            int i6 = R.styleable.TextAppearance_android_textColorHint;
            if (obtainStyledAttributes.hasValue(i6) && (colorStateList = obtainStyledAttributes.getColorStateList(i6)) != null) {
                this.mView.setHintTextColor(colorStateList);
            }
        }
        int i7 = R.styleable.TextAppearance_android_textSize;
        if (obtainStyledAttributes.hasValue(i7) && obtainStyledAttributes.getDimensionPixelSize(i7, -1) == 0) {
            this.mView.setTextSize(0, 0.0f);
        }
        updateTypefaceAndStyle(context, obtainStyledAttributes);
        if (i3 >= 26) {
            int i8 = R.styleable.TextAppearance_fontVariationSettings;
            if (obtainStyledAttributes.hasValue(i8) && (string = obtainStyledAttributes.getString(i8)) != null) {
                Api26Impl.setFontVariationSettings(this.mView, string);
            }
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.mFontTypeface;
        if (typeface != null) {
            this.mView.setTypeface(typeface, this.mStyle);
        }
    }

    public void populateSurroundingTextIfNeeded(@NonNull TextView textView, @Nullable InputConnection inputConnection, @NonNull EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT < 30 && inputConnection != null) {
            EditorInfoCompat.setInitialSurroundingText(editorInfo, textView.getText());
        }
    }

    public void setAllCaps(boolean z) {
        this.mView.setAllCaps(z);
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(@NonNull int[] iArr, int i) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
    }

    public void setAutoSizeTextTypeWithDefaults(int i) {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(i);
    }

    public void setCompoundDrawableTintList(@Nullable ColorStateList colorStateList) {
        boolean z;
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintList = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.mHasTintList = z;
        setCompoundTints();
    }

    public void setCompoundDrawableTintMode(@Nullable PorterDuff.Mode mode) {
        boolean z;
        if (this.mDrawableTint == null) {
            this.mDrawableTint = new TintInfo();
        }
        TintInfo tintInfo = this.mDrawableTint;
        tintInfo.mTintMode = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.mHasTintMode = z;
        setCompoundTints();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setTextSize(int i, float f) {
        if (!ViewUtils.SDK_LEVEL_SUPPORTS_AUTOSIZE && !isAutoSizeEnabled()) {
            setTextSizeInternal(i, f);
        }
    }
}
