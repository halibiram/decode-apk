package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class GoogleApiAvailabilityLight {

    @NonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = new ObfuscatedString(new long[]{2265519198233620197L, 8958679033535235647L, -1989535333295479175L, -5948381250967485802L}).toString();

    @NonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_STORE_PACKAGE = new ObfuscatedString(new long[]{-2364139387781346338L, -4808502492997828380L, 2366125382697515718L, 6389105647163779096L}).toString();

    @KeepForSdk
    static final String TRACKING_SOURCE_DIALOG = new ObfuscatedString(new long[]{-1443519539149220403L, -6847867031884711709L}).toString();

    @KeepForSdk
    static final String TRACKING_SOURCE_NOTIFICATION = new ObfuscatedString(new long[]{-2322084635807450871L, 5282252864724067475L}).toString();

    @KeepForSdk
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    private static final GoogleApiAvailabilityLight zza = new GoogleApiAvailabilityLight();

    @KeepForSdk
    public GoogleApiAvailabilityLight() {
    }

    @NonNull
    @ShowFirstParty
    @KeepForSdk
    public static GoogleApiAvailabilityLight getInstance() {
        return zza;
    }

    @KeepForSdk
    public void cancelAvailabilityErrorNotifications(@NonNull Context context) {
        GooglePlayServicesUtilLight.cancelAvailabilityErrorNotifications(context);
    }

    @ShowFirstParty
    @KeepForSdk
    public int getApkVersion(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getApkVersion(context);
    }

    @ShowFirstParty
    @KeepForSdk
    public int getClientVersion(@NonNull Context context) {
        return GooglePlayServicesUtilLight.getClientVersion(context);
    }

    @Deprecated
    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public Intent getErrorResolutionIntent(int i) {
        return getErrorResolutionIntent(null, i, null);
    }

    @Nullable
    @KeepForSdk
    public PendingIntent getErrorResolutionPendingIntent(@NonNull Context context, int i, int i2) {
        return getErrorResolutionPendingIntent(context, i, i2, null);
    }

    @NonNull
    @KeepForSdk
    public String getErrorString(int i) {
        return GooglePlayServicesUtilLight.getErrorString(i);
    }

    @ResultIgnorabilityUnspecified
    @HideFirstParty
    @KeepForSdk
    public int isGooglePlayServicesAvailable(@NonNull Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isPlayServicesPossiblyUpdating(@NonNull Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, i);
    }

    @ShowFirstParty
    @KeepForSdk
    public boolean isPlayStorePossiblyUpdating(@NonNull Context context, int i) {
        return GooglePlayServicesUtilLight.isPlayStorePossiblyUpdating(context, i);
    }

    @KeepForSdk
    public boolean isUninstalledAppPossiblyUpdating(@NonNull Context context, @NonNull String str) {
        return GooglePlayServicesUtilLight.zza(context, str);
    }

    @KeepForSdk
    public boolean isUserResolvableError(int i) {
        return GooglePlayServicesUtilLight.isUserRecoverableError(i);
    }

    @KeepForSdk
    public void verifyGooglePlayServicesIsAvailable(@NonNull Context context, int i) {
        GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context, i);
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public Intent getErrorResolutionIntent(@Nullable Context context, int i, @Nullable String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            Uri fromParts = Uri.fromParts(new ObfuscatedString(new long[]{2303290983581539570L, -6271737442883779984L}).toString(), new ObfuscatedString(new long[]{7171311344350146817L, 3764749104362544519L, 2003334509642956676L, -3680957207342054104L}).toString(), null);
            Intent intent = new Intent(new ObfuscatedString(new long[]{-6183646223162489895L, -7606977381658250943L, 6062742879429242076L, 6844759832936579117L, -5010996809049057028L, 4508952362625388320L, 3438351227097548658L}).toString());
            intent.setData(fromParts);
            return intent;
        }
        if (context != null && DeviceProperties.isWearableWithoutPlayStore(context)) {
            Intent intent2 = new Intent(new ObfuscatedString(new long[]{4842909834947121171L, 4171778961248296174L, 7043995471091148477L, 1311618698783824150L, -2797889958488932305L, -6407363760049687281L, 626739027918855092L, -4723226282929715741L, 6954383490362875496L}).toString());
            intent2.setPackage(new ObfuscatedString(new long[]{-1927380582448111097L, -8322413872902525533L, -4549457538631007199L, -8610329823577521131L, 7733378451154566730L}).toString());
            return intent2;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8522413431577663136L, -4723742256315550799L}).toString());
        sb.append(GOOGLE_PLAY_SERVICES_VERSION_CODE);
        sb.append(new ObfuscatedString(new long[]{1603999951753937749L, -3238175835897144555L}).toString());
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append(new ObfuscatedString(new long[]{-3184799120192493899L, 6970315374913857681L}).toString());
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append(new ObfuscatedString(new long[]{-6051169887517586608L, 4794417268614747291L}).toString());
        if (context != null) {
            try {
                sb.append(Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String sb2 = sb.toString();
        Intent intent3 = new Intent(new ObfuscatedString(new long[]{9152434088603854566L, -2700640249135584656L, 7869053837963022861L, -675814111699648597L, -8060372354389483887L}).toString());
        Uri.Builder appendQueryParameter = Uri.parse(new ObfuscatedString(new long[]{-2239827121303694376L, 813184480012288760L, -8274018297617463248L}).toString()).buildUpon().appendQueryParameter(new ObfuscatedString(new long[]{7337715303851662563L, -1073532536171480822L}).toString(), new ObfuscatedString(new long[]{-3359173259736545369L, -6730476016026548457L, 3237117471858581966L, -997540534995790112L}).toString());
        if (!TextUtils.isEmpty(sb2)) {
            appendQueryParameter.appendQueryParameter(new ObfuscatedString(new long[]{2600256952943578327L, 2604503798106972206L, 6909912086177627834L}).toString(), sb2);
        }
        intent3.setData(appendQueryParameter.build());
        intent3.setPackage(new ObfuscatedString(new long[]{-5569563627014651047L, 4710695709008810989L, 8860541036291380246L, 5840419369800768374L}).toString());
        intent3.addFlags(524288);
        return intent3;
    }

    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public PendingIntent getErrorResolutionPendingIntent(@NonNull Context context, int i, int i2, @Nullable String str) {
        Intent errorResolutionIntent = getErrorResolutionIntent(context, i, str);
        if (errorResolutionIntent == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, errorResolutionIntent, com.google.android.gms.internal.common.zzd.zza | 134217728);
    }

    @KeepForSdk
    public int isGooglePlayServicesAvailable(@NonNull Context context, int i) {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtilLight.isGooglePlayServicesAvailable(context, i);
        if (GooglePlayServicesUtilLight.isPlayServicesPossiblyUpdating(context, isGooglePlayServicesAvailable)) {
            return 18;
        }
        return isGooglePlayServicesAvailable;
    }
}
