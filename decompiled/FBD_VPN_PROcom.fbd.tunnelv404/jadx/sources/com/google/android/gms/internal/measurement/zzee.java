package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.android.gms.measurement.internal.zzga;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.android.gms.measurement.internal.zzhj;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzee {
    private static volatile zzee zzc;
    protected final Clock zza;
    protected final ExecutorService zzb;
    private final String zzd;
    private final AppMeasurementSdk zze;

    @GuardedBy("listenerList")
    private final List zzf;
    private int zzg;
    private boolean zzh;
    private final String zzi;
    private volatile zzcc zzj;

    public zzee(Context context, String str, String str2, String str3, Bundle bundle) {
        boolean z;
        if (str != null && zzV(str2, str3)) {
            this.zzd = str;
        } else {
            this.zzd = new ObfuscatedString(new long[]{-7304619492222668687L, -3232423252949355954L}).toString();
        }
        this.zza = DefaultClock.getInstance();
        zzbx.zza();
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new zzdi(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        this.zzb = Executors.unconfigurableExecutorService(threadPoolExecutor);
        this.zze = new AppMeasurementSdk(this);
        this.zzf = new ArrayList();
        try {
            if (com.google.android.gms.measurement.internal.zzit.zzc(context, new ObfuscatedString(new long[]{-4691445573844175617L, -1794902030427674056L, -3740519828609908650L}).toString(), zzga.zza(context)) != null && !zzR()) {
                this.zzi = null;
                this.zzh = true;
                new ObfuscatedString(new long[]{1330333084609341212L, -7786921066978864798L, -6038506996667325388L, 3660403261497670354L, 5284874201075015009L, -8284451770426514271L, -4557748236405602623L, 8281254887104131682L, 4191863693949723073L, -4718073977721042374L, -2364360842997023209L, -7485220011010335326L, -44032630679811114L, 1917042426799940232L, -5051148306650686622L, 983036804673121197L, -2367133828535306861L, -4788997854584055644L, -2977604367191960499L, 3846215681527786997L, 2417689253957128026L, 3991211836087951744L, 2347149905415245661L, -8182138910047498790L, 3706070834685124116L}).toString();
                return;
            }
        } catch (IllegalStateException unused) {
        }
        if (!zzV(str2, str3)) {
            this.zzi = new ObfuscatedString(new long[]{5189731449663143072L, 231376903595018273L}).toString();
            if (str2 != null && str3 != null) {
                new ObfuscatedString(new long[]{-203370845696362291L, -1443196946465285564L, -2585179185033085889L, -8832875332905058413L, 1791716146904871361L, 5055357662426461572L, -8660459187930925939L, -8353623393814288984L, -1006152114092024229L, -9034429099363100144L, -7106158008850697386L, 21605724948904144L, 7626117529008336398L}).toString();
            } else {
                if (str2 == null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z ^ (str3 == null)) {
                    new ObfuscatedString(new long[]{-4382952104926700123L, -8759371035320781894L, -2298011399200078881L, -3458843187146845901L, 4121960793461405412L, 1470211339751217743L, -6968602048723704784L, 3944940676983818713L, -5607925850456522675L, 2464112885806996779L, 1517591612547843827L}).toString();
                }
            }
        } else {
            this.zzi = str2;
        }
        zzU(new zzcx(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            new ObfuscatedString(new long[]{-7882306608082511981L, -1478043882015893123L, -173970541257884918L, 4943254301660787412L, 7781776979461153534L, -8456262426531865661L, 2930698503373457876L, -3702130352707198958L, 8730286473364513035L}).toString();
        } else {
            application.registerActivityLifecycleCallbacks(new zzed(this));
        }
    }

    public static final boolean zzR() {
        try {
            Class.forName(new ObfuscatedString(new long[]{1090367163684857038L, -143796182014558563L, -6822741409389894122L, -262592128636601818L, -7422087212956507455L, 4498197017602723883L, -69284549602784914L}).toString());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzS(Exception exc, boolean z, boolean z2) {
        this.zzh |= z;
        if (z) {
            new ObfuscatedString(new long[]{-8391729456590192472L, -2814469863768313251L, -6542242533212222284L, -100619471511664974L, 3514982156937449093L, -5851976272034402518L, -5324666198853583317L, -3091734560152771179L, 3216805525899601854L}).toString();
            return;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{8134518080935232415L, 5165931440458168427L, -1907098873949255157L, 6325621696372807362L, 7015410196636130909L, -4339852730695014627L}).toString();
        if (z2) {
            zzA(5, obfuscatedString, exc, null, null);
        }
    }

    private final void zzT(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l) {
        zzU(new zzdr(this, l, str, str2, bundle, z, z2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzU(zzdt zzdtVar) {
        this.zzb.execute(zzdtVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean zzV(String str, String str2) {
        if (str2 != null && str != null && !zzR()) {
            return true;
        }
        return false;
    }

    public static zzee zzg(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzc == null) {
            synchronized (zzee.class) {
                try {
                    if (zzc == null) {
                        zzc = new zzee(context, str, str2, str3, bundle);
                    }
                } finally {
                }
            }
        }
        return zzc;
    }

    public final void zzA(int i, String str, Object obj, Object obj2, Object obj3) {
        zzU(new zzdg(this, false, 5, str, obj, null, null));
    }

    public final void zzB(zzhj zzhjVar) {
        Preconditions.checkNotNull(zzhjVar);
        synchronized (this.zzf) {
            for (int i = 0; i < this.zzf.size(); i++) {
                try {
                    if (zzhjVar.equals(((Pair) this.zzf.get(i)).first)) {
                        new ObfuscatedString(new long[]{6176872883734810664L, 9067287967030203421L, -4643227848161775392L, -5799015429950939883L, -3467404322803116649L, -341852299444917095L}).toString();
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzdv zzdvVar = new zzdv(zzhjVar);
            this.zzf.add(new Pair(zzhjVar, zzdvVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    new ObfuscatedString(new long[]{5948174369110642981L, -3031431404451653145L, -4891504487005871525L, -6911532138571745961L, -4023724824871358000L, -7658644809122180005L, 2719897717490770396L, 6031421369005715089L, -3831348670376281001L, -4258575422340804444L, -1338113379188964589L, -3378819336172830548L, 2220621709407380880L}).toString();
                }
            }
            zzU(new zzdp(this, zzdvVar));
        }
    }

    public final void zzC() {
        zzU(new zzcv(this));
    }

    public final void zzD(Bundle bundle) {
        zzU(new zzcn(this, bundle));
    }

    public final void zzE(Bundle bundle) {
        zzU(new zzct(this, bundle));
    }

    public final void zzF(Bundle bundle) {
        zzU(new zzcu(this, bundle));
    }

    public final void zzG(Activity activity, String str, String str2) {
        zzU(new zzcr(this, activity, str, str2));
    }

    public final void zzH(boolean z) {
        zzU(new zzdm(this, z));
    }

    public final void zzI(Bundle bundle) {
        zzU(new zzdn(this, bundle));
    }

    public final void zzJ(zzhi zzhiVar) {
        zzdu zzduVar = new zzdu(zzhiVar);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzduVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                new ObfuscatedString(new long[]{4141431344362744496L, 6522630499270629617L, -6450521005257286108L, 4047246040491909668L, -6688328051287348228L, -4955788625314384196L, -5188587686299893094L, 1326054826788322610L, -1566169448538021983L, -5320935273416118728L, 2584608089562848440L, 6800647178681957262L}).toString();
            }
        }
        zzU(new zzdo(this, zzduVar));
    }

    public final void zzK(Boolean bool) {
        zzU(new zzcs(this, bool));
    }

    public final void zzL(long j) {
        zzU(new zzcw(this, j));
    }

    public final void zzM(String str) {
        zzU(new zzcq(this, str));
    }

    public final void zzN(String str, String str2, Object obj, boolean z) {
        zzU(new zzds(this, str, str2, obj, z));
    }

    public final void zzO(zzhj zzhjVar) {
        Pair pair;
        Preconditions.checkNotNull(zzhjVar);
        synchronized (this.zzf) {
            int i = 0;
            while (true) {
                try {
                    if (i < this.zzf.size()) {
                        if (zzhjVar.equals(((Pair) this.zzf.get(i)).first)) {
                            pair = (Pair) this.zzf.get(i);
                            break;
                        }
                        i++;
                    } else {
                        pair = null;
                        break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pair == null) {
                new ObfuscatedString(new long[]{-8077402276566768864L, 5276950563023482276L, -5602302938197320150L, -1289349824202775538L, 6089954669388470555L, 8906545633413910089L}).toString();
                return;
            }
            this.zzf.remove(pair);
            zzdv zzdvVar = (zzdv) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzdvVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    new ObfuscatedString(new long[]{764376896166893335L, -4476032903828846920L, -5402909965556856785L, 4821394867987648161L, -7607233713886394893L, 3204186171197670855L, -704089281858382646L, 2984606299413461594L, -2934746141758016798L, 3336332699397405321L, -3654129945578853008L, 1520951087763460665L, -2450683719584288779L}).toString();
                }
            }
            zzU(new zzdq(this, zzdvVar));
        }
    }

    public final int zza(String str) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdj(this, str, zzbzVar));
        Integer num = (Integer) zzbz.zze(zzbzVar.zzb(WorkRequest.MIN_BACKOFF_MILLIS), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final long zzb() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdc(this, zzbzVar));
        Long l = (Long) zzbz.zze(zzbzVar.zzb(500L), Long.class);
        if (l == null) {
            long nextLong = new Random(System.nanoTime() ^ this.zza.currentTimeMillis()).nextLong();
            int i = this.zzg + 1;
            this.zzg = i;
            return nextLong + i;
        }
        return l.longValue();
    }

    public final Bundle zzc(Bundle bundle, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdh(this, bundle, zzbzVar));
        if (z) {
            return zzbzVar.zzb(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        }
        return null;
    }

    public final AppMeasurementSdk zzd() {
        return this.zze;
    }

    public final zzcc zzf(Context context, boolean z) {
        try {
            return zzcb.asInterface(DynamiteModule.load(context, DynamiteModule.PREFER_HIGHEST_OR_LOCAL_VERSION, new ObfuscatedString(new long[]{4278983351286423564L, 8533454734515614275L, -1638100384580996109L, 6880729690039773177L, 3942244921324421123L, -7434008428800182247L, -8603605186028465293L}).toString()).instantiate(new ObfuscatedString(new long[]{247903525970084314L, -172699508030331793L, -3183350808571519753L, -9108068531891367566L, -7114686642891115471L, -9008261260132380544L, 7081327047211372396L, -957268613665852253L, -4708072967599975704L, -1832075924943943423L, 1406754100725854548L}).toString()));
        } catch (DynamiteModule.LoadingException e) {
            zzS(e, true, false);
            return null;
        }
    }

    public final Object zzh(int i) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdl(this, zzbzVar, i));
        return zzbz.zze(zzbzVar.zzb(15000L), Object.class);
    }

    public final String zzj() {
        return this.zzi;
    }

    @WorkerThread
    public final String zzk() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdk(this, zzbzVar));
        return zzbzVar.zzc(120000L);
    }

    public final String zzl() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdb(this, zzbzVar));
        return zzbzVar.zzc(50L);
    }

    public final String zzm() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzde(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String zzn() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdd(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final String zzo() {
        zzbz zzbzVar = new zzbz();
        zzU(new zzda(this, zzbzVar));
        return zzbzVar.zzc(500L);
    }

    public final List zzp(String str, String str2) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzcp(this, str, str2, zzbzVar));
        List list = (List) zzbz.zze(zzbzVar.zzb(CoroutineLiveDataKt.DEFAULT_TIMEOUT), List.class);
        if (list == null) {
            return Collections.emptyList();
        }
        return list;
    }

    public final Map zzq(String str, String str2, boolean z) {
        zzbz zzbzVar = new zzbz();
        zzU(new zzdf(this, str, str2, z, zzbzVar));
        Bundle zzb = zzbzVar.zzb(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
        if (zzb != null && zzb.size() != 0) {
            HashMap hashMap = new HashMap(zzb.size());
            for (String str3 : zzb.keySet()) {
                Object obj = zzb.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public final void zzu(String str) {
        zzU(new zzcy(this, str));
    }

    public final void zzv(String str, String str2, Bundle bundle) {
        zzU(new zzco(this, str, str2, bundle));
    }

    public final void zzw(String str) {
        zzU(new zzcz(this, str));
    }

    public final void zzx(@NonNull String str, Bundle bundle) {
        zzT(null, str, bundle, false, true, null);
    }

    public final void zzy(String str, String str2, Bundle bundle) {
        zzT(str, str2, bundle, true, true, null);
    }

    public final void zzz(String str, String str2, Bundle bundle, long j) {
        zzT(str, str2, bundle, true, false, Long.valueOf(j));
    }
}
