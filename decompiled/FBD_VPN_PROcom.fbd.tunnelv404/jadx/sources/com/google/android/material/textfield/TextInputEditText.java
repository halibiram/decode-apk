package com.google.android.material.textfield;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatEditText;
import com.google.android.material.R;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public class TextInputEditText extends AppCompatEditText {
    private final Rect parentRect;
    private boolean textInputLayoutFocusedRectEnabled;

    public TextInputEditText(@NonNull Context context) {
        this(context, null);
    }

    @NonNull
    private String getAccessibilityNodeInfoText(@NonNull TextInputLayout textInputLayout) {
        String obfuscatedString;
        String obfuscatedString2;
        Editable text = getText();
        CharSequence hint = textInputLayout.getHint();
        boolean isEmpty = TextUtils.isEmpty(text);
        if (!TextUtils.isEmpty(hint)) {
            obfuscatedString = hint.toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{3646226715957625428L}).toString();
        }
        if (!isEmpty) {
            StringBuilder sb = new StringBuilder();
            sb.append((Object) text);
            if (!TextUtils.isEmpty(obfuscatedString)) {
                obfuscatedString2 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8755407873664594019L, -234847834256174204L}), new StringBuilder(), obfuscatedString);
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{1474726799034320264L}).toString();
            }
            sb.append(obfuscatedString2);
            return sb.toString();
        }
        if (!TextUtils.isEmpty(obfuscatedString)) {
            return obfuscatedString;
        }
        return new ObfuscatedString(new long[]{-4252470323690558204L}).toString();
    }

    @Nullable
    private CharSequence getHintFromLayout() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null) {
            return textInputLayout.getHint();
        }
        return null;
    }

    @Nullable
    private TextInputLayout getTextInputLayout() {
        for (ViewParent parent = getParent(); parent instanceof View; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    private boolean shouldUseTextInputLayoutFocusedRect(@Nullable TextInputLayout textInputLayout) {
        if (textInputLayout != null && this.textInputLayoutFocusedRectEnabled) {
            return true;
        }
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@Nullable Rect rect) {
        super.getFocusedRect(rect);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (shouldUseTextInputLayoutFocusedRect(textInputLayout) && rect != null) {
            textInputLayout.getFocusedRect(this.parentRect);
            rect.bottom = this.parentRect.bottom;
        }
    }

    @Override // android.view.View
    public boolean getGlobalVisibleRect(@Nullable Rect rect, @Nullable Point point) {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (shouldUseTextInputLayoutFocusedRect(textInputLayout)) {
            boolean globalVisibleRect = textInputLayout.getGlobalVisibleRect(rect, point);
            if (globalVisibleRect && point != null) {
                point.offset(-getScrollX(), -getScrollY());
            }
            return globalVisibleRect;
        }
        return super.getGlobalVisibleRect(rect, point);
    }

    @Override // android.widget.TextView
    @Nullable
    public CharSequence getHint() {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.isProvidingHint()) {
            return textInputLayout.getHint();
        }
        return super.getHint();
    }

    public boolean isTextInputLayoutFocusedRectEnabled() {
        return this.textInputLayoutFocusedRectEnabled;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayout = getTextInputLayout();
        if (textInputLayout != null && textInputLayout.isProvidingHint() && super.getHint() == null && ManufacturerUtils.isMeizuDevice()) {
            setHint(new ObfuscatedString(new long[]{-3194000032900270993L}).toString());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        if (onCreateInputConnection != null && editorInfo.hintText == null) {
            editorInfo.hintText = getHintFromLayout();
        }
        return onCreateInputConnection;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        TextInputLayout textInputLayout = getTextInputLayout();
        if (Build.VERSION.SDK_INT < 23 && textInputLayout != null) {
            accessibilityNodeInfo.setText(getAccessibilityNodeInfoText(textInputLayout));
        }
    }

    @Override // android.view.View
    public boolean requestRectangleOnScreen(@Nullable Rect rect) {
        TextInputLayout textInputLayout = getTextInputLayout();
        if (shouldUseTextInputLayoutFocusedRect(textInputLayout) && rect != null) {
            this.parentRect.set(rect.left, rect.top, rect.right, rect.bottom + (textInputLayout.getHeight() - getHeight()));
            return super.requestRectangleOnScreen(this.parentRect);
        }
        return super.requestRectangleOnScreen(rect);
    }

    public void setTextInputLayoutFocusedRectEnabled(boolean z) {
        this.textInputLayoutFocusedRectEnabled = z;
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public TextInputEditText(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, 0), attributeSet, i);
        this.parentRect = new Rect();
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.TextInputEditText, i, R.style.Widget_Design_TextInputEditText, new int[0]);
        setTextInputLayoutFocusedRectEnabled(obtainStyledAttributes.getBoolean(R.styleable.TextInputEditText_textInputLayoutFocusedRectEnabled, false));
        obtainStyledAttributes.recycle();
    }
}
