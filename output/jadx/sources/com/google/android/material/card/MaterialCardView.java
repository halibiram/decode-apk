package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import com.google.android.material.color.utilities.Contrast;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.panda912.muddy.ObfuscatedString;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_END = 8388693;
    public static final int CHECKED_ICON_GRAVITY_BOTTOM_START = 8388691;
    public static final int CHECKED_ICON_GRAVITY_TOP_END = 8388661;
    public static final int CHECKED_ICON_GRAVITY_TOP_START = 8388659;

    @NonNull
    private final MaterialCardViewHelper cardViewHelper;
    private boolean checked;
    private boolean dragged;
    private boolean isParentCardViewDoneInitializing;
    private OnCheckedChangeListener onCheckedChangeListener;
    private static final String LOG_TAG = new ObfuscatedString(new long[]{-850811829870323013L, -8717255763753623481L, -2550268332419351027L}).toString();
    private static final String ACCESSIBILITY_CLASS_NAME = new ObfuscatedString(new long[]{4467241847895548308L, 7692330890190716655L, -5778741356444466486L, 1215687933151890757L, 4412403366363701220L, 4022535786682901767L}).toString();
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int[] DRAGGED_STATE_SET = {com.google.android.material.R.attr.state_dragged};
    private static final int DEF_STYLE_RES = com.google.android.material.R.style.Widget_MaterialComponents_CardView;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface CheckedIconGravity {
    }

    /* loaded from: classes2.dex */
    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialCardView materialCardView, boolean z);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }

    private void forceRippleRedrawIfNeeded() {
        if (Build.VERSION.SDK_INT > 26) {
            this.cardViewHelper.forceRippleRedraw();
        }
    }

    @NonNull
    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.cardViewHelper.getBackground().getBounds());
        return rectF;
    }

    @Override // androidx.cardview.widget.CardView
    @NonNull
    public ColorStateList getCardBackgroundColor() {
        return this.cardViewHelper.getCardBackgroundColor();
    }

    @NonNull
    public ColorStateList getCardForegroundColor() {
        return this.cardViewHelper.getCardForegroundColor();
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    @Nullable
    public Drawable getCheckedIcon() {
        return this.cardViewHelper.getCheckedIcon();
    }

    public int getCheckedIconGravity() {
        return this.cardViewHelper.getCheckedIconGravity();
    }

    @Dimension
    public int getCheckedIconMargin() {
        return this.cardViewHelper.getCheckedIconMargin();
    }

    @Dimension
    public int getCheckedIconSize() {
        return this.cardViewHelper.getCheckedIconSize();
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        return this.cardViewHelper.getCheckedIconTint();
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.cardViewHelper.getUserContentPadding().bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.cardViewHelper.getUserContentPadding().left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.cardViewHelper.getUserContentPadding().right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.cardViewHelper.getUserContentPadding().top;
    }

    @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN)
    public float getProgress() {
        return this.cardViewHelper.getProgress();
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.cardViewHelper.getCornerRadius();
    }

    public ColorStateList getRippleColor() {
        return this.cardViewHelper.getRippleColor();
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.cardViewHelper.getShapeAppearanceModel();
    }

    @ColorInt
    @Deprecated
    public int getStrokeColor() {
        return this.cardViewHelper.getStrokeColor();
    }

    @Nullable
    public ColorStateList getStrokeColorStateList() {
        return this.cardViewHelper.getStrokeColorStateList();
    }

    @Dimension
    public int getStrokeWidth() {
        return this.cardViewHelper.getStrokeWidth();
    }

    public boolean isCheckable() {
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper != null && materialCardViewHelper.isCheckable()) {
            return true;
        }
        return false;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    public boolean isDragged() {
        return this.dragged;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.cardViewHelper.updateClickable();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.cardViewHelper.getBackground());
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKED_STATE_SET);
        }
        if (isDragged()) {
            View.mergeDrawableStates(onCreateDrawableState, DRAGGED_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(@NonNull AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(new ObfuscatedString(new long[]{-1151179684976861804L, 4065573916280610321L, -2027106079468068426L, 7320484764475433251L, 3077916452979053551L, 9201523358924085471L}).toString());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(new ObfuscatedString(new long[]{-5414080053281378803L, -7181077892123676292L, -7294651940918088323L, -8082695106219793324L, 4649758683636627627L, 444833065569343464L}).toString());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.cardViewHelper.recalculateCheckedIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setAncestorContentPadding(int i, int i2, int i3, int i4) {
        super.setContentPadding(i, i2, i3, i4);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.isParentCardViewDoneInitializing) {
            if (!this.cardViewHelper.isBackgroundOverwritten()) {
                new ObfuscatedString(new long[]{-3615305034410544325L, 6288696812462337392L, 5636147370163815011L}).toString();
                new ObfuscatedString(new long[]{5767970557162823146L, -8732464896881310659L, 7056334905391970135L, 2835344246866597782L, 5993989778445913048L, 2531541104966979046L, -3146198474736441604L}).toString();
                this.cardViewHelper.setBackgroundOverwritten(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@ColorInt int i) {
        this.cardViewHelper.setCardBackgroundColor(ColorStateList.valueOf(i));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.cardViewHelper.updateElevation();
    }

    public void setCardForegroundColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.setCardForegroundColor(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.cardViewHelper.setCheckable(z);
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.checked != z) {
            toggle();
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        this.cardViewHelper.setCheckedIcon(drawable);
    }

    public void setCheckedIconGravity(int i) {
        if (this.cardViewHelper.getCheckedIconGravity() != i) {
            this.cardViewHelper.setCheckedIconGravity(i);
        }
    }

    public void setCheckedIconMargin(@Dimension int i) {
        this.cardViewHelper.setCheckedIconMargin(i);
    }

    public void setCheckedIconMarginResource(@DimenRes int i) {
        if (i != -1) {
            this.cardViewHelper.setCheckedIconMargin(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        this.cardViewHelper.setCheckedIcon(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setCheckedIconSize(@Dimension int i) {
        this.cardViewHelper.setCheckedIconSize(i);
    }

    public void setCheckedIconSizeResource(@DimenRes int i) {
        if (i != 0) {
            this.cardViewHelper.setCheckedIconSize(getResources().getDimensionPixelSize(i));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.setCheckedIconTint(colorStateList);
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        MaterialCardViewHelper materialCardViewHelper = this.cardViewHelper;
        if (materialCardViewHelper != null) {
            materialCardViewHelper.updateClickable();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.cardViewHelper.setUserContentPadding(i, i2, i3, i4);
    }

    public void setDragged(boolean z) {
        if (this.dragged != z) {
            this.dragged = z;
            refreshDrawableState();
            forceRippleRedrawIfNeeded();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.cardViewHelper.updateInsets();
    }

    public void setOnCheckedChangeListener(@Nullable OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.cardViewHelper.updateInsets();
        this.cardViewHelper.updateContentPadding();
    }

    public void setProgress(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        this.cardViewHelper.setProgress(f);
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f) {
        super.setRadius(f);
        this.cardViewHelper.setCornerRadius(f);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.setRippleColor(colorStateList);
    }

    public void setRippleColorResource(@ColorRes int i) {
        this.cardViewHelper.setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        setClipToOutline(shapeAppearanceModel.isRoundRect(getBoundsAsRectF()));
        this.cardViewHelper.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setStrokeColor(@ColorInt int i) {
        setStrokeColor(ColorStateList.valueOf(i));
    }

    public void setStrokeWidth(@Dimension int i) {
        this.cardViewHelper.setStrokeWidth(i);
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.cardViewHelper.updateInsets();
        this.cardViewHelper.updateContentPadding();
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (isCheckable() && isEnabled()) {
            this.checked = !this.checked;
            refreshDrawableState();
            forceRippleRedrawIfNeeded();
            this.cardViewHelper.setChecked(this.checked, true);
            OnCheckedChangeListener onCheckedChangeListener = this.onCheckedChangeListener;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.onCheckedChanged(this, this.checked);
            }
        }
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.google.android.material.R.attr.materialCardViewStyle);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(@Nullable ColorStateList colorStateList) {
        this.cardViewHelper.setCardBackgroundColor(colorStateList);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.cardViewHelper.setStrokeColor(colorStateList);
        invalidate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, r6), attributeSet, i);
        int i2 = DEF_STYLE_RES;
        this.checked = false;
        this.dragged = false;
        this.isParentCardViewDoneInitializing = true;
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(getContext(), attributeSet, com.google.android.material.R.styleable.MaterialCardView, i, i2, new int[0]);
        MaterialCardViewHelper materialCardViewHelper = new MaterialCardViewHelper(this, attributeSet, i, i2);
        this.cardViewHelper = materialCardViewHelper;
        materialCardViewHelper.setCardBackgroundColor(super.getCardBackgroundColor());
        materialCardViewHelper.setUserContentPadding(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        materialCardViewHelper.loadFromAttributes(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }
}
