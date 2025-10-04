package com.google.android.material.timepicker;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
class TimePickerClockPresenter implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {
    private static final int DEGREES_PER_HOUR = 30;
    private static final int DEGREES_PER_MINUTE = 6;
    private boolean broadcasting = false;
    private float hourRotation;
    private float minuteRotation;
    private final TimeModel time;
    private final TimePickerView timePickerView;
    private static final String[] HOUR_CLOCK_VALUES = {new ObfuscatedString(new long[]{-5061744124334974069L, -2220442167331569964L}).toString(), new ObfuscatedString(new long[]{4865352929263316120L, -7113735760214222188L}).toString(), new ObfuscatedString(new long[]{1226923116814640145L, 46357447925578411L}).toString(), new ObfuscatedString(new long[]{1478531379191661016L, -3059331279806689528L}).toString(), new ObfuscatedString(new long[]{-884831310428218594L, 6254205606710627058L}).toString(), new ObfuscatedString(new long[]{-480511084488644280L, -8454922923718602738L}).toString(), new ObfuscatedString(new long[]{-6245074167781021828L, 6406440926912983726L}).toString(), new ObfuscatedString(new long[]{-4192954250855775795L, -8854909425598966389L}).toString(), new ObfuscatedString(new long[]{-4222588018662877717L, -6718353129502086811L}).toString(), new ObfuscatedString(new long[]{-1957701420772537482L, -4995711596397368489L}).toString(), new ObfuscatedString(new long[]{1981921690985652147L, -1828918763927057890L}).toString(), new ObfuscatedString(new long[]{-3603960245944913711L, -191296140616626375L}).toString()};
    private static final String[] HOUR_CLOCK_24_VALUES = {new ObfuscatedString(new long[]{-2037142026053420775L, -7555245174908243359L}).toString(), new ObfuscatedString(new long[]{7526468599986856367L, 2070471335500701307L}).toString(), new ObfuscatedString(new long[]{-8226146692558047526L, -8737028632866894154L}).toString(), new ObfuscatedString(new long[]{-1569426490499353462L, -7067538046733185399L}).toString(), new ObfuscatedString(new long[]{-4970111293206422134L, -1496094399342536974L}).toString(), new ObfuscatedString(new long[]{8436180448126274830L, -1538812370211546931L}).toString(), new ObfuscatedString(new long[]{1390305225626391917L, 8952561609128792037L}).toString(), new ObfuscatedString(new long[]{2942738156308976236L, 6661369272272056408L}).toString(), new ObfuscatedString(new long[]{2002074815581078352L, -1840788118154576543L}).toString(), new ObfuscatedString(new long[]{-9162993893574255801L, -662291793848909947L}).toString(), new ObfuscatedString(new long[]{-3400562104582994629L, -2983288868189770908L}).toString(), new ObfuscatedString(new long[]{-841865283340106833L, 3007324546039839365L}).toString(), new ObfuscatedString(new long[]{-923619274735180100L, -720877779738643847L}).toString(), new ObfuscatedString(new long[]{3986266267409480955L, -4029780791922572766L}).toString(), new ObfuscatedString(new long[]{2837101875150853764L, 2635676385556347186L}).toString(), new ObfuscatedString(new long[]{3492865926747588792L, 4117639985073086050L}).toString(), new ObfuscatedString(new long[]{5902427927830508627L, 3508681552271684585L}).toString(), new ObfuscatedString(new long[]{-8891822301520612726L, -1983741223405124763L}).toString(), new ObfuscatedString(new long[]{4310835178470742080L, 1998788956582960469L}).toString(), new ObfuscatedString(new long[]{-3568982948733141853L, -1545208113653733071L}).toString(), new ObfuscatedString(new long[]{8644464452094493669L, 2612536692329875677L}).toString(), new ObfuscatedString(new long[]{4721348526180082198L, -1957929436873892900L}).toString(), new ObfuscatedString(new long[]{1903464632905573438L, -6183047736399922703L}).toString(), new ObfuscatedString(new long[]{5036941464980698403L, 7022208899360306375L}).toString()};
    private static final String[] MINUTE_CLOCK_VALUES = {new ObfuscatedString(new long[]{1487285147447654312L, -4915576799729428210L}).toString(), new ObfuscatedString(new long[]{-2397018316414365340L, 3440686154464261650L}).toString(), new ObfuscatedString(new long[]{2977909689061087692L, -8910104007640293068L}).toString(), new ObfuscatedString(new long[]{-5940923501190772699L, -8490880677479243422L}).toString(), new ObfuscatedString(new long[]{-5182006423984737535L, 5639193088159043858L}).toString(), new ObfuscatedString(new long[]{-3891448345824791186L, -3128049867992549959L}).toString(), new ObfuscatedString(new long[]{-5477766074353351894L, -2836597170297242648L}).toString(), new ObfuscatedString(new long[]{-563354907884732331L, 8326624920842712926L}).toString(), new ObfuscatedString(new long[]{-5038468434905086388L, 2206752725382306866L}).toString(), new ObfuscatedString(new long[]{-484925918775604586L, -3469616494231370104L}).toString(), new ObfuscatedString(new long[]{-2449845812505379585L, 5276711171953622315L}).toString(), new ObfuscatedString(new long[]{-7148047565389700169L, -8105737928036179374L}).toString()};

