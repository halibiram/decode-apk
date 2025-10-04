package com.google.android.gms.dynamite;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0693xc028779d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

@KeepForSdk
/* loaded from: classes2.dex */
public final class DynamiteModule {

    @KeepForSdk
    public static final int LOCAL = -1;

    @KeepForSdk
    public static final int NONE = 0;

    @KeepForSdk
    public static final int NO_SELECTION = 0;

    @KeepForSdk
    public static final int REMOTE = 1;

    @Nullable
    @GuardedBy("DynamiteModule.class")
    private static Boolean zzb = null;

    @Nullable
    @GuardedBy("DynamiteModule.class")
    private static String zzc = null;

    @GuardedBy("DynamiteModule.class")
    private static boolean zzd = false;

    @GuardedBy("DynamiteModule.class")
    private static int zze = -1;

    @Nullable
    @GuardedBy("DynamiteModule.class")
    private static Boolean zzf;

    @Nullable
    @GuardedBy("DynamiteModule.class")
    private static zzq zzk;

    @Nullable
    @GuardedBy("DynamiteModule.class")
    private static zzr zzl;
    private final Context zzj;
    private static final ThreadLocal zzg = new ThreadLocal();
    private static final ThreadLocal zzh = new zzd();
    private static final VersionPolicy.IVersions zzi = new zze();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE = new zzf();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_LOCAL = new zzg();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();

    @NonNull
    @KeepForSdk
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();

    @NonNull
    public static final VersionPolicy zza = new zzl();

    @DynamiteApi
    /* loaded from: classes2.dex */
    public static class DynamiteLoaderClassLoader {

