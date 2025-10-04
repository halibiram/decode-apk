package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.CallSuper;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.panda912.muddy.ObfuscatedString;
import defpackage.C0390x994ec581;
import java.util.List;

/* loaded from: classes2.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable, MaterialCheckable<Chip> {
    private static final int CHIP_BODY_VIRTUAL_ID = 0;
    private static final int CLOSE_ICON_VIRTUAL_ID = 1;
    private static final int MIN_TOUCH_TARGET_DP = 48;

    @Nullable
    private CharSequence accessibilityClassName;

    @Nullable
    private ChipDrawable chipDrawable;
    private boolean closeIconFocused;
    private boolean closeIconHovered;
    private boolean closeIconPressed;
    private boolean deferredCheckedValue;
    private boolean ensureMinTouchTargetSize;
    private final TextAppearanceFontCallback fontCallback;

    @Nullable
    private InsetDrawable insetBackgroundDrawable;
    private int lastLayoutDirection;

    @Dimension(unit = 1)
    private int minTouchTargetSize;

    @Nullable
    private CompoundButton.OnCheckedChangeListener onCheckedChangeListener;

    @Nullable
    private MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListenerInternal;

    @Nullable
    private View.OnClickListener onCloseIconClickListener;
    private final Rect rect;
    private final RectF rectF;

    @Nullable
    private RippleDrawable ripple;

    @NonNull
    private final ChipTouchHelper touchHelper;
    private boolean touchHelperEnabled;
    private static final String TAG = new ObfuscatedString(new long[]{2621388708375274454L, -88434185526403633L}).toString();
    private static final String NAMESPACE_ANDROID = new ObfuscatedString(new long[]{1613144287991725646L, 7112001313952126435L, 2071870124817899366L, -2018089043705149107L, 463888081281685430L, 7162749369997027459L, -1914907609647224149L}).toString();
    private static final String BUTTON_ACCESSIBILITY_CLASS_NAME = new ObfuscatedString(new long[]{176550076540703988L, -7605530190755668425L, 8838882984200387923L, -2026493867718063645L}).toString();
    private static final String RADIO_BUTTON_ACCESSIBILITY_CLASS_NAME = new ObfuscatedString(new long[]{-2583557135280841584L, 3223592340372970294L, -149422589121345061L, -6351194763254079740L, -4110539573237153291L}).toString();
    private static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = new ObfuscatedString(new long[]{-6011897286077588740L, -2695726559476305564L, 5739784679781686241L, 3929214641776911096L}).toString();
    private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Chip_Action;
    private static final Rect EMPTY_BOUNDS = new Rect();
    private static final int[] SELECTED_STATE = {android.R.attr.state_selected};
    private static final int[] CHECKABLE_STATE_SET = {android.R.attr.state_checkable};

    /* renamed from: com.google.android.material.chip.Chip$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 extends TextAppearanceFontCallback {
        public AnonymousClass1() {
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrievalFailed(int i) {
        }

        @Override // com.google.android.material.resources.TextAppearanceFontCallback
        public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
            CharSequence text;
            Chip chip = Chip.this;
            if (chip.chipDrawable.shouldDrawText()) {
                text = Chip.this.chipDrawable.getText();
            } else {
                text = Chip.this.getText();
            }
            chip.setText(text);
            Chip.this.requestLayout();
            Chip.this.invalidate();
        }
    }

    /* renamed from: com.google.android.material.chip.Chip$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends ViewOutlineProvider {
        public AnonymousClass2() {
        }

        @Override // android.view.ViewOutlineProvider
        @TargetApi(21)
        public void getOutline(View view, @NonNull Outline outline) {
            if (Chip.this.chipDrawable != null) {
                Chip.this.chipDrawable.getOutline(outline);
            } else {
                outline.setAlpha(0.0f);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class ChipTouchHelper extends ExploreByTouchHelper {
        public ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            if (Chip.this.hasCloseIcon() && Chip.this.getCloseIconTouchBounds().contains(f, f2)) {
                return 1;
            }
            return 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(@NonNull List<Integer> list) {
            list.add(0);
            if (Chip.this.hasCloseIcon() && Chip.this.isCloseIconVisible() && Chip.this.onCloseIconClickListener != null) {
                list.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16) {
                if (i == 0) {
                    return Chip.this.performClick();
                }
                if (i == 1) {
                    return Chip.this.performCloseIconClick();
                }
                return false;
            }
            return false;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForHost(@NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.isCheckable());
            accessibilityNodeInfoCompat.setClickable(Chip.this.isClickable());
            accessibilityNodeInfoCompat.setClassName(Chip.this.getAccessibilityClassName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (i == 1) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = R.string.mtrl_chip_close_icon_content_description;
                    if (TextUtils.isEmpty(text)) {
                        text = new ObfuscatedString(new long[]{-2903732204429046523L}).toString();
                    }
                    accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, text).trim());
                }
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.setContentDescription(new ObfuscatedString(new long[]{3045137716230638429L}).toString());
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.EMPTY_BOUNDS);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onVirtualViewKeyboardFocusChanged(int i, boolean z) {
            if (i == 1) {
                Chip.this.closeIconFocused = z;
                Chip.this.refreshDrawableState();
            }
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    private void applyChipDrawable(@NonNull ChipDrawable chipDrawable) {
        chipDrawable.setDelegate(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    @NonNull
    private int[] createCloseIconDrawableState() {
        ?? isEnabled = isEnabled();
        int i = isEnabled;
        if (this.closeIconFocused) {
            i = isEnabled + 1;
        }
        int i2 = i;
        if (this.closeIconHovered) {
            i2 = i + 1;
        }
        int i3 = i2;
        if (this.closeIconPressed) {
            i3 = i2 + 1;
        }
        int i4 = i3;
        if (isChecked()) {
            i4 = i3 + 1;
        }
        int[] iArr = new int[i4];
        int i5 = 0;
        if (isEnabled()) {
            iArr[0] = 16842910;
            i5 = 1;
        }
        if (this.closeIconFocused) {
            iArr[i5] = 16842908;
            i5++;
        }
        if (this.closeIconHovered) {
            iArr[i5] = 16843623;
            i5++;
        }
        if (this.closeIconPressed) {
            iArr[i5] = 16842919;
            i5++;
        }
        if (isChecked()) {
            iArr[i5] = 16842913;
        }
        return iArr;
    }

    private void ensureChipDrawableHasCallback() {
        if (getBackgroundDrawable() == this.insetBackgroundDrawable && this.chipDrawable.getCallback() == null) {
            this.chipDrawable.setCallback(this.insetBackgroundDrawable);
        }
    }

    @NonNull
    public RectF getCloseIconTouchBounds() {
        this.rectF.setEmpty();
        if (hasCloseIcon() && this.onCloseIconClickListener != null) {
            this.chipDrawable.getCloseIconTouchBounds(this.rectF);
        }
        return this.rectF;
    }

    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.rect.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.rect;
    }

    @Nullable
    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextAppearance();
        }
        return null;
    }

    public boolean hasCloseIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.getCloseIcon() != null) {
            return true;
        }
        return false;
    }

    private void initMinTouchTarget(Context context, @Nullable AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context, attributeSet, R.styleable.Chip, i, DEF_STYLE_RES, new int[0]);
        this.ensureMinTouchTargetSize = obtainStyledAttributes.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
        this.minTouchTargetSize = (int) Math.ceil(obtainStyledAttributes.getDimension(R.styleable.Chip_chipMinTouchTargetSize, (float) Math.ceil(ViewUtils.dpToPx(getContext(), 48))));
        obtainStyledAttributes.recycle();
    }

    private void initOutlineProvider() {
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.chip.Chip.2
            public AnonymousClass2() {
            }

            @Override // android.view.ViewOutlineProvider
            @TargetApi(21)
            public void getOutline(View view, @NonNull Outline outline) {
                if (Chip.this.chipDrawable != null) {
                    Chip.this.chipDrawable.getOutline(outline);
                } else {
                    outline.setAlpha(0.0f);
                }
            }
        });
    }

    private void insetChipBackgroundDrawable(int i, int i2, int i3, int i4) {
        this.insetBackgroundDrawable = new InsetDrawable((Drawable) this.chipDrawable, i, i2, i3, i4);
    }

    public /* synthetic */ void lambda$new$0(CompoundButton compoundButton, boolean z) {
        MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener = this.onCheckedChangeListenerInternal;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(this, z);
        }
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener2 = this.onCheckedChangeListener;
        if (onCheckedChangeListener2 != null) {
            onCheckedChangeListener2.onCheckedChanged(compoundButton, z);
        }
    }

    private void removeBackgroundInset() {
        if (this.insetBackgroundDrawable != null) {
            this.insetBackgroundDrawable = null;
            setMinWidth(0);
            setMinHeight((int) getChipMinHeight());
            updateBackgroundDrawable();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.closeIconHovered != z) {
            this.closeIconHovered = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.closeIconPressed != z) {
            this.closeIconPressed = z;
            refreshDrawableState();
        }
    }

    private void unapplyChipDrawable(@Nullable ChipDrawable chipDrawable) {
        if (chipDrawable != null) {
            chipDrawable.setDelegate(null);
        }
    }

    private void updateAccessibilityDelegate() {
        if (hasCloseIcon() && isCloseIconVisible() && this.onCloseIconClickListener != null) {
            ViewCompat.setAccessibilityDelegate(this, this.touchHelper);
            this.touchHelperEnabled = true;
        } else {
            ViewCompat.setAccessibilityDelegate(this, null);
            this.touchHelperEnabled = false;
        }
    }

    private void updateBackgroundDrawable() {
        if (RippleUtils.USE_FRAMEWORK_RIPPLE) {
            updateFrameworkRippleBackground();
            return;
        }
        this.chipDrawable.setUseCompatRipple(true);
        ViewCompat.setBackground(this, getBackgroundDrawable());
        updatePaddingInternal();
        ensureChipDrawableHasCallback();
    }

    private void updateFrameworkRippleBackground() {
        this.ripple = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.chipDrawable.getRippleColor()), getBackgroundDrawable(), null);
        this.chipDrawable.setUseCompatRipple(false);
        ViewCompat.setBackground(this, this.ripple);
        updatePaddingInternal();
    }

    private void updatePaddingInternal() {
        ChipDrawable chipDrawable;
        if (!TextUtils.isEmpty(getText()) && (chipDrawable = this.chipDrawable) != null) {
            int calculateCloseIconWidth = (int) (this.chipDrawable.calculateCloseIconWidth() + this.chipDrawable.getTextEndPadding() + chipDrawable.getChipEndPadding());
            int calculateChipIconWidth = (int) (this.chipDrawable.calculateChipIconWidth() + this.chipDrawable.getTextStartPadding() + this.chipDrawable.getChipStartPadding());
            if (this.insetBackgroundDrawable != null) {
                Rect rect = new Rect();
                this.insetBackgroundDrawable.getPadding(rect);
                calculateChipIconWidth += rect.left;
                calculateCloseIconWidth += rect.right;
            }
            ViewCompat.setPaddingRelative(this, calculateChipIconWidth, getPaddingTop(), calculateCloseIconWidth, getPaddingBottom());
        }
    }

    private void updateTextPaintDrawState() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.updateDrawState(getContext(), paint, this.fontCallback);
        }
    }

    private void validateAttributes(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue(new ObfuscatedString(new long[]{4992509564820233207L, -2866423860421635922L, -2399133069533042939L, -8121241370896697562L, 886117947551461035L, -5386005643815315609L, -97851545519119947L}).toString(), new ObfuscatedString(new long[]{-7720836948876237219L, 8034513212294447639L, 4858484500799897846L}).toString()) != null) {
            new ObfuscatedString(new long[]{4141173323842073987L, -7790667685006937955L}).toString();
            new ObfuscatedString(new long[]{-7369675513842181285L, 4852392351727154821L, -4708328796614191128L, -8561624344872946356L, 8606083742756546303L, -3993161674268469248L, -1592102306896435095L, -5554651055781443459L, 2459864327778982279L, 935926493569223591L}).toString();
        }
        if (attributeSet.getAttributeValue(new ObfuscatedString(new long[]{-1950190292529651491L, -9144405131004809103L, -4666031993749157387L, 1412251590069597295L, -1229276561714139706L, -8874589590753263071L, 1033809272246100928L}).toString(), new ObfuscatedString(new long[]{-4444967847214186166L, -4356890228389013256L, 6009981928699987131L}).toString()) == null) {
            if (attributeSet.getAttributeValue(new ObfuscatedString(new long[]{1573166987092419370L, 7971631704049702755L, 6261761042439956398L, 6028668213268061434L, 5722256266241822363L, -7102841555523599222L, 5983118324321742621L}).toString(), new ObfuscatedString(new long[]{-2471567898445041604L, 3959785839728859252L, -2913192619001649939L}).toString()) == null) {
                if (attributeSet.getAttributeValue(new ObfuscatedString(new long[]{6763246908515225427L, -1347696391443959380L, -6697782481345275202L, -1457334913571475771L, -4856033705100838176L, -5971337712357705626L, -1419548316616146883L}).toString(), new ObfuscatedString(new long[]{-1033986541286963392L, 7219037828611451945L, -3327699762221447400L}).toString()) == null) {
                    if (attributeSet.getAttributeValue(new ObfuscatedString(new long[]{-8077621188725824302L, 1026170971442559961L, 7361070237438894785L, -3027356418600792463L, 9076851452176320788L, 3528934672804803251L, 7878666784164647338L}).toString(), new ObfuscatedString(new long[]{4084734630106407892L, -2943837879680387763L, 742194662824547065L}).toString()) == null) {
                        if (attributeSet.getAttributeBooleanValue(new ObfuscatedString(new long[]{4526748635491906979L, -1242181445973667660L, -4501967755253372254L, -6398764743661848857L, -7316631689690459615L, -1589358695959087793L, 5877134004693808697L}).toString(), new ObfuscatedString(new long[]{6439077656020279771L, 4583433194566973287L, 8926990066927351818L}).toString(), true) && attributeSet.getAttributeIntValue(new ObfuscatedString(new long[]{-4492893967456187466L, -4221102015670669334L, 8128730386839656752L, -2213794553494712017L, -5415129042169945551L, -6616516052309643986L, -1612096447718473344L}).toString(), new ObfuscatedString(new long[]{132185027275500619L, 1573230434352983850L}).toString(), 1) == 1 && attributeSet.getAttributeIntValue(new ObfuscatedString(new long[]{2610828459148828216L, 5413156674443357823L, 1082307969948032448L, 8190576406524379684L, 1037536264337620417L, -7212026303652540609L, -7647914392793762328L}).toString(), new ObfuscatedString(new long[]{5322712162717682957L, 5158571307081906252L}).toString(), 1) == 1 && attributeSet.getAttributeIntValue(new ObfuscatedString(new long[]{-3612377441733021305L, 4708353449616250613L, -7029882741334820901L, 684000869195423519L, 8019625565686705955L, -5015941709872460805L, -7163013222264488359L}).toString(), new ObfuscatedString(new long[]{-8229960704670705565L, -2160338010416704015L}).toString(), 1) == 1) {
                            if (attributeSet.getAttributeIntValue(new ObfuscatedString(new long[]{6948218868871039877L, 7153774251911193323L, -1544903399416413319L, -7387593936395426764L, -390847173386349050L, -875603328864138098L, 192217794757571616L}).toString(), new ObfuscatedString(new long[]{4150215057003219188L, 8548328445718629687L}).toString(), 8388627) != 8388627) {
                                new ObfuscatedString(new long[]{4787308135532703107L, 5932133252136707976L}).toString();
                                new ObfuscatedString(new long[]{6657259733887216405L, 4253422292362813194L, 594388604211576696L, 2420197643927132304L, -3111258296200379384L, 3028376415955267471L, 6270407711904282350L, -3234806160390050756L}).toString();
                                return;
                            }
                            return;
                        }
                        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-1604496722403680211L, -349330324796406395L, 5886043317783338515L, -8554786255630334659L, -8800987905803772874L, 6112451516478573391L}).toString());
                    }
                    throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-1821524014100252813L, -1898873596235473423L, 7148708908601141588L, 2607783796702495152L, -626677940474358920L, -3603526268367790830L, 7415768593260101396L}).toString());
                }
                throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8813158693318487526L, 4334046252692122333L, 6373869460616118669L, -2873592088360610033L, 6796998062701688687L, 7882655213720642994L, -8839351050692345870L}).toString());
            }
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{132147230745953488L, 5829728655427500204L, -8631653278004503940L, 5836742100845252360L, 5956850905722990727L, 4676239066332697160L, 4786703889514929261L}).toString());
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5296751177775607918L, 7833283551712781285L, 1436896223325350046L, 4114149318994197691L, -8719707352267782649L, 9049630691929215862L, 7942661067478495790L}).toString());
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(@NonNull MotionEvent motionEvent) {
        if (!this.touchHelperEnabled) {
            return super.dispatchHoverEvent(motionEvent);
        }
        if (!this.touchHelper.dispatchHoverEvent(motionEvent) && !super.dispatchHoverEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.touchHelperEnabled) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (this.touchHelper.dispatchKeyEvent(keyEvent) && this.touchHelper.getKeyboardFocusedVirtualViewId() != Integer.MIN_VALUE) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        boolean z;
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isCloseIconStateful()) {
            z = this.chipDrawable.setCloseIconState(createCloseIconDrawableState());
        } else {
            z = false;
        }
        if (z) {
            invalidate();
        }
    }

    public boolean ensureAccessibleTouchTarget(@Dimension int i) {
        int i2;
        this.minTouchTargetSize = i;
        int i3 = 0;
        if (!shouldEnsureMinTouchTargetSize()) {
            if (this.insetBackgroundDrawable != null) {
                removeBackgroundInset();
            } else {
                updateBackgroundDrawable();
            }
            return false;
        }
        int max = Math.max(0, i - this.chipDrawable.getIntrinsicHeight());
        int max2 = Math.max(0, i - this.chipDrawable.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            if (this.insetBackgroundDrawable != null) {
                removeBackgroundInset();
            } else {
                updateBackgroundDrawable();
            }
            return false;
        }
        if (max2 > 0) {
            i2 = max2 / 2;
        } else {
            i2 = 0;
        }
        if (max > 0) {
            i3 = max / 2;
        }
        if (this.insetBackgroundDrawable != null) {
            Rect rect = new Rect();
            this.insetBackgroundDrawable.getPadding(rect);
            if (rect.top == i3 && rect.bottom == i3 && rect.left == i2 && rect.right == i2) {
                updateBackgroundDrawable();
                return true;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        insetChipBackgroundDrawable(i2, i3, i2, i3);
        updateBackgroundDrawable();
        return true;
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.accessibilityClassName)) {
            return this.accessibilityClassName;
        }
        if (isCheckable()) {
            ViewParent parent = getParent();
            if ((parent instanceof ChipGroup) && ((ChipGroup) parent).isSingleSelection()) {
                return new ObfuscatedString(new long[]{3582249369807311495L, -6098846459937478375L, -6820939005277388027L, 7627749877279826068L, 6667287250989981175L}).toString();
            }
            return new ObfuscatedString(new long[]{-6826164750656184832L, -1864547486009903232L, 7346422602381340678L, 8573090059803978598L}).toString();
        }
        if (isClickable()) {
            return new ObfuscatedString(new long[]{6919250653836573881L, 6479937330820897183L, -3089199096227504457L, -8476833589857831235L}).toString();
        }
        return new ObfuscatedString(new long[]{-9140786154966671483L, 3992005190347531579L, 1393202751244855515L, -8908580635159591989L}).toString();
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.insetBackgroundDrawable;
        if (insetDrawable == null) {
            return this.chipDrawable;
        }
        return insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCheckedIcon();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCheckedIconTint();
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipBackgroundColor();
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            return 0.0f;
        }
        return Math.max(0.0f, chipDrawable.getChipCornerRadius());
    }

    public Drawable getChipDrawable() {
        return this.chipDrawable;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipEndPadding();
        }
        return 0.0f;
    }

    @Nullable
    public Drawable getChipIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIcon();
        }
        return null;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIconSize();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipIconTint();
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipMinHeight();
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStartPadding();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStrokeColor();
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getChipStrokeWidth();
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    @Nullable
    public Drawable getCloseIcon() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIcon();
        }
        return null;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconContentDescription();
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconSize();
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getCloseIconTint();
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getEllipsize();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public void getFocusedRect(@NonNull Rect rect) {
        if (this.touchHelperEnabled && (this.touchHelper.getKeyboardFocusedVirtualViewId() == 1 || this.touchHelper.getAccessibilityFocusedVirtualViewId() == 1)) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getHideMotionSpec();
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getIconEndPadding();
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getIconStartPadding();
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getRippleColor();
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.chipDrawable.getShapeAppearanceModel();
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getShowMotionSpec();
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextEndPadding();
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            return chipDrawable.getTextStartPadding();
        }
        return 0.0f;
    }

    public boolean isCheckable() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isCheckable()) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public boolean isCheckedIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isCheckedIconVisible()) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public boolean isChipIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isChipIconVisible()) {
            return true;
        }
        return false;
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public boolean isCloseIconVisible() {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null && chipDrawable.isCloseIconVisible()) {
            return true;
        }
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.chipDrawable);
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    public void onChipDrawableSizeChange() {
        ensureAccessibleTouchTarget(this.minTouchTargetSize);
        requestLayout();
        invalidateOutline();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, SELECTED_STATE);
        }
        if (isCheckable()) {
            View.mergeDrawableStates(onCreateDrawableState, CHECKABLE_STATE_SET);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.touchHelperEnabled) {
            this.touchHelper.onFocusChanged(z, i, rect);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                setCloseIconHovered(false);
            }
        } else {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat wrap = AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo);
            if (chipGroup.isSingleLine()) {
                i = chipGroup.getIndexOfChip(this);
            } else {
                i = -1;
            }
            wrap.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(chipGroup.getRowIndex(this), 1, i, 1, false, isChecked()));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    @Nullable
    @TargetApi(24)
    public PointerIcon onResolvePointerIcon(@NonNull MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND);
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    @TargetApi(17)
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.lastLayoutDirection != i) {
            this.lastLayoutDirection = i;
            updatePaddingInternal();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L53;
     */
    @Override // android.widget.TextView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(@NonNull MotionEvent motionEvent) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        boolean contains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.closeIconPressed) {
                        if (!contains) {
                            setCloseIconPressed(false);
                        }
                        z = true;
                    }
                }
                z = false;
            } else if (this.closeIconPressed) {
                performCloseIconClick();
                z = true;
                setCloseIconPressed(false);
            }
            z = false;
            setCloseIconPressed(false);
        } else {
            if (contains) {
                setCloseIconPressed(true);
                z = true;
            }
            z = false;
        }
        if (z || super.onTouchEvent(motionEvent)) {
            return true;
        }
        return false;
    }

    @CallSuper
    public boolean performCloseIconClick() {
        boolean z = false;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.onCloseIconClickListener;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        }
        if (this.touchHelperEnabled) {
            this.touchHelper.sendEventForVirtualView(1, 1);
        }
        return z;
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.accessibilityClassName = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.ripple) {
            new ObfuscatedString(new long[]{-2797446824668206770L, 7206118692438347949L}).toString();
            new ObfuscatedString(new long[]{7739486901502981096L, -7614568670128965065L, 5696519357183201952L, -2603294872922040212L, 455123090837400299L, 6116426107310829915L, 2946289664157017891L, -8088080021389733619L, 2632031217434810007L, 385026188245317286L}).toString();
        } else {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        new ObfuscatedString(new long[]{-4506609929798492734L, 5593328058644581864L}).toString();
        new ObfuscatedString(new long[]{7275334812865833408L, 1692804917163766561L, -2582837257669048156L, -3362153337931394081L, -2750921571195216888L, 3688052706146620908L, 925851628895283998L, -8816506532219163251L, 3718848603407880385L, -2456207379188900459L, -5771339000383894917L}).toString();
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.ripple) {
            new ObfuscatedString(new long[]{4935699146440789809L, -8770456479956307878L}).toString();
            new ObfuscatedString(new long[]{-3085818672949595658L, 6353419714561201250L, 773957883587576182L, 7457956843489068995L, -5678458309642332648L, -1753036189471611649L, -870236218863616237L, 813459799260528790L, -7150243334438218063L, 7503149254233157551L, -4302672310674558751L}).toString();
        } else {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        new ObfuscatedString(new long[]{623130909838956863L, 8299332658662738974L}).toString();
        new ObfuscatedString(new long[]{-9005903015646314273L, -284218149993626819L, -2144980454821982014L, -5721597936031311889L, -3807193378947366158L, 4959567328765411872L, 2013232842305618535L, 4132705599011759167L, 2274408914540478309L, 559191705490380313L, 3754321472280830743L}).toString();
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        new ObfuscatedString(new long[]{2591671943925120255L, 2389835358437977387L}).toString();
        new ObfuscatedString(new long[]{-2437249228373135048L, -3384075047987720874L, 1299644087480786269L, 6081898333152502012L, 4160039310010653070L, 4571989094231598452L, -4452231617539015007L, 8017894212047922550L, -5216274901334696959L, -6230567759286076216L, 5923214587811567559L}).toString();
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        new ObfuscatedString(new long[]{-6136958439168706462L, 7003946085922963969L}).toString();
        new ObfuscatedString(new long[]{-4733546508716818037L, -8560767332525926575L, -7378793732598162688L, -6908874162603843118L, 2264285003268550409L, -311804180031061987L, -7765711003504419683L, -269231395844493838L, -8762515213238793419L, -8713761895807355831L, -1301277602703947126L}).toString();
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckable(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckableResource(i);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable == null) {
            this.deferredCheckedValue = z;
        } else if (chipDrawable.isCheckable()) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIcon(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconResource(i);
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTint(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconTintResource(i);
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(i);
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipBackgroundColor(colorStateList);
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipBackgroundColorResource(i);
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadius(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipCornerRadiusResource(i);
        }
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.chipDrawable;
        if (chipDrawable2 != chipDrawable) {
            unapplyChipDrawable(chipDrawable2);
            this.chipDrawable = chipDrawable;
            chipDrawable.setShouldDrawText(false);
            applyChipDrawable(this.chipDrawable);
            ensureAccessibleTouchTarget(this.minTouchTargetSize);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipEndPadding(f);
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipEndPaddingResource(i);
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIcon(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconResource(i);
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSize(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconSizeResource(i);
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTint(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconTintResource(i);
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(i);
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipMinHeight(f);
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipMinHeightResource(i);
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStartPadding(f);
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStartPaddingResource(i);
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColor(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeColorResource(i);
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidth(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipStrokeWidthResource(i);
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIcon(drawable);
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconContentDescription(charSequence);
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPadding(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconEndPaddingResource(i);
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconResource(i);
        }
        updateAccessibilityDelegate();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSize(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconSizeResource(i);
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPadding(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconStartPaddingResource(i);
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTint(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconTintResource(i);
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6729075857170794353L, 4420296696976331742L, 2998428905699086887L, -3295842760664649061L, 5672650710050746612L, -4544216179169212319L, 4071733498176652073L}).toString());
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-6852270139833449097L, 2206698123962809540L, -845260009060340887L, 8468737653773117694L, -8408750556264075068L, -2099772329851259391L, -7208219465698065259L}).toString());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    @RequiresApi(17)
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8616784435003943678L, -8255144466977882932L, -1305530690443126018L, 2962993282708793035L, 758856816451532526L, -6359421891033436541L, -7334644371443506461L}).toString());
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3236337654288856067L, 7558435142866704199L, 6731604803774444501L, -6936420712524904645L, -1528130084629103631L, -6963924201871116611L, 3239270672224614954L}).toString());
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3200271446655944935L, 5975717317226841069L, 4199165206752057114L, -6015988346933427707L, -5471511483323077722L, 7793645269011053520L, -4517248110609198700L}).toString());
        }
        if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-2491877650199457676L, 521604733969648369L, 9082784088981168729L, -4724209808150106110L, 3029001067337211329L, -1044232403564886624L, -5110751225846390514L}).toString());
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-971241279086975719L, 2452452838414684455L, -4521694308494115043L, -1426709527664025055L, -1389784437646174055L, 7491888942963719633L, 3870650140761965869L}).toString());
        }
        if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6326884774016511424L, -4187189976200722577L, 3067798034082180395L, 6364648056176774380L, -1819762784272858720L, 6472972191154466863L, 2331850597959459266L}).toString());
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setElevation(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.chipDrawable == null) {
            return;
        }
        if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
            super.setEllipsize(truncateAt);
            ChipDrawable chipDrawable = this.chipDrawable;
            if (chipDrawable != null) {
                chipDrawable.setEllipsize(truncateAt);
                return;
            }
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-6483469894870896136L, -3991611744917247374L, -4015598688754340331L, -2233153762887120168L, 6300711797318229944L, 8764533199356889383L, -3672779812470290671L}).toString());
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.ensureMinTouchTargetSize = z;
        ensureAccessibleTouchTarget(this.minTouchTargetSize);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            new ObfuscatedString(new long[]{6234694057437552699L, -8252834189627041157L}).toString();
            new ObfuscatedString(new long[]{7292257653450878821L, -1000235357719864203L, -7423675250803635588L, 7239595242640811862L, 7599881302982359509L, -781130641486607277L, 19379891873115304L, -590557968382513966L}).toString();
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setHideMotionSpec(motionSpec);
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setHideMotionSpecResource(i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPadding(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconEndPaddingResource(i);
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPadding(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setIconStartPaddingResource(i);
        }
    }

    @Override // com.google.android.material.internal.MaterialCheckable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInternalOnCheckedChangeListener(@Nullable MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener) {
        this.onCheckedChangeListenerInternal = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.chipDrawable == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3021259214613080143L, -5867067866226608772L, 5105390819551862590L, -1993100475188021063L, -1692059241838738703L, -4051194116084402058L}).toString());
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-6104025674151658954L, -8685359198949029053L, 1381664448487226964L, 6385924398804968393L, -2305858872208160771L, 7704427098765005793L}).toString());
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setMaxWidth(i);
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-4397501337065183971L, 4255921246925463208L, -807173427297756548L, 3615347289282113255L, 3040415258448959450L, -2302384314374051759L}).toString());
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListener = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.onCloseIconClickListener = onClickListener;
        updateAccessibilityDelegate();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColor(colorStateList);
        }
        if (!this.chipDrawable.getUseCompatRipple()) {
            updateFrameworkRippleBackground();
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setRippleColorResource(i);
            if (!this.chipDrawable.getUseCompatRipple()) {
                updateFrameworkRippleBackground();
            }
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.chipDrawable.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setShowMotionSpec(motionSpec);
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setShowMotionSpecResource(i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{8035180613039305529L, 2214998470890218805L, 7391658339567715738L, 1346816163641771329L, 5279226189030389497L, 5229651893153923483L}).toString());
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        CharSequence charSequence2;
        if (this.chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = new ObfuscatedString(new long[]{-2005954653167602901L}).toString();
        }
        if (this.chipDrawable.shouldDrawText()) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        super.setText(charSequence2, bufferType);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setText(charSequence);
        }
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearance(textAppearance);
        }
        updateTextPaintDrawState();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextEndPadding(f);
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextEndPaddingResource(i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextSize(TypedValue.applyDimension(i, f, getResources().getDisplayMetrics()));
        }
        updateTextPaintDrawState();
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextStartPadding(f);
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextStartPaddingResource(i);
        }
    }

    public boolean shouldEnsureMinTouchTargetSize() {
        return this.ensureMinTouchTargetSize;
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipStyle);
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCloseIconVisible(z);
        }
        updateAccessibilityDelegate();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Chip(Context context, AttributeSet attributeSet, int i) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, r4), attributeSet, i);
        int i2 = DEF_STYLE_RES;
        this.rect = new Rect();
        this.rectF = new RectF();
        this.fontCallback = new TextAppearanceFontCallback() { // from class: com.google.android.material.chip.Chip.1
            public AnonymousClass1() {
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public void onFontRetrievalFailed(int i3) {
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public void onFontRetrieved(@NonNull Typeface typeface, boolean z) {
                CharSequence text;
                Chip chip = Chip.this;
                if (chip.chipDrawable.shouldDrawText()) {
                    text = Chip.this.chipDrawable.getText();
                } else {
                    text = Chip.this.getText();
                }
                chip.setText(text);
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }
        };
        Context context2 = getContext();
        validateAttributes(attributeSet);
        ChipDrawable createFromAttributes = ChipDrawable.createFromAttributes(context2, attributeSet, i, i2);
        initMinTouchTarget(context2, attributeSet, i);
        setChipDrawable(createFromAttributes);
        createFromAttributes.setElevation(ViewCompat.getElevation(this));
        TypedArray obtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, R.styleable.Chip, i, i2, new int[0]);
        if (Build.VERSION.SDK_INT < 23) {
            setTextColor(MaterialResources.getColorStateList(context2, obtainStyledAttributes, R.styleable.Chip_android_textColor));
        }
        boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.Chip_shapeAppearance);
        obtainStyledAttributes.recycle();
        this.touchHelper = new ChipTouchHelper(this);
        updateAccessibilityDelegate();
        if (!hasValue) {
            initOutlineProvider();
        }
        setChecked(this.deferredCheckedValue);
        setText(createFromAttributes.getText());
        setEllipsize(createFromAttributes.getEllipsize());
        updateTextPaintDrawState();
        if (!this.chipDrawable.shouldDrawText()) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        updatePaddingInternal();
        if (shouldEnsureMinTouchTargetSize()) {
            setMinHeight(this.minTouchTargetSize);
        }
        this.lastLayoutDirection = ViewCompat.getLayoutDirection(this);
        super.setOnCheckedChangeListener(new C0390x994ec581(this, 1));
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setCheckedIconVisible(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setChipIconVisible(z);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelativeWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6036664744388180917L, -7662023940140405885L, 3606007806820623230L, -5299186849487498088L, 5411608550366857008L, -1886124665980298256L, -771571471366821351L}).toString());
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-4399244320977888560L, -6441705818307164245L, 3012191326803108709L, 8720859293569159943L, 1998005022585943043L, -7433672642397989956L, 1457489794905909234L}).toString());
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesWithIntrinsicBounds(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException(new ObfuscatedString(new long[]{2851118974116970671L, 43322999287377959L, 8272099834588268798L, 3278332046642726754L, -6878445734368154658L, -7425092726064881036L, -7775032638998118485L}).toString());
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{7249478000926729210L, -985384997419455695L, 9174410082163512702L, 3084339323439187063L, 5048737997147889942L, 8521632537198801348L, 7095481498455919250L, 6524367527722981344L}).toString());
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearanceResource(i);
        }
        updateTextPaintDrawState();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.chipDrawable;
        if (chipDrawable != null) {
            chipDrawable.setTextAppearanceResource(i);
        }
        updateTextPaintDrawState();
    }
}
