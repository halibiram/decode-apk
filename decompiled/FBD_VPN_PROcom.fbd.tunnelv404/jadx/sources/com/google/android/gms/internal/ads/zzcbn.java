package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Looper;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzcbn implements zzcbs {
    public static final /* synthetic */ int zzb = 0;
    private static final List zzc = DesugarCollections.synchronizedList(new ArrayList());

    @VisibleForTesting
    boolean zza;
    private final zzheb zzd;
    private final LinkedHashMap zze;
    private final Context zzh;
    private final zzcbp zzi;
    private final zzcbo zzn;
    private final List zzf = new ArrayList();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();
    private HashSet zzk = new HashSet();
    private boolean zzl = false;
    private boolean zzm = false;

    public zzcbn(Context context, zzcei zzceiVar, zzcbp zzcbpVar, @Nullable String str, zzcbo zzcboVar) {
        Preconditions.checkNotNull(zzcbpVar, new ObfuscatedString(new long[]{-1059866186536488692L, 4114995134419745319L, -5256965631131747699L, -6305571823371819659L, 7182134194159053072L, -8071250656354157073L}).toString());
        this.zzh = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.zze = new LinkedHashMap();
        this.zzn = zzcboVar;
        this.zzi = zzcbpVar;
        Iterator it = zzcbpVar.zze.iterator();
        while (it.hasNext()) {
            this.zzk.add(((String) it.next()).toLowerCase(Locale.ENGLISH));
        }
        this.zzk.remove(new ObfuscatedString(new long[]{829344321331136944L, 8653414426284285507L}).toString().toLowerCase(Locale.ENGLISH));
        zzheb zza = zzhfz.zza();
        zza.zzn(9);
        zza.zzj(str);
        zza.zzh(str);
        zzhec zza2 = zzhed.zza();
        String str2 = this.zzi.zza;
        if (str2 != null) {
            zza2.zza(str2);
        }
        zza.zzg((zzhed) zza2.zzal());
        zzhfq zza3 = zzhfr.zza();
        zza3.zzc(Wrappers.packageManager(this.zzh).isCallerInstantApp());
        String str3 = zzceiVar.zza;
        if (str3 != null) {
            zza3.zza(str3);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzh);
        if (apkVersion > 0) {
            zza3.zzb(apkVersion);
        }
        zza.zzf((zzhfr) zza3.zzal());
        this.zzd = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final zzcbp zza() {
        return this.zzi;
    }

    public final /* synthetic */ ListenableFuture zzb(Map map) {
        zzhfo zzhfoVar;
        ListenableFuture zzm;
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray(new ObfuscatedString(new long[]{-8295032552962089786L, -6570460912848323969L}).toString());
                    if (optJSONArray != null) {
                        synchronized (this.zzj) {
                            try {
                                int length = optJSONArray.length();
                                synchronized (this.zzj) {
                                    zzhfoVar = (zzhfo) this.zze.get(str);
                                }
                                if (zzhfoVar == null) {
                                    zzcbr.zza(new ObfuscatedString(new long[]{-2592115279533767791L, -1308970174513465176L, 4558840123320183550L, -7093541461324970659L, 1346195868580253609L, 5987353152295085954L, -2836315921194539292L, -2253257138891285439L}).toString() + str);
                                } else {
                                    boolean z = false;
                                    for (int i = 0; i < length; i++) {
                                        zzhfoVar.zza(optJSONArray.getJSONObject(i).getString(new ObfuscatedString(new long[]{3065532024129462616L, 4282232679165634785L, -4158347173070024063L}).toString()));
                                    }
                                    boolean z2 = this.zza;
                                    if (length > 0) {
                                        z = true;
                                    }
                                    this.zza = z | z2;
                                }
                            } finally {
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (((Boolean) zzbii.zzb.zze()).booleanValue()) {
                    zzcec.zzf(new ObfuscatedString(new long[]{-294639861666228262L, -3652300962834710277L, -704047819650035514L, 214678671723391705L, -8143505921987802912L, 5781309264432029505L}).toString(), e);
                }
                return zzgen.zzg(new Exception(new ObfuscatedString(new long[]{-4301417181087572326L, -2985663278219335031L, 6305364585952114996L, 6804457657359089988L, -2208212364300029211L, -8972813385001026613L}).toString()));
            }
        }
        if (this.zza) {
            synchronized (this.zzj) {
                this.zzd.zzn(10);
            }
        }
        boolean z3 = this.zza;
        if ((z3 && this.zzi.zzg) || ((this.zzm && this.zzi.zzf) || (!z3 && this.zzi.zzd))) {
            synchronized (this.zzj) {
                try {
                    Iterator it = this.zze.values().iterator();
                    while (it.hasNext()) {
                        this.zzd.zzc((zzhfp) ((zzhfo) it.next()).zzal());
                    }
                    this.zzd.zza(this.zzf);
                    this.zzd.zzb(this.zzg);
                    if (zzcbr.zzb()) {
                        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{-553822503508647612L, -7459367270950714448L, -1928173461963433041L, 3236130733163736818L, -735715695512774770L}).toString() + this.zzd.zzl() + new ObfuscatedString(new long[]{3634610706138558771L, -6175927925270004093L, -8887361227286264733L}).toString() + this.zzd.zzk() + new ObfuscatedString(new long[]{6760174079821559835L, -6374394094560704588L, 4735173284174537604L}).toString());
                        for (zzhfp zzhfpVar : this.zzd.zzm()) {
                            sb.append(new ObfuscatedString(new long[]{1413904637020258855L, 897389987402471113L}).toString());
                            sb.append(zzhfpVar.zza());
                            sb.append(new ObfuscatedString(new long[]{-3183519446799154837L, 3213971127205954454L}).toString());
                            sb.append(zzhfpVar.zze());
                        }
                        zzcbr.zza(sb.toString());
                    }
                    ListenableFuture zzb2 = new com.google.android.gms.ads.internal.util.zzbq(this.zzh).zzb(1, this.zzi.zzb, null, ((zzhfz) this.zzd.zzal()).zzax());
                    if (zzcbr.zzb()) {
                        zzb2.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbk
                            @Override // java.lang.Runnable
                            public final void run() {
                                zzcbr.zza(new ObfuscatedString(new long[]{8508629707684135543L, 7131908887238664199L, 5523687490249819888L, 1045452756952034424L}).toString());
                            }
                        }, zzcep.zza);
                    }
                    zzm = zzgen.zzm(zzb2, new zzfws() { // from class: com.google.android.gms.internal.ads.zzcbl
                        @Override // com.google.android.gms.internal.ads.zzfws
                        public final Object apply(Object obj) {
                            int i2 = zzcbn.zzb;
                            return null;
                        }
                    }, zzcep.zzf);
                } finally {
                }
            }
            return zzm;
        }
        return zzgen.zzh(null);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzd(String str, Map map, int i) {
        String obfuscatedString;
        String obfuscatedString2;
        synchronized (this.zzj) {
            if (i == 3) {
                try {
                    this.zzm = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.zze.containsKey(str)) {
                if (i == 3) {
                    ((zzhfo) this.zze.get(str)).zze(4);
                }
                return;
            }
            zzhfo zzc2 = zzhfp.zzc();
            int zza = zzhfn.zza(i);
            if (zza != 0) {
                zzc2.zze(zza);
            }
            zzc2.zzb(this.zze.size());
            zzc2.zzd(str);
            zzheo zza2 = zzher.zza();
            if (!this.zzk.isEmpty() && map != null) {
                for (Map.Entry entry : map.entrySet()) {
                    if (entry.getKey() != null) {
                        obfuscatedString = (String) entry.getKey();
                    } else {
                        obfuscatedString = new ObfuscatedString(new long[]{4572552086645940002L}).toString();
                    }
                    if (entry.getValue() != null) {
                        obfuscatedString2 = (String) entry.getValue();
                    } else {
                        obfuscatedString2 = new ObfuscatedString(new long[]{-586307821418277049L}).toString();
                    }
                    if (this.zzk.contains(obfuscatedString.toLowerCase(Locale.ENGLISH))) {
                        zzhem zza3 = zzhen.zza();
                        zza3.zza(zzgyl.zzw(obfuscatedString));
                        zza3.zzb(zzgyl.zzw(obfuscatedString2));
                        zza2.zza((zzhen) zza3.zzal());
                    }
                }
            }
            zzc2.zzc((zzher) zza2.zzal());
            this.zze.put(str, zzc2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zze() {
        synchronized (this.zzj) {
            this.zze.keySet();
            ListenableFuture zzh = zzgen.zzh(Collections.emptyMap());
            zzgdu zzgduVar = new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcbi
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzcbn.this.zzb((Map) obj);
                }
            };
            zzgey zzgeyVar = zzcep.zzf;
            ListenableFuture zzn = zzgen.zzn(zzh, zzgduVar, zzgeyVar);
            ListenableFuture zzo = zzgen.zzo(zzn, 10L, TimeUnit.SECONDS, zzcep.zzd);
            zzgen.zzr(zzn, new zzcbm(this, zzo), zzgeyVar);
            zzc.add(zzo);
        }
    }

    public final /* synthetic */ void zzf(Bitmap bitmap) {
        zzgyi zzt = zzgyl.zzt();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzt);
        synchronized (this.zzj) {
            zzheb zzhebVar = this.zzd;
            zzhfh zza = zzhfj.zza();
            zza.zza(zzt.zzb());
            zza.zzb(new ObfuscatedString(new long[]{-8141102483029488336L, 4599146732891437263L, -9218789998216187398L}).toString());
            zza.zzc(2);
            zzhebVar.zzi((zzhfj) zza.zzal());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0045 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa  */
    @Override // com.google.android.gms.internal.ads.zzcbs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzg(View view) {
        Bitmap bitmap;
        boolean isDrawingCacheEnabled;
        if (this.zzi.zzc && !this.zzl) {
            com.google.android.gms.ads.internal.zzt.zzp();
            final Bitmap bitmap2 = null;
            if (view != null) {
                try {
                    isDrawingCacheEnabled = view.isDrawingCacheEnabled();
                    view.setDrawingCacheEnabled(true);
                    Bitmap drawingCache = view.getDrawingCache();
                    if (drawingCache != null) {
                        bitmap = Bitmap.createBitmap(drawingCache);
                    } else {
                        bitmap = null;
                    }
                } catch (RuntimeException e) {
                    e = e;
                    bitmap = null;
                }
                try {
                    view.setDrawingCacheEnabled(isDrawingCacheEnabled);
                } catch (RuntimeException e2) {
                    e = e2;
                    zzcec.zzh(new ObfuscatedString(new long[]{-3106881821671550102L, -3651380113396171560L, -6281530962782561533L, -1538804000423903533L, -8161050571681714048L}).toString(), e);
                    if (bitmap != null) {
                    }
                    if (bitmap2 != null) {
                    }
                }
                if (bitmap != null) {
                    try {
                        int width = view.getWidth();
                        int height = view.getHeight();
                        if (width != 0 && height != 0) {
                            Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.RGB_565);
                            Canvas canvas = new Canvas(createBitmap);
                            view.layout(0, 0, width, height);
                            view.draw(canvas);
                            bitmap2 = createBitmap;
                        }
                        zzcec.zzj(new ObfuscatedString(new long[]{-4613565957531929968L, 4100005945984924270L, 5617908908813720921L, 7753732141275882323L, -4851251765658293612L}).toString());
                    } catch (RuntimeException e3) {
                        zzcec.zzh(new ObfuscatedString(new long[]{-8955227955791277942L, 6093410836242535120L, 3877345264326713298L, -2545126218413286178L, -2337951700795803606L}).toString(), e3);
                    }
                } else {
                    bitmap2 = bitmap;
                }
            }
            if (bitmap2 != null) {
                zzcbr.zza(new ObfuscatedString(new long[]{-9183824029574868463L, -8101771732019665504L, 8733344434308500131L, -8380758016684000681L, 5691785530045588715L, 6163952923759206068L}).toString());
                return;
            }
            this.zzl = true;
            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcbj
                @Override // java.lang.Runnable
                public final void run() {
                    zzcbn.this.zzf(bitmap2);
                }
            };
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                runnable.run();
            } else {
                zzcep.zza.execute(runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzh(String str) {
        synchronized (this.zzj) {
            try {
                if (str == null) {
                    this.zzd.zzd();
                } else {
                    this.zzd.zze(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final boolean zzi() {
        if (PlatformVersion.isAtLeastKitKat() && this.zzi.zzc && !this.zzl) {
            return true;
        }
        return false;
    }
}