        @Nullable
        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static class LoadingException extends Exception {
        public /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        public /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    /* loaded from: classes2.dex */
    public interface VersionPolicy {

        @KeepForSdk
        /* loaded from: classes2.dex */
        public interface IVersions {
            int zza(@NonNull Context context, @NonNull String str);

            int zzb(@NonNull Context context, @NonNull String str, boolean z);
        }

        @KeepForSdk
        /* loaded from: classes2.dex */
        public static class SelectionResult {

            @KeepForSdk
            public int localVersion = 0;

            @KeepForSdk
            public int remoteVersion = 0;

            @KeepForSdk
            public int selection = 0;
        }

        @NonNull
        @KeepForSdk
        SelectionResult selectModule(@NonNull Context context, @NonNull String str, @NonNull IVersions iVersions);
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzj = context;
    }

    @KeepForSdk
    public static int getLocalVersion(@NonNull Context context, @NonNull String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass(new ObfuscatedString(new long[]{-1304550785384010850L, -7075721623307173924L, -7026994135377521827L, 4393777522210779159L, 6865858461383772218L, -3246185086112946300L, -137354788721501302L}).toString() + str + new ObfuscatedString(new long[]{1722030808278784284L, 7976725935459370248L, 7048274202615783677L, -9090525296493803396L}).toString());
            Field declaredField = loadClass.getDeclaredField(new ObfuscatedString(new long[]{2323104488065968013L, 4415355331920077509L, 1990638678566926836L}).toString());
            Field declaredField2 = loadClass.getDeclaredField(new ObfuscatedString(new long[]{-3875357261370232581L, 8680902666878096533L, -4647506075772396989L}).toString());
            if (!Objects.equal(declaredField.get(null), str)) {
                new ObfuscatedString(new long[]{3247584625001326505L, 5379314748849359893L, 8863374515378841735L}).toString();
                String.valueOf(declaredField.get(null));
                new ObfuscatedString(new long[]{-7082325239524595893L, -5541668718850730727L, -4217306739193284291L, 6772059087319655283L}).toString();
                new ObfuscatedString(new long[]{4776794832958591152L, 8966233710353935185L, -7174084191476378044L, -504746923099873074L, 5664409481119550988L}).toString();
                new ObfuscatedString(new long[]{-4899591080833795911L, -1110168196893759640L}).toString();
                return 0;
            }
            return declaredField2.getInt(null);
        } catch (ClassNotFoundException unused) {
            new ObfuscatedString(new long[]{3282374706481540573L, -5419300602333363875L, 3500062790075601759L, 4192623738946746602L, -243776404904148471L, 6852881856291226618L}).toString();
            new ObfuscatedString(new long[]{-4865775861040432019L, 4408081639463315965L, -7232540826820648351L}).toString();
            new ObfuscatedString(new long[]{-5671697201610734989L, 4195242693073696340L, -6077401819400648823L}).toString();
            return 0;
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            String obfuscatedString = new ObfuscatedString(new long[]{-5374584246451430222L, -8858026287875643039L, -3242487728358335049L, -2593656985665410225L, 7243678347559694287L, -6533371785419507580L}).toString();
            new ObfuscatedString(new long[]{5529343121168769799L, 8649712950972530435L, 279325633509562735L}).toString();
            obfuscatedString.concat(valueOf);
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(@NonNull Context context, @NonNull String str) {
        return zza(context, str, false);
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static DynamiteModule load(@NonNull Context context, @NonNull VersionPolicy versionPolicy, @NonNull String str) {
        DynamiteModule zzc2;
        Boolean bool;
        IObjectWrapper zzh2;
        DynamiteModule dynamiteModule;
        zzr zzrVar;
        boolean z;
        IObjectWrapper zze2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            ThreadLocal threadLocal = zzg;
            zzn zznVar = (zzn) threadLocal.get();
            zzn zznVar2 = new zzn(null);
            threadLocal.set(zznVar2);
            ThreadLocal threadLocal2 = zzh;
            Long l = (Long) threadLocal2.get();
            long longValue = l.longValue();
            try {
                threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
                VersionPolicy.SelectionResult selectModule = versionPolicy.selectModule(context, str, zzi);
                new ObfuscatedString(new long[]{-50686709124462739L, 5994881777584319980L, -5282581321298411850L}).toString();
                int i = selectModule.localVersion;
                new ObfuscatedString(new long[]{7286975129584088159L, 4317509071700491470L, 3983738093173025887L, 833682638388810676L, 5157003730590157272L}).toString();
                new ObfuscatedString(new long[]{-5203356780547347692L, 4427229377386484090L}).toString();
                new ObfuscatedString(new long[]{-6702453848847778412L, 8734375708385863883L, 916000947224474525L, 713234752508341322L}).toString();
                new ObfuscatedString(new long[]{-7102254053700984415L, -610807325758215970L}).toString();
                int i2 = selectModule.selection;
                if (i2 != 0) {
                    if (i2 == -1) {
                        if (selectModule.localVersion != 0) {
                            i2 = -1;
                        }
                    }
                    if (i2 != 1 || selectModule.remoteVersion != 0) {
                        if (i2 == -1) {
                            zzc2 = zzc(applicationContext, str);
                        } else if (i2 == 1) {
                            try {
                                int i3 = selectModule.remoteVersion;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (zzf(context)) {
                                            bool = zzb;
                                        } else {
                                            throw new LoadingException(new ObfuscatedString(new long[]{8734722004034026412L, 1568412716735648026L, 8282410473003723066L, 6032125333479587114L}).toString(), null);
                                        }
                                    }
                                    if (bool != null) {
                                        if (bool.booleanValue()) {
                                            new ObfuscatedString(new long[]{5736126481360596712L, -5898282661087466683L, -7606301826104196934L}).toString();
                                            new ObfuscatedString(new long[]{-2388086538249118999L, 8540092959891251672L, 3604454558776730037L, -4372224055079050017L, -7016519619640621029L}).toString();
                                            new ObfuscatedString(new long[]{5954738440556737965L, -6367730187884305641L, -8638080953051657397L}).toString();
                                            synchronized (DynamiteModule.class) {
                                                zzrVar = zzl;
                                            }
                                            if (zzrVar != null) {
                                                zzn zznVar3 = (zzn) threadLocal.get();
                                                if (zznVar3 != null && zznVar3.zza != null) {
                                                    Context applicationContext2 = context.getApplicationContext();
                                                    Cursor cursor = zznVar3.zza;
                                                    ObjectWrapper.wrap(null);
                                                    synchronized (DynamiteModule.class) {
                                                        if (zze >= 2) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                    }
                                                    if (z) {
                                                        new ObfuscatedString(new long[]{4881321869226640652L, -6923494027264974639L, 451173879858067792L}).toString();
                                                        new ObfuscatedString(new long[]{7057797957720440760L, 1463546099594327062L, 4943599436626311836L, -5265970109653850575L, 6686683631628915920L, -7112436360740965490L, -5670140565487745155L, 3167400478233984736L, -4983169674215566014L}).toString();
                                                        zze2 = zzrVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor));
                                                    } else {
                                                        new ObfuscatedString(new long[]{5554433872591288729L, -3314294522278564638L, 2509972859975555492L}).toString();
                                                        new ObfuscatedString(new long[]{-9201909075775802135L, -8206646435630544448L, 4110323889565334229L, -2167107887450784998L, -3603087181860356951L, -8056049834526705574L, -7810586271564156078L, 8253568991358439955L}).toString();
                                                        zze2 = zzrVar.zze(ObjectWrapper.wrap(applicationContext2), str, i3, ObjectWrapper.wrap(cursor));
                                                    }
                                                    Context context2 = (Context) ObjectWrapper.unwrap(zze2);
                                                    if (context2 != null) {
                                                        dynamiteModule = new DynamiteModule(context2);
                                                    } else {
                                                        throw new LoadingException(new ObfuscatedString(new long[]{-5352011386914211633L, 1831620722336265735L, -1614302521321295626L, 7788819664890838140L, 7410360406375315976L}).toString(), null);
                                                    }
                                                } else {
                                                    throw new LoadingException(new ObfuscatedString(new long[]{-8573450352067934833L, 2791428250994630207L, -2508056952485773209L}).toString(), null);
                                                }
                                            } else {
                                                throw new LoadingException(new ObfuscatedString(new long[]{2425658289194962571L, 5121106615730236603L, -1880544768125054861L, 7255111455934879520L, -4440033103990862133L}).toString(), null);
                                            }
                                        } else {
                                            new ObfuscatedString(new long[]{2468998199034072189L, 8707814704639154313L, 6486894057819969188L}).toString();
                                            new ObfuscatedString(new long[]{4963666844026080999L, -8568349186452230226L, -8218599622246482870L, 5523077196846869207L, 3175396523905803700L}).toString();
                                            new ObfuscatedString(new long[]{-3667939221671675090L, -1970143278597994740L, -6916913255716341750L}).toString();
                                            zzq zzg2 = zzg(context);
                                            if (zzg2 != null) {
                                                int zze3 = zzg2.zze();
                                                if (zze3 >= 3) {
                                                    zzn zznVar4 = (zzn) threadLocal.get();
                                                    if (zznVar4 != null) {
                                                        zzh2 = zzg2.zzi(ObjectWrapper.wrap(context), str, i3, ObjectWrapper.wrap(zznVar4.zza));
                                                    } else {
                                                        throw new LoadingException(new ObfuscatedString(new long[]{-8348932196723371794L, -3273487771097078298L, 7727561339368103026L, 967746512711362627L, -1627715458446888677L}).toString(), null);
                                                    }
                                                } else if (zze3 == 2) {
                                                    new ObfuscatedString(new long[]{7877887183466090053L, 4369941762518319301L, -6004969390269668842L}).toString();
                                                    new ObfuscatedString(new long[]{1851872242844540095L, 2381388201841524582L, -7924925731537561706L, -3793342651152362381L, 7047527712649311576L}).toString();
                                                    zzh2 = zzg2.zzj(ObjectWrapper.wrap(context), str, i3);
                                                } else {
                                                    new ObfuscatedString(new long[]{2128995848070112579L, 3924257590451301101L, 5217098025099112478L}).toString();
                                                    new ObfuscatedString(new long[]{825555256428346056L, 7700954781696909260L, 878429252706083138L, -8540451427373991765L, 1944611537257932848L, -7147299761383762971L, -3305982748973016682L, -8054311179262096370L, 952768015522104589L}).toString();
                                                    zzh2 = zzg2.zzh(ObjectWrapper.wrap(context), str, i3);
                                                }
                                                Object unwrap = ObjectWrapper.unwrap(zzh2);
                                                if (unwrap != null) {
                                                    dynamiteModule = new DynamiteModule((Context) unwrap);
                                                } else {
                                                    throw new LoadingException(new ObfuscatedString(new long[]{-2761801086080073062L, -5363464139006634572L, 276299910888570457L, -5625214994959749991L, 2625004726718933160L}).toString(), null);
                                                }
                                            } else {
                                                throw new LoadingException(new ObfuscatedString(new long[]{5873100722544423929L, 68094828572834595L, -6308072249557171346L, 6021619924199032815L, 7337641835124336881L, 5364870158157065522L}).toString(), null);
                                            }
                                        }
                                        zzc2 = dynamiteModule;
                                    } else {
                                        throw new LoadingException(new ObfuscatedString(new long[]{-7972980522627899723L, -4794977503500335098L, -6859924487863595884L, -6401943673240313514L, 8871386696212542139L, 8067521287124400849L, -4843668334562521652L}).toString(), null);
                                    }
                                } catch (RemoteException e) {
                                    throw new LoadingException(new ObfuscatedString(new long[]{6552955979963580855L, -1954621139700150197L, 4693399831211726034L, 8813752396238113445L, -8367068970391922118L}).toString(), e, null);
                                } catch (LoadingException e2) {
                                    throw e2;
                                } catch (Throwable th) {
                                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                                    throw new LoadingException(new ObfuscatedString(new long[]{6820342365728012758L, 6360940369639388313L, -2070596626623139393L, -213709942105360858L, 1570807503823069710L}).toString(), th, null);
                                }
                            } catch (LoadingException e3) {
                                new ObfuscatedString(new long[]{8898205214855193925L, 8664589610055113670L, 3940572720100320105L}).toString();
                                e3.getMessage();
                                new ObfuscatedString(new long[]{4898643021856108029L, -5063475131909562999L, 1018400817522414030L, 8119626200972168610L, -4843863174503537377L}).toString();
                                int i4 = selectModule.localVersion;
                                if (i4 != 0 && versionPolicy.selectModule(context, str, new zzo(i4, 0)).selection == -1) {
                                    zzc2 = zzc(applicationContext, str);
                                } else {
                                    throw new LoadingException(new ObfuscatedString(new long[]{969999597912522566L, -8947148211195414283L, 5942653023727817370L, 7329718927250054567L, 6478358284169127237L, 7349883513171833103L, 7510043324775392963L}).toString(), e3, null);
                                }
                            }
                        } else {
                            throw new LoadingException(new ObfuscatedString(new long[]{-321553569528019387L, 1037722569400765203L, 3072086015335019779L, 2896284941993982474L, 371981044158339468L, -2783631842565441302L}).toString() + i2, null);
                        }
                        return zzc2;
                    }
                }
                throw new LoadingException(new ObfuscatedString(new long[]{-326963480227478122L, -3007813549571165835L, 8636672312834117134L, -2622742146714891555L}).toString() + str + new ObfuscatedString(new long[]{5301473681829997297L, 532873139428378810L, 3862288514479772783L, -5247594293346236131L, -7499671348150772423L}).toString() + selectModule.localVersion + new ObfuscatedString(new long[]{-5766946308082071291L, 1231829939147788797L, 4499746346466680836L, 8965524112208698808L}).toString() + selectModule.remoteVersion + new ObfuscatedString(new long[]{6114619516562295327L, -7116402687322147205L}).toString(), null);
            } finally {
                if (longValue == 0) {
                    zzh.remove();
                } else {
                    zzh.set(l);
                }
                Cursor cursor2 = zznVar2.zza;
                if (cursor2 != null) {
                    cursor2.close();
                }
                zzg.set(zznVar);
            }
        }
        throw new LoadingException(new ObfuscatedString(new long[]{-5597280817249820133L, -4491970226489373875L, -2322217497961575900L, -6143790683673593510L}).toString(), null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0173, code lost:
    
        if (r0 != 0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(@NonNull Context context, @NonNull String str, boolean z) {
        Field declaredField;
        Throwable th;
        RemoteException e;
        int i;
        Cursor cursor;
        int i2 = 7;
        i2 = 7;
        i2 = 7;
        i2 = 7;
        int i3 = 7;
        int i4 = 7;
        i2 = 7;
        i2 = 7;
        try {
            synchronized (DynamiteModule.class) {
                Boolean bool = zzb;
                Cursor cursor2 = null;
                int i5 = 0;
                if (bool == null) {
                    try {
                        declaredField = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName()).getDeclaredField(new ObfuscatedString(new long[]{8087812366098308034L, 1908651325221015124L, -6686233674907914273L}).toString());
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                        new ObfuscatedString(new long[]{7961403141554130445L, -4441113569742666167L, -3576435327876733721L}).toString();
                        e2.toString();
                        new ObfuscatedString(new long[]{7052824209613024073L, 3707145474590397583L, -7030085697899780477L, 7427074909396569066L, -1937306280591271527L}).toString();
                        bool = Boolean.FALSE;
                    }
                    synchronized (declaredField.getDeclaringClass()) {
                        ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else if (classLoader != null) {
                            try {
                                zzd(classLoader);
                            } catch (LoadingException unused) {
                            }
                            bool = Boolean.TRUE;
                        } else {
                            if (!zzf(context)) {
                                return 0;
                            }
                            if (!zzd) {
                                Boolean bool2 = Boolean.TRUE;
                                if (!bool2.equals(null)) {
                                    try {
                                        int zzb2 = zzb(context, str, z, true);
                                        String str2 = zzc;
                                        if (str2 != null && !str2.isEmpty()) {
                                            ClassLoader zza2 = zzb.zza();
                                            if (zza2 == null) {
                                                if (Build.VERSION.SDK_INT >= 29) {
                                                    AbstractC0693xc028779d.m3277x3271d0aa();
                                                    String str3 = zzc;
                                                    Preconditions.checkNotNull(str3);
                                                    zza2 = AbstractC0693xc028779d.m3276xfbe0c504(str3, ClassLoader.getSystemClassLoader());
                                                } else {
                                                    String str4 = zzc;
                                                    Preconditions.checkNotNull(str4);
                                                    zza2 = new zzc(str4, ClassLoader.getSystemClassLoader());
                                                }
                                            }
                                            zzd(zza2);
                                            declaredField.set(null, zza2);
                                            zzb = bool2;
                                            return zzb2;
                                        }
                                        return zzb2;
                                    } catch (LoadingException unused2) {
                                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                                        bool = Boolean.FALSE;
                                    }
                                }
                            }
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                        zzb = bool;
                    }
                }
                if (bool.booleanValue()) {
                    try {
                        return zzb(context, str, z, false);
                    } catch (LoadingException e3) {
                        new ObfuscatedString(new long[]{3697689371188552321L, -2293496728011343581L, 9067111640854870558L}).toString();
                        e3.getMessage();
                        new ObfuscatedString(new long[]{-3157430452617670279L, 104195644784946641L, -8015609654816090635L, -6758810607585599855L, 5559930120241277036L, -2614962541922916345L, 8673346800679113037L}).toString();
                        return 0;
                    }
                }
                zzq zzg2 = zzg(context);
                if (zzg2 != null) {
                    try {
                        try {
                            int zze2 = zzg2.zze();
                            if (zze2 >= 3) {
                                zzn zznVar = (zzn) zzg.get();
                                if (zznVar != null && (cursor = zznVar.zza) != null) {
                                    i5 = cursor.getInt(0);
                                } else {
                                    Cursor cursor3 = (Cursor) ObjectWrapper.unwrap(zzg2.zzk(ObjectWrapper.wrap(context), str, z, ((Long) zzh.get()).longValue()));
                                    if (cursor3 != null) {
                                        try {
                                            if (cursor3.moveToFirst()) {
                                                int i6 = cursor3.getInt(0);
                                                if (i6 > 0) {
                                                    boolean zze3 = zze(cursor3);
                                                    i = zze3;
                                                    i3 = zze3;
                                                }
                                                cursor2 = cursor3;
                                                i = i3;
                                                if (cursor2 != null) {
                                                    cursor2.close();
                                                }
                                                i5 = i6;
                                                i2 = i;
                                            }
                                        } catch (RemoteException e4) {
                                            e = e4;
                                            cursor2 = cursor3;
                                            new ObfuscatedString(new long[]{-1337238693905055260L, -1274827626743163334L, -8760475071485600623L}).toString();
                                            e.getMessage();
                                            long[] jArr = new long[i4];
                                            // fill-array-data instruction
                                            jArr[0] = 5075411471784924107L;
                                            jArr[1] = 27086536461664488L;
                                            jArr[2] = -1975080393219259659L;
                                            jArr[3] = -2152032050575549867L;
                                            jArr[4] = -5543847568387392234L;
                                            jArr[5] = -4095316971557028093L;
                                            jArr[6] = -3778089368791841713L;
                                            new ObfuscatedString(jArr).toString();
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            return i5;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            cursor2 = cursor3;
                                            if (cursor2 != null) {
                                                cursor2.close();
                                            }
                                            throw th;
                                        }
                                    }
                                    new ObfuscatedString(new long[]{4823822095833059410L, -1589729539239441450L, 9003615843226197716L}).toString();
                                    new ObfuscatedString(new long[]{-6626673968961118421L, -6665855217184959816L, 58836272478003496L, -4854493114968517180L, 98515044678919368L, -5646360720781918118L, 1765979984536854186L}).toString();
                                    if (cursor3 != null) {
                                        cursor3.close();
                                    }
                                }
                            } else if (zze2 == 2) {
                                new ObfuscatedString(new long[]{4153126137804947727L, -6154505161505932017L, -4449327385549038773L}).toString();
                                new ObfuscatedString(new long[]{7302785428321782474L, 3193539829216365455L, 7403003319913904400L, -5903387220073270565L, 1466813719881915975L, -587556224651717412L, -4381876059552193466L, 6795117302230221903L, 337158374781222292L, 5927849276414693536L}).toString();
                                i5 = zzg2.zzg(ObjectWrapper.wrap(context), str, z);
                            } else {
                                new ObfuscatedString(new long[]{5924293342587472638L, 3036410858579535997L, 987943550065993616L}).toString();
                                new ObfuscatedString(new long[]{-5590236190922877306L, -7405739844656379948L, 3132373747210790732L, -2745339535822881954L, -2392132222549057384L, 8323021661585828295L, -4532438714328107430L, 4233209517278169850L, 3401214663631997599L}).toString();
                                i5 = zzg2.zzf(ObjectWrapper.wrap(context), str, z);
                            }
                        } catch (RemoteException e5) {
                            e = e5;
                            i4 = i2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                return i5;
            }
        } catch (Throwable th4) {
            CrashUtils.addDynamiteErrorToDropBox(context, th4);
            throw th4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x010a, code lost:
    
        r12.close();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0171  */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int zzb(Context context, String str, boolean z, boolean z2) {
        Throwable th;
        Exception e;
        ?? r4 = 0;
        ?? r42 = 0;
        ?? r43 = 0;
        ?? r44 = 0;
        try {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                long longValue = ((Long) zzh.get()).longValue();
                String obfuscatedString = new ObfuscatedString(new long[]{-2305998977426282200L, -5376921141780117925L, -1442960308850189602L, 4696739972490358876L}).toString();
                String obfuscatedString2 = new ObfuscatedString(new long[]{-3440676057508157265L, 2088496170812884586L}).toString();
                boolean z3 = true;
                if (true != z) {
                    obfuscatedString = obfuscatedString2;
                }
                Cursor query = contentResolver.query(new Uri.Builder().scheme(new ObfuscatedString(new long[]{5717759096753037438L, -5267840355063238437L}).toString()).authority(new ObfuscatedString(new long[]{-5680768468562276978L, 2072825322795518807L, -8593817651430855772L, -6301970631829924799L, 8003200615889037193L}).toString()).path(obfuscatedString).appendPath(str).appendQueryParameter(new ObfuscatedString(new long[]{-2386476152382357459L, -4352627057547681513L, -1065750381508353172L}).toString(), String.valueOf(longValue)).build(), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            boolean z4 = false;
                            int i = query.getInt(0);
                            if (i > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        zzc = query.getString(2);
                                        int columnIndex = query.getColumnIndex(new ObfuscatedString(new long[]{-1209219670627999512L, -2847352191457828583L, 723173446245288051L}).toString());
                                        if (columnIndex >= 0) {
                                            zze = query.getInt(columnIndex);
                                        }
                                        int columnIndex2 = query.getColumnIndex(new ObfuscatedString(new long[]{-409910154309598531L, -2177576856587590624L, 6199082519645216922L, -2502947465726326698L, 5585871681525177347L}).toString());
                                        if (columnIndex2 >= 0) {
                                            if (query.getInt(columnIndex2) == 0) {
                                                z3 = false;
                                            }
                                            zzd = z3;
                                            z4 = z3;
                                        }
                                    } finally {
                                    }
                                }
                                if (zze(query)) {
                                    query = null;
                                }
                            }
                            if (z2 && z4) {
                                throw new LoadingException(new ObfuscatedString(new long[]{-3441257873727938304L, -7952954809423122019L, -5021647362104035369L, 1816372930064099945L, -2508064696662797067L, -7967703829829474913L, 6850911077044644138L, 3721475706603679378L}).toString(), r43 == true ? 1 : 0);
                            }
                            return i;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        if (e instanceof LoadingException) {
                            throw e;
                        }
                        throw new LoadingException(new ObfuscatedString(new long[]{5597926047433647301L, -8101669777037473044L, -6893751370213912662L, 4308997003676012326L, 1343510632856514134L}).toString() + e.getMessage(), e, r42 == true ? 1 : 0);
                    }
                }
                new ObfuscatedString(new long[]{1565733814483125860L, -2993690139664756782L, -7664960454249360946L}).toString();
                new ObfuscatedString(new long[]{-8314400438446733707L, -4397552328119019111L, 275430387089054725L, 6123272037578856340L, 6388518091698021173L, -6721464524698522642L, -3927716023726452199L}).toString();
                throw new LoadingException(new ObfuscatedString(new long[]{1463936708191388304L, 4714584792079161126L, 4578469805140051179L, 5338389490664743307L, -1115059852202000116L, 7042783318414146540L, 9159300241182982267L, 5936240043386191544L}).toString(), r44 == true ? 1 : 0);
            } catch (Throwable th2) {
                th = th2;
                r4 = context;
                if (r4 != 0) {
                    r4.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
        } catch (Throwable th3) {
            th = th3;
            if (r4 != 0) {
            }
            throw th;
        }
    }

    private static DynamiteModule zzc(Context context, String str) {
        String obfuscatedString = new ObfuscatedString(new long[]{2369741524830227916L, -3801083164421734934L, -7008832631373392245L, 8729572500790211343L, -3150947629309862305L}).toString();
        String valueOf = String.valueOf(str);
        new ObfuscatedString(new long[]{-1746034170156482464L, -5785397944361635527L, -2778299956084497338L}).toString();
        obfuscatedString.concat(valueOf);
        return new DynamiteModule(context);
    }

    @GuardedBy("DynamiteModule.class")
    private static void zzd(ClassLoader classLoader) {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass(new ObfuscatedString(new long[]{-4420543530961224799L, 9161386299737287778L, 1769393970144509448L, -8010355305027522117L, 8140258155011882422L, 6899790720554785186L, -2816956933651330677L, -6847148071057816042L}).toString()).getConstructor(null).newInstance(null);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4515040258283839431L, 9062462879326532631L, -8211301148668814414L, -2907631654317388573L, 7139340366927794104L, -2717720859086924143L, -3940626018988095651L, -909593282083022712L}).toString());
                if (queryLocalInterface instanceof zzr) {
                    zzrVar = (zzr) queryLocalInterface;
                } else {
                    zzrVar = new zzr(iBinder);
                }
            }
            zzl = zzrVar;
        } catch (ClassNotFoundException e) {
            e = e;
            throw new LoadingException(new ObfuscatedString(new long[]{-7536386910530952863L, 4351021628915111078L, -5700040105148579066L, 3660360347402776156L, 2412385635939091509L, -8993160929467681423L}).toString(), e, zzpVar);
        } catch (IllegalAccessException e2) {
            e = e2;
            throw new LoadingException(new ObfuscatedString(new long[]{-7536386910530952863L, 4351021628915111078L, -5700040105148579066L, 3660360347402776156L, 2412385635939091509L, -8993160929467681423L}).toString(), e, zzpVar);
        } catch (InstantiationException e3) {
            e = e3;
            throw new LoadingException(new ObfuscatedString(new long[]{-7536386910530952863L, 4351021628915111078L, -5700040105148579066L, 3660360347402776156L, 2412385635939091509L, -8993160929467681423L}).toString(), e, zzpVar);
        } catch (NoSuchMethodException e4) {
            e = e4;
            throw new LoadingException(new ObfuscatedString(new long[]{-7536386910530952863L, 4351021628915111078L, -5700040105148579066L, 3660360347402776156L, 2412385635939091509L, -8993160929467681423L}).toString(), e, zzpVar);
        } catch (InvocationTargetException e5) {
            e = e5;
            throw new LoadingException(new ObfuscatedString(new long[]{-7536386910530952863L, 4351021628915111078L, -5700040105148579066L, 3660360347402776156L, 2412385635939091509L, -8993160929467681423L}).toString(), e, zzpVar);
        }
    }

