package com.google.android.material.datepicker;

import android.R;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.EdgeToEdgeUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.ViewOnClickListenerC0899xca18fbd;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes2.dex */
public final class MaterialDatePicker<S> extends DialogFragment {
    public static final int INPUT_MODE_CALENDAR = 0;
    public static final int INPUT_MODE_TEXT = 1;

    @Nullable
    private MaterialShapeDrawable background;
    private MaterialCalendar<S> calendar;

    @Nullable
    private CalendarConstraints calendarConstraints;
    private Button confirmButton;

    @Nullable
    private DateSelector<S> dateSelector;

    @Nullable
    private DayViewDecorator dayViewDecorator;
    private boolean edgeToEdgeEnabled;

    @Nullable
    private CharSequence fullTitleText;
    private boolean fullscreen;
    private TextView headerSelectionText;
    private TextView headerTitleTextView;
    private CheckableImageButton headerToggleButton;
    private int inputMode;
    private CharSequence negativeButtonContentDescription;

    @StringRes
    private int negativeButtonContentDescriptionResId;
    private CharSequence negativeButtonText;

    @StringRes
    private int negativeButtonTextResId;

    @StyleRes
    private int overrideThemeResId;
    private PickerFragment<S> pickerFragment;
    private CharSequence positiveButtonContentDescription;

    @StringRes
    private int positiveButtonContentDescriptionResId;
    private CharSequence positiveButtonText;

    @StringRes
    private int positiveButtonTextResId;

    @Nullable
    private CharSequence singleLineTitleText;
    private CharSequence titleText;

