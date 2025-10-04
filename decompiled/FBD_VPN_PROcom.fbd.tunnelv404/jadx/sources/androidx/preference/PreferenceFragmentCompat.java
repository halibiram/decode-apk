package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.XmlRes;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.preference.DialogPreference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes.dex */
public abstract class PreferenceFragmentCompat extends Fragment implements PreferenceManager.OnPreferenceTreeClickListener, PreferenceManager.OnDisplayPreferenceDialogListener, PreferenceManager.OnNavigateToScreenListener, DialogPreference.TargetFragment {
    public static final String ARG_PREFERENCE_ROOT = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT";
    private static final String DIALOG_FRAGMENT_TAG = "androidx.preference.PreferenceFragment.DIALOG";
    private static final int MSG_BIND_PREFERENCES = 1;
    private static final String PREFERENCES_TAG = "android:preferences";
    private static final String TAG = "PreferenceFragment";
    private boolean mHavePrefs;
    private boolean mInitDone;
    RecyclerView mList;
    private PreferenceManager mPreferenceManager;
    private Runnable mSelectPreferenceRunnable;
    private final DividerDecoration mDividerDecoration = new DividerDecoration();
    private int mLayoutResId = R.layout.preference_list_fragment;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: androidx.preference.PreferenceFragmentCompat.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1) {
                PreferenceFragmentCompat.this.bindPreferences();
            }
        }
    };
    private final Runnable mRequestFocus = new Runnable() { // from class: androidx.preference.PreferenceFragmentCompat.2
        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = PreferenceFragmentCompat.this.mList;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    };

    /* loaded from: classes.dex */
    public class DividerDecoration extends RecyclerView.ItemDecoration {
        private boolean mAllowDividerAfterLastItem = true;
        private Drawable mDivider;
        private int mDividerHeight;

        public DividerDecoration() {
        }

        private boolean shouldDrawDividerBelow(View view, RecyclerView recyclerView) {
            RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(view);
            boolean z = false;
            if (!(childViewHolder instanceof PreferenceViewHolder) || !((PreferenceViewHolder) childViewHolder).isDividerAllowedBelow()) {
                return false;
            }
            boolean z2 = this.mAllowDividerAfterLastItem;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild < recyclerView.getChildCount() - 1) {
                RecyclerView.ViewHolder childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
                if ((childViewHolder2 instanceof PreferenceViewHolder) && ((PreferenceViewHolder) childViewHolder2).isDividerAllowedAbove()) {
                    z = true;
                }
                return z;
            }
            return z2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(@NonNull Rect rect, @NonNull View view, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if (shouldDrawDividerBelow(view, recyclerView)) {
                rect.bottom = this.mDividerHeight;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if (this.mDivider == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (shouldDrawDividerBelow(childAt, recyclerView)) {
                    int height = childAt.getHeight() + ((int) childAt.getY());
                    this.mDivider.setBounds(0, height, width, this.mDividerHeight + height);
                    this.mDivider.draw(canvas);
                }
            }
        }

        public void setAllowDividerAfterLastItem(boolean z) {
            this.mAllowDividerAfterLastItem = z;
        }

        public void setDivider(Drawable drawable) {
            if (drawable != null) {
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerHeight = 0;
            }
            this.mDivider = drawable;
            PreferenceFragmentCompat.this.mList.invalidateItemDecorations();
        }

        public void setDividerHeight(int i) {
            this.mDividerHeight = i;
            PreferenceFragmentCompat.this.mList.invalidateItemDecorations();
        }
    }

    /* loaded from: classes.dex */
    public interface OnPreferenceDisplayDialogCallback {
        boolean onPreferenceDisplayDialog(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull Preference preference);
    }

    /* loaded from: classes.dex */
    public interface OnPreferenceStartFragmentCallback {
        boolean onPreferenceStartFragment(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull Preference preference);
    }

    /* loaded from: classes.dex */
    public interface OnPreferenceStartScreenCallback {
        boolean onPreferenceStartScreen(@NonNull PreferenceFragmentCompat preferenceFragmentCompat, @NonNull PreferenceScreen preferenceScreen);
    }

    /* loaded from: classes.dex */
    public static class ScrollToPreferenceObserver extends RecyclerView.AdapterDataObserver {
        private final RecyclerView.Adapter<?> mAdapter;
        private final String mKey;
        private final RecyclerView mList;
        private final Preference mPreference;

        public ScrollToPreferenceObserver(RecyclerView.Adapter<?> adapter, RecyclerView recyclerView, Preference preference, String str) {
            this.mAdapter = adapter;
            this.mList = recyclerView;
            this.mPreference = preference;
            this.mKey = str;
        }

        private void scrollToPreference() {
            int preferenceAdapterPosition;
            this.mAdapter.unregisterAdapterDataObserver(this);
            Preference preference = this.mPreference;
            if (preference != null) {
                preferenceAdapterPosition = ((PreferenceGroup.PreferencePositionCallback) this.mAdapter).getPreferenceAdapterPosition(preference);
            } else {
                preferenceAdapterPosition = ((PreferenceGroup.PreferencePositionCallback) this.mAdapter).getPreferenceAdapterPosition(this.mKey);
            }
            if (preferenceAdapterPosition != -1) {
                this.mList.scrollToPosition(preferenceAdapterPosition);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) {
            scrollToPreference();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, Object obj) {
            scrollToPreference();
        }
    }

    private void postBindPreferences() {
        if (this.mHandler.hasMessages(1)) {
            return;
        }
        this.mHandler.obtainMessage(1).sendToTarget();
    }

    private void requirePreferenceManager() {
        if (this.mPreferenceManager != null) {
        } else {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    private void scrollToPreferenceInternal(@Nullable final Preference preference, @Nullable final String str) {
        Runnable runnable = new Runnable() { // from class: androidx.preference.PreferenceFragmentCompat.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                int preferenceAdapterPosition;
                RecyclerView.Adapter adapter = PreferenceFragmentCompat.this.mList.getAdapter();
                if (!(adapter instanceof PreferenceGroup.PreferencePositionCallback)) {
                    if (adapter == 0) {
                        return;
                    } else {
                        throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                    }
                }
                Preference preference2 = preference;
                if (preference2 != null) {
                    preferenceAdapterPosition = ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(preference2);
                } else {
                    preferenceAdapterPosition = ((PreferenceGroup.PreferencePositionCallback) adapter).getPreferenceAdapterPosition(str);
                }
                if (preferenceAdapterPosition != -1) {
                    PreferenceFragmentCompat.this.mList.scrollToPosition(preferenceAdapterPosition);
                } else {
                    adapter.registerAdapterDataObserver(new ScrollToPreferenceObserver(adapter, PreferenceFragmentCompat.this.mList, preference, str));
                }
            }
        };
        if (this.mList == null) {
            this.mSelectPreferenceRunnable = runnable;
        } else {
            runnable.run();
        }
    }

    private void unbindPreferences() {
        getListView().setAdapter(null);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.onDetached();
        }
        onUnbindPreferences();
    }

    public void addPreferencesFromResource(@XmlRes int i) {
        requirePreferenceManager();
        setPreferenceScreen(this.mPreferenceManager.inflateFromResource(requireContext(), i, getPreferenceScreen()));
    }

    public void bindPreferences() {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            getListView().setAdapter(onCreateAdapter(preferenceScreen));
            preferenceScreen.onAttached();
        }
        onBindPreferences();
    }

    @Override // androidx.preference.DialogPreference.TargetFragment
    @Nullable
    public <T extends Preference> T findPreference(@NonNull CharSequence charSequence) {
        PreferenceManager preferenceManager = this.mPreferenceManager;
        if (preferenceManager == null) {
            return null;
        }
        return (T) preferenceManager.findPreference(charSequence);
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public Fragment getCallbackFragment() {
        return null;
    }

    public final RecyclerView getListView() {
        return this.mList;
    }

    public PreferenceManager getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public PreferenceScreen getPreferenceScreen() {
        return this.mPreferenceManager.getPreferenceScreen();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onBindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        String str;
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        requireContext().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        requireContext().getTheme().applyStyle(i, false);
        PreferenceManager preferenceManager = new PreferenceManager(requireContext());
        this.mPreferenceManager = preferenceManager;
        preferenceManager.setOnNavigateToScreenListener(this);
        if (getArguments() != null) {
            str = getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        } else {
            str = null;
        }
        onCreatePreferences(bundle, str);
    }

    @NonNull
    public RecyclerView.Adapter onCreateAdapter(@NonNull PreferenceScreen preferenceScreen) {
        return new PreferenceGroupAdapter(preferenceScreen);
    }

    @NonNull
    public RecyclerView.LayoutManager onCreateLayoutManager() {
        return new LinearLayoutManager(requireContext());
    }

    public abstract void onCreatePreferences(@Nullable Bundle bundle, @Nullable String str);

    @NonNull
    public RecyclerView onCreateRecyclerView(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup, @Nullable Bundle bundle) {
        RecyclerView recyclerView;
        if (requireContext().getPackageManager().hasSystemFeature("android.hardware.type.automotive") && (recyclerView = (RecyclerView) viewGroup.findViewById(R.id.recycler_view)) != null) {
            return recyclerView;
        }
        RecyclerView recyclerView2 = (RecyclerView) layoutInflater.inflate(R.layout.preference_recyclerview, viewGroup, false);
        recyclerView2.setLayoutManager(onCreateLayoutManager());
        recyclerView2.setAccessibilityDelegateCompat(new PreferenceRecyclerViewAccessibilityDelegate(recyclerView2));
        return recyclerView2;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        TypedArray obtainStyledAttributes = requireContext().obtainStyledAttributes(null, R.styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.mLayoutResId = obtainStyledAttributes.getResourceId(R.styleable.PreferenceFragmentCompat_android_layout, this.mLayoutResId);
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z = obtainStyledAttributes.getBoolean(R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(requireContext());
        View inflate = cloneInContext.inflate(this.mLayoutResId, viewGroup, false);
        View findViewById = inflate.findViewById(android.R.id.list_container);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            RecyclerView onCreateRecyclerView = onCreateRecyclerView(cloneInContext, viewGroup2, bundle);
            if (onCreateRecyclerView != null) {
                this.mList = onCreateRecyclerView;
                onCreateRecyclerView.addItemDecoration(this.mDividerDecoration);
                setDivider(drawable);
                if (dimensionPixelSize != -1) {
                    setDividerHeight(dimensionPixelSize);
                }
                this.mDividerDecoration.setAllowDividerAfterLastItem(z);
                if (this.mList.getParent() == null) {
                    viewGroup2.addView(this.mList);
                }
                this.mHandler.post(this.mRequestFocus);
                return inflate;
            }
            throw new RuntimeException("Could not create RecyclerView");
        }
        throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.mHandler.removeCallbacks(this.mRequestFocus);
        this.mHandler.removeMessages(1);
        if (this.mHavePrefs) {
            unbindPreferences();
        }
        this.mList = null;
        super.onDestroyView();
    }

    @Override // androidx.preference.PreferenceManager.OnDisplayPreferenceDialogListener
    public void onDisplayPreferenceDialog(@NonNull Preference preference) {
        boolean z;
        DialogFragment newInstance;
        if (getCallbackFragment() instanceof OnPreferenceDisplayDialogCallback) {
            z = ((OnPreferenceDisplayDialogCallback) getCallbackFragment()).onPreferenceDisplayDialog(this, preference);
        } else {
            z = false;
        }
        for (Fragment fragment = this; !z && fragment != null; fragment = fragment.getParentFragment()) {
            if (fragment instanceof OnPreferenceDisplayDialogCallback) {
                z = ((OnPreferenceDisplayDialogCallback) fragment).onPreferenceDisplayDialog(this, preference);
            }
        }
        if (!z && (getContext() instanceof OnPreferenceDisplayDialogCallback)) {
            z = ((OnPreferenceDisplayDialogCallback) getContext()).onPreferenceDisplayDialog(this, preference);
        }
        if (!z && (getActivity() instanceof OnPreferenceDisplayDialogCallback)) {
            z = ((OnPreferenceDisplayDialogCallback) getActivity()).onPreferenceDisplayDialog(this, preference);
        }
        if (z || getParentFragmentManager().findFragmentByTag(DIALOG_FRAGMENT_TAG) != null) {
            return;
        }
        if (preference instanceof EditTextPreference) {
            newInstance = EditTextPreferenceDialogFragmentCompat.newInstance(preference.getKey());
        } else if (preference instanceof ListPreference) {
            newInstance = ListPreferenceDialogFragmentCompat.newInstance(preference.getKey());
        } else if (preference instanceof MultiSelectListPreference) {
            newInstance = MultiSelectListPreferenceDialogFragmentCompat.newInstance(preference.getKey());
        } else {
            throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
        }
        newInstance.setTargetFragment(this, 0);
        newInstance.show(getParentFragmentManager(), DIALOG_FRAGMENT_TAG);
    }

    @Override // androidx.preference.PreferenceManager.OnNavigateToScreenListener
    public void onNavigateToScreen(@NonNull PreferenceScreen preferenceScreen) {
        boolean z;
        if (getCallbackFragment() instanceof OnPreferenceStartScreenCallback) {
            z = ((OnPreferenceStartScreenCallback) getCallbackFragment()).onPreferenceStartScreen(this, preferenceScreen);
        } else {
            z = false;
        }
        for (Fragment fragment = this; !z && fragment != null; fragment = fragment.getParentFragment()) {
            if (fragment instanceof OnPreferenceStartScreenCallback) {
                z = ((OnPreferenceStartScreenCallback) fragment).onPreferenceStartScreen(this, preferenceScreen);
            }
        }
        if (!z && (getContext() instanceof OnPreferenceStartScreenCallback)) {
            z = ((OnPreferenceStartScreenCallback) getContext()).onPreferenceStartScreen(this, preferenceScreen);
        }
        if (!z && (getActivity() instanceof OnPreferenceStartScreenCallback)) {
            ((OnPreferenceStartScreenCallback) getActivity()).onPreferenceStartScreen(this, preferenceScreen);
        }
    }

    @Override // androidx.preference.PreferenceManager.OnPreferenceTreeClickListener
    public boolean onPreferenceTreeClick(@NonNull Preference preference) {
        boolean z;
        if (preference.getFragment() == null) {
            return false;
        }
        if (getCallbackFragment() instanceof OnPreferenceStartFragmentCallback) {
            z = ((OnPreferenceStartFragmentCallback) getCallbackFragment()).onPreferenceStartFragment(this, preference);
        } else {
            z = false;
        }
        for (Fragment fragment = this; !z && fragment != null; fragment = fragment.getParentFragment()) {
            if (fragment instanceof OnPreferenceStartFragmentCallback) {
                z = ((OnPreferenceStartFragmentCallback) fragment).onPreferenceStartFragment(this, preference);
            }
        }
        if (!z && (getContext() instanceof OnPreferenceStartFragmentCallback)) {
            z = ((OnPreferenceStartFragmentCallback) getContext()).onPreferenceStartFragment(this, preference);
        }
        if (!z && (getActivity() instanceof OnPreferenceStartFragmentCallback)) {
            z = ((OnPreferenceStartFragmentCallback) getActivity()).onPreferenceStartFragment(this, preference);
        }
        if (!z) {
            FragmentManager parentFragmentManager = getParentFragmentManager();
            Bundle extras = preference.getExtras();
            Fragment instantiate = parentFragmentManager.getFragmentFactory().instantiate(requireActivity().getClassLoader(), preference.getFragment());
            instantiate.setArguments(extras);
            instantiate.setTargetFragment(this, 0);
            parentFragmentManager.beginTransaction().replace(((View) requireView().getParent()).getId(), instantiate).addToBackStack(null).commit();
            return true;
        }
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.saveHierarchyState(bundle2);
            bundle.putBundle(PREFERENCES_TAG, bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.mPreferenceManager.setOnPreferenceTreeClickListener(this);
        this.mPreferenceManager.setOnDisplayPreferenceDialogListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.mPreferenceManager.setOnPreferenceTreeClickListener(null);
        this.mPreferenceManager.setOnDisplayPreferenceDialogListener(null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void onUnbindPreferences() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen preferenceScreen;
        super.onViewCreated(view, bundle);
        if (bundle != null && (bundle2 = bundle.getBundle(PREFERENCES_TAG)) != null && (preferenceScreen = getPreferenceScreen()) != null) {
            preferenceScreen.restoreHierarchyState(bundle2);
        }
        if (this.mHavePrefs) {
            bindPreferences();
            Runnable runnable = this.mSelectPreferenceRunnable;
            if (runnable != null) {
                runnable.run();
                this.mSelectPreferenceRunnable = null;
            }
        }
        this.mInitDone = true;
    }

    public void scrollToPreference(@NonNull String str) {
        scrollToPreferenceInternal(null, str);
    }

    public void setDivider(@Nullable Drawable drawable) {
        this.mDividerDecoration.setDivider(drawable);
    }

    public void setDividerHeight(int i) {
        this.mDividerDecoration.setDividerHeight(i);
    }

    public void setPreferenceScreen(PreferenceScreen preferenceScreen) {
        if (this.mPreferenceManager.setPreferences(preferenceScreen) && preferenceScreen != null) {
            onUnbindPreferences();
            this.mHavePrefs = true;
            if (this.mInitDone) {
                postBindPreferences();
            }
        }
    }

    public void setPreferencesFromResource(@XmlRes int i, @Nullable String str) {
        requirePreferenceManager();
        PreferenceScreen inflateFromResource = this.mPreferenceManager.inflateFromResource(requireContext(), i, null);
        Object obj = inflateFromResource;
        if (str != null) {
            Object findPreference = inflateFromResource.findPreference(str);
            boolean z = findPreference instanceof PreferenceScreen;
            obj = findPreference;
            if (!z) {
                throw new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("Preference object with key ", str, " is not a PreferenceScreen"));
            }
        }
        setPreferenceScreen((PreferenceScreen) obj);
    }

    public void scrollToPreference(@NonNull Preference preference) {
        scrollToPreferenceInternal(preference, null);
    }
}
