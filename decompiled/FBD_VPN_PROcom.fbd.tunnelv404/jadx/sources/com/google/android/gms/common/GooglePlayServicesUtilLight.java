package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.HideFirstParty;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.zzah;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.DeviceProperties;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.errorprone.annotations.InlineMe;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class GooglePlayServicesUtilLight {

    @KeepForSdk
    static final int GMS_AVAILABILITY_NOTIFICATION_ID = 10436;

    @KeepForSdk
    static final int GMS_GENERAL_ERROR_NOTIFICATION_ID = 39789;

    @NonNull
    @KeepForSdk
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";

    @NonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_GAMES_PACKAGE = new ObfuscatedString(new long[]{5334965844152608631L, -7293330239712554424L, 7224928403754301259L, -8707871165685205836L, 4600616556451397833L}).toString();

    @NonNull
    @KeepForSdk
    public static final String GOOGLE_PLAY_STORE_PACKAGE = new ObfuscatedString(new long[]{-3448400344919913832L, -5223480933766056280L, 2066384196827998691L, -3334731706999385561L}).toString();

    @KeepForSdk
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = 12451000;
    private static boolean zzb = false;

    @VisibleForTesting
    static boolean zza = false;

    @KeepForSdk
    @Deprecated
    static final AtomicBoolean sCanceledAvailabilityNotification = new AtomicBoolean();
    private static final AtomicBoolean zzc = new AtomicBoolean();

    @KeepForSdk
    public GooglePlayServicesUtilLight() {
    }

    @KeepForSdk
    @Deprecated
    public static void cancelAvailabilityErrorNotifications(@NonNull Context context) {
        if (!sCanceledAvailabilityNotification.getAndSet(true)) {
            try {
                NotificationManager notificationManager = (NotificationManager) context.getSystemService(new ObfuscatedString(new long[]{-5589244529678164123L, 4556612182378494497L, 4606472133597487062L}).toString());
                if (notificationManager != null) {
                    notificationManager.cancel(GMS_AVAILABILITY_NOTIFICATION_ID);
                }
            } catch (SecurityException unused) {
                new ObfuscatedString(new long[]{-2940241364853608630L, 1556544959420373639L, -2281376127675472731L, 4623697076779154026L}).toString();
                new ObfuscatedString(new long[]{-998508683092922815L, -6172427739088670386L, 6419283982145241941L, -2996663451940496159L, 3507220762595726900L, -1383708692052317829L, -6211627404031391947L, -5259357615167823210L, 922718034529370344L, 4435208385273838400L, -948515557899042541L}).toString();
            }
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void enableUsingApkIndependentContext() {
        zzc.set(true);
    }

    @KeepForSdk
    @Deprecated
    public static void ensurePlayServicesAvailable(@NonNull Context context, int i) {
        int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, i);
        if (isGooglePlayServicesAvailable != 0) {
            Intent errorResolutionIntent = GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(context, isGooglePlayServicesAvailable, new ObfuscatedString(new long[]{8212634674194072443L, 2488830955362938066L}).toString());
            new ObfuscatedString(new long[]{3371824931827049325L, 3176668095443538402L, -6736404756451699922L, -296508281566302258L, 8341964675651233192L, 372131003279769233L, -7453599439118211210L}).toString();
            new ObfuscatedString(new long[]{-7498427918737407373L, 4444719477460033446L, -8064762100159885959L, 3718573196604725445L}).toString();
            if (errorResolutionIntent == null) {
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
            }
            throw new GooglePlayServicesRepairableException(isGooglePlayServicesAvailable, new ObfuscatedString(new long[]{530673610480585325L, 1595742749132609747L, -2075672959855716643L, -1743444941765922290L, -7460483694888944754L, -5145019818843426700L}).toString(), errorResolutionIntent);
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getApkVersion(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{-2616842571245898062L, 668578940509002524L, -392491559686109788L, -7790534958645825890L}).toString(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            new ObfuscatedString(new long[]{3835381095398084093L, -2249504927361848445L, 649221538908680804L, -7652883444533344809L}).toString();
            new ObfuscatedString(new long[]{1400461405341354425L, 4200396626840725201L, 5724443004319358144L, 1795525995527546761L, -5981822493368200361L}).toString();
            return 0;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int getClientVersion(@NonNull Context context) {
        Preconditions.checkState(true);
        return ClientLibraryUtils.getClientVersion(context, context.getPackageName());
    }

    @Deprecated
    @Nullable
    @InlineMe(imports = {"com.google.android.gms.common.GoogleApiAvailabilityLight"}, replacement = "GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, errorCode, requestCode)")
    @KeepForSdk
    public static PendingIntent getErrorPendingIntent(int i, @NonNull Context context, int i2) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionPendingIntent(context, i, i2);
    }

    @NonNull
    @KeepForSdk
    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.zza(i);
    }

    @Deprecated
    @Nullable
    @ShowFirstParty
    @InlineMe(imports = {"com.google.android.gms.common.GoogleApiAvailabilityLight"}, replacement = "GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, errorCode, null)")
    @KeepForSdk
    public static Intent getGooglePlayServicesAvailabilityRecoveryIntent(int i) {
        return GoogleApiAvailabilityLight.getInstance().getErrorResolutionIntent(null, i, null);
    }

    @Nullable
    @KeepForSdk
    public static Context getRemoteContext(@NonNull Context context) {
        try {
            return context.createPackageContext(new ObfuscatedString(new long[]{6155160485641684584L, -4458020169422618119L, -3462274263960103526L, 6222768665152036515L}).toString(), 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public static Resources getRemoteResource(@NonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication(new ObfuscatedString(new long[]{-6151401386590702131L, -4731969252928112825L, -4389171437532227952L, -3768879040172854702L}).toString());
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static boolean honorsDebugCertificates(@NonNull Context context) {
        try {
            if (!zza) {
                try {
                    PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(new ObfuscatedString(new long[]{-2767767931660001311L, 753774307254746604L, -3212598157015297552L, -8954154122114325020L}).toString(), 64);
                    GoogleSignatureVerifier.getInstance(context);
                    if (packageInfo != null && !GoogleSignatureVerifier.zzb(packageInfo, false) && GoogleSignatureVerifier.zzb(packageInfo, true)) {
                        zzb = true;
                    } else {
                        zzb = false;
                    }
                    zza = true;
                } catch (PackageManager.NameNotFoundException unused) {
                    new ObfuscatedString(new long[]{-824569445551431788L, -2909520524331707161L, -6851003552713670163L, 8167265784197008816L}).toString();
                    new ObfuscatedString(new long[]{5892315214621171294L, -1763608408118637566L, 2456204580215732195L, 4977729993802206274L, -7772045871441988792L, 9180645618104403753L, -7515288736817491614L}).toString();
                    zza = true;
                }
            }
            if (!zzb && DeviceProperties.isUserBuild()) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            zza = true;
            throw th;
        }
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    @HideFirstParty
    @KeepForSdk
    public static int isGooglePlayServicesAvailable(@NonNull Context context) {
        return isGooglePlayServicesAvailable(context, GOOGLE_PLAY_SERVICES_VERSION_CODE);
    }

    @InlineMe(imports = {"com.google.android.gms.common.util.UidVerifier"}, replacement = "UidVerifier.isGooglePlayServicesUid(context, uid)")
    @KeepForSdk
    @Deprecated
    public static boolean isGooglePlayServicesUid(@NonNull Context context, int i) {
        return UidVerifier.isGooglePlayServicesUid(context, i);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayServicesPossiblyUpdating(@NonNull Context context, int i) {
        if (i == 18) {
            return true;
        }
        if (i == 1) {
            return zza(context, new ObfuscatedString(new long[]{1891379935267664475L, -3228235669464449918L, -5026401406907466608L, -4030472721414685804L}).toString());
        }
        return false;
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean isPlayStorePossiblyUpdating(@NonNull Context context, int i) {
        if (i == 9) {
            return zza(context, new ObfuscatedString(new long[]{-800441347651115737L, 3383829811471057371L, -6213622780478250306L, 4240745157274876978L}).toString());
        }
        return false;
    }

    @KeepForSdk
    @TargetApi(18)
    public static boolean isRestrictedUserProfile(@NonNull Context context) {
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            Object systemService = context.getSystemService(new ObfuscatedString(new long[]{2732088458425161726L, -4918139745553404025L}).toString());
            Preconditions.checkNotNull(systemService);
            Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null) {
                if (new ObfuscatedString(new long[]{3844633280305968983L, 6206269933941480903L}).toString().equals(applicationRestrictions.getString(new ObfuscatedString(new long[]{1862040290665932837L, -8725899156562386855L, 6246857812547948152L, 2968146862005749088L}).toString()))) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Deprecated
    @ShowFirstParty
    @InlineMe(imports = {"com.google.android.gms.common.util.DeviceProperties"}, replacement = "DeviceProperties.isSidewinder(context)")
    @KeepForSdk
    public static boolean isSidewinderDevice(@NonNull Context context) {
        return DeviceProperties.isSidewinder(context);
    }

    @KeepForSdk
    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return i == 1 || i == 2 || i == 3 || i == 9;
    }

    @Deprecated
    @InlineMe(imports = {"com.google.android.gms.common.util.UidVerifier"}, replacement = "UidVerifier.uidHasPackageName(context, uid, packageName)")
    @KeepForSdk
    @TargetApi(19)
    public static boolean uidHasPackageName(@NonNull Context context, int i, @NonNull String str) {
        return UidVerifier.uidHasPackageName(context, i, str);
    }

    @TargetApi(21)
    public static boolean zza(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals(new ObfuscatedString(new long[]{-675575192112765959L, -1057650949473587450L, -3375700119015157588L, 5473428124921680755L}).toString());
        if (PlatformVersion.isAtLeastLollipop()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        if (applicationInfo.enabled && !isRestrictedUserProfile(context)) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    @Deprecated
    public static int isGooglePlayServicesAvailable(@NonNull Context context, int i) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            new ObfuscatedString(new long[]{-251224142441430509L, 7595878832417854820L, 861953927801282722L, 5810605363993856324L}).toString();
            new ObfuscatedString(new long[]{6750333722792781619L, 1367694673859363815L, -8170399662383241890L, -6563255147062786760L, 3051359546940789413L, 7161660115050256272L, -414215135002278612L, -6680166793482423109L, -1364813768447639001L, -3473408606565388051L, 5666613538802483031L, 7035463922793372494L, 7628829764485194057L, -1180112424280948531L, -3940460887849425653L, 4281267444924240807L, -9157110715090809358L}).toString();
        }
        if (!new ObfuscatedString(new long[]{3245287788001825311L, -4954960936001617338L, 967252196475087406L, -8486386719094408596L}).toString().equals(context.getPackageName()) && !zzc.get()) {
            int zza2 = zzah.zza(context);
            if (zza2 != 0) {
                if (zza2 != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                    throw new GooglePlayServicesIncorrectManifestValueException(zza2);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        boolean z = (DeviceProperties.isWearableWithoutPlayStore(context) || DeviceProperties.zzb(context)) ? false : true;
        Preconditions.checkArgument(i >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo(new ObfuscatedString(new long[]{4433661588272767337L, 4849774056386041967L, -5905174251674129286L, 2730491317730873589L}).toString(), 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                String valueOf = String.valueOf(packageName);
                String obfuscatedString = new ObfuscatedString(new long[]{1638084804153846805L, -4293277428222186309L, 7792461824367556965L, -7968541295954905180L, 3252128860841707798L, -8064798687729961958L, 8441261864683855844L, -68924194187505313L}).toString();
                new ObfuscatedString(new long[]{-6401825701985282464L, 5713407279543907156L, 8362732499132666381L, 3330603178248624108L}).toString();
                valueOf.concat(obfuscatedString);
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo(new ObfuscatedString(new long[]{359924295644969998L, -1747995844643064785L, -3883843584957831616L, -1916142947201785217L}).toString(), 64);
            GoogleSignatureVerifier.getInstance(context);
            if (GoogleSignatureVerifier.zzb(packageInfo2, true)) {
                if (z) {
                    Preconditions.checkNotNull(packageInfo);
                    if (!GoogleSignatureVerifier.zzb(packageInfo, true)) {
                        String valueOf2 = String.valueOf(packageName);
                        String obfuscatedString2 = new ObfuscatedString(new long[]{-7087376398673072078L, -1677938330087577961L, 6797223355356196978L, 2760226591503458769L, 6098103241695656787L, -6188004493774594579L, 7228761340325584144L, -2729300013746393104L, 7817713138841671329L}).toString();
                        new ObfuscatedString(new long[]{-5545907892648320446L, 4826130104140597053L, 5277150105379178981L, -4703315475640969022L}).toString();
                        valueOf2.concat(obfuscatedString2);
                    }
                }
                if (!z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    if (com.google.android.gms.common.util.zza.zza(packageInfo2.versionCode) < com.google.android.gms.common.util.zza.zza(i)) {
                        new ObfuscatedString(new long[]{3337237537665662345L, -9069258914810789204L, 3210222692497805406L, -4696808967176919111L, 9170436878433158402L, 5412693418507210660L}).toString();
                        new ObfuscatedString(new long[]{59665932980303283L, -8785118705217666837L, -6689786985954719382L}).toString();
                        new ObfuscatedString(new long[]{2813246037299761086L, -7979560322540010989L, -889610056455569130L}).toString();
                        new ObfuscatedString(new long[]{-8892151879697004168L, -1576562897487800293L, 7480315196767783195L, 5107577018277350612L}).toString();
                        return 2;
                    }
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo(new ObfuscatedString(new long[]{-7913538193259705783L, -35260152430753022L, 1907030382190153965L, -6464084176239256477L}).toString(), 0);
                        } catch (PackageManager.NameNotFoundException e) {
                            Log.wtf(new ObfuscatedString(new long[]{2461918830404886895L, -4644706078758510171L, -1592727863129437918L, -7752661885167456102L}).toString(), String.valueOf(packageName).concat(new ObfuscatedString(new long[]{-5717243343987878542L, 3487303686397851968L, 735607495218118065L, 8931491512072451848L, -2845704679456621544L, -4070135114449815194L, -5248685511155137396L, 6200677782707345139L, -8924851556221737234L, 2887980977437866467L, 5625212220745171718L, 222835465498457549L}).toString()), e);
                            return 1;
                        }
                    }
                    return !applicationInfo.enabled ? 3 : 0;
                }
                String valueOf3 = String.valueOf(packageName);
                String obfuscatedString3 = new ObfuscatedString(new long[]{-8049828491871409038L, -3117139485010540564L, -3830954455604182815L, -6684853074907801172L, -8161725645507820764L, 3755160604762967760L, 2203667691861301803L, -7097537095479386908L, 3667008931391259990L, 3252955694382228317L, 5536314834396971093L, 7636168308297963772L, -2338404785958166621L}).toString();
                new ObfuscatedString(new long[]{-7636737404044461170L, 4761103522670646111L, 6684149056962148774L, 4650742241642582051L}).toString();
                valueOf3.concat(obfuscatedString3);
            } else {
                String valueOf4 = String.valueOf(packageName);
                String obfuscatedString4 = new ObfuscatedString(new long[]{5825368099256987853L, 8844667178108932063L, 6043776491684726386L, -5218163856793437946L, 3117524155866569715L, -1048811332673686410L, 379134974578428461L, -5722892448304482475L, 2078883768551735108L}).toString();
                new ObfuscatedString(new long[]{-3327681201827285934L, 3547237671136249490L, -3936249182717036328L, 3846013136026912036L}).toString();
                valueOf4.concat(obfuscatedString4);
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            String valueOf5 = String.valueOf(packageName);
            String obfuscatedString5 = new ObfuscatedString(new long[]{-5204192688621596594L, 2248974769979943055L, -3355978325096091258L, -1111253011026327201L, -247792871321318791L, -3039112984435787419L, 6432757403201563988L, 7685540320892280313L}).toString();
            new ObfuscatedString(new long[]{-8306336961787744319L, -1950778423842768426L, -2967545253010742276L, -7329869688521784475L}).toString();
            valueOf5.concat(obfuscatedString5);
        }
    }
}
