package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class GooglePlayServicesUtil extends GooglePlayServicesUtilLight {

    @NonNull
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @NonNull
    public static final String GMS_ERROR_DIALOG = new ObfuscatedString(new long[]{-7799293207651251032L, -5926514035785388518L, -8608357100131696993L, -2697947834763494274L, 7015731385802371779L}).toString();

    @NonNull
    public static final String GOOGLE_PLAY_STORE_PACKAGE = new ObfuscatedString(new long[]{3458046182266098045L, -2635686280567874073L, 8377916415886471255L, -830722527176443477L}).toString();

    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    private GooglePlayServicesUtil() {
    }

    @Nullable
    @Deprecated
    public static Dialog getErrorDialog(int i, @NonNull Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @NonNull
    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, @NonNull Context context, int i2) {
        return GooglePlayServicesUtilLight.getErrorPendingIntent(i, context, i2);
    }

    @NonNull
    @VisibleForTesting
    @Deprecated
    public static String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    @NonNull
    public static Context getRemoteContext(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteContext(context);
    }

    @NonNull
    public static Resources getRemoteResource(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getRemoteResource(context);
    }

    @HideFirstParty
    @Deprecated
    public static int isGooglePlayServicesAvailable(@NonNull Context context) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, @NonNull Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static void showErrorNotification(int i, @NonNull Context context) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (!GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i) && !GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i)) {
            googleApiAvailability.showErrorNotification(context, i);
        } else {
            googleApiAvailability.zaf(context);
        }
    }

    @Nullable
    @Deprecated
    public static Dialog getErrorDialog(int i, @NonNull Activity activity, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        return GoogleApiAvailability.getInstance().getErrorDialog(activity, i, i2, onCancelListener);
    }

    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@NonNull Context context, int i) {
        return GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, @NonNull Activity activity, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, @NonNull Activity activity, @Nullable Fragment fragment, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(activity, i)) {
            i = 18;
        }
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        if (fragment == null) {
            return googleApiAvailability.showErrorDialogFragment(activity, i, i2, onCancelListener);
        }
        Dialog zaa = googleApiAvailability.zaa(activity, i, zag.zac(fragment, GoogleApiAvailability.getInstance().getErrorResolutionIntent(activity, i, new ObfuscatedString(new long[]{-8423934873901684922L, 6598956080860801588L}).toString()), i2), onCancelListener);
        if (zaa == null) {
            return false;
        }
        googleApiAvailability.zad(activity, zaa, new ObfuscatedString(new long[]{7983618535902733146L, 1312367944298409563L, 6745173830441741153L, -6801326607860823170L, -2509334045133243318L}).toString(), onCancelListener);
        return true;
    }
}