    @StringRes
    private int titleTextResId;
    private static final String OVERRIDE_THEME_RES_ID = new ObfuscatedString(new long[]{6192080799180162645L, 736853036185437758L, 4605006432010983766L, -481928854300027847L}).toString();
    private static final String DATE_SELECTOR_KEY = new ObfuscatedString(new long[]{3423757677587630226L, 6949158708867648313L, -5677715214094189927L, -2334433435850217850L}).toString();
    private static final String CALENDAR_CONSTRAINTS_KEY = new ObfuscatedString(new long[]{1721053648143325462L, -6792697057104795635L, -3769188459911985038L, -5120729704820137024L}).toString();
    private static final String DAY_VIEW_DECORATOR_KEY = new ObfuscatedString(new long[]{-168111844371601812L, 1421165866771592950L, -1080951506101176511L, -5586185872491653271L}).toString();
    private static final String TITLE_TEXT_RES_ID_KEY = new ObfuscatedString(new long[]{8781891747096474444L, 1709612839577587858L, -2503681580617749305L, 8098881166074944970L}).toString();
    private static final String TITLE_TEXT_KEY = new ObfuscatedString(new long[]{1147135803112784510L, -5944817938504656854L, 8787947180923436465L}).toString();
    private static final String POSITIVE_BUTTON_TEXT_RES_ID_KEY = new ObfuscatedString(new long[]{-7896407153393492749L, 6244572616659252550L, 261336022845192286L, 3191230611987194370L, 623198949199700651L}).toString();
    private static final String POSITIVE_BUTTON_TEXT_KEY = new ObfuscatedString(new long[]{4498087063950748583L, 5437800740881571549L, -2857685123126994881L, 1564757281433144818L}).toString();
    private static final String POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY = new ObfuscatedString(new long[]{-2210929430993255465L, -678022309542396190L, -1979302010945077244L, -8403198949593622676L, 3168727030048077576L, -169662951557128611L, 4134581134856706836L}).toString();
    private static final String POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY = new ObfuscatedString(new long[]{5461933931396236919L, 6218892528327763200L, -1360599148700473943L, 4726215718402176185L, 4770841760794596231L, -1383333430809551302L}).toString();
    private static final String NEGATIVE_BUTTON_TEXT_RES_ID_KEY = new ObfuscatedString(new long[]{4769892379283220877L, -5284045323365133131L, 8313075489782851534L, 7767999756414767886L, 5439095765620322462L}).toString();
    private static final String NEGATIVE_BUTTON_TEXT_KEY = new ObfuscatedString(new long[]{-4827769613108484431L, 4646842222881654851L, 7547800116257098303L, 1716457673849515174L}).toString();
    private static final String NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY = new ObfuscatedString(new long[]{4105445692049577906L, -1652449154035907736L, 226771553338883721L, 2521775037595465562L, -3773732703097640230L, -2998012884385460212L, 1703221288638671067L}).toString();
    private static final String NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY = new ObfuscatedString(new long[]{-3623646061681850008L, -1030433128839915466L, -8789154169046616416L, -7826169517373281533L, -3944826641193270461L, 1436525109461868500L}).toString();
    private static final String INPUT_MODE_KEY = new ObfuscatedString(new long[]{-2738236840937136875L, 8276991213807404712L, -4650499320223905233L}).toString();
    static final Object CONFIRM_BUTTON_TAG = new ObfuscatedString(new long[]{-5246714876211948063L, -852028849091477399L, 2177004526995983392L, -7533723846341468601L}).toString();
    static final Object CANCEL_BUTTON_TAG = new ObfuscatedString(new long[]{-5559253637003954217L, 8474898033299637179L, 5144011256729239771L, -1048308415449527282L}).toString();
    static final Object TOGGLE_BUTTON_TAG = new ObfuscatedString(new long[]{-2565901644722960768L, 3964016441454891480L, 4978616352744273640L, 2688270060031398979L}).toString();
    private final LinkedHashSet<MaterialPickerOnPositiveButtonClickListener<? super S>> onPositiveButtonClickListeners = new LinkedHashSet<>();
    private final LinkedHashSet<View.OnClickListener> onNegativeButtonClickListeners = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnCancelListener> onCancelListeners = new LinkedHashSet<>();
    private final LinkedHashSet<DialogInterface.OnDismissListener> onDismissListeners = new LinkedHashSet<>();

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$1 */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements View.OnClickListener {
        public AnonymousClass1() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.onPositiveButtonClickListeners.iterator();
            while (it.hasNext()) {
                ((MaterialPickerOnPositiveButtonClickListener) it.next()).onPositiveButtonClick(MaterialDatePicker.this.getSelection());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$2 */
    /* loaded from: classes2.dex */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.onNegativeButtonClickListeners.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$3 */
    /* loaded from: classes2.dex */
    public class AnonymousClass3 implements OnApplyWindowInsetsListener {
        final /* synthetic */ View val$headerLayout;
        final /* synthetic */ int val$originalHeaderHeight;
        final /* synthetic */ int val$originalPaddingTop;

        public AnonymousClass3(int i, View view, int i2) {
            r2 = i;
            r3 = view;
            r4 = i2;
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
            if (r2 >= 0) {
                r3.getLayoutParams().height = r2 + i;
                View view2 = r3;
                view2.setLayoutParams(view2.getLayoutParams());
            }
            View view3 = r3;
            view3.setPadding(view3.getPaddingLeft(), r4 + i, r3.getPaddingRight(), r3.getPaddingBottom());
            return windowInsetsCompat;
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$4 */
    /* loaded from: classes2.dex */
    public class AnonymousClass4 extends OnSelectionChangedListener<S> {
        public AnonymousClass4() {
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onIncompleteSelectionChanged() {
            MaterialDatePicker.this.confirmButton.setEnabled(false);
        }

        @Override // com.google.android.material.datepicker.OnSelectionChangedListener
        public void onSelectionChanged(S s) {
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.updateHeader(materialDatePicker.getHeaderText());
            MaterialDatePicker.this.confirmButton.setEnabled(MaterialDatePicker.this.getDateSelector().isSelectionComplete());
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes2.dex */
    public @interface InputMode {
    }

    @NonNull
    private static Drawable createHeaderToggleDrawable(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_checked}, AppCompatResources.getDrawable(context, com.google.android.material.R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, com.google.android.material.R.drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    private void enableEdgeToEdgeIfNeeded(Window window) {
        if (this.edgeToEdgeEnabled) {
            return;
        }
        View findViewById = requireView().findViewById(com.google.android.material.R.id.fullscreen_header);
        EdgeToEdgeUtils.applyEdgeToEdge(window, true, ViewUtils.getBackgroundColor(findViewById), null);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.3
            final /* synthetic */ View val$headerLayout;
            final /* synthetic */ int val$originalHeaderHeight;
            final /* synthetic */ int val$originalPaddingTop;

            public AnonymousClass3(int i, View findViewById2, int i2) {
                r2 = i;
                r3 = findViewById2;
                r4 = i2;
            }

            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                int i = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top;
                if (r2 >= 0) {
                    r3.getLayoutParams().height = r2 + i;
                    View view2 = r3;
                    view2.setLayoutParams(view2.getLayoutParams());
                }
                View view3 = r3;
                view3.setPadding(view3.getPaddingLeft(), r4 + i, r3.getPaddingRight(), r3.getPaddingBottom());
                return windowInsetsCompat;
            }
        });
        this.edgeToEdgeEnabled = true;
    }

    public DateSelector<S> getDateSelector() {
        if (this.dateSelector == null) {
            this.dateSelector = (DateSelector) getArguments().getParcelable(new ObfuscatedString(new long[]{-4984445998484702456L, 8751254113718715925L, 9144189606685284827L, 6195815290805676346L}).toString());
        }
        return this.dateSelector;
    }

    @Nullable
    private static CharSequence getFirstLineBySeparator(@Nullable CharSequence charSequence) {
        if (charSequence != null) {
            String[] split = TextUtils.split(String.valueOf(charSequence), new ObfuscatedString(new long[]{-2876747659213670038L, 3299365743453136943L}).toString());
            if (split.length > 1) {
                return split[0];
            }
            return charSequence;
        }
        return null;
    }

    private String getHeaderContentDescription() {
        return getDateSelector().getSelectionContentDescription(requireContext());
    }

    private static int getPaddedPickerWidth(@NonNull Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_content_padding);
        int i = Month.current().daysInWeek;
        return ((i - 1) * resources.getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_month_horizontal_padding)) + (resources.getDimensionPixelSize(com.google.android.material.R.dimen.mtrl_calendar_day_width) * i) + (dimensionPixelOffset * 2);
    }

    private int getThemeResId(Context context) {
        int i = this.overrideThemeResId;
        if (i != 0) {
            return i;
        }
        return getDateSelector().getDefaultThemeResId(context);
    }

    private void initHeaderToggle(Context context) {
        boolean z;
        this.headerToggleButton.setTag(TOGGLE_BUTTON_TAG);
        this.headerToggleButton.setImageDrawable(createHeaderToggleDrawable(context));
        CheckableImageButton checkableImageButton = this.headerToggleButton;
        if (this.inputMode != 0) {
            z = true;
        } else {
            z = false;
        }
        checkableImageButton.setChecked(z);
        ViewCompat.setAccessibilityDelegate(this.headerToggleButton, null);
        updateToggleContentDescription(this.headerToggleButton);
        this.headerToggleButton.setOnClickListener(new ViewOnClickListenerC0899xca18fbd(this, 2));
    }

    public static boolean isFullscreen(@NonNull Context context) {
        return readMaterialCalendarStyleBoolean(context, R.attr.windowFullscreen);
    }

    private boolean isLandscape() {
        if (getResources().getConfiguration().orientation == 2) {
            return true;
        }
        return false;
    }

    public static boolean isNestedScrollable(@NonNull Context context) {
        return readMaterialCalendarStyleBoolean(context, com.google.android.material.R.attr.nestedScrollable);
    }

    public /* synthetic */ void lambda$initHeaderToggle$0(View view) {
        this.confirmButton.setEnabled(getDateSelector().isSelectionComplete());
        this.headerToggleButton.toggle();
        int i = 1;
        if (this.inputMode == 1) {
            i = 0;
        }
        this.inputMode = i;
        updateToggleContentDescription(this.headerToggleButton);
        startPickerFragment();
    }

    @NonNull
    public static <S> MaterialDatePicker<S> newInstance(@NonNull Builder<S> builder) {
        MaterialDatePicker<S> materialDatePicker = new MaterialDatePicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(new ObfuscatedString(new long[]{-7363979176854139929L, -5637773732246785533L, -5613126331570423839L, 8239548285583434922L}).toString(), builder.overrideThemeResId);
        bundle.putParcelable(new ObfuscatedString(new long[]{5858508104593861545L, 5933733073252321673L, 9059413266403975056L, 8634942899451430453L}).toString(), builder.dateSelector);
        bundle.putParcelable(new ObfuscatedString(new long[]{4051269769565691292L, 164679712501842933L, -6053030454770374133L, 2811121078842931703L}).toString(), builder.calendarConstraints);
        bundle.putParcelable(new ObfuscatedString(new long[]{694249484746189186L, -6823148961739834397L, -9006285007484173380L, 8182703802159058336L}).toString(), builder.dayViewDecorator);
        bundle.putInt(new ObfuscatedString(new long[]{-5883273323224365086L, 4487874098017175896L, 3838289108293811493L, 3920329131003684L}).toString(), builder.titleTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{9122628620853284174L, -8308410812767596498L, 8226862383441333522L}).toString(), builder.titleText);
        bundle.putInt(new ObfuscatedString(new long[]{5687770129275544104L, -7396077060100698832L, -8534888230298302391L}).toString(), builder.inputMode);
        bundle.putInt(new ObfuscatedString(new long[]{-7296721214526386420L, 3861504185550719704L, 4114187724642621503L, -4029640879980856021L, -140593520620518887L}).toString(), builder.positiveButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{-1574082907248318554L, -6607053261295476682L, -2038259422877825680L, -680417549544350386L}).toString(), builder.positiveButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{8287881935932032610L, -3562331366697382423L, 6490446161573018155L, 8426345516939234354L, 7680504922503173415L, -3928767395594730714L, -3855721650146708639L}).toString(), builder.positiveButtonContentDescriptionResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{8535026330612595857L, -1839529362315906L, 809348852351055773L, 1049571632362132131L, -5869808690955479120L, 7601919179501308486L}).toString(), builder.positiveButtonContentDescription);
        bundle.putInt(new ObfuscatedString(new long[]{8988812958997638318L, -2065627614357583697L, 7956585220792179080L, 159917202673087674L, 1901023933489315038L}).toString(), builder.negativeButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{-4205452418113185084L, 5729823382298903077L, 2661994053153264701L, -4748927824381299488L}).toString(), builder.negativeButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{-3244190683918249876L, -2537115013206526383L, 5043026759310739882L, -5094825615443284436L, 2220149459094148604L, -1852468829542854845L, 8887190955666509461L}).toString(), builder.negativeButtonContentDescriptionResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{-581836033582876156L, -4843938121076875237L, -2157480868935524292L, 2327591695798738074L, -3963441437646918826L, -5076105556140328414L}).toString(), builder.negativeButtonContentDescription);
        materialDatePicker.setArguments(bundle);
        return materialDatePicker;
    }

    public static boolean readMaterialCalendarStyleBoolean(@NonNull Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.resolveOrThrow(context, com.google.android.material.R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i});
        boolean z = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return z;
    }

    private void startPickerFragment() {
        int themeResId = getThemeResId(requireContext());
        MaterialTextInputPicker newInstance = MaterialCalendar.newInstance(getDateSelector(), themeResId, this.calendarConstraints, this.dayViewDecorator);
        this.calendar = newInstance;
        if (this.inputMode == 1) {
            newInstance = MaterialTextInputPicker.newInstance(getDateSelector(), themeResId, this.calendarConstraints);
        }
        this.pickerFragment = newInstance;
        updateTitle();
        updateHeader(getHeaderText());
        FragmentTransaction beginTransaction = getChildFragmentManager().beginTransaction();
        beginTransaction.replace(com.google.android.material.R.id.mtrl_calendar_frame, this.pickerFragment);
        beginTransaction.commitNow();
        this.pickerFragment.addOnSelectionChangedListener(new OnSelectionChangedListener<S>() { // from class: com.google.android.material.datepicker.MaterialDatePicker.4
            public AnonymousClass4() {
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onIncompleteSelectionChanged() {
                MaterialDatePicker.this.confirmButton.setEnabled(false);
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onSelectionChanged(S s) {
                MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
                materialDatePicker.updateHeader(materialDatePicker.getHeaderText());
                MaterialDatePicker.this.confirmButton.setEnabled(MaterialDatePicker.this.getDateSelector().isSelectionComplete());
            }
        });
    }

    public static long thisMonthInUtcMilliseconds() {
        return Month.current().timeInMillis;
    }

    public static long todayInUtcMilliseconds() {
        return UtcDates.getTodayCalendar().getTimeInMillis();
    }

    private void updateTitle() {
        CharSequence charSequence;
        TextView textView = this.headerTitleTextView;
        if (this.inputMode == 1 && isLandscape()) {
            charSequence = this.singleLineTitleText;
        } else {
            charSequence = this.fullTitleText;
        }
        textView.setText(charSequence);
    }

    private void updateToggleContentDescription(@NonNull CheckableImageButton checkableImageButton) {
        String string;
        if (this.inputMode == 1) {
            string = checkableImageButton.getContext().getString(com.google.android.material.R.string.mtrl_picker_toggle_to_calendar_input_mode);
        } else {
            string = checkableImageButton.getContext().getString(com.google.android.material.R.string.mtrl_picker_toggle_to_text_input_mode);
        }
        this.headerToggleButton.setContentDescription(string);
    }

    public boolean addOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.onCancelListeners.add(onCancelListener);
    }

    public boolean addOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.onDismissListeners.add(onDismissListener);
    }

    public boolean addOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.onNegativeButtonClickListeners.add(onClickListener);
    }

    public boolean addOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.onPositiveButtonClickListeners.add(materialPickerOnPositiveButtonClickListener);
    }

    public void clearOnCancelListeners() {
        this.onCancelListeners.clear();
    }

    public void clearOnDismissListeners() {
        this.onDismissListeners.clear();
    }

    public void clearOnNegativeButtonClickListeners() {
        this.onNegativeButtonClickListeners.clear();
    }

    public void clearOnPositiveButtonClickListeners() {
        this.onPositiveButtonClickListeners.clear();
    }

    public String getHeaderText() {
        return getDateSelector().getSelectionDisplayString(getContext());
    }

    public int getInputMode() {
        return this.inputMode;
    }

    @Nullable
    public final S getSelection() {
        return getDateSelector().getSelection();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.onCancelListeners.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.overrideThemeResId = bundle.getInt(new ObfuscatedString(new long[]{-3445854094242575654L, 5022373266041953986L, -362410523755279788L, 2257038948807244229L}).toString());
        this.dateSelector = (DateSelector) bundle.getParcelable(new ObfuscatedString(new long[]{-5950798952126971841L, 1315961995690920043L, 5793237754061095665L, -2001427565992250404L}).toString());
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(new ObfuscatedString(new long[]{1585177316327689797L, 7808728093027545937L, -8550331324807385552L, 8423545165256758161L}).toString());
        this.dayViewDecorator = (DayViewDecorator) bundle.getParcelable(new ObfuscatedString(new long[]{-3201114122849769943L, 5296020967841359831L, 6793905595711948060L, 2678502639126314655L}).toString());
        this.titleTextResId = bundle.getInt(new ObfuscatedString(new long[]{-7664643828655848291L, 9017111735409205108L, -7911796351123851622L, -4636367011321003597L}).toString());
        this.titleText = bundle.getCharSequence(new ObfuscatedString(new long[]{5250260755860475773L, 8747272507003191165L, -6513388342583338804L}).toString());
        this.inputMode = bundle.getInt(new ObfuscatedString(new long[]{-7960609202851460501L, 2258533734069801732L, 4036253042682156723L}).toString());
        this.positiveButtonTextResId = bundle.getInt(new ObfuscatedString(new long[]{-5194330881763888026L, -144711679853127341L, 7373814514529229588L, 8563026098250890083L, -6128311611015637301L}).toString());
        this.positiveButtonText = bundle.getCharSequence(new ObfuscatedString(new long[]{-8584299598512242465L, 5117164980688553183L, -2219478027772116238L, 2768514489453193808L}).toString());
        this.positiveButtonContentDescriptionResId = bundle.getInt(new ObfuscatedString(new long[]{-1630483393179624835L, -769754791210963691L, 5099334369008311223L, -132205338293998556L, -5832279943768271374L, -2778231199701033323L, -3913862122066789288L}).toString());
        this.positiveButtonContentDescription = bundle.getCharSequence(new ObfuscatedString(new long[]{-4231969204937180167L, 1426860053166930819L, 4290284872694234364L, -5710372816750988662L, 1631482954885093004L, -8482360588763475037L}).toString());
        this.negativeButtonTextResId = bundle.getInt(new ObfuscatedString(new long[]{-5558907779631545526L, 1323978841177229197L, 302917549880611722L, -8804807762022673262L, -3134718383999809171L}).toString());
        this.negativeButtonText = bundle.getCharSequence(new ObfuscatedString(new long[]{-2763224814172510531L, -8735631176736342941L, -3944360058137994370L, 258742999347415539L}).toString());
        this.negativeButtonContentDescriptionResId = bundle.getInt(new ObfuscatedString(new long[]{-7001471269243261179L, 3182331403051405223L, 2104493561464061778L, -2381088352840341899L, 4886874180187432513L, 2985808857412608986L, 8469702762092218170L}).toString());
        this.negativeButtonContentDescription = bundle.getCharSequence(new ObfuscatedString(new long[]{-7760827952570413761L, 5206305765702829673L, -5692576954543285806L, -6598661884249054506L, 113753673449415264L, 6337955023495823997L}).toString());
        CharSequence charSequence = this.titleText;
        if (charSequence == null) {
            charSequence = requireContext().getResources().getText(this.titleTextResId);
        }
        this.fullTitleText = charSequence;
        this.singleLineTitleText = getFirstLineBySeparator(charSequence);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), getThemeResId(requireContext()));
        Context context = dialog.getContext();
        this.fullscreen = isFullscreen(context);
        int i = com.google.android.material.R.attr.materialCalendarStyle;
        int i2 = com.google.android.material.R.style.Widget_MaterialComponents_MaterialCalendar;
        this.background = new MaterialShapeDrawable(context, null, i, i2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, com.google.android.material.R.styleable.MaterialCalendar, i, i2);
        int color = obtainStyledAttributes.getColor(com.google.android.material.R.styleable.MaterialCalendar_backgroundTint, 0);
        obtainStyledAttributes.recycle();
        this.background.initializeElevationOverlay(context);
        this.background.setFillColor(ColorStateList.valueOf(color));
        this.background.setElevation(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        int i;
        if (this.fullscreen) {
            i = com.google.android.material.R.layout.mtrl_picker_fullscreen;
        } else {
            i = com.google.android.material.R.layout.mtrl_picker_dialog;
        }
        View inflate = layoutInflater.inflate(i, viewGroup);
        Context context = inflate.getContext();
        DayViewDecorator dayViewDecorator = this.dayViewDecorator;
        if (dayViewDecorator != null) {
            dayViewDecorator.initialize(context);
        }
        if (this.fullscreen) {
            inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(getPaddedPickerWidth(context), -2));
        } else {
            inflate.findViewById(com.google.android.material.R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(getPaddedPickerWidth(context), -1));
        }
        TextView textView = (TextView) inflate.findViewById(com.google.android.material.R.id.mtrl_picker_header_selection_text);
        this.headerSelectionText = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.headerToggleButton = (CheckableImageButton) inflate.findViewById(com.google.android.material.R.id.mtrl_picker_header_toggle);
        this.headerTitleTextView = (TextView) inflate.findViewById(com.google.android.material.R.id.mtrl_picker_title_text);
        initHeaderToggle(context);
        this.confirmButton = (Button) inflate.findViewById(com.google.android.material.R.id.confirm_button);
        if (getDateSelector().isSelectionComplete()) {
            this.confirmButton.setEnabled(true);
        } else {
            this.confirmButton.setEnabled(false);
        }
        this.confirmButton.setTag(CONFIRM_BUTTON_TAG);
        CharSequence charSequence = this.positiveButtonText;
        if (charSequence != null) {
            this.confirmButton.setText(charSequence);
        } else {
            int i2 = this.positiveButtonTextResId;
            if (i2 != 0) {
                this.confirmButton.setText(i2);
            }
        }
        CharSequence charSequence2 = this.positiveButtonContentDescription;
        if (charSequence2 != null) {
            this.confirmButton.setContentDescription(charSequence2);
        } else if (this.positiveButtonContentDescriptionResId != 0) {
            this.confirmButton.setContentDescription(getContext().getResources().getText(this.positiveButtonContentDescriptionResId));
        }
        this.confirmButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.1
            public AnonymousClass1() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialDatePicker.this.onPositiveButtonClickListeners.iterator();
                while (it.hasNext()) {
                    ((MaterialPickerOnPositiveButtonClickListener) it.next()).onPositiveButtonClick(MaterialDatePicker.this.getSelection());
                }
                MaterialDatePicker.this.dismiss();
            }
        });
        Button button = (Button) inflate.findViewById(com.google.android.material.R.id.cancel_button);
        button.setTag(CANCEL_BUTTON_TAG);
        CharSequence charSequence3 = this.negativeButtonText;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i3 = this.negativeButtonTextResId;
            if (i3 != 0) {
                button.setText(i3);
            }
        }
        CharSequence charSequence4 = this.negativeButtonContentDescription;
        if (charSequence4 != null) {
            button.setContentDescription(charSequence4);
        } else if (this.negativeButtonContentDescriptionResId != 0) {
            button.setContentDescription(getContext().getResources().getText(this.negativeButtonContentDescriptionResId));
        }
        button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.2
            public AnonymousClass2() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Iterator it = MaterialDatePicker.this.onNegativeButtonClickListeners.iterator();
                while (it.hasNext()) {
                    ((View.OnClickListener) it.next()).onClick(view);
                }
                MaterialDatePicker.this.dismiss();
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.onDismissListeners.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        Month currentMonth;
        super.onSaveInstanceState(bundle);
        bundle.putInt(new ObfuscatedString(new long[]{-575577402583286529L, 5199370599271404138L, 4043467336220622154L, 7354636734313156745L}).toString(), this.overrideThemeResId);
        bundle.putParcelable(new ObfuscatedString(new long[]{3213347663374453237L, -1075692835626371696L, 8910111613268407363L, 6493124646855286020L}).toString(), this.dateSelector);
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder(this.calendarConstraints);
        MaterialCalendar<S> materialCalendar = this.calendar;
        if (materialCalendar == null) {
            currentMonth = null;
        } else {
            currentMonth = materialCalendar.getCurrentMonth();
        }
        if (currentMonth != null) {
            builder.setOpenAt(currentMonth.timeInMillis);
        }
        bundle.putParcelable(new ObfuscatedString(new long[]{4583355791979246090L, 4394443535701584191L, 1448302555028731945L, 4767740880473320429L}).toString(), builder.build());
        bundle.putParcelable(new ObfuscatedString(new long[]{4237519210616602533L, -8259775189782870829L, -3376823804694719971L, -5916640953107552116L}).toString(), this.dayViewDecorator);
        bundle.putInt(new ObfuscatedString(new long[]{-6761886603618960568L, -3330737730000412536L, -815535023463855204L, 5898472492264928035L}).toString(), this.titleTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{-8710896132694109839L, -5054690680419469378L, -4908708465735831707L}).toString(), this.titleText);
        bundle.putInt(new ObfuscatedString(new long[]{3473071522412530133L, 6795258358952626673L, 480011665064499109L}).toString(), this.inputMode);
        bundle.putInt(new ObfuscatedString(new long[]{9207509014299249138L, -9054300017333156978L, 8541225746504916148L, -7002075113091358553L, -4576786773902547944L}).toString(), this.positiveButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{2845298010663599617L, 4365883149133209052L, -824076195454662721L, 8897690939621397386L}).toString(), this.positiveButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{5152142463527985775L, -5385607616092143593L, -3756812613665756741L, 3076608325035699404L, 9213050854541918548L, 6302490842959359163L, 6145589355763439790L}).toString(), this.positiveButtonContentDescriptionResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{-7639040173106024480L, -4141237335097769230L, -2187368658065791713L, 1155957897972353701L, -6258452647969158442L, -4182157103924925527L}).toString(), this.positiveButtonContentDescription);
        bundle.putInt(new ObfuscatedString(new long[]{-3730166061167414262L, 5639630489703840880L, -6751533002588114248L, -6304086694668616497L, 1010374434139051848L}).toString(), this.negativeButtonTextResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{5846990350012850148L, -5541392909381276616L, -8108965083651184215L, 4701826662511684723L}).toString(), this.negativeButtonText);
        bundle.putInt(new ObfuscatedString(new long[]{-5853395076261339065L, 8150103285350690354L, -3714762834538277812L, -2397967163118688853L, -3169484761808424930L, 5434020520515732757L, -4581834907613617165L}).toString(), this.negativeButtonContentDescriptionResId);
        bundle.putCharSequence(new ObfuscatedString(new long[]{103321556702355567L, -5855230129190456496L, -5460225233311300975L, -1608881483092324154L, -6389509237965439813L, -7611914718397932400L}).toString(), this.negativeButtonContentDescription);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.fullscreen) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.background);
            enableEdgeToEdgeIfNeeded(window);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(com.google.android.material.R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.background, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        startPickerFragment();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.pickerFragment.clearOnSelectionChangedListeners();
        super.onStop();
    }

    public boolean removeOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.onCancelListeners.remove(onCancelListener);
    }

    public boolean removeOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.onDismissListeners.remove(onDismissListener);
    }

    public boolean removeOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.onNegativeButtonClickListeners.remove(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.onPositiveButtonClickListeners.remove(materialPickerOnPositiveButtonClickListener);
    }

    @VisibleForTesting
    public void updateHeader(String str) {
        this.headerSelectionText.setContentDescription(getHeaderContentDescription());
        this.headerSelectionText.setText(str);
    }

    /* loaded from: classes2.dex */
    public static final class Builder<S> {
        CalendarConstraints calendarConstraints;
        final DateSelector<S> dateSelector;

        @Nullable
        DayViewDecorator dayViewDecorator;
        int overrideThemeResId = 0;
        int titleTextResId = 0;
        CharSequence titleText = null;
        int positiveButtonTextResId = 0;
        CharSequence positiveButtonText = null;
        int positiveButtonContentDescriptionResId = 0;
        CharSequence positiveButtonContentDescription = null;
        int negativeButtonTextResId = 0;
        CharSequence negativeButtonText = null;
        int negativeButtonContentDescriptionResId = 0;
        CharSequence negativeButtonContentDescription = null;

        @Nullable
        S selection = null;
        int inputMode = 0;

        private Builder(DateSelector<S> dateSelector) {
            this.dateSelector = dateSelector;
        }

        private Month createDefaultOpenAt() {
            if (!this.dateSelector.getSelectedDays().isEmpty()) {
                Month create = Month.create(this.dateSelector.getSelectedDays().iterator().next().longValue());
                if (monthInValidRange(create, this.calendarConstraints)) {
                    return create;
                }
            }
            Month current = Month.current();
            if (!monthInValidRange(current, this.calendarConstraints)) {
                return this.calendarConstraints.getStart();
            }
            return current;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public static <S> Builder<S> customDatePicker(@NonNull DateSelector<S> dateSelector) {
            return new Builder<>(dateSelector);
        }

        @NonNull
        public static Builder<Long> datePicker() {
            return new Builder<>(new SingleDateSelector());
        }

        @NonNull
        public static Builder<Pair<Long, Long>> dateRangePicker() {
            return new Builder<>(new RangeDateSelector());
        }

        private static boolean monthInValidRange(Month month, CalendarConstraints calendarConstraints) {
            if (month.compareTo(calendarConstraints.getStart()) >= 0 && month.compareTo(calendarConstraints.getEnd()) <= 0) {
                return true;
            }
            return false;
        }

        @NonNull
        public MaterialDatePicker<S> build() {
            if (this.calendarConstraints == null) {
                this.calendarConstraints = new CalendarConstraints.Builder().build();
            }
            if (this.titleTextResId == 0) {
                this.titleTextResId = this.dateSelector.getDefaultTitleResId();
            }
            S s = this.selection;
            if (s != null) {
                this.dateSelector.setSelection(s);
            }
            if (this.calendarConstraints.getOpenAt() == null) {
                this.calendarConstraints.setOpenAt(createDefaultOpenAt());
            }
            return MaterialDatePicker.newInstance(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setCalendarConstraints(CalendarConstraints calendarConstraints) {
            this.calendarConstraints = calendarConstraints;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setDayViewDecorator(@Nullable DayViewDecorator dayViewDecorator) {
            this.dayViewDecorator = dayViewDecorator;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setInputMode(int i) {
            this.inputMode = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonContentDescription(@StringRes int i) {
            this.negativeButtonContentDescriptionResId = i;
            this.negativeButtonContentDescription = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonText(@StringRes int i) {
            this.negativeButtonTextResId = i;
            this.negativeButtonText = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonContentDescription(@StringRes int i) {
            this.positiveButtonContentDescriptionResId = i;
            this.positiveButtonContentDescription = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonText(@StringRes int i) {
            this.positiveButtonTextResId = i;
            this.positiveButtonText = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setSelection(S s) {
            this.selection = s;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTextInputFormat(@Nullable SimpleDateFormat simpleDateFormat) {
            this.dateSelector.setTextInputFormat(simpleDateFormat);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTheme(@StyleRes int i) {
            this.overrideThemeResId = i;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTitleText(@StringRes int i) {
            this.titleTextResId = i;
            this.titleText = null;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonContentDescription(@Nullable CharSequence charSequence) {
            this.negativeButtonContentDescription = charSequence;
            this.negativeButtonContentDescriptionResId = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setNegativeButtonText(@Nullable CharSequence charSequence) {
            this.negativeButtonText = charSequence;
            this.negativeButtonTextResId = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonContentDescription(@Nullable CharSequence charSequence) {
            this.positiveButtonContentDescription = charSequence;
            this.positiveButtonContentDescriptionResId = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setPositiveButtonText(@Nullable CharSequence charSequence) {
            this.positiveButtonText = charSequence;
            this.positiveButtonTextResId = 0;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public Builder<S> setTitleText(@Nullable CharSequence charSequence) {
            this.titleText = charSequence;
            this.titleTextResId = 0;
            return this;
        }
    }
}