    private static boolean zze(Cursor cursor) {
        zzn zznVar = (zzn) zzg.get();
        if (zznVar != null && zznVar.zza == null) {
            zznVar.zza = cursor;
            return true;
        }
        return false;
    }

    @GuardedBy("DynamiteModule.class")
    private static boolean zzf(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(zzf)) {
            return true;
        }
        boolean z = false;
        if (zzf == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider(new ObfuscatedString(new long[]{5018179298141279322L, 5270314328174625306L, -3176094826812084959L, -6333479537120348001L, -8373187987289684169L}).toString(), 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && resolveContentProvider != null && new ObfuscatedString(new long[]{-225263812506889196L, 9102157182671892406L, 9140925073248090741L, -2956603073158423416L}).toString().equals(resolveContentProvider.packageName)) {
                z = true;
            }
            zzf = Boolean.valueOf(z);
            if (z && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                new ObfuscatedString(new long[]{4942627392460906701L, 1902306225775008502L, 7008480369159026315L}).toString();
                new ObfuscatedString(new long[]{-5304373462176231887L, -172928850454447512L, -5560172493230209999L, -204640408668538720L, -6120922796157158901L, 6622360019765562836L}).toString();
                zzd = true;
            }
        }
        if (!z) {
            new ObfuscatedString(new long[]{8211439783400973692L, -7516147750894812820L, -7075241345655210272L}).toString();
            new ObfuscatedString(new long[]{7114044461944886138L, -7473623292056016753L, -4184832276794673460L, 5262381116503200341L, -8251489024763301842L, 2175544390896585631L, -4189529031500727999L}).toString();
        }
        return z;
    }

    @Nullable
    private static zzq zzg(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = zzk;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext(new ObfuscatedString(new long[]{2095942640790202002L, 7167240240106889539L, -472382226077683437L, -6119693464270140697L}).toString(), 3).getClassLoader().loadClass(new ObfuscatedString(new long[]{7545259482189954785L, -4232419847009647622L, -3909187994576499298L, -1971632083727081782L, 2997925237336672969L, -3139096357202125193L, 416428457872263207L, 7731621146790900397L, -6167853269398763092L}).toString()).newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{8427965207442477845L, 5008229301166770936L, -2952809192694828156L, 6293758407584621935L, 4290531573466615313L, -7922638089106178438L, -5321427858284378622L}).toString());
                    if (queryLocalInterface instanceof zzq) {
                        zzqVar = (zzq) queryLocalInterface;
                    } else {
                        zzqVar = new zzq(iBinder);
                    }
                }
                if (zzqVar != null) {
                    zzk = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e) {
                new ObfuscatedString(new long[]{-4048429092148949851L, 1735610938197485205L, 8527549981921906960L}).toString();
                e.getMessage();
                new ObfuscatedString(new long[]{3827797499512179612L, 6274790179112198703L, 8728088858652790358L, 4302651498358343903L, 6336703378266290268L, -7579573192420896679L, 2742874695174255823L}).toString();
            }
            return null;
        }
    }

    @NonNull
    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Context getModuleContext() {
        return this.zzj;
    }

    @NonNull
    @KeepForSdk
    public IBinder instantiate(@NonNull String str) {
        try {
            return (IBinder) this.zzj.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new LoadingException(new ObfuscatedString(new long[]{2715908673647712693L, -9051425372135208090L, 7365960212285033073L, -7485159738264783658L, 2211177097992899950L, 8621927283834410664L}).toString().concat(String.valueOf(str)), e, null);
        }
    }
}
