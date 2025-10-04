package com.tknetwork.tunnel.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.R;

/* loaded from: classes3.dex */
public class MaterialEditText extends AppCompatEditText {
    private static final String IS_SHOWING_PASSWORD_STATE_KEY = new ObfuscatedString(new long[]{-1616695919290340831L, -5506114231649018719L, -7447350706541701072L, 5662558064676873347L, 8104655685639131493L}).toString();
    private static final String SUPER_STATE_KEY = new ObfuscatedString(new long[]{8600425281507699091L, -5655811646446510522L, -2799300399731302806L}).toString();
    private static final String TAG = "MaterialEditText";
    private final int DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE;
    private int additionalTouchTargetSize;
    private Drawable drawableEnd;
    private boolean isShowingPassword;
    private boolean leftToRight;
    private int tintColor;

    @DrawableRes
    private int visibilityIndicatorHide;

    @DrawableRes
    private int visibilityIndicatorShow;

    public MaterialEditText(Context context) {
        super(context);
        this.isShowingPassword = false;
        this.leftToRight = true;
        this.tintColor = 0;
        this.DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE = 40;
        this.additionalTouchTargetSize = 40;
        init(null);
    }

    private void init(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ShowHidePasswordEditText);
            this.visibilityIndicatorShow = obtainStyledAttributes.getResourceId(2, com.fbd.tunnel.R.drawable.ic_visibility_grey_900_24dp);
            this.visibilityIndicatorHide = obtainStyledAttributes.getResourceId(1, com.fbd.tunnel.R.drawable.ic_visibility_off_grey_900_24dp);
            this.tintColor = obtainStyledAttributes.getColor(3, 0);
            this.additionalTouchTargetSize = obtainStyledAttributes.getDimensionPixelSize(0, 40);
            obtainStyledAttributes.recycle();
        } else {
            this.visibilityIndicatorShow = com.fbd.tunnel.R.drawable.ic_visibility_grey_900_24dp;
            this.visibilityIndicatorHide = com.fbd.tunnel.R.drawable.ic_visibility_off_grey_900_24dp;
        }
        this.leftToRight = isLeftToRight();
        setMaxLines(1);
        setSingleLine(true);
        this.isShowingPassword = false;
        maskPassword();
        setSaveEnabled(true);
        if (!TextUtils.isEmpty(getText())) {
            showPasswordVisibilityIndicator(true);
        }
        addTextChangedListener(new TextWatcher() { // from class: com.tknetwork.tunnel.view.MaterialEditText.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                boolean z;
                MaterialEditText materialEditText = MaterialEditText.this;
                if (charSequence.length() > 0) {
                    z = true;
                } else {
                    z = false;
                }
                materialEditText.showPasswordVisibilityIndicator(z);
            }
        });
    }

    private boolean isLeftToRight() {
        if (getResources().getConfiguration().getLayoutDirection() != 1) {
            return true;
        }
        return false;
    }

    private void maskPassword() {
        setTransformationMethod(PasswordTransformationMethod.getInstance());
    }

    private void unmaskPassword() {
        setTransformationMethod(null);
    }

    public void finalize() {
        this.drawableEnd = null;
        super.finalize();
    }

    public int getAdditionalTouchTargetSizePixels() {
        return this.additionalTouchTargetSize;
    }

    @DrawableRes
    public int getVisibilityIndicatorHide() {
        return this.visibilityIndicatorHide;
    }

    @DrawableRes
    public int getVisibilityIndicatorShow() {
        return this.visibilityIndicatorShow;
    }

    public boolean isShowingPassword() {
        return this.isShowingPassword;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            boolean z = bundle.getBoolean(new ObfuscatedString(new long[]{-9117996838606692498L, -6130148640101040278L, -2706979712489278340L, 3742754849625596028L, 21925263768174489L}).toString(), false);
            this.isShowingPassword = z;
            if (z) {
                unmaskPassword();
            }
            parcelable = bundle.getParcelable(new ObfuscatedString(new long[]{1554771631012119800L, 2737353221894109046L, 3761717678877441679L}).toString());
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{-6031807921005908519L, -8076649777888290565L, 5218334882205230109L}).toString(), super.onSaveInstanceState());
        bundle.putBoolean(new ObfuscatedString(new long[]{5820703318031098295L, 6925901334083294287L, -2632269183285692449L, -8028047176071992792L, -9124442537321932843L}).toString(), this.isShowingPassword);
        return bundle;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        int paddingLeft;
        if (motionEvent.getAction() == 1 && (drawable = this.drawableEnd) != null) {
            Rect bounds = drawable.getBounds();
            int x = (int) motionEvent.getX();
            int width = bounds.width();
            if (this.leftToRight) {
                paddingLeft = getPaddingRight();
            } else {
                paddingLeft = getPaddingLeft();
            }
            int i = width + paddingLeft + this.additionalTouchTargetSize;
            if ((this.leftToRight && x >= getRight() - i) || (!this.leftToRight && x <= getLeft() + i)) {
                togglePasswordVisibility();
                motionEvent.setAction(3);
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setAdditionalTouchTargetSizePixels(int i) {
        this.additionalTouchTargetSize = i;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        boolean z = this.leftToRight;
        if (z && drawable3 != null) {
            this.drawableEnd = drawable3;
        } else if (!z && drawable != null) {
            this.drawableEnd = drawable;
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    public void setTintColor(@ColorInt int i) {
        this.tintColor = i;
    }

    public void setVisibilityIndicatorHide(@DrawableRes int i) {
        this.visibilityIndicatorHide = i;
    }

    public void setVisibilityIndicatorShow(@DrawableRes int i) {
        this.visibilityIndicatorShow = i;
    }

    public void showPasswordVisibilityIndicator(boolean z) {
        Drawable drawable;
        Drawable[] compoundDrawables = getCompoundDrawables();
        Drawable drawable2 = compoundDrawables[0];
        Drawable drawable3 = compoundDrawables[1];
        Drawable drawable4 = compoundDrawables[2];
        Drawable drawable5 = compoundDrawables[3];
        if (z) {
            if (this.isShowingPassword) {
                drawable = ContextCompat.getDrawable(getContext(), this.visibilityIndicatorHide);
            } else {
                drawable = ContextCompat.getDrawable(getContext(), this.visibilityIndicatorShow);
            }
            drawable.mutate();
            if (this.tintColor == 0) {
                boolean z2 = this.leftToRight;
                if (!z2) {
                    drawable2 = drawable;
                }
                if (z2) {
                    drawable4 = drawable;
                }
                setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable4, drawable5);
                return;
            }
            Drawable wrap = DrawableCompat.wrap(drawable);
            DrawableCompat.setTint(wrap, this.tintColor);
            boolean z3 = this.leftToRight;
            if (!z3) {
                drawable2 = wrap;
            }
            if (z3) {
                drawable4 = wrap;
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable4, drawable5);
            return;
        }
        boolean z4 = this.leftToRight;
        if (!z4) {
            drawable2 = null;
        }
        if (z4) {
            drawable4 = null;
        }
        setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable4, drawable5);
    }

    public void togglePasswordVisibility() {
        int selectionStart = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (this.isShowingPassword) {
            maskPassword();
        } else {
            unmaskPassword();
        }
        setSelection(selectionStart, selectionEnd);
        this.isShowingPassword = !this.isShowingPassword;
        showPasswordVisibilityIndicator(true);
    }

    public MaterialEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isShowingPassword = false;
        this.leftToRight = true;
        this.tintColor = 0;
        this.DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE = 40;
        this.additionalTouchTargetSize = 40;
        init(attributeSet);
    }

    public MaterialEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isShowingPassword = false;
        this.leftToRight = true;
        this.tintColor = 0;
        this.DEFAULT_ADDITIONAL_TOUCH_TARGET_SIZE = 40;
        this.additionalTouchTargetSize = 40;
        init(attributeSet);
    }
}
