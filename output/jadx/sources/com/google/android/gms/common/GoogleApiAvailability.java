package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import com.google.android.gms.common.api.internal.zabw;
import com.google.android.gms.common.api.internal.zabx;
import com.google.android.gms.common.api.internal.zacc;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zag;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.InstantApps;
import com.google.android.gms.internal.base.zal;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0594x7175b0df;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes2.dex */
public class GoogleApiAvailability extends GoogleApiAvailabilityLight {

    @GuardedBy("mLock")
    private String zac;

    @NonNull
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = new ObfuscatedString(new long[]{5163965590530291765L, 6410913802541339257L, -5393071523537583186L, 232321713179373891L}).toString();
    private static final Object zaa = new Object();
    private static final GoogleApiAvailability zab = new GoogleApiAvailability();
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = GoogleApiAvailabilityLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    @NonNull
    public static GoogleApiAvailability getInstance() {
        return zab;
    }

    @NonNull
    public static final Task<Map<ApiKey<?>, String>> zai(@NonNull HasApiKey<?> hasApiKey, @NonNull HasApiKey<?>... hasApiKeyArr) {
        Preconditions.checkNotNull(hasApiKey, new ObfuscatedString(new long[]{-3925203713866964878L, -114949831580966422L, -5881551001230699735L, -7882709369912282522L, -4401785513614998689L}).toString());
        for (HasApiKey<?> hasApiKey2 : hasApiKeyArr) {
            Preconditions.checkNotNull(hasApiKey2, new ObfuscatedString(new long[]{-6033345224508531557L, 880865882261255613L, -2236203276073622932L, -7723981916200635987L, 5396572243287185516L}).toString());
        }
        ArrayList arrayList = new ArrayList(hasApiKeyArr.length + 1);
        arrayList.add(hasApiKey);
        arrayList.addAll(Arrays.asList(hasApiKeyArr));
        return GoogleApiManager.zal().zao(arrayList);
    }

