package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@KeepForSdk
/* loaded from: classes2.dex */
public class WorkSourceUtil {
    private static final int zza = Process.myUid();
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;
    private static final Method zzi;

    @GuardedBy("WorkSourceUtil.class")
    private static Boolean zzj;

    /* JADX WARN: Can't wrap try/catch for region: R(25:1|(2:2|3)|4|(22:52|53|7|8|9|10|11|12|13|(13:44|45|16|(10:40|41|19|(7:36|37|22|(6:28|29|30|31|25|26)|24|25|26)|21|22|(0)|24|25|26)|18|19|(0)|21|22|(0)|24|25|26)|15|16|(0)|18|19|(0)|21|22|(0)|24|25|26)|6|7|8|9|10|11|12|13|(0)|15|16|(0)|18|19|(0)|21|22|(0)|24|25|26) */
    /* JADX WARN: Can't wrap try/catch for region: R(26:1|2|3|4|(22:52|53|7|8|9|10|11|12|13|(13:44|45|16|(10:40|41|19|(7:36|37|22|(6:28|29|30|31|25|26)|24|25|26)|21|22|(0)|24|25|26)|18|19|(0)|21|22|(0)|24|25|26)|15|16|(0)|18|19|(0)|21|22|(0)|24|25|26)|6|7|8|9|10|11|12|13|(0)|15|16|(0)|18|19|(0)|21|22|(0)|24|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x007f, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0063, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0135 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ac A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        try {
            method = WorkSource.class.getMethod(new ObfuscatedString(new long[]{2023122515421798103L, 6600842229591288144L}).toString(), Integer.TYPE);
        } catch (Exception unused) {
            method = null;
        }
        zzb = method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method2 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{358504799863082174L, 1595447286625710708L}).toString(), Integer.TYPE, String.class);
            } catch (Exception unused2) {
            }
            zzc = method2;
            Method method7 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{1491056485973843070L, -3009591735855608042L}).toString(), null);
            zzd = method7;
            Method method8 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{3370223008990557644L, 6352686491732633543L}).toString(), Integer.TYPE);
            zze = method8;
            if (PlatformVersion.isAtLeastJellyBeanMR2()) {
                try {
                    method3 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{-5111009675239480154L, 2850514545676357830L}).toString(), Integer.TYPE);
                } catch (Exception unused3) {
                }
                zzf = method3;
                if (PlatformVersion.isAtLeastP()) {
                    try {
                        method4 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{2406177955419349933L, -1951900853606889108L, -3583450443809099590L}).toString(), null);
                    } catch (Exception unused4) {
                        new ObfuscatedString(new long[]{-8224621112304190450L, -3664601897048593834L, -1369760533380458905L}).toString();
                        new ObfuscatedString(new long[]{-6869198724255101321L, -4430237171613541495L, -4212795661137935803L, 8717927290500696641L, 4200583788623936950L, 1709962792803129523L}).toString();
                    }
                    zzg = method4;
                    if (PlatformVersion.isAtLeastP()) {
                        try {
                            method5 = Class.forName(new ObfuscatedString(new long[]{4687199053554734027L, 1599766723227298840L, -4050629161310078339L, 3663459922620875848L, 5372583811486853265L}).toString()).getMethod(new ObfuscatedString(new long[]{-9223031586211412326L, -8524202934220503353L}).toString(), Integer.TYPE, String.class);
                        } catch (Exception unused5) {
                            new ObfuscatedString(new long[]{8675065788265774467L, -736750832051266736L, -3257586600488878570L}).toString();
                            new ObfuscatedString(new long[]{-7675884214967525148L, -7021619609131787956L, 6469868095762876036L, 6272829255230075200L}).toString();
                        }
                        zzh = method5;
                        if (PlatformVersion.isAtLeastP()) {
                            try {
                                method6 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{5894796932626536644L, 4998474972938631519L}).toString(), null);
                                try {
                                    method6.setAccessible(true);
                                } catch (Exception unused6) {
                                }
                            } catch (Exception unused7) {
                            }
                            zzi = method6;
                            zzj = null;
                        }
                        method6 = null;
                        zzi = method6;
                        zzj = null;
                    }
                    method5 = null;
                    zzh = method5;
                    if (PlatformVersion.isAtLeastP()) {
                    }
                    method6 = null;
                    zzi = method6;
                    zzj = null;
                }
                method4 = null;
                zzg = method4;
                if (PlatformVersion.isAtLeastP()) {
                }
                method5 = null;
                zzh = method5;
                if (PlatformVersion.isAtLeastP()) {
                }
                method6 = null;
                zzi = method6;
                zzj = null;
            }
            method3 = null;
            zzf = method3;
            if (PlatformVersion.isAtLeastP()) {
            }
            method4 = null;
            zzg = method4;
            if (PlatformVersion.isAtLeastP()) {
            }
            method5 = null;
            zzh = method5;
            if (PlatformVersion.isAtLeastP()) {
            }
            method6 = null;
            zzi = method6;
            zzj = null;
        }
        method2 = null;
        zzc = method2;
        Method method72 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{1491056485973843070L, -3009591735855608042L}).toString(), null);
        zzd = method72;
        Method method82 = WorkSource.class.getMethod(new ObfuscatedString(new long[]{3370223008990557644L, 6352686491732633543L}).toString(), Integer.TYPE);
        zze = method82;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
        }
        method3 = null;
        zzf = method3;
        if (PlatformVersion.isAtLeastP()) {
        }
        method4 = null;
        zzg = method4;
        if (PlatformVersion.isAtLeastP()) {
        }
        method5 = null;
        zzh = method5;
        if (PlatformVersion.isAtLeastP()) {
        }
        method6 = null;
        zzi = method6;
        zzj = null;
    }

    private WorkSourceUtil() {
    }

    @KeepForSdk
    public static void add(@NonNull WorkSource workSource, int i, @NonNull String str) {
        Method method = zzc;
        if (method != null) {
            if (str == null) {
                str = new ObfuscatedString(new long[]{-3954051365368045412L}).toString();
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf(new ObfuscatedString(new long[]{7754841098029118790L, 842182207415541831L, -9048169724235862020L}).toString(), new ObfuscatedString(new long[]{-2877334925359982296L, 7074748198257236934L, -8536114154522222683L, -4084354237155625061L, 4007991248008449834L, 3623738640851326196L, -2290234459767465956L}).toString(), e);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf(new ObfuscatedString(new long[]{3343877767779848841L, 7627195147761555872L, 3381821030402675258L}).toString(), new ObfuscatedString(new long[]{-6541264849113134215L, -3911615836252410010L, -481121154900933811L, 7966072824102671936L, -3494838207802092324L, 5960859907758271885L, -4606238838302444418L}).toString(), e2);
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackage(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    new ObfuscatedString(new long[]{-1880611988155866267L, -6733427733734203699L, -6670887351151206533L, 2117809175030120601L, 24558313966955457L, 6407122785469590073L, 664130123544507425L}).toString().concat(str);
                    new ObfuscatedString(new long[]{1605288573718629643L, -4744864082442918731L, -4206691858681264374L}).toString();
                    return null;
                }
                int i = applicationInfo.uid;
                WorkSource workSource = new WorkSource();
                add(workSource, i, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                new ObfuscatedString(new long[]{4954493930211885418L, -6256791968510373136L, -3351170300517216343L, -3670345994415108320L}).toString().concat(str);
                new ObfuscatedString(new long[]{-2077224450412118919L, -3111849324644722447L, 2946832157837344023L}).toString();
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Method method;
        if (context != null && context.getPackageManager() != null && str2 != null && str != null) {
            int i = -1;
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    new ObfuscatedString(new long[]{-48730075071427976L, -9084733959994839867L, 1003677828608905629L, -8495036019992220121L, -5315899971991801054L, 3791319515140601065L, 1678678828267653194L}).toString().concat(str);
                    new ObfuscatedString(new long[]{-1198131118840492625L, -1424678277602290685L, -1072934941679269904L}).toString();
                } else {
                    i = applicationInfo.uid;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                new ObfuscatedString(new long[]{6763926678888064408L, -1672406414942647215L, -2608000259417025650L, -1532914682958257196L}).toString().concat(str);
                new ObfuscatedString(new long[]{-1365343755103006298L, 4749722989545623310L, -2654558509302088967L}).toString();
            }
            if (i < 0) {
                return null;
            }
            WorkSource workSource = new WorkSource();
            Method method2 = zzg;
            if (method2 != null && (method = zzh) != null) {
                try {
                    Object invoke = method2.invoke(workSource, null);
                    int i2 = zza;
                    if (i != i2) {
                        method.invoke(invoke, Integer.valueOf(i), str);
                    }
                    method.invoke(invoke, Integer.valueOf(i2), str2);
                } catch (Exception unused2) {
                    new ObfuscatedString(new long[]{9172073448739821356L, -5965289297776623456L, -1907658118772307153L}).toString();
                    new ObfuscatedString(new long[]{-8881851716508834144L, 4417912804271308625L, -5600117944754505002L, -8832738575368865698L, 1282860292282577428L, -6267259320504215481L, -4356675017848941879L, 7630598508838399714L}).toString();
                }
            } else {
                add(workSource, i, str);
            }
            return workSource;
        }
        new ObfuscatedString(new long[]{6785480190303042293L, -8335306426959415583L, 1443669881905770022L}).toString();
        new ObfuscatedString(new long[]{8106496957751569988L, 8675500094118619043L, 7880189267244185623L, -3064366634076646558L, -7660744143151946141L}).toString();
        return null;
    }

    @KeepForSdk
    public static int get(@NonNull WorkSource workSource, int i) {
        Method method = zze;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, Integer.valueOf(i));
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf(new ObfuscatedString(new long[]{-2069273459214784720L, -4014675720967959172L, -4564596995082099958L}).toString(), new ObfuscatedString(new long[]{-3230633180758450381L, 7978859437442584661L, 2948013113589768988L, 2052562564888733007L, 6332435914640419139L, 8013838181479568518L, -8691194583346479258L}).toString(), e);
            }
        }
        return 0;
    }

    @NonNull
    @KeepForSdk
    public static String getName(@NonNull WorkSource workSource, int i) {
        Method method = zzf;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf(new ObfuscatedString(new long[]{-8957546044193544512L, -2427706683896617497L, 1454773321995939307L}).toString(), new ObfuscatedString(new long[]{3100115342115170667L, -1741045967806824304L, 3471240227029495591L, 3580472989423468493L, 4921523751159280583L, 1510471359950965427L, -2273820924336403545L}).toString(), e);
                return null;
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static List<String> getNames(@NonNull WorkSource workSource) {
        int size;
        ArrayList arrayList = new ArrayList();
        if (workSource == null) {
            size = 0;
        } else {
            size = size(workSource);
        }
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                String name = getName(workSource, i);
                if (!Strings.isEmptyOrWhitespace(name)) {
                    Preconditions.checkNotNull(name);
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static synchronized boolean hasWorkSourcePermission(@NonNull Context context) {
        synchronized (WorkSourceUtil.class) {
            Boolean bool = zzj;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (ContextCompat.checkSelfPermission(context, new ObfuscatedString(new long[]{-7141907012068669730L, -963380541543859689L, 2304973442234337611L, -8609779442709184048L, -1364024632332438086L, -3911998966198762534L}).toString()) == 0) {
                z = true;
            }
            zzj = Boolean.valueOf(z);
            return z;
        }
    }

    @KeepForSdk
    public static boolean isEmpty(@NonNull WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception unused) {
                new ObfuscatedString(new long[]{3586493928221397909L, -1821782850841148652L, -8478269033247200291L}).toString();
                new ObfuscatedString(new long[]{464418813846551157L, 3630680497823609759L, -4587879902531767580L, -2617623104026860816L, 177543909136585762L, -2090701987629285593L}).toString();
            }
        }
        if (size(workSource) == 0) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public static int size(@NonNull WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf(new ObfuscatedString(new long[]{-8878581938707119209L, 7312009423575878929L, 1649934715720052623L}).toString(), new ObfuscatedString(new long[]{-1391750377094207906L, 387092745398389371L, 1132937746481232684L, -4373281121632796746L, 8157410968008957805L, -7033329098066377127L, 4819016299023670209L}).toString(), e);
                return 0;
            }
        }
        return 0;
    }
}
