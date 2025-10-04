package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

@KeepForSdk
@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public class AdvertisingIdClient {

    @Nullable
    @GuardedBy("this")
    BlockingServiceConnection zza;

    @Nullable
    @GuardedBy("this")
    zzf zzb;

    @GuardedBy("this")
    boolean zzc;
    final Object zzd;

    @Nullable
    @GuardedBy("mAutoDisconnectTaskLock")
    zzb zze;
    final long zzf;

    @GuardedBy("this")
    private final Context zzg;

    @KeepForSdkWithMembers
    /* loaded from: classes2.dex */
    public static final class Info {

        @Nullable
        private final String zza;
        private final boolean zzb;

        @Deprecated
        public Info(@Nullable String str, boolean z) {
            this.zza = str;
            this.zzb = z;
        }

        @Nullable
        public String getId() {
            return this.zza;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.zzb;
        }

        @NonNull
        public String toString() {
            String str = this.zza;
            boolean z = this.zzb;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append(new ObfuscatedString(new long[]{-1035714944690239544L, -34668545757448873L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{-715642030174286418L, 1328329707154365577L}).toString());
            sb.append(z);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(@NonNull Context context) {
        this(context, WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, false, false);
    }

    @NonNull
    @KeepForSdk
    public static Info getAdvertisingIdInfo(@NonNull Context context) {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zzb(false);
            Info zzd = advertisingIdClient.zzd(-1);
            advertisingIdClient.zzc(zzd, true, 0.0f, SystemClock.elapsedRealtime() - elapsedRealtime, new ObfuscatedString(new long[]{-1206129938851861603L}).toString(), null);
            return zzd;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(@NonNull Context context) {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zzb(false);
            Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{-8830191056949134321L, -2783568986632312991L, -3250234000123846732L, -4695116005232450742L, -8361270934931552929L, 1030682126589012616L, 2780085175715398194L, 74661354690161142L}).toString());
            synchronized (advertisingIdClient) {
                try {
                    if (!advertisingIdClient.zzc) {
                        synchronized (advertisingIdClient.zzd) {
                            zzb zzbVar = advertisingIdClient.zze;
                            if (zzbVar == null || !zzbVar.zzb) {
                                throw new IOException(new ObfuscatedString(new long[]{-2177173269732560587L, 2948264031741806959L, -5620604446489055888L, 9179259898119509331L, -5348194750886756072L, -1827669737254842166L}).toString());
                            }
                        }
                        try {
                            advertisingIdClient.zzb(false);
                            if (!advertisingIdClient.zzc) {
                                throw new IOException(new ObfuscatedString(new long[]{6564847127944262157L, -8624260181428878169L, -6755305314543875097L, -1836702817915014730L, 3124527350370044810L, 3554636773644715407L}).toString());
                            }
                        } catch (Exception e) {
                            throw new IOException(new ObfuscatedString(new long[]{-8459810251884790691L, 8550507365853170957L, -4003751578156163307L, 8683691666334593361L, -4911928327662519521L, 7357841271377113705L}).toString(), e);
                        }
                    }
                    Preconditions.checkNotNull(advertisingIdClient.zza);
                    Preconditions.checkNotNull(advertisingIdClient.zzb);
                    try {
                        zzd = advertisingIdClient.zzb.zzd();
                    } catch (RemoteException unused) {
                        new ObfuscatedString(new long[]{-7705566629949018599L, -8839326174324947832L, 1245612179386052949L, -7683584698003731607L}).toString();
                        new ObfuscatedString(new long[]{937831654358299115L, -4352598177471181246L, -6283908746337754911L, -7493822363442627865L}).toString();
                        throw new IOException(new ObfuscatedString(new long[]{-2801121187009953883L, -4347029128891067145L, 8926689468106528951L}).toString());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            advertisingIdClient.zze();
            return zzd;
        } finally {
            advertisingIdClient.zza();
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private final Info zzd(int i) {
        Info info;
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{2214650808985809098L, -5368669270551113408L, -6828216079960324237L, 8988631118377546280L, -721746679339298127L, 4637639437501608687L, -2157564288445754295L, -206107991516249421L}).toString());
        synchronized (this) {
            try {
                if (!this.zzc) {
                    synchronized (this.zzd) {
                        zzb zzbVar = this.zze;
                        if (zzbVar == null || !zzbVar.zzb) {
                            throw new IOException(new ObfuscatedString(new long[]{-5303903313209556538L, -1893461564836575376L, -618658101944341667L, -7700370195864321543L, -103491709426582687L, -8310108983029892973L}).toString());
                        }
                    }
                    try {
                        zzb(false);
                        if (!this.zzc) {
                            throw new IOException(new ObfuscatedString(new long[]{6247433561174726184L, -9199617126171171783L, 6859411955058959167L, 3375297312042113176L, -1384117549870669814L, 6669481796390680604L}).toString());
                        }
                    } catch (Exception e) {
                        throw new IOException(new ObfuscatedString(new long[]{8128350402364841757L, 5843231683109589059L, 1471937296436855996L, 4990778081223553751L, -1329561866543669400L, 601265456427331096L}).toString(), e);
                    }
                }
                Preconditions.checkNotNull(this.zza);
                Preconditions.checkNotNull(this.zzb);
                try {
                    info = new Info(this.zzb.zzc(), this.zzb.zze(true));
                } catch (RemoteException unused) {
                    new ObfuscatedString(new long[]{-398750132276340980L, -5170633952334287130L, 8958358325588739075L, 3036611108778663395L}).toString();
                    new ObfuscatedString(new long[]{-1773982527667896793L, 5965095909584084503L, 4081455544877201955L, -5769569472875395508L}).toString();
                    throw new IOException(new ObfuscatedString(new long[]{2935142691877658350L, 2501263177407140921L, -7220778713837201184L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zze();
        return info;
    }

    private final void zze() {
        synchronized (this.zzd) {
            zzb zzbVar = this.zze;
            if (zzbVar != null) {
                zzbVar.zza.countDown();
                try {
                    this.zze.join();
                } catch (InterruptedException unused) {
                }
            }
            long j = this.zzf;
            if (j > 0) {
                this.zze = new zzb(this, j);
            }
        }
    }

    public final void finalize() {
        zza();
        super.finalize();
    }

    @NonNull
    @KeepForSdk
    public Info getInfo() {
        return zzd(-1);
    }

    @KeepForSdk
    public void start() {
        zzb(true);
    }

    public final void zza() {
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{-8192242549984702302L, 6928819009968426601L, 7271607035486323373L, 8558650164161859138L, 3388124528070223047L, -115568645266033065L, -7108883612536682154L, 5755564159513443554L}).toString());
        synchronized (this) {
            try {
                if (this.zzg != null && this.zza != null) {
                    try {
                        if (this.zzc) {
                            ConnectionTracker.getInstance().unbindService(this.zzg, this.zza);
                        }
                    } catch (Throwable unused) {
                        new ObfuscatedString(new long[]{5789476861633151401L, -1620256584413682790L, 7978244044984822048L, 2559605880595825046L}).toString();
                        new ObfuscatedString(new long[]{-5980894773066115510L, 4751367712242952891L, 6618605973557883764L, -8925498442321147605L, -115625117469184567L, -6987673053405650550L, -682360655421499799L}).toString();
                    }
                    this.zzc = false;
                    this.zzb = null;
                    this.zza = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @VisibleForTesting
    public final void zzb(boolean z) {
        Preconditions.checkNotMainThread(new ObfuscatedString(new long[]{-5340880111118241913L, 8514770252088755363L, -7635098692703571703L, 1345397560558155846L, 3241826918541566885L, 2445275522678536305L, 3850347185233835017L, 1650574241867532970L}).toString());
        synchronized (this) {
            try {
                if (this.zzc) {
                    zza();
                }
                Context context = this.zzg;
                try {
                    context.getPackageManager().getPackageInfo(new ObfuscatedString(new long[]{1586681598211771772L, 4443320515131094282L, 8103108192288034222L, 2671834846156268327L}).toString(), 0);
                    int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
                    if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                        throw new IOException(new ObfuscatedString(new long[]{-3800849609081933978L, 5094191552497508148L, -1698954055705799394L, 8886378615650591636L, 3627468283312865402L, -8303547569492955496L}).toString());
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent(new ObfuscatedString(new long[]{7019531421689436392L, 2840327678295557234L, 6892814621481153301L, -7837846767406478838L, 3289954907820478725L, 1479111121239092447L, -1155914956824438559L, -6621498427439549480L}).toString());
                    intent.setPackage(new ObfuscatedString(new long[]{-8151402805286285412L, -8985479731985450228L, 5815117391066136917L, 4549530662321171402L}).toString());
                    try {
                        if (ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                            this.zza = blockingServiceConnection;
                            try {
                                this.zzb = zze.zza(blockingServiceConnection.getServiceWithTimeout(WorkRequest.MIN_BACKOFF_MILLIS, TimeUnit.MILLISECONDS));
                                this.zzc = true;
                                if (z) {
                                    zze();
                                }
                            } catch (InterruptedException unused) {
                                throw new IOException(new ObfuscatedString(new long[]{-5875492871700268652L, 2348609434714084597L, -1069196637413665796L, -6808170418960986159L}).toString());
                            } catch (Throwable th) {
                                throw new IOException(th);
                            }
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{8692824847913688323L, -6484390299324019376L, -1993219294030435356L, 6651269294442287617L}).toString());
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public final boolean zzc(@Nullable Info info, boolean z, float f, long j, String str, @Nullable Throwable th) {
        String obfuscatedString;
        if (Math.random() <= 0.0d) {
            HashMap hashMap = new HashMap();
            hashMap.put(new ObfuscatedString(new long[]{4680707678397849892L, 2055626173852069836L, -8274386826446631012L}).toString(), new ObfuscatedString(new long[]{2545427234931313468L, -2046051947365076661L}).toString());
            if (info != null) {
                if (true != info.isLimitAdTrackingEnabled()) {
                    obfuscatedString = new ObfuscatedString(new long[]{7659105667397712222L, -8345503725449984575L}).toString();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{96246414603805759L, 2211462315772486114L}).toString();
                }
                hashMap.put(new ObfuscatedString(new long[]{5000151983448658064L, -4127292324615192843L, 1468769503923768358L, 1655315554543975291L}).toString(), obfuscatedString);
                String id = info.getId();
                if (id != null) {
                    hashMap.put(new ObfuscatedString(new long[]{-4253822383155094649L, -615296515995973888L, 8496357347750722380L}).toString(), Integer.toString(id.length()));
                }
            }
            if (th != null) {
                hashMap.put(new ObfuscatedString(new long[]{2944298173751110573L, -1853404108549421034L}).toString(), th.getClass().getName());
            }
            hashMap.put(new ObfuscatedString(new long[]{6918987706238912352L, -4465431454912319452L}).toString(), new ObfuscatedString(new long[]{-7191551300292859744L, 5755703911304539456L, 5569451168087361010L, -5907594300684863451L}).toString());
            hashMap.put(new ObfuscatedString(new long[]{8723792925312076938L, -261553605089537834L, -3798074174474107389L}).toString(), Long.toString(j));
            new zza(this, hashMap).start();
            return true;
        }
        return false;
    }

    @VisibleForTesting
    public AdvertisingIdClient(@NonNull Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        this.zzd = new Object();
        Preconditions.checkNotNull(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.zzg = context;
        this.zzc = false;
        this.zzf = j;
    }
}
