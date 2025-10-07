package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.RunnableC0450xb2a4f6ac;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.OnDoubleTapListener {
    public static final int INPUT_MODE_CLOCK = 0;
    public static final int INPUT_MODE_KEYBOARD = 1;

    @Nullable
    private TimePickerPresenter activePresenter;
    private Button cancelButton;

    @DrawableRes
    private int clockIcon;

    @DrawableRes
    private int keyboardIcon;
    private MaterialButton modeButton;
    private CharSequence negativeButtonText;
    private CharSequence positiveButtonText;
    private ViewStub textInputStub;
    private TimeModel time;

    @Nullable
    private TimePickerClockPresenter timePickerClockPresenter;

    @Nullable
    private TimePickerTextInputPresenter timePickerTextInputPresenter;
    private TimePickerView timePickerView;
    private CharSequence titleText;
    static final String TIME_MODEL_EXTRA = new ObfuscatedString(new long[]{-6612565285692821754L, 2067707196355592865L, 5162812644050753160L, 4614204345787326629L}).toString();
    static final String INPUT_MODE_EXTRA = new ObfuscatedString(new long[]{5437036594207879368L, 562126994721852829L, -7829216345576800786L, -8693686039016248116L}).toString();
    static final String TITLE_RES_EXTRA = new ObfuscatedString(new long[]{-5504361858684136447L, -7892383017291453509L, 3269434981441609437L, -7213729870232566525L}).toString();
    static final String TITLE_TEXT_EXTRA = new ObfuscatedString(new long[]{-3499305347842771293L, -984022914563793696L, 2838718771731113353L, -2846285437812500223L}).toString();
    static final String POSITIVE_BUTTON_TEXT_RES_EXTRA = new ObfuscatedString(new long[]{-2847287102602091238L, -2430311858229942022L, -7927821581172340916L, 2723894892754619518L, -8854173277508048482L, 2231423277380376844L}).toString();
    static final String POSITIVE_BUTTON_TEXT_EXTRA = new ObfuscatedString(new long[]{-7432966672257210717L, 83798414837411058L, -7516487630818156920L, 4888042350511049973L, -7709648641133410597L}).toString();
    static final String NEGATIVE_BUTTON_TEXT_RES_EXTRA = new ObfuscatedString(new long[]{-1257676691821440524L, -1044177676802226271L, -3273525875353666392L, 6079616756146884269L, -2870575397798838768L, 7394671422215255092L}).toString();
    static final String NEGATIVE_BUTTON_TEXT_EXTRA = new ObfuscatedString(new long[]{-2596818078250452955L, -5233188075734539236L, 4330885864557280831L, 1485649208425294389L, 3869002864477907182L}).toString();
    static final String OVERRIDE_THEME_RES_ID = new ObfuscatedString(new long[]{-7787879690415974193L, -690344570793206937L, 1427939860235449954L, 5752445378129396830L, 3983069370680066704L, 1709878987413073404L}).toString();
    private final Set<View.OnClickListener> positiveButtonListeners = new LinkedHashSet();
    private final Set<View.OnClickListener> negativeButtonListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnCancelListener> cancelListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnDismissListener> dismissListeners = new LinkedHashSet();

    @StringRes
    private int titleResId = 0;

    @StringRes
    private int positiveButtonTextResId = 0;

    @StringRes
    private int negativeButtonTextResId = 0;
    private int inputMode = 0;
    private int overrideThemeResId = 0;

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.positiveButtonListeners.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.negativeButtonListeners.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 implements View.OnClickListener {
        public AnonymousClass3() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int i;
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            if (materialTimePicker.inputMode == 0) {
                i = 1;
            } else {
                i = 0;
            }
            materialTimePicker.inputMode = i;
            MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
            materialTimePicker2.updateInputMode(materialTimePicker2.modeButton);
        }
    }

    /* loaded from: classes2.dex */
    public static final class Builder {

        @Nullable
        private Integer inputMode;
        private CharSequence negativeButtonText;
        private CharSequence positiveButtonText;
        private CharSequence titleText;
        private TimeModel time = new TimeModel();

        @StringRes
        private int titleTextResId = 0;

        @StringRes
        private int positiveButtonTextResId = 0;

        @StringRes
        private int negativeButtonTextResId = 0;
        private int overrideThemeResId = 0;

        @NonNull
        public MaterialTimePicker build() {
            return MaterialTimePicker.newInstance(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setHour(@IntRange(from = 0, to = 23) int i) {
            this.time.setHourOfDay(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setInputMode(int i) {
            this.inputMode = Integer.valueOf(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setMinute(@IntRange(from = 0, to = 59) int i) {
            this.time.setMinute(i);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setNegativeButtonText(@StringRes int i) {
            this.negativeButtonTextResId = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setPositiveButtonText(@StringRes int i) {
            this.positiveButtonTextResId = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTheme(@StyleRes int i) {
            this.overrideThemeResId = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTimeFormat(int i) {
            TimeModel timeModel = this.time;
            int i2 = timeModel.hour;
            int i3 = timeModel.minute;
            TimeModel timeModel2 = new TimeModel(i);
            this.time = timeModel2;
            timeModel2.setMinute(i3);
            this.time.setHourOfDay(i2);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTitleText(@StringRes int i) {
            this.titleTextResId = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.negativeButtonText = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.positiveButtonText = charSequence;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder setTitleText(@Nullable CharSequence charSequence) {
            this.titleText = charSequence;
            return this;
        }
    }

    private Pair<Integer, Integer> dataForMode(int i) {
        if (i != 0) {
            if (i == 1) {
                return new Pair<>(Integer.valueOf(this.clockIcon), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1288347691965678939L, -7844068158777891077L, 1344438476928443670L, -4471231944076709260L}), new StringBuilder(), i));
        }
        return new Pair<>(Integer.valueOf(this.keyboardIcon), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
    }

    private int getThemeResId() {
        int i = this.overrideThemeResId;
        if (i != 0) {
            return i;
        }
        TypedValue resolve = MaterialAttributes.resolve(requireContext(), R.attr.materialTimePickerTheme);
        if (resolve == null) {
            return 0;
        }
        return resolve.data;
    }

    private TimePickerPresenter initializeOrRetrieveActivePresenterForMode(int i, @NonNull TimePickerView timePickerView, @NonNull ViewStub viewStub) {
        if (i == 0) {
            TimePickerClockPresenter timePickerClockPresenter = this.timePickerClockPresenter;
            if (timePickerClockPresenter == null) {
                timePickerClockPresenter = new TimePickerClockPresenter(timePickerView, this.time);
            }
            this.timePickerClockPresenter = timePickerClockPresenter;
            return timePickerClockPresenter;
        }
        if (this.timePickerTextInputPresenter == null) {
            this.timePickerTextInputPresenter = new TimePickerTextInputPresenter((LinearLayout) viewStub.inflate(), this.time);
        }
        this.timePickerTextInputPresenter.clearCheck();
        return this.timePickerTextInputPresenter;
    }

    public /* synthetic */ void lambda$onViewCreated$0() {
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter instanceof TimePickerTextInputPresenter) {
            ((TimePickerTextInputPresenter) timePickerPresenter).resetChecked();
        }
    }

    @NonNull
    public static MaterialTimePicker newInstance(@NonNull Builder builder) {
        MaterialTimePicker materialTimePicker = new MaterialTimePicker();
        Bundle bundle = new Bundle();
        bundle.putParcelable(new ObfuscatedString(new long[]{7446733715559706816L, 4993387895663103370L, 2047491391929709806L, -7317382088566674923L}).toString(), builder.time);
        if (builder.inputMode != null) {
            bundle.putInt(new ObfuscatedString(new long[]{-5536223592686871382L, -8511619193736641261L, 229702589334117235L, 6242986320159293757L}).toString(), builder.inputMode.intValue());
        }
        bundle.putInt(new ObfuscatedString(new long[]{2656078568800094099L, -4811016915407954771L, 2064574138325265724L, 6261607917103663844L}).toString(), builder.titleTextResId);
        if (builder.titleText != null) {
            bundle.putCharSequence(new ObfuscatedString(new long[]{7374371032859816568L, -5096063833661341993L, -3714661106464526429L, 5613156332101746822L}).toString(), builder.titleText);
        }
        bundle.putInt(new ObfuscatedString(new long[]{703428569350970490L, 1067493739676840426L, -5325412938371483694L, 9215102767192517368L, 9101670891238747823L, -1781109228079125245L}).toString(), builder.positiveButtonTextResId);
        if (builder.positiveButtonText != null) {
            bundle.putCharSequence(new ObfuscatedString(new long[]{-3518707475545311470L, 5871664821847917078L, 8870147592106735007L, -7443150105155380656L, -6402741601352423990L}).toString(), builder.positiveButtonText);
        }
        bundle.putInt(new ObfuscatedString(new long[]{5430226558898650225L, 2441766944424059714L, 798902656935169065L, -7840534117782708633L, 2232453387329558308L, -8002801323252638892L}).toString(), builder.negativeButtonTextResId);
        if (builder.negativeButtonText != null) {
            bundle.putCharSequence(new ObfuscatedString(new long[]{3362685420554318505L, 6188272331492861280L, 9054266570116203510L, 1812761624779597910L, 9089861516235222341L}).toString(), builder.negativeButtonText);
        }
        bundle.putInt(new ObfuscatedString(new long[]{2720257695666066294L, -8976632923586666160L, 3718927585060936468L, -4382656194648812237L, -4676060735705967633L, -3235423641879708833L}).toString(), builder.overrideThemeResId);
        materialTimePicker.setArguments(bundle);
        return materialTimePicker;
    }

    private void restoreState(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(new ObfuscatedString(new long[]{-8120882958878350038L, -2951758337964962436L, -4978628288318355945L, -5401860626559666863L}).toString());
        this.time = timeModel;
        if (timeModel == null) {
            this.time = new TimeModel();
        }
        int i = 1;
        if (this.time.format != 1) {
            i = 0;
        }
        this.inputMode = bundle.getInt(new ObfuscatedString(new long[]{3132727003142646768L, -104753990117353961L, -4489581403889198903L, 3193165712612465391L}).toString(), i);
        this.titleResId = bundle.getInt(new ObfuscatedString(new long[]{-2575082155028871842L, -2001798531630121636L, -8921364661937469910L, -2879190159428466274L}).toString(), 0);
        this.titleText = bundle.getCharSequence(new ObfuscatedString(new long[]{-8898689624205598352L, -2678369019950310903L, 2237695737011705581L, 7262667118701669488L}).toString());
        this.positiveButtonTextResId = bundle.getInt(new ObfuscatedString(new long[]{-6749729446968167126L, 9150339809370094461L, 875547891292612903L, 2959750592100311620L, 8229655542891045760L, -410098381601059943L}).toString(), 0);
        this.positiveButtonText = bundle.getCharSequence(new ObfuscatedString(new long[]{-1896587089124040703L, 5643516211084750736L, 6625559018526407229L, -4816400466387494750L, 7057248771445640760L}).toString());
        this.negativeButtonTextResId = bundle.getInt(new ObfuscatedString(new long[]{4182760507089065541L, 4806608241869235584L, 625804194888146417L, -5596442369743846214L, -4176816095906372819L, 6402956557397018041L}).toString(), 0);
        this.negativeButtonText = bundle.getCharSequence(new ObfuscatedString(new long[]{-619819510688120970L, -2452619214240851394L, 436418426137372513L, 9065477029891855183L, 4692455771064591919L}).toString());
        this.overrideThemeResId = bundle.getInt(new ObfuscatedString(new long[]{-8590400256391451248L, -8336807597725543954L, -8175500506855499217L, 545801895256738504L, -5704500476167010558L, -8503125109726708538L}).toString(), 0);
    }

    private void updateCancelButtonVisibility() {
        int i;
        Button button = this.cancelButton;
        if (button != null) {
            if (isCancelable()) {
                i = 0;
            } else {
                i = 8;
            }
            button.setVisibility(i);
        }
    }

    public void updateInputMode(MaterialButton materialButton) {
        if (materialButton != null && this.timePickerView != null && this.textInputStub != null) {
            TimePickerPresenter timePickerPresenter = this.activePresenter;
            if (timePickerPresenter != null) {
                timePickerPresenter.hide();
            }
            TimePickerPresenter initializeOrRetrieveActivePresenterForMode = initializeOrRetrieveActivePresenterForMode(this.inputMode, this.timePickerView, this.textInputStub);
            this.activePresenter = initializeOrRetrieveActivePresenterForMode;
            initializeOrRetrieveActivePresenterForMode.show();
            this.activePresenter.invalidate();
            Pair<Integer, Integer> dataForMode = dataForMode(this.inputMode);
            materialButton.setIconResource(((Integer) dataForMode.first).intValue());
            materialButton.setContentDescription(getResources().getString(((Integer) dataForMode.second).intValue()));
            materialButton.sendAccessibilityEvent(4);
        }
    }

    public boolean addOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.add(onCancelListener);
    }

    public boolean addOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.add(onDismissListener);
    }

    public boolean addOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.add(onClickListener);
    }

    public boolean addOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.add(onClickListener);
    }

    public void clearOnCancelListeners() {
        this.cancelListeners.clear();
    }

    public void clearOnDismissListeners() {
        this.dismissListeners.clear();
    }

    public void clearOnNegativeButtonClickListeners() {
        this.negativeButtonListeners.clear();
    }

    public void clearOnPositiveButtonClickListeners() {
        this.positiveButtonListeners.clear();
    }

    @IntRange(from = 0, to = 23)
    public int getHour() {
        return this.time.hour % 24;
    }

    public int getInputMode() {
        return this.inputMode;
    }

    @IntRange(from = 0, to = 59)
    public int getMinute() {
        return this.time.minute;
    }

    @Nullable
    public TimePickerClockPresenter getTimePickerClockPresenter() {
        return this.timePickerClockPresenter;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.cancelListeners.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        restoreState(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), getThemeResId());
        Context context = dialog.getContext();
        int i = R.attr.materialTimePickerStyle;
        int i2 = R.style.Widget_MaterialComponents_TimePicker;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, i, i2);
        this.clockIcon = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.keyboardIcon = obtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = obtainStyledAttributes.getColor(R.styleable.MaterialTimePicker_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.setElevation(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.timePickerView = timePickerView;
        timePickerView.setOnDoubleTapListener(this);
        this.textInputStub = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.modeButton = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        int i = this.titleResId;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.titleText)) {
            textView.setText(this.titleText);
        }
        updateInputMode(this.modeButton);
        Button button = (Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.1
            public AnonymousClass1() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialTimePicker.this.positiveButtonListeners.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                MaterialTimePicker.this.dismiss();
            }
        });
        int i2 = this.positiveButtonTextResId;
        if (i2 != 0) {
            button.setText(i2);
        } else if (!TextUtils.isEmpty(this.positiveButtonText)) {
            button.setText(this.positiveButtonText);
        }
        Button button2 = (Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button);
        this.cancelButton = button2;
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.2
            public AnonymousClass2() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialTimePicker.this.negativeButtonListeners.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                MaterialTimePicker.this.dismiss();
            }
        });
        int i3 = this.negativeButtonTextResId;
        if (i3 != 0) {
            this.cancelButton.setText(i3);
        } else if (!TextUtils.isEmpty(this.negativeButtonText)) {
            this.cancelButton.setText(this.negativeButtonText);
        }
        updateCancelButtonVisibility();
        this.modeButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker.3
            public AnonymousClass3() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i4;
                MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
                if (materialTimePicker.inputMode == 0) {
                    i4 = 1;
                } else {
                    i4 = 0;
                }
                materialTimePicker.inputMode = i4;
                MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
                materialTimePicker2.updateInputMode(materialTimePicker2.modeButton);
            }
        });
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.activePresenter = null;
        this.timePickerClockPresenter = null;
        this.timePickerTextInputPresenter = null;
        TimePickerView timePickerView = this.timePickerView;
        if (timePickerView != null) {
            timePickerView.setOnDoubleTapListener(null);
            this.timePickerView = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.dismissListeners.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnDoubleTapListener
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onDoubleTap() {
        this.inputMode = 1;
        updateInputMode(this.modeButton);
        this.timePickerTextInputPresenter.resetChecked();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(new ObfuscatedString(new long[]{4857060128333932942L, 3941422880732884075L, 3053513167141400382L, 6479663959698638080L}).toString(), this.time);
        bundle.putInt(new ObfuscatedString(new long[]{3523426447054682653L, -8873943299691984795L, 6430192287735353213L, -1431189130082417524L}).toString(), this.inputMode);
        bundle.putInt(new ObfuscatedString(new long[]{-7134378919500084845L, 6836741901649436572L, -6244017838911234477L, -3087640211650282069L}).toString(), this.titleResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{3860356031961302395L, 2136435008893785672L, -3868197585692031673L, -1657426094627178476L}).toString(), this.titleText);
        bundle.putInt(new ObfuscatedString(new long[]{-2831438306645859685L, 7089359170649918947L, 8384459934329505999L, 3767248142068339037L, -609924920277937674L, 8552421826048378811L}).toString(), this.positiveButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{4165167076650672045L, 1093897392198422629L, 1488374350896466542L, -7624721669816872821L, -521928998981507645L}).toString(), this.positiveButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{-2690103776127194935L, 1934350263025283090L, 4524711786362235090L, 5966340245240664859L, -5952158040754211535L, -2800354690567511553L}).toString(), this.negativeButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{7683482221681009225L, 8852302453195124528L, 844508525584999166L, -3497041593523721869L, 5652175997734639557L}).toString(), this.negativeButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{-1091615970970343182L, 2083562383077298029L, 1016263770302059789L, -7241068533496390736L, 4001869935935362985L, 1585198159543145203L}).toString(), this.overrideThemeResId);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.activePresenter instanceof TimePickerTextInputPresenter) {
            view.postDelayed(new RunnableC0450xb2a4f6ac(this, 26), 100L);
        }
    }

    public boolean removeOnCancelListener(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.remove(onCancelListener);
    }

    public boolean removeOnDismissListener(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.remove(onDismissListener);
    }

    public boolean removeOnNegativeButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.remove(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(@NonNull View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.remove(onClickListener);
    }

    @VisibleForTesting
    public void setActivePresenter(@Nullable TimePickerPresenter timePickerPresenter) {
        this.activePresenter = timePickerPresenter;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        updateCancelButtonVisibility();
    }

    public void setHour(@IntRange(from = 0, to = 23) int i) {
        this.time.setHour(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }

    public void setMinute(@IntRange(from = 0, to = 59) int i) {
        this.time.setMinute(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }
}
