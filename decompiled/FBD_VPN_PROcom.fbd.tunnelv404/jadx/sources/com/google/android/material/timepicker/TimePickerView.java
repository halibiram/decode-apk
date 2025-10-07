package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class TimePickerView extends ConstraintLayout implements TimePickerControls {
    static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = new ObfuscatedString(new long[]{-1991645194897956150L, -540366073525073035L, -1127753867456738789L, -7237662275482908060L}).toString();
    private final ClockFaceView clockFace;
    private final ClockHandView clockHandView;
    private final Chip hourView;
    private final Chip minuteView;
    private OnDoubleTapListener onDoubleTapListener;
    private OnPeriodChangeListener onPeriodChangeListener;
    private OnSelectionChange onSelectionChangeListener;
    private final View.OnClickListener selectionListener;
    private final MaterialButtonToggleGroup toggle;

    /* renamed from: com.google.android.material.timepicker.TimePickerView$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.onSelectionChangeListener != null) {
                TimePickerView.this.onSelectionChangeListener.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 extends GestureDetector.SimpleOnGestureListener {
        public AnonymousClass2() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            OnDoubleTapListener onDoubleTapListener = TimePickerView.this.onDoubleTapListener;
            if (onDoubleTapListener != null) {
                onDoubleTapListener.onDoubleTap();
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.google.android.material.timepicker.TimePickerView$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 implements View.OnTouchListener {
        final /* synthetic */ GestureDetector val$gestureDetector;

        public AnonymousClass3(GestureDetector gestureDetector) {
            r2 = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return r2.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public interface OnDoubleTapListener {
        void onDoubleTap();
    }

    /* loaded from: classes2.dex */
    public interface OnPeriodChangeListener {
        void onPeriodChange(int i);
    }

    /* loaded from: classes2.dex */
    public interface OnSelectionChange {
        void onSelectionChanged(int i);
    }

    public TimePickerView(Context context) {
        this(context, null);
    }

    public /* synthetic */ void lambda$new$0(MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        OnPeriodChangeListener onPeriodChangeListener;
        int i2;
        if (z && (onPeriodChangeListener = this.onPeriodChangeListener) != null) {
            if (i == R.id.material_clock_period_pm_button) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            onPeriodChangeListener.onPeriodChange(i2);
        }
    }

    private void setUpDisplay() {
        Chip chip = this.minuteView;
        int i = R.id.selection_type;
        chip.setTag(i, 12);
        this.hourView.setTag(i, 10);
        this.minuteView.setOnClickListener(this.selectionListener);
        this.hourView.setOnClickListener(this.selectionListener);
        this.minuteView.setAccessibilityClassName(new ObfuscatedString(new long[]{5727754970307003056L, -7545233000824750286L, 7664253562887384887L, -6019273679985775888L}).toString());
        this.hourView.setAccessibilityClassName(new ObfuscatedString(new long[]{6577193479439090357L, 5440052441261435095L, -5708248411897055320L, -1241445413208939779L}).toString());
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void setupDoubleTap() {
        AnonymousClass3 anonymousClass3 = new View.OnTouchListener() { // from class: com.google.android.material.timepicker.TimePickerView.3
            final /* synthetic */ GestureDetector val$gestureDetector;

            public AnonymousClass3(GestureDetector gestureDetector) {
                r2 = gestureDetector;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (((Checkable) view).isChecked()) {
                    return r2.onTouchEvent(motionEvent);
                }
                return false;
            }
        };
        this.minuteView.setOnTouchListener(anonymousClass3);
        this.hourView.setOnTouchListener(anonymousClass3);
    }

    private void updateSelection(Chip chip, boolean z) {
        int i;
        chip.setChecked(z);
        if (z) {
            i = 2;
        } else {
            i = 0;
        }
        ViewCompat.setAccessibilityLiveRegion(chip, i);
    }

    public void addOnRotateListener(ClockHandView.OnRotateListener onRotateListener) {
        this.clockHandView.addOnRotateListener(onRotateListener);
    }

    public int getCurrentLevel() {
        return this.clockFace.getCurrentLevel();
    }

    @Override // android.view.View
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (view == this && i == 0) {
            this.hourView.sendAccessibilityEvent(8);
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setActiveSelection(int i) {
        boolean z;
        Chip chip = this.minuteView;
        boolean z2 = false;
        if (i == 12) {
            z = true;
        } else {
            z = false;
        }
        updateSelection(chip, z);
        Chip chip2 = this.hourView;
        if (i == 10) {
            z2 = true;
        }
        updateSelection(chip2, z2);
    }

    public void setAnimateOnTouchUp(boolean z) {
        this.clockHandView.setAnimateOnTouchUp(z);
    }

    public void setCurrentLevel(int i) {
        this.clockFace.setCurrentLevel(i);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setHandRotation(float f) {
        this.clockHandView.setHandRotation(f);
    }

    public void setHourClickDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.minuteView, accessibilityDelegateCompat);
    }

    public void setMinuteHourDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.hourView, accessibilityDelegateCompat);
    }

    public void setOnActionUpListener(ClockHandView.OnActionUpListener onActionUpListener) {
        this.clockHandView.setOnActionUpListener(onActionUpListener);
    }

    public void setOnDoubleTapListener(@Nullable OnDoubleTapListener onDoubleTapListener) {
        this.onDoubleTapListener = onDoubleTapListener;
    }

    public void setOnPeriodChangeListener(OnPeriodChangeListener onPeriodChangeListener) {
        this.onPeriodChangeListener = onPeriodChangeListener;
    }

    public void setOnSelectionChangeListener(OnSelectionChange onSelectionChange) {
        this.onSelectionChangeListener = onSelectionChange;
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    public void setValues(String[] strArr, @StringRes int i) {
        this.clockFace.setValues(strArr, i);
    }

    public void showToggle() {
        this.toggle.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.TimePickerControls
    @SuppressLint({"DefaultLocale"})
    public void updateTime(int i, int i2, int i3) {
        int i4;
        if (i == 1) {
            i4 = R.id.material_clock_period_pm_button;
        } else {
            i4 = R.id.material_clock_period_am_button;
        }
        this.toggle.check(i4);
        Locale locale = getResources().getConfiguration().locale;
        String format = String.format(locale, new ObfuscatedString(new long[]{608416403389828530L, -7616971336533884068L}).toString(), Integer.valueOf(i3));
        String format2 = String.format(locale, new ObfuscatedString(new long[]{-643424988600380237L, -1641543906923155223L}).toString(), Integer.valueOf(i2));
        if (!TextUtils.equals(this.minuteView.getText(), format)) {
            this.minuteView.setText(format);
        }
        if (!TextUtils.equals(this.hourView.getText(), format2)) {
            this.hourView.setText(format2);
        }
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setHandRotation(float f, boolean z) {
        this.clockHandView.setHandRotation(f, z);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.selectionListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerView.1
            public AnonymousClass1() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (TimePickerView.this.onSelectionChangeListener != null) {
                    TimePickerView.this.onSelectionChangeListener.onSelectionChanged(((Integer) view.getTag(R.id.selection_type)).intValue());
                }
            }
        };
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        this.clockFace = (ClockFaceView) findViewById(R.id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.toggle = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new C0236x1378447b(this, 1));
        this.minuteView = (Chip) findViewById(R.id.material_minute_tv);
        this.hourView = (Chip) findViewById(R.id.material_hour_tv);
        this.clockHandView = (ClockHandView) findViewById(R.id.material_clock_hand);
        setupDoubleTap();
        setUpDisplay();
    }
}
