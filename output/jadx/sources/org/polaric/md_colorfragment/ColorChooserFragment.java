package org.polaric.md_colorfragment;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.DialogFragment;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.tknetwork.tunnel.config.SettingsConstants;
import config.ConfigUtil;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class ColorChooserFragment extends DialogFragment implements SettingsConstants, View.OnClickListener, View.OnLongClickListener {
    private Activity activity;
    private CardView apply;
    private LinearLayout back;
    private SharedPreferences.Editor editor;
    private ColorFragmentCallback mCallback;
    private int mCircleSize;

    @Nullable
    private int[][] mColorsSub;

    @NonNull
    private int[] mColorsTop;
    private ConfigUtil mConfig;
    private GridView mGrid;
    private int mPreselect;
    private SharedPreferences myPrefs;
    private View root;
    private boolean mSetPreselectionColor = false;
    private int mSubIndex = -1;
    private int mTopIndex = -1;
    private boolean mInSub = false;
    private String name = "ColorFragment";

    /* loaded from: classes3.dex */
    public interface ColorFragmentCallback {
        void onColorSelection(@ColorInt int i);

        void onFragmentDone(@NonNull String str);
    }

    /* loaded from: classes3.dex */
    public class ColorGridAdapter extends BaseAdapter {
        Activity activity;

        public ColorGridAdapter(Activity activity) {
            this.activity = activity;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (ColorChooserFragment.this.isInSub()) {
                return ColorChooserFragment.this.mColorsSub[ColorChooserFragment.this.topIndex()].length;
            }
            return ColorChooserFragment.this.mColorsTop.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (ColorChooserFragment.this.isInSub()) {
                return Integer.valueOf(ColorChooserFragment.this.mColorsSub[ColorChooserFragment.this.topIndex()][i]);
            }
            return Integer.valueOf(ColorChooserFragment.this.mColorsTop[i]);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        @SuppressLint({"DefaultLocale"})
        public View getView(int i, View view, ViewGroup viewGroup) {
            int i2;
            boolean z;
            boolean z2;
            if (view == null) {
                view = new CircleView(this.activity);
                view.setLayoutParams(new AbsListView.LayoutParams(ColorChooserFragment.this.mCircleSize, ColorChooserFragment.this.mCircleSize));
            }
            CircleView circleView = (CircleView) view;
            if (ColorChooserFragment.this.isInSub()) {
                i2 = ColorChooserFragment.this.mColorsSub[ColorChooserFragment.this.topIndex()][i];
            } else {
                i2 = ColorChooserFragment.this.mColorsTop[i];
            }
            circleView.setBackgroundColor(i2);
            if (ColorChooserFragment.this.isInSub()) {
                if (ColorChooserFragment.this.subIndex() == i) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                circleView.setSelected(z2);
            } else {
                if (ColorChooserFragment.this.topIndex() == i) {
                    z = true;
                } else {
                    z = false;
                }
                circleView.setSelected(z);
            }
            circleView.setTag(String.format("%d:%d", Integer.valueOf(i), Integer.valueOf(i2)));
            circleView.setOnClickListener(ColorChooserFragment.this);
            circleView.setOnLongClickListener(ColorChooserFragment.this);
            return view;
        }
    }

    private void findSubIndexForColor(int i, int i2) {
        int[][] iArr = this.mColorsSub;
        if (iArr != null && iArr.length - 1 >= i) {
            int[] iArr2 = iArr[i];
            for (int i3 = 0; i3 < iArr2.length; i3++) {
                if (iArr2[i3] == i2) {
                    subIndex(i3);
                    return;
                }
            }
        }
    }

    private void generateColors() {
        this.mColorsTop = ColorPalette.PRIMARY_COLORS;
        this.mColorsSub = ColorPalette.PRIMARY_COLORS_SUB;
    }

    private void invalidate() {
        if (this.mGrid.getAdapter() == null) {
            this.mGrid.setAdapter((ListAdapter) new ColorGridAdapter(this.activity));
            this.mGrid.setSelector(ResourcesCompat.getDrawable(this.activity.getResources(), R.color.background_color, null));
        } else {
            ((BaseAdapter) this.mGrid.getAdapter()).notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInSub() {
        return this.mInSub;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int subIndex() {
        if (this.mColorsSub == null) {
            return -1;
        }
        return this.mSubIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int topIndex() {
        return this.mTopIndex;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        this.activity = activity;
        super.onAttach(activity);
        if (activity instanceof ColorFragmentCallback) {
            this.mCallback = (ColorFragmentCallback) activity;
            return;
        }
        throw new IllegalStateException("ColorChooserFragment needs to be created from an Activity implementing ColorFragmentCallback.");
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        this.mCallback.onFragmentDone("cancel");
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getTag() != null) {
            String[] split = ((String) view.getTag()).split(":");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            if (isInSub()) {
                subIndex(parseInt);
            } else {
                topIndex(parseInt);
                int[][] iArr = this.mColorsSub;
                if (iArr != null && parseInt < iArr.length) {
                    isInSub(true);
                }
            }
            this.mCallback.onColorSelection(parseInt2);
        }
        if (view.getId() == R.id.apply) {
            this.mCallback.onFragmentDone("Apply");
            getDialog().dismiss();
        } else if (view.getId() == R.id.back) {
            if (!isInSub()) {
                this.mCallback.onFragmentDone("cancel");
                getDialog().dismiss();
            }
            isInSub(false);
        }
        invalidate();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.activity = getActivity();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext());
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        int i;
        this.mConfig = ConfigUtil.getInstance(this.activity);
        this.root = LayoutInflater.from(getActivity()).inflate(R.layout.colorchooser, (ViewGroup) null);
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        this.apply = (CardView) this.root.findViewById(R.id.apply);
        this.back = (LinearLayout) this.root.findViewById(R.id.back);
        ((TextView) this.root.findViewById(R.id.back_tv)).setTextColor(this.myPrefs.getInt("_APP_COLORS", Color.parseColor("#008080")));
        this.root.findViewById(R.id.color_bg).setBackgroundColor(this.myPrefs.getInt("_APP_COLORS", Color.parseColor("#008080")));
        this.apply.setCardBackgroundColor(this.myPrefs.getInt("_APP_COLORS", Color.parseColor("#008080")));
        this.apply.setOnClickListener(this);
        this.back.setOnClickListener(this);
        generateColors();
        if (bundle == null && this.mSetPreselectionColor && (i = this.mPreselect) != 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.mColorsTop;
                if (i2 >= iArr.length) {
                    break;
                }
                if (iArr[i2] == i) {
                    topIndex(i2);
                    if (this.mColorsSub != null) {
                        findSubIndexForColor(i2, i);
                    } else {
                        subIndex(5);
                    }
                } else {
                    if (this.mColorsSub != null) {
                        int i3 = 0;
                        while (true) {
                            int[] iArr2 = this.mColorsSub[i2];
                            if (i3 >= iArr2.length) {
                                break;
                            }
                            if (iArr2[i3] == i) {
                                topIndex(i2);
                                subIndex(i3);
                                break;
                            }
                            i3++;
                        }
                    }
                    i2++;
                }
            }
        }
        this.mCircleSize = 56;
        this.mGrid = (GridView) this.root.findViewById(R.id.grid);
        invalidate();
        builder.setView(this.root);
        builder.setCancelable(false);
        return builder.create();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.activity = getActivity();
        Dialog dialog = getDialog();
        Objects.requireNonNull(dialog);
        dialog.setCanceledOnTouchOutside(false);
        return super.onCreateView(layoutInflater, viewGroup, bundle);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view.getTag() != null) {
            ((CircleView) view).showHint(Integer.parseInt(((String) view.getTag()).split(":")[1]));
            return true;
        }
        return false;
    }

    @Override // com.tknetwork.tunnel.config.SettingsConstants
    public boolean onPreferenceChange(Preference preference, Object obj) {
        return false;
    }

    @NonNull
    public ColorChooserFragment preselect(@ColorInt int i) {
        this.mPreselect = i;
        this.mSetPreselectionColor = true;
        return this;
    }

    @NonNull
    public ColorChooserFragment setName(String str) {
        this.name = str;
        return this;
    }

    private void isInSub(boolean z) {
        this.mInSub = z;
    }

    public void topIndex(int i) {
        if (topIndex() != i && i > -1) {
            findSubIndexForColor(i, this.mColorsTop[i]);
        }
        this.mTopIndex = i;
    }

    public void subIndex(int i) {
        if (this.mColorsSub == null) {
            return;
        }
        this.mSubIndex = i;
    }
}
