package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentDialog;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.view.ActionMode;
import androidx.core.view.KeyEventDispatcher;

/* loaded from: classes.dex */
public class AppCompatDialog extends ComponentDialog implements AppCompatCallback {
    private AppCompatDelegate mDelegate;
    private final KeyEventDispatcher.Component mKeyDispatcher;

    public AppCompatDialog(@NonNull Context context) {
        this(context, 0);
    }

    private static int getThemeResId(Context context, int i) {
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            return typedValue.resourceId;
        }
        return i;
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void addContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().addContentView(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().onDestroy();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    @Nullable
    public <T extends View> T findViewById(@IdRes int i) {
        return (T) getDelegate().findViewById(i);
    }

    @NonNull
    public AppCompatDelegate getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AppCompatDelegate.create(this, this);
        }
        return this.mDelegate;
    }

    public ActionBar getSupportActionBar() {
        return getDelegate().getSupportActionBar();
    }

    @Override // android.app.Dialog
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void invalidateOptionsMenu() {
        getDelegate().invalidateOptionsMenu();
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        getDelegate().installViewFactory();
        super.onCreate(bundle);
        getDelegate().onCreate(bundle);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void onStop() {
        super.onStop();
        getDelegate().onStop();
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    @Nullable
    public ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@LayoutRes int i) {
        initializeViewTreeOwners();
        getDelegate().setContentView(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().setTitle(charSequence);
    }

    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().requestWindowFeature(i);
    }

    public AppCompatDialog(@NonNull Context context, int i) {
        super(context, getThemeResId(context, i));
        this.mKeyDispatcher = new KeyEventDispatcher.Component() { // from class: 뎽뒬땣뒝듌되되돸땸딽듻돠땜딎딀땋돼돼땬돷땹됐뒝돰딨딨땡딤땠듔뎡돰땸땁득땋땁딄땜땡땝둑땤듨뎹땦뒛돛땡듽돵됩딃딨딃딸둘땨뒛돷땨두땸듨딎둔딨둘뒛땵땬땍딐뒈둣뎹듸땭뒻든땹듌땟든둡땻땃든뎠땠딟딻돨뎻땣둑뒘딟땍뒋돤땝됴돶딟뒐뒤땡된듔땔돰뎰뒬둬듨땤뒝둥듌땋딹돷딠뎠듔딜뒘딽땍
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return AppCompatDialog.this.superDispatchKeyEvent(keyEvent);
            }
        };
        AppCompatDelegate delegate = getDelegate();
        delegate.setTheme(getThemeResId(context, i));
        delegate.onCreate(null);
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@NonNull View view) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        getDelegate().setTitle(getContext().getString(i));
    }

    @Override // androidx.activity.ComponentDialog, android.app.Dialog
    public void setContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().setContentView(view, layoutParams);
    }

    public AppCompatDialog(@NonNull Context context, boolean z, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context);
        this.mKeyDispatcher = new KeyEventDispatcher.Component() { // from class: 뎽뒬땣뒝듌되되돸땸딽듻돠땜딎딀땋돼돼땬돷땹됐뒝돰딨딨땡딤땠듔뎡돰땸땁득땋땁딄땜땡땝둑땤듨뎹땦뒛돛땡듽돵됩딃딨딃딸둘땨뒛돷땨두땸듨딎둔딨둘뒛땵땬땍딐뒈둣뎹듸땭뒻든땹듌땟든둡땻땃든뎠땠딟딻돨뎻땣둑뒘딟땍뒋돤땝됴돶딟뒐뒤땡된듔땔돰뎰뒬둬듨땤뒝둥듌땋딹돷딠뎠듔딜뒘딽땍
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return AppCompatDialog.this.superDispatchKeyEvent(keyEvent);
            }
        };
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }
}