    public TimePickerClockPresenter(TimePickerView timePickerView, TimeModel timeModel) {
        this.timePickerView = timePickerView;
        this.time = timeModel;
        initialize();
    }

    private String[] getHourClockValues() {
        if (this.time.format == 1) {
            return HOUR_CLOCK_24_VALUES;
        }
        return HOUR_CLOCK_VALUES;
    }

    private int getHourRotation() {
        return (this.time.getHourForDisplay() * 30) % 360;
    }

    private void performHapticFeedback(int i, int i2) {
        TimeModel timeModel = this.time;
        if (timeModel.minute != i2 || timeModel.hour != i) {
            this.timePickerView.performHapticFeedback(4);
        }
    }

    private void updateCurrentLevel() {
        TimeModel timeModel = this.time;
        int i = 1;
        if (timeModel.selection == 10 && timeModel.format == 1 && timeModel.hour >= 12) {
            i = 2;
        }
        this.timePickerView.setCurrentLevel(i);
    }

    private void updateTime() {
        TimePickerView timePickerView = this.timePickerView;
        TimeModel timeModel = this.time;
        timePickerView.updateTime(timeModel.period, timeModel.getHourForDisplay(), this.time.minute);
    }

    private void updateValues() {
        updateValues(HOUR_CLOCK_VALUES, new ObfuscatedString(new long[]{2874987827365880728L, -1505359198741830584L}).toString());
        updateValues(MINUTE_CLOCK_VALUES, new ObfuscatedString(new long[]{-593270103176253117L, 3763117843521570753L}).toString());
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        if (this.time.format == 0) {
            this.timePickerView.showToggle();
        }
        this.timePickerView.addOnRotateListener(this);
        this.timePickerView.setOnSelectionChangeListener(this);
        this.timePickerView.setOnPeriodChangeListener(this);
        this.timePickerView.setOnActionUpListener(this);
        updateValues();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        this.hourRotation = getHourRotation();
        TimeModel timeModel = this.time;
        this.minuteRotation = timeModel.minute * 6;
        setSelection(timeModel.selection, false);
        updateTime();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnActionUpListener
    public void onActionUp(float f, boolean z) {
        this.broadcasting = true;
        TimeModel timeModel = this.time;
        int i = timeModel.minute;
        int i2 = timeModel.hour;
        if (timeModel.selection == 10) {
            this.timePickerView.setHandRotation(this.hourRotation, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.timePickerView.getContext(), AccessibilityManager.class);
            if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                setSelection(12, true);
            }
        } else {
            int round = Math.round(f);
            if (!z) {
                this.time.setMinute(((round + 15) / 30) * 5);
                this.minuteRotation = this.time.minute * 6;
            }
            this.timePickerView.setHandRotation(this.minuteRotation, z);
        }
        this.broadcasting = false;
        updateTime();
        performHapticFeedback(i2, i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnPeriodChangeListener
    public void onPeriodChange(int i) {
        this.time.setPeriod(i);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public void onRotate(float f, boolean z) {
        if (this.broadcasting) {
            return;
        }
        TimeModel timeModel = this.time;
        int i = timeModel.hour;
        int i2 = timeModel.minute;
        int round = Math.round(f);
        TimeModel timeModel2 = this.time;
        if (timeModel2.selection == 12) {
            timeModel2.setMinute((round + 3) / 6);
            this.minuteRotation = (float) Math.floor(this.time.minute * 6);
        } else {
            int i3 = (round + 15) / 30;
            if (timeModel2.format == 1) {
                i3 %= 12;
                if (this.timePickerView.getCurrentLevel() == 2) {
                    i3 += 12;
                }
            }
            this.time.setHour(i3);
            this.hourRotation = getHourRotation();
        }
        if (!z) {
            updateTime();
            performHapticFeedback(i, i2);
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        setSelection(i, true);
    }

    public void setSelection(int i, boolean z) {
        boolean z2;
        String[] hourClockValues;
        int hourContentDescriptionResId;
        float f;
        if (i == 12) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.timePickerView.setAnimateOnTouchUp(z2);
        this.time.selection = i;
        TimePickerView timePickerView = this.timePickerView;
        if (z2) {
            hourClockValues = MINUTE_CLOCK_VALUES;
        } else {
            hourClockValues = getHourClockValues();
        }
        if (z2) {
            hourContentDescriptionResId = R.string.material_minute_suffix;
        } else {
            hourContentDescriptionResId = this.time.getHourContentDescriptionResId();
        }
        timePickerView.setValues(hourClockValues, hourContentDescriptionResId);
        updateCurrentLevel();
        TimePickerView timePickerView2 = this.timePickerView;
        if (z2) {
            f = this.minuteRotation;
        } else {
            f = this.hourRotation;
        }
        timePickerView2.setHandRotation(f, z);
        this.timePickerView.setActiveSelection(i);
        this.timePickerView.setMinuteHourDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.1
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(TimePickerClockPresenter.this.time.getHourContentDescriptionResId(), String.valueOf(TimePickerClockPresenter.this.time.getHourForDisplay())));
            }
        });
        this.timePickerView.setHourClickDelegate(new ClickActionDelegate(this.timePickerView.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.2
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(TimePickerClockPresenter.this.time.minute)));
            }
        });
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
    }

    private void updateValues(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.formatText(this.timePickerView.getResources(), strArr[i], str);
        }
    }
}