    @NonNull
    public Task<Void> checkApiAvailability(@NonNull GoogleApi<?> googleApi, @NonNull GoogleApi<?>... googleApiArr) {
        return zai(googleApi, googleApiArr).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.common.zab
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                int i = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                return Tasks.forResult(null);
            }
        });
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public int getClientVersion(@NonNull Context context) {
        return super.getClientVersion(context);
    }

    @Nullable
    public Dialog getErrorDialog(@NonNull Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, (DialogInterface.OnCancelListener) null);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @Nullable
    @ShowFirstParty
    @KeepForSdk
    public Intent getErrorResolutionIntent(@Nullable Context context, int i, @Nullable String str) {
        return super.getErrorResolutionIntent(context, i, str);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(@NonNull Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @NonNull
    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @HideFirstParty
    public int isGooglePlayServicesAvailable(@NonNull Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    @NonNull
    @MainThread
    public Task<Void> makeGooglePlayServicesAvailable(@NonNull Activity activity) {
        int i = GOOGLE_PLAY_SERVICES_VERSION_CODE;
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-345808538694606748L, -2879984362708672596L, -5338070301979841335L, 3547443694834128778L, 8047937662776214162L, -9037537012025685514L, 1419573070643898081L, -4137096645024630640L, -740917271373209349L, -6399405309140747049L}).toString());
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity, i);
        if (isGooglePlayServicesAvailable == 0) {
            return Tasks.forResult(null);
        }
        zacc zaa2 = zacc.zaa(activity);
        zaa2.zah(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        return zaa2.zad();
    }

    @TargetApi(26)
    public void setDefaultNotificationChannelId(@NonNull Context context, @NonNull String str) {
        NotificationChannel notificationChannel;
        if (PlatformVersion.isAtLeastO()) {
            notificationChannel = ((NotificationManager) Preconditions.checkNotNull(context.getSystemService(new ObfuscatedString(new long[]{-2284337931285006543L, -7170474673436301849L, 7080689546076859557L}).toString()))).getNotificationChannel(str);
            Preconditions.checkNotNull(notificationChannel);
        }
        synchronized (zaa) {
            this.zac = str;
        }
    }

    public boolean showErrorDialogFragment(@NonNull Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public void showErrorNotification(@NonNull Context context, int i) {
        zae(context, i, null, getErrorResolutionPendingIntent(context, i, 0, new ObfuscatedString(new long[]{5657892455477922435L, -5751381158848035710L}).toString()));
    }

    @Nullable
    public final Dialog zaa(@NonNull Context context, int i, zag zagVar, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.alertDialogTheme, typedValue, true);
        if (new ObfuscatedString(new long[]{2560689308736388621L, -650586833909738849L, 5751863769696214748L, -6576418603596294993L}).toString().equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(com.google.android.gms.common.internal.zac.zad(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String zac = com.google.android.gms.common.internal.zac.zac(context, i);
        if (zac != null) {
            builder.setPositiveButton(zac, zagVar);
        }
        String zag = com.google.android.gms.common.internal.zac.zag(context, i);
        if (zag != null) {
            builder.setTitle(zag);
        }
        String.format(new ObfuscatedString(new long[]{4207672734385449915L, 1517529186485100183L, 1857059021310161508L, 8619422723653593698L, 2953825987994071855L, -4665502417376876555L, -1962675760406215360L, -6542398518332211879L, -5187175516864543518L, -6211447959660886514L, -3787601030388402450L}).toString(), Integer.valueOf(i));
        new IllegalArgumentException();
        new ObfuscatedString(new long[]{8827900705179205227L, -8082534346881129841L, -5169099383735074012L, -3886986091588143968L}).toString();
        return builder.create();
    }

    @NonNull
    public final Dialog zab(@NonNull Activity activity, @NonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, android.R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(com.google.android.gms.common.internal.zac.zad(activity, 18));
        builder.setPositiveButton(new ObfuscatedString(new long[]{2985126722838978456L}).toString(), (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        zad(activity, create, new ObfuscatedString(new long[]{-1837316900412653663L, 744260192514612021L, -4385582437267819392L, -1988206282524420900L, 4424402709242206073L}).toString(), onCancelListener);
        return create;
    }

    @Nullable
    public final zabx zac(Context context, zabw zabwVar) {
        IntentFilter intentFilter = new IntentFilter(new ObfuscatedString(new long[]{1303221887469610394L, -3343410320822784577L, 1450757443146326297L, 543101945100673195L, -3315540609231298256L, 3380858254825545408L}).toString());
        intentFilter.addDataScheme(new ObfuscatedString(new long[]{-9117179244060966332L, 4420953657770287170L}).toString());
        zabx zabxVar = new zabx(zabwVar);
        context.registerReceiver(zabxVar, intentFilter);
        zabxVar.zaa(context);
        if (!isUninstalledAppPossiblyUpdating(context, new ObfuscatedString(new long[]{-5489295667463141919L, 3501327094343124708L, -3495063584414550052L, 3032794454507780582L}).toString())) {
            zabwVar.zaa();
            zabxVar.zab();
            return null;
        }
        return zabxVar;
    }

    public final void zad(Activity activity, Dialog dialog, String str, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    public final void zae(Context context, int i, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        int i2;
        String str2;
        NotificationChannel notificationChannel;
        CharSequence name;
        String.format(new ObfuscatedString(new long[]{-3128511635813728943L, -985155282205911895L, 8534617796880475571L, -8172249264249865719L, -7316123510494462889L, 517249474078850051L, -8838159554580494257L, -2702035022074031961L}).toString(), Integer.valueOf(i), null);
        new IllegalArgumentException();
        new ObfuscatedString(new long[]{-5027139819528982410L, 2614373570165215239L, 474494368557488099L, 1158802233730899713L}).toString();
        if (i == 18) {
            zaf(context);
            return;
        }
        if (pendingIntent == null) {
            if (i == 6) {
                new ObfuscatedString(new long[]{6960154158852115395L, 2881157239965203306L, -6468593437381382744L, 4400828146012967566L}).toString();
                new ObfuscatedString(new long[]{-6138319029418292670L, 2648158195122269389L, 3077483346825080387L, 9213890069691485368L, 4756720740106043134L, -8592157614774590266L, -2256449468528021885L, 777667640221386799L, -6579530580675519489L, 7150554852435421272L, -7895205228741308411L, 6953262583306616911L, 939633887744715808L, 4650943582687217914L, 3984315976353879492L, -8382462792786987693L, 1527239750618187173L, -8174388808539268942L, 1997962950249815334L, 1933284844781778096L}).toString();
                return;
            }
            return;
        }
        String zaf = com.google.android.gms.common.internal.zac.zaf(context, i);
        String zae = com.google.android.gms.common.internal.zac.zae(context, i);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) Preconditions.checkNotNull(context.getSystemService(new ObfuscatedString(new long[]{106389525223174552L, -620850628489085316L, 5766483253012391229L}).toString()));
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(zaf).setStyle(new NotificationCompat.BigTextStyle().bigText(zae));
        if (DeviceProperties.isWearable(context)) {
            Preconditions.checkState(PlatformVersion.isAtLeastKitKatWatch());
            style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
            if (DeviceProperties.isWearableWithoutPlayStore(context)) {
                style.addAction(com.google.android.gms.base.R.drawable.common_full_open_on_phone, resources.getString(com.google.android.gms.base.R.string.common_open_on_phone), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(android.R.drawable.stat_sys_warning).setTicker(resources.getString(com.google.android.gms.base.R.string.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(zae);
        }
        if (PlatformVersion.isAtLeastO()) {
            Preconditions.checkState(PlatformVersion.isAtLeastO());
            synchronized (zaa) {
                str2 = this.zac;
            }
            if (str2 == null) {
                str2 = new ObfuscatedString(new long[]{5067369440899919792L, -9170696848471451996L, -258328287457683412L, 7494336345654294409L, -2807474663140025571L, 3801332845252082639L}).toString();
                notificationChannel = notificationManager.getNotificationChannel(str2);
                String zab2 = com.google.android.gms.common.internal.zac.zab(context);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(AbstractC0594x7175b0df.m3170x34271fae(str2, zab2));
                } else {
                    name = notificationChannel.getName();
                    if (!zab2.contentEquals(name)) {
                        notificationChannel.setName(zab2);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                }
            }
            style.setChannelId(str2);
        }
        Notification build = style.build();
        if (i != 1 && i != 2 && i != 3) {
            i2 = 39789;
        } else {
            GooglePlayServicesUtilLight.sCanceledAvailabilityNotification.set(false);
            i2 = 10436;
        }
        notificationManager.notify(i2, build);
    }

    public final void zaf(Context context) {
        new zac(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    public final boolean zag(@NonNull Activity activity, @NonNull LifecycleFragment lifecycleFragment, int i, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog zaa2 = zaa(activity, i, zag.zad(lifecycleFragment, getErrorResolutionIntent(activity, i, new ObfuscatedString(new long[]{-6199046848490942469L, 818550692509069852L}).toString()), 2), onCancelListener);
        if (zaa2 == null) {
            return false;
        }
        zad(activity, zaa2, new ObfuscatedString(new long[]{-6707420627849057357L, -7528070259477126624L, 7142582722215820869L, -4275941126966613843L, -6291657856118080743L}).toString(), onCancelListener);
        return true;
    }

    public final boolean zah(@NonNull Context context, @NonNull ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent;
        if (InstantApps.isInstantApp(context) || (errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult)) == null) {
            return false;
        }
        zae(context, connectionResult.getErrorCode(), null, zal.zaa(context, 0, GoogleApiActivity.zaa(context, errorResolutionPendingIntent, i, true), zal.zaa | 134217728));
        return true;
    }

    @Nullable
    public Dialog getErrorDialog(@NonNull Activity activity, int i, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return zaa(activity, i, zag.zab(activity, getErrorResolutionIntent(activity, i, new ObfuscatedString(new long[]{851123345789406874L, 8612353136444081177L}).toString()), i2), onCancelListener);
    }

    @Nullable
    public PendingIntent getErrorResolutionPendingIntent(@NonNull Context context, @NonNull ConnectionResult connectionResult) {
        if (connectionResult.hasResolution()) {
            return connectionResult.getResolution();
        }
        return getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    @Override // com.google.android.gms.common.GoogleApiAvailabilityLight
    @ShowFirstParty
    @KeepForSdk
    public int isGooglePlayServicesAvailable(@NonNull Context context, int i) {
        return super.isGooglePlayServicesAvailable(context, i);
    }

    public boolean showErrorDialogFragment(@NonNull Activity activity, int i, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        zad(activity, errorDialog, new ObfuscatedString(new long[]{-3235295026678680957L, -3846044827544939793L, -6682621286975908339L, 1608614771882102083L, 1253909349095272712L}).toString(), onCancelListener);
        return true;
    }

    @NonNull
    public Task<Void> checkApiAvailability(@NonNull HasApiKey<?> hasApiKey, @NonNull HasApiKey<?>... hasApiKeyArr) {
        return zai(hasApiKey, hasApiKeyArr).onSuccessTask(new SuccessContinuation() { // from class: com.google.android.gms.common.zaa
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                int i = GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE;
                return Tasks.forResult(null);
            }
        });
    }

    public void showErrorNotification(@NonNull Context context, @NonNull ConnectionResult connectionResult) {
        zae(context, connectionResult.getErrorCode(), null, getErrorResolutionPendingIntent(context, connectionResult));
    }

    @Nullable
    public Dialog getErrorDialog(@NonNull Fragment fragment, int i, int i2) {
        return getErrorDialog(fragment, i, i2, (DialogInterface.OnCancelListener) null);
    }

    @Nullable
    public Dialog getErrorDialog(@NonNull Fragment fragment, int i, int i2, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return zaa(fragment.requireContext(), i, zag.zac(fragment, getErrorResolutionIntent(fragment.requireContext(), i, new ObfuscatedString(new long[]{-3958540927185618742L, 3441306922817924690L}).toString()), i2), onCancelListener);
    }
}
