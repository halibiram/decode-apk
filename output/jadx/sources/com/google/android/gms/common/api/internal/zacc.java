package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class zacc extends zap {
    private TaskCompletionSource<Void> zad;

    private zacc(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment, GoogleApiAvailability.getInstance());
        this.zad = new TaskCompletionSource<>();
        this.mLifecycleFragment.addCallback(new ObfuscatedString(new long[]{3774274175031970749L, -3766310655229636476L, 3531549588939938479L, -9150391465954879447L}).toString(), this);
    }

    public static zacc zaa(@NonNull Activity activity) {
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        zacc zaccVar = (zacc) fragment.getCallbackOrNull(new ObfuscatedString(new long[]{-2309901124401131954L, -3314815421688631345L, -4991845280815561110L, -4185938320014511421L}).toString(), zacc.class);
        if (zaccVar != null) {
            if (zaccVar.zad.getTask().isComplete()) {
                zaccVar.zad = new TaskCompletionSource<>();
            }
            return zaccVar;
        }
        return new zacc(fragment);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onDestroy() {
        super.onDestroy();
        this.zad.trySetException(new CancellationException(new ObfuscatedString(new long[]{-5665236331090761725L, -7694831907048265116L, -5115733839101331869L, -2131642410662859815L, -6696537242965938138L, 3280484546751811750L, 5685705032810544604L, -4065591703107098491L, -8279672380411357941L, 5986193886941441472L, -6235238246325143824L}).toString()));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zab(ConnectionResult connectionResult, int i) {
        String errorMessage = connectionResult.getErrorMessage();
        if (errorMessage == null) {
            errorMessage = new ObfuscatedString(new long[]{3250083154039675482L, 4172347502170658162L, -9126301394965558745L, -2534534143885475300L, -6137327462100492208L, 267775851188281902L}).toString();
        }
        this.zad.setException(new ApiException(new Status(connectionResult, errorMessage, connectionResult.getErrorCode())));
    }

    @Override // com.google.android.gms.common.api.internal.zap
    public final void zac() {
        Activity lifecycleActivity = this.mLifecycleFragment.getLifecycleActivity();
        if (lifecycleActivity == null) {
            this.zad.trySetException(new ApiException(new Status(8)));
            return;
        }
        int isGooglePlayServicesAvailable = this.zac.isGooglePlayServicesAvailable(lifecycleActivity);
        if (isGooglePlayServicesAvailable == 0) {
            this.zad.trySetResult(null);
        } else if (!this.zad.getTask().isComplete()) {
            zah(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        }
    }

    public final Task<Void> zad() {
        return this.zad.getTask();
    }
}
