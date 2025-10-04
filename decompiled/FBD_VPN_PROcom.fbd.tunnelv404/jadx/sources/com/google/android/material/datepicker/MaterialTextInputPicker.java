package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class MaterialTextInputPicker<S> extends PickerFragment<S> {

    @Nullable
    private CalendarConstraints calendarConstraints;

    @Nullable
    private DateSelector<S> dateSelector;

    @StyleRes
    private int themeResId;
    private static final String THEME_RES_ID_KEY = new ObfuscatedString(new long[]{653218504683730887L, -1122838960782964950L, -6368037889501337107L}).toString();
    private static final String DATE_SELECTOR_KEY = new ObfuscatedString(new long[]{-1056530510400048071L, -3189242927485316071L, -1030550264654068732L, -7768373612765807930L}).toString();
    private static final String CALENDAR_CONSTRAINTS_KEY = new ObfuscatedString(new long[]{-7087708646686548694L, -3054076132618800170L, -7598082661001245061L, -725320613973111865L}).toString();

    @NonNull
    public static <T> MaterialTextInputPicker<T> newInstance(DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker<T> materialTextInputPicker = new MaterialTextInputPicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(new ObfuscatedString(new long[]{3773274645885830639L, 6030174226221315535L, 4611147948436481248L}).toString(), i);
        bundle.putParcelable(new ObfuscatedString(new long[]{-7756145731276159543L, 9131670212829602884L, 7592715013439520665L, -8073941510630285633L}).toString(), dateSelector);
        bundle.putParcelable(new ObfuscatedString(new long[]{-4084960353378176987L, 2319181108883327004L, -1252817712469940069L, -2000984043515160527L}).toString(), calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    @NonNull
    public DateSelector<S> getDateSelector() {
        DateSelector<S> dateSelector = this.dateSelector;
        if (dateSelector != null) {
            return dateSelector;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{5207505823129781033L, -7748230447982783362L, 3719253030553300927L, 7042100289108745677L, -1540389388329096101L, -2539639568026517007L, -3349368698919873369L, 6720902652544021682L, -6068101325319602811L, -6034531043716556464L, 4890470591100103307L, -6847928019663683786L, 1367832126694081396L, -732028568793279927L, -6438037390298980462L, 1193911237992625083L, 3417118828514420035L, 7329387307487692022L, 3161659062518550557L, -1113624368242939957L, 950804503886417202L, -8891041259085104565L, 3545359161431137952L, -3189118516783305546L}).toString());
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.themeResId = bundle.getInt(new ObfuscatedString(new long[]{-7707839854690561114L, -919914915164007762L, -3854545337305535202L}).toString());
        this.dateSelector = (DateSelector) bundle.getParcelable(new ObfuscatedString(new long[]{4224637894584625383L, 6479011117802374083L, 4293468567169447665L, 4480445266134603319L}).toString());
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(new ObfuscatedString(new long[]{6791701443688149186L, 78303591610766365L, -3573601473166478584L, -4514046950168322261L}).toString());
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return this.dateSelector.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.themeResId)), viewGroup, bundle, this.calendarConstraints, new OnSelectionChangedListener<S>() { // from class: com.google.android.material.datepicker.MaterialTextInputPicker.1
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onIncompleteSelectionChanged() {
                Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onIncompleteSelectionChanged();
                }
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public void onSelectionChanged(S s) {
                Iterator<OnSelectionChangedListener<S>> it = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSelectionChanged(s);
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(new ObfuscatedString(new long[]{-3831228659886292278L, 7458170316463163939L, -1532821419087621400L}).toString(), this.themeResId);
        bundle.putParcelable(new ObfuscatedString(new long[]{7783612631102906619L, -3970426505199009917L, 153664977624036830L, 6427635424015021756L}).toString(), this.dateSelector);
        bundle.putParcelable(new ObfuscatedString(new long[]{-8466699179501403355L, -4720068674146368145L, -8482613766543840412L, -5896150828828218815L}).toString(), this.calendarConstraints);
    }
}
