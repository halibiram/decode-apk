package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdzd implements zzeab, zzdyo {
    private final zzdzl zza;
    private final zzeac zzb;
    private final zzdyp zzc;
    private final zzdyy zzd;
    private final zzdyn zze;
    private final zzdzx zzf;
    private final String zzg;

    @Nullable
    private final String zzh;
    private JSONObject zzm;
    private boolean zzp;
    private int zzq;
    private boolean zzr;
    private final Map zzi = new HashMap();
    private final Map zzj = new HashMap();
    private final Map zzk = new HashMap();
    private String zzl = new ObfuscatedString(new long[]{-1454984731073906450L, 4194964504947794308L}).toString();
    private long zzn = Long.MAX_VALUE;
    private zzdyz zzo = zzdyz.zza;
    private zzdzc zzs = zzdzc.zza;
    private long zzt = 0;

    public zzdzd(zzdzl zzdzlVar, zzeac zzeacVar, zzdyp zzdypVar, Context context, zzcei zzceiVar, zzdyy zzdyyVar, zzdzx zzdzxVar, @Nullable String str) {
        this.zza = zzdzlVar;
        this.zzb = zzeacVar;
        this.zzc = zzdypVar;
        this.zze = new zzdyn(context);
        this.zzg = zzceiVar.zza;
        this.zzh = str;
        this.zzd = zzdyyVar;
        this.zzf = zzdzxVar;
        com.google.android.gms.ads.internal.zzt.zzs().zzg(this);
    }

    private final synchronized JSONObject zzs() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.zzi.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (zzdyr zzdyrVar : (List) entry.getValue()) {
                    if (zzdyrVar.zzg()) {
                        jSONArray.put(zzdyrVar.zzd());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put((String) entry.getKey(), jSONArray);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    private final void zzt() {
        this.zzr = true;
        this.zzd.zzc();
        this.zza.zzh(this);
        this.zzb.zzd(this);
        this.zzc.zzd(this);
        this.zzf.zzf(this);
        zzz(com.google.android.gms.ads.internal.zzt.zzo().zzi().zzo());
    }

    private final void zzu() {
        com.google.android.gms.ads.internal.zzt.zzo().zzi().zzG(zzd());
    }

    private final synchronized void zzv(zzdyz zzdyzVar, boolean z) {
        try {
            if (this.zzo != zzdyzVar) {
                if (zzp()) {
                    zzx();
                }
                this.zzo = zzdyzVar;
                if (zzp()) {
                    zzy();
                }
                if (z) {
                    zzu();
                }
            }
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0038 A[Catch: all -> 0x0027, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:9:0x0006, B:11:0x000a, B:13:0x001c, B:16:0x0029, B:18:0x0038, B:22:0x002d, B:24:0x0033), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final synchronized void zzw(boolean z, boolean z2) {
        try {
            if (this.zzp != z) {
                this.zzp = z;
                if (z) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
                        if (!com.google.android.gms.ads.internal.zzt.zzs().zzl()) {
                        }
                    }
                    zzy();
                    if (z2) {
                        zzu();
                        return;
                    }
                }
                if (!zzp()) {
                    zzx();
                }
                if (z2) {
                }
            }
        } finally {
        }
    }

    private final synchronized void zzx() {
        zzdyz zzdyzVar = zzdyz.zza;
        int ordinal = this.zzo.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.zzc.zzb();
            return;
        }
        this.zzb.zzb();
    }

    private final synchronized void zzy() {
        zzdyz zzdyzVar = zzdyz.zza;
        int ordinal = this.zzo.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return;
            }
            this.zzc.zzc();
            return;
        }
        this.zzb.zzc();
    }

    private final synchronized void zzz(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            zzw(jSONObject.optBoolean(new ObfuscatedString(new long[]{3343354541904569732L, 2058854977310882171L, 6566664943858122754L}).toString(), false), false);
            zzv((zzdyz) Enum.valueOf(zzdyz.class, jSONObject.optString(new ObfuscatedString(new long[]{-8211378939021185478L, 450684193245178369L}).toString(), new ObfuscatedString(new long[]{8491937820134266072L, -3215462408996942271L}).toString())), false);
            this.zzl = jSONObject.optString(new ObfuscatedString(new long[]{8839537859373119002L, 5153156791251090047L, -7402909785933000597L}).toString(), new ObfuscatedString(new long[]{8573741423364527973L, -1312462724904192214L}).toString());
            this.zzn = jSONObject.optLong(new ObfuscatedString(new long[]{2474110880655175389L, 6862235961541816575L, -6130238471846737060L, -2882854132181777147L, -7910157997831455413L}).toString(), Long.MAX_VALUE);
        } catch (JSONException unused) {
        }
    }

    public final zzdyz zza() {
        return this.zzo;
    }

    public final synchronized ListenableFuture zzb(String str) {
        zzceu zzceuVar;
        try {
            zzceuVar = new zzceu();
            if (this.zzj.containsKey(str)) {
                zzceuVar.zzc((zzdyr) this.zzj.get(str));
            } else {
                if (!this.zzk.containsKey(str)) {
                    this.zzk.put(str, new ArrayList());
                }
                ((List) this.zzk.get(str)).add(zzceuVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzceuVar;
    }

    public final synchronized String zzc() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue() && zzp()) {
            if (this.zzn < com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                this.zzl = new ObfuscatedString(new long[]{-1313795717169762528L, -7265325702187583035L}).toString();
                this.zzn = Long.MAX_VALUE;
                return new ObfuscatedString(new long[]{1995509040249112460L}).toString();
            }
            if (!this.zzl.equals(new ObfuscatedString(new long[]{-2942858114742303332L, 7621243653504644947L}).toString())) {
                return this.zzl;
            }
        }
        return new ObfuscatedString(new long[]{8239699878711253900L}).toString();
    }

    public final synchronized String zzd() {
        JSONObject jSONObject;
        jSONObject = new JSONObject();
        try {
            jSONObject.put(new ObfuscatedString(new long[]{-4244137799006390883L, 7927985739468219982L, 1230936355664940478L}).toString(), this.zzp);
            jSONObject.put(new ObfuscatedString(new long[]{-3112592808191685344L, 2806818830544588653L}).toString(), this.zzo);
            if (this.zzn > com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                jSONObject.put(new ObfuscatedString(new long[]{-9089051461249024953L, -3281992016249306461L, -6245035038913507763L}).toString(), this.zzl);
                jSONObject.put(new ObfuscatedString(new long[]{636271141639139424L, 2393622057182244818L, 6525186451502913604L, -5737394324991758629L, -4811305350507352363L}).toString(), this.zzn);
            }
        } catch (JSONException unused) {
        }
        return jSONObject.toString();
    }

    public final synchronized JSONObject zze() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(new ObfuscatedString(new long[]{6760689399387865098L, -1764294654839750615L}).toString(), new ObfuscatedString(new long[]{-4221115007517862525L, -4142667649697937632L}).toString());
                if (!TextUtils.isEmpty(this.zzh)) {
                    jSONObject.put(new ObfuscatedString(new long[]{8466655788384899001L, -4515825672686684369L, -8687513394193115169L}).toString(), new ObfuscatedString(new long[]{2374871313683431750L, -4376614353467241697L, -8956253136611625128L}).toString() + this.zzh);
                }
                jSONObject.put(new ObfuscatedString(new long[]{-2430998875810144405L, -1421874892150834697L, 2157556765013108335L, 5141054295560447904L}).toString(), this.zzg);
                jSONObject.put(new ObfuscatedString(new long[]{-1223516130864071056L, -6475939767579055447L, 6966565998279979981L}).toString(), Build.VERSION.RELEASE);
                jSONObject.put(new ObfuscatedString(new long[]{8738846762376828268L, -7958674776400625841L}).toString(), this.zzd.zza());
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjn)).booleanValue()) {
                    String zzn = com.google.android.gms.ads.internal.zzt.zzo().zzn();
                    if (!TextUtils.isEmpty(zzn)) {
                        jSONObject.put(new ObfuscatedString(new long[]{5701002449196902939L, -1362142493353533349L}).toString(), zzn);
                    }
                }
                if (this.zzn < com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000) {
                    this.zzl = new ObfuscatedString(new long[]{6315241856235811823L, 701500660866958222L}).toString();
                }
                jSONObject.put(new ObfuscatedString(new long[]{-3994431155380195525L, 7983011472047591984L, -6512976354716455001L}).toString(), this.zzl);
                jSONObject.put(new ObfuscatedString(new long[]{8139410208789518442L, 7207768898263254899L}).toString(), zzs());
                jSONObject.put(new ObfuscatedString(new long[]{3763983126568701742L, 3295454324875445134L}).toString(), this.zze.zza());
                String zzc = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc();
                if (!TextUtils.isEmpty(zzc)) {
                    jSONObject.put(new ObfuscatedString(new long[]{-5146455637981619539L, -1262487938971128573L}).toString(), new JSONObject(zzc));
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjd)).booleanValue() && (jSONObject2 = this.zzm) != null) {
                    zzcec.zze(new ObfuscatedString(new long[]{6686582278030644598L, 7347545692846570433L, 8545874304778646310L}).toString() + jSONObject2.toString());
                    jSONObject.put(new ObfuscatedString(new long[]{4514311565390391925L, -4146399029656847091L, -7636043638236540633L}).toString(), this.zzm);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
                    jSONObject.put(new ObfuscatedString(new long[]{-6405417279875104461L, 4227842526350935938L, -5131426327734932029L}).toString(), this.zzs);
                    jSONObject.put(new ObfuscatedString(new long[]{2539133559781758495L, 2357728890102491579L}).toString(), this.zzo);
                }
                jSONObject.put(new ObfuscatedString(new long[]{8844785407334431308L, -2319801032857407570L, 5045419136659427980L, 5072622132245805187L, 3838800888655319599L}).toString(), com.google.android.gms.ads.internal.zzt.zzs().zzl());
                String obfuscatedString = new ObfuscatedString(new long[]{-5696773350168251152L, 796050646631006224L, -7406834223317907010L}).toString();
                com.google.android.gms.ads.internal.zzt.zzp();
                com.google.android.gms.ads.internal.client.zzay.zzb();
                jSONObject.put(obfuscatedString, zzcdv.zzr());
            } catch (JSONException e) {
                com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{-6404720027110840967L, -6770382570075752831L, 4104323344586541669L}).toString());
                zzcec.zzk(new ObfuscatedString(new long[]{2927790934784832307L, 3393397794412653568L, 2932900864212857070L, -1647072962643046809L, 6865532569151381474L, 8091946318895114724L}).toString(), e);
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final synchronized void zzf(String str, zzdyr zzdyrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue() && zzp()) {
            if (this.zzq >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziP)).intValue()) {
                zzcec.zzj(new ObfuscatedString(new long[]{8552155271696918269L, -8186742764059577319L, -4562336694813099494L, 5630308593382514652L, -3942374864475996009L, -3685828563627222062L, -8684603183785285127L, -101448609744337676L, -4843780356391790208L, -4428410558872107121L, -1434613038757259577L}).toString());
                return;
            }
            if (!this.zzi.containsKey(str)) {
                this.zzi.put(str, new ArrayList());
            }
            this.zzq++;
            ((List) this.zzi.get(str)).add(zzdyrVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
                String zzc = zzdyrVar.zzc();
                this.zzj.put(zzc, zzdyrVar);
                if (this.zzk.containsKey(zzc)) {
                    List list = (List) this.zzk.get(zzc);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((zzceu) it.next()).zzc(zzdyrVar);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void zzg() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue() && com.google.android.gms.ads.internal.zzt.zzo().zzi().zzP()) {
                zzt();
                return;
            }
            String zzo = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzo();
            if (!TextUtils.isEmpty(zzo)) {
                try {
                    if (new JSONObject(zzo).optBoolean(new ObfuscatedString(new long[]{-1264401582638110641L, -7822108498762912153L, 2480787984752107221L}).toString(), false)) {
                        zzt();
                    }
                } catch (JSONException unused) {
                }
            }
        }
    }

    public final synchronized void zzh(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzdzc zzdzcVar) {
        if (!zzp()) {
            try {
                zzdaVar.zze(zzfij.zzd(18, null, null));
                return;
            } catch (RemoteException unused) {
                zzcec.zzj(new ObfuscatedString(new long[]{4348561705679046790L, -1702548857630424050L, 419793599322704053L, 6736176999199761331L, -2104228334503286404L, 4468784096192207047L, 7241898158817070262L, -8343272320405300271L, -5578723384232364751L, 5230223902028300930L, -228532898576743217L, 8869619016196358830L, -8710895631353828157L, 5796489646406175798L, -5785738279819986684L, 5825412148809530957L, 1645159001781970496L, 3237194616937954287L, -4190028383035810127L, 4895536879212816701L, -6604229011577506929L, 5522581456649086517L}).toString());
                return;
            }
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
            try {
                zzdaVar.zze(zzfij.zzd(1, null, null));
                return;
            } catch (RemoteException unused2) {
                zzcec.zzj(new ObfuscatedString(new long[]{-8907869246716652663L, -4579378061677296396L, -6462087079228138171L, 1867783843349539631L, 390290760925670495L, 334527224591916430L}).toString());
                return;
            }
        } else {
            this.zzs = zzdzcVar;
            this.zza.zzj(zzdaVar, new zzbnz(this), new zzbns(this.zzf));
            return;
        }
    }

    public final synchronized void zzi(String str, long j) {
        this.zzl = str;
        this.zzn = j;
        zzu();
    }

    public final synchronized void zzj(long j) {
        this.zzt += j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x000a, code lost:
    
        if (r2 != false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzk(boolean z) {
        if (!this.zzr) {
            if (z) {
                zzt();
                if (!this.zzp) {
                    zzy();
                    return;
                }
            }
            if (!zzp()) {
                zzx();
            }
        }
    }

    public final void zzl(zzdyz zzdyzVar) {
        zzv(zzdyzVar, true);
    }

    public final synchronized void zzm(JSONObject jSONObject) {
        this.zzm = jSONObject;
    }

    public final void zzn(boolean z) {
        if (!this.zzr && z) {
            zzt();
        }
        zzw(z, true);
    }

    public final boolean zzo() {
        return this.zzm != null;
    }

    public final synchronized boolean zzp() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
            if (!this.zzp && !com.google.android.gms.ads.internal.zzt.zzs().zzl()) {
                return false;
            }
            return true;
        }
        return this.zzp;
    }

    public final synchronized boolean zzq() {
        return this.zzp;
    }

    public final boolean zzr() {
        if (this.zzt < ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzji)).longValue()) {
            return true;
        }
        return false;
    }
}
