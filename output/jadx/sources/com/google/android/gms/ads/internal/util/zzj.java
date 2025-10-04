package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzazp;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbhs;
import com.google.android.gms.internal.ads.zzcdf;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcep;
import com.google.android.gms.internal.ads.zzgey;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzj implements zzg {
    private boolean zzb;
    private ListenableFuture zzd;

    @Nullable
    private SharedPreferences zzf;

    @Nullable
    private SharedPreferences.Editor zzg;

    @Nullable
    private String zzi;

    @Nullable
    private String zzj;
    private final Object zza = new Object();
    private final List zzc = new ArrayList();

    @Nullable
    private zzazp zze = null;
    private boolean zzh = true;
    private boolean zzk = true;
    private String zzl = new ObfuscatedString(new long[]{-4950752165799504353L, -3604022047093694279L}).toString();
    private String zzm = new ObfuscatedString(new long[]{-1261784290738764258L, -4587841891167786874L}).toString();
    private String zzn = new ObfuscatedString(new long[]{-3405004691111155215L, -2617265201355540770L}).toString();
    private int zzo = -1;
    private zzcdf zzp = new zzcdf(new ObfuscatedString(new long[]{1416808609589098511L}).toString(), 0);
    private long zzq = 0;
    private long zzr = 0;
    private int zzs = -1;
    private int zzt = 0;
    private Set zzu = Collections.emptySet();
    private JSONObject zzv = new JSONObject();
    private boolean zzw = true;
    private boolean zzx = true;
    private String zzy = null;
    private String zzz = new ObfuscatedString(new long[]{-192894379087929243L}).toString();
    private boolean zzA = false;
    private String zzB = new ObfuscatedString(new long[]{1905060049948987120L}).toString();
    private int zzC = -1;
    private int zzD = -1;
    private long zzE = 0;

    private final void zzT() {
        ListenableFuture listenableFuture = this.zzd;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            try {
                this.zzd.get(1L, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                zzcec.zzk(new ObfuscatedString(new long[]{3644078417289896890L, 2238269521351530535L, 2908717305976530375L, 2745175896605358274L, -3532590620536459279L, 6542894876023537945L, -4491285168128323431L, 3467068693025316945L}).toString(), e);
            } catch (CancellationException e2) {
                e = e2;
                zzcec.zzh(new ObfuscatedString(new long[]{4162903249514616687L, -4315275354286635839L, 8871038306121287550L, 4723017313867839631L, 2304183836489724264L, 214978890101283302L, -2734414427385724156L}).toString(), e);
            } catch (ExecutionException e3) {
                e = e3;
                zzcec.zzh(new ObfuscatedString(new long[]{4162903249514616687L, -4315275354286635839L, 8871038306121287550L, 4723017313867839631L, 2304183836489724264L, 214978890101283302L, -2734414427385724156L}).toString(), e);
            } catch (TimeoutException e4) {
                e = e4;
                zzcec.zzh(new ObfuscatedString(new long[]{4162903249514616687L, -4315275354286635839L, 8871038306121287550L, 4723017313867839631L, 2304183836489724264L, 214978890101283302L, -2734414427385724156L}).toString(), e);
            }
        }
    }

    private final void zzU() {
        zzcep.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzh
            @Override // java.lang.Runnable
            public final void run() {
                zzj.this.zzg();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzA(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
            return;
        }
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzB.equals(str)) {
                    return;
                }
                this.zzB = str;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{-572802754100263399L, -6114624056061117909L, -2302270991793134645L}).toString(), str);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzB(boolean z) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjc)).booleanValue()) {
            return;
        }
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzA == z) {
                    return;
                }
                this.zzA = z;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putBoolean(new ObfuscatedString(new long[]{5393425888982384072L, -1539370010975817617L, 6684455463296009888L}).toString(), z);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzC(String str) {
        zzT();
        synchronized (this.zza) {
            try {
                if (TextUtils.equals(this.zzy, str)) {
                    return;
                }
                this.zzy = str;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{3869720935507468455L, -3928871608092675058L, -8552105380768412255L}).toString(), str);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzD(long j) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzr == j) {
                    return;
                }
                this.zzr = j;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putLong(new ObfuscatedString(new long[]{-2591011335888096404L, -6115515723956352150L, -8043046393923478216L, -5539437222678927875L}).toString(), j);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzE(int i) {
        zzT();
        synchronized (this.zza) {
            try {
                this.zzo = i;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    if (i == -1) {
                        editor.remove(new ObfuscatedString(new long[]{-6828748909131598829L, -8639604015895745922L, -8489264299684099634L, -949817348157995147L, 2123925718819014795L}).toString());
                    } else {
                        editor.putInt(new ObfuscatedString(new long[]{-8107519820194535008L, -2927018955433338366L, -1056500780029588089L, 3937398185041023620L, 1457421451129590094L}).toString(), i);
                    }
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzF(@NonNull String str, @NonNull String str2) {
        char c;
        zzT();
        synchronized (this.zza) {
            try {
                int hashCode = str.hashCode();
                if (hashCode != -2004976699) {
                    if (hashCode != 83641339) {
                        if (hashCode == 1218895378 && str.equals(new ObfuscatedString(new long[]{-8415290651835818766L, -1948738354370315262L, -3362230101798498564L}).toString())) {
                            c = 1;
                        }
                        c = 65535;
                    } else {
                        if (str.equals(new ObfuscatedString(new long[]{-6536846805559024548L, 3082384977646036752L, -4104394959367566502L, -6916459254333245261L}).toString())) {
                            c = 0;
                        }
                        c = 65535;
                    }
                } else {
                    if (str.equals(new ObfuscatedString(new long[]{-3895234256309994013L, -8677648723162603026L, 6652807776028169312L, 6664572959793958631L}).toString())) {
                        c = 2;
                    }
                    c = 65535;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            return;
                        } else {
                            this.zzn = str2;
                        }
                    } else {
                        this.zzm = str2;
                    }
                } else {
                    this.zzl = str2;
                }
                if (this.zzg != null) {
                    if (str2.equals(new ObfuscatedString(new long[]{-165889774169450826L, 4674231797773703407L}).toString())) {
                        this.zzg.remove(str);
                    } else {
                        this.zzg.putString(str, str2);
                    }
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzG(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
            return;
        }
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzz.equals(str)) {
                    return;
                }
                this.zzz = str;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{2327303834999280944L, -282250909769377105L, -7975944977875719837L}).toString(), str);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzH(boolean z) {
        zzT();
        synchronized (this.zza) {
            try {
                if (z == this.zzk) {
                    return;
                }
                this.zzk = z;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putBoolean(new ObfuscatedString(new long[]{-3011903597593414196L, -3031731306851136926L, 5959948194642102751L}).toString(), z);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzI(boolean z) {
        zzT();
        synchronized (this.zza) {
            try {
                long currentTimeMillis = System.currentTimeMillis() + ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjW)).longValue();
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putBoolean(new ObfuscatedString(new long[]{8626013674879552626L, 8852616633824577476L, -2856081857600312997L, 1755272402720927276L, -6866108350522425513L, 1160748184552243898L}).toString(), z);
                    this.zzg.putLong(new ObfuscatedString(new long[]{-1779830514942314652L, 368959862102346217L, 8360481449511106057L, -7475954002015868779L, -4849491594154016124L}).toString(), currentTimeMillis);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzJ(String str, String str2, boolean z) {
        zzT();
        synchronized (this.zza) {
            try {
                JSONArray optJSONArray = this.zzv.optJSONArray(str);
                if (optJSONArray == null) {
                    optJSONArray = new JSONArray();
                }
                int length = optJSONArray.length();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject == null) {
                        return;
                    }
                    if (str2.equals(optJSONObject.optString(new ObfuscatedString(new long[]{8114988087760599255L, -197581258793249997L, -6740703757488063126L}).toString()))) {
                        if (z && optJSONObject.optBoolean(new ObfuscatedString(new long[]{-6367759838099810956L, 5694045195626512585L, -5777774848417282444L}).toString(), false)) {
                            return;
                        } else {
                            length = i;
                        }
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(new ObfuscatedString(new long[]{-7004056756968358118L, 1714959122857269831L, 8329781474699830925L}).toString(), str2);
                    jSONObject.put(new ObfuscatedString(new long[]{5908329682886990304L, -2220183621135021653L, -2719137054744188838L}).toString(), z);
                    jSONObject.put(new ObfuscatedString(new long[]{-5375874319056615939L, 283474140004160912L, -6932086097307971422L}).toString(), com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
                    optJSONArray.put(length, jSONObject);
                    this.zzv.put(str, optJSONArray);
                } catch (JSONException e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{5712840539438711325L, -1400274756188721082L, 8767834265332035939L, -5759619157071080567L, -9133856826040199802L, -2682917191517064381L, 6755569463678524244L}).toString(), e);
                }
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{-3184506342057128014L, 1636761366429462263L, -1089410365551438823L, -2542479264483209373L}).toString(), this.zzv.toString());
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzK(int i) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzs == i) {
                    return;
                }
                this.zzs = i;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putInt(new ObfuscatedString(new long[]{-8916511185341764548L, 1810939755536751134L, -64490048661059201L, 716061590525700939L}).toString(), i);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzL(int i) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzD == i) {
                    return;
                }
                this.zzD = i;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putInt(new ObfuscatedString(new long[]{-8377518742340069839L, 7804999745076692404L, -5382426805333721485L, 8641192382433493269L}).toString(), i);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzM(long j) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzE == j) {
                    return;
                }
                this.zzE = j;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putLong(new ObfuscatedString(new long[]{7450816926526079267L, 3196871995710756340L, -1020655012426819215L, -2042136805568325299L}).toString(), j);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzN() {
        boolean z;
        zzT();
        synchronized (this.zza) {
            z = this.zzw;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzO() {
        boolean z;
        zzT();
        synchronized (this.zza) {
            z = this.zzx;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzP() {
        boolean z;
        zzT();
        synchronized (this.zza) {
            z = this.zzA;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzQ() {
        boolean z;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzau)).booleanValue()) {
            return false;
        }
        zzT();
        synchronized (this.zza) {
            z = this.zzk;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final boolean zzR() {
        zzT();
        synchronized (this.zza) {
            try {
                SharedPreferences sharedPreferences = this.zzf;
                boolean z = false;
                if (sharedPreferences == null) {
                    return false;
                }
                if (sharedPreferences.getLong(new ObfuscatedString(new long[]{-838542878684829861L, -5040281323337947214L, 4034588792008133417L, -459798743154438895L, 5814795977221794174L}).toString(), 0L) < System.currentTimeMillis()) {
                    return false;
                }
                if (this.zzf.getBoolean(new ObfuscatedString(new long[]{6406917687128785841L, -8396382939136182479L, 3517112741213903917L, -3315779039503355732L, -1656439364327299207L, 1427349948012346002L}).toString(), false) && !this.zzk) {
                    z = true;
                }
                return z;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzS(Context context, String str) {
        NetworkSecurityPolicy networkSecurityPolicy;
        SharedPreferences sharedPreferences = context.getSharedPreferences(new ObfuscatedString(new long[]{-6255845577059564493L, 4132280933503637314L}).toString(), 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.zza) {
            try {
                this.zzf = sharedPreferences;
                this.zzg = edit;
                if (PlatformVersion.isAtLeastM()) {
                    networkSecurityPolicy = NetworkSecurityPolicy.getInstance();
                    networkSecurityPolicy.isCleartextTrafficPermitted();
                }
                this.zzh = this.zzf.getBoolean(new ObfuscatedString(new long[]{-4685733931669389648L, 4295920323614592184L, -3599327710522222350L}).toString(), this.zzh);
                this.zzw = this.zzf.getBoolean(new ObfuscatedString(new long[]{5194758174371177606L, -1534395654482464588L, 3298411813850862112L, -7994104818986973028L}).toString(), this.zzw);
                this.zzi = this.zzf.getString(new ObfuscatedString(new long[]{-2229620267564186274L, 6796336292080758180L, -1238780903325730265L, 99688148608792874L}).toString(), this.zzi);
                this.zzk = this.zzf.getBoolean(new ObfuscatedString(new long[]{9165473291697849854L, 8008105251238581146L, 4191392389717279585L}).toString(), this.zzk);
                this.zzx = this.zzf.getBoolean(new ObfuscatedString(new long[]{860388110597673635L, -4635580663849005064L, -6697959653509018L, 3883098196641348876L, 7971975668448133518L}).toString(), this.zzx);
                this.zzj = this.zzf.getString(new ObfuscatedString(new long[]{-3694410601413588786L, 7346745418316904378L, -1813025349325045486L, 4927878749869590356L}).toString(), this.zzj);
                this.zzt = this.zzf.getInt(new ObfuscatedString(new long[]{955176998889192726L, -9138542885206432626L, 502625530509360785L}).toString(), this.zzt);
                this.zzp = new zzcdf(this.zzf.getString(new ObfuscatedString(new long[]{-796804648733762381L, -8509006236053872492L, 8289848037589664992L, 5087967384088590730L}).toString(), this.zzp.zzc()), this.zzf.getLong(new ObfuscatedString(new long[]{1912143073259430320L, -6675254468415971147L, -1876446949369391514L, -6989858817285988126L, 4482077228342585954L}).toString(), this.zzp.zza()));
                this.zzq = this.zzf.getLong(new ObfuscatedString(new long[]{-2135063220178799L, -2324208080635225402L, -7217695109674270503L, -1491344789962897094L, 5469963860510092122L}).toString(), this.zzq);
                this.zzs = this.zzf.getInt(new ObfuscatedString(new long[]{4314118052652229466L, -3263483948110417621L, -8804918634028354314L, -2012532662506137725L}).toString(), this.zzs);
                this.zzr = this.zzf.getLong(new ObfuscatedString(new long[]{-5675296080154511309L, -3303852172374620237L, -7798444347007628038L, -8065367667485064657L}).toString(), this.zzr);
                this.zzu = this.zzf.getStringSet(new ObfuscatedString(new long[]{-7424234347062998584L, -768801495365447542L, -6895793965927702221L}).toString(), this.zzu);
                this.zzy = this.zzf.getString(new ObfuscatedString(new long[]{-841789176295472419L, 5289441497040457462L, -8341604602398925312L}).toString(), this.zzy);
                this.zzC = this.zzf.getInt(new ObfuscatedString(new long[]{-5647913017224248762L, -7934888790519073832L, -9210006275181177085L, -6551648038720535425L}).toString(), this.zzC);
                this.zzD = this.zzf.getInt(new ObfuscatedString(new long[]{-8860281915925270114L, 1464023069359585260L, -1007776242979044384L, -6975630267140837839L}).toString(), this.zzD);
                this.zzE = this.zzf.getLong(new ObfuscatedString(new long[]{-3630064540439450300L, 1805564233186920636L, 2479768743648714842L, -4974826907424424991L}).toString(), this.zzE);
                this.zzz = this.zzf.getString(new ObfuscatedString(new long[]{247899257666179829L, -7008455243548904244L, 7736771158317536776L}).toString(), this.zzz);
                this.zzA = this.zzf.getBoolean(new ObfuscatedString(new long[]{-7644844114172929073L, 8012837058062890869L, -8988941177803564879L}).toString(), this.zzA);
                this.zzB = this.zzf.getString(new ObfuscatedString(new long[]{-6682444279538414614L, 4073637920643416959L, -6827641945972437702L}).toString(), this.zzB);
                this.zzl = this.zzf.getString(new ObfuscatedString(new long[]{-6654694249921372930L, 3519977662489531053L, -1315016508910764401L, -5980527492013853977L}).toString(), this.zzl);
                this.zzn = this.zzf.getString(new ObfuscatedString(new long[]{7722772679526804054L, 6464005350989646567L, -37276228817101692L, 8789053783552653269L}).toString(), this.zzn);
                this.zzm = this.zzf.getString(new ObfuscatedString(new long[]{-7045478946288240317L, -7124932786593211299L, -4602226230940257231L}).toString(), this.zzm);
                this.zzo = this.zzf.getInt(new ObfuscatedString(new long[]{2763961474598951662L, 7828488256440147139L, -8954229376278605207L, 5310853366896515342L, -98965288553505687L}).toString(), this.zzo);
                try {
                    this.zzv = new JSONObject(this.zzf.getString(new ObfuscatedString(new long[]{342858490639748592L, 8259701514203593107L, -8368956561513356554L, -1053633614105978717L}).toString(), new ObfuscatedString(new long[]{-4598214784710995696L, 8648617164910058687L}).toString()));
                } catch (JSONException e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{4064708638655350068L, 1408459958872750684L, -1743768307446126816L, 2472687570418810523L, 6816566129483483559L, 1320916386864578637L, 8692523235001574402L, -4538862068898529920L, -4180407455139302128L}).toString(), e);
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zza() {
        int i;
        zzT();
        synchronized (this.zza) {
            i = this.zzt;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzb() {
        int i;
        zzT();
        synchronized (this.zza) {
            i = this.zzo;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final int zzc() {
        int i;
        zzT();
        synchronized (this.zza) {
            i = this.zzs;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzd() {
        long j;
        zzT();
        synchronized (this.zza) {
            j = this.zzq;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zze() {
        long j;
        zzT();
        synchronized (this.zza) {
            j = this.zzr;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final long zzf() {
        long j;
        zzT();
        synchronized (this.zza) {
            j = this.zzE;
        }
        return j;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    @Nullable
    public final zzazp zzg() {
        if (!this.zzb) {
            return null;
        }
        if ((zzN() && zzO()) || !((Boolean) zzbhs.zzb.zze()).booleanValue()) {
            return null;
        }
        synchronized (this.zza) {
            try {
                if (Looper.getMainLooper() == null) {
                    return null;
                }
                if (this.zze == null) {
                    this.zze = new zzazp();
                }
                this.zze.zze();
                zzcec.zzi(new ObfuscatedString(new long[]{8568818998905661402L, -6476493653476654603L, -8844218981963167698L, -1160889226004694367L, -7653792937856855645L}).toString());
                return this.zze;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzcdf zzh() {
        zzcdf zzcdfVar;
        zzT();
        synchronized (this.zza) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzle)).booleanValue() && this.zzp.zzj()) {
                    Iterator it = this.zzc.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
                zzcdfVar = this.zzp;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzcdfVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final zzcdf zzi() {
        zzcdf zzcdfVar;
        synchronized (this.zza) {
            zzcdfVar = this.zzp;
        }
        return zzcdfVar;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    @Nullable
    public final String zzj() {
        String str;
        zzT();
        synchronized (this.zza) {
            str = this.zzi;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    @Nullable
    public final String zzk() {
        String str;
        zzT();
        synchronized (this.zza) {
            str = this.zzj;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzl() {
        String str;
        zzT();
        synchronized (this.zza) {
            str = this.zzB;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzm() {
        String str;
        zzT();
        synchronized (this.zza) {
            str = this.zzy;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    @Nullable
    public final String zzn(@NonNull String str) {
        char c;
        zzT();
        synchronized (this.zza) {
            try {
                int hashCode = str.hashCode();
                if (hashCode != -2004976699) {
                    if (hashCode != 83641339) {
                        if (hashCode == 1218895378 && str.equals(new ObfuscatedString(new long[]{-7421460771620359674L, -6835827464593663795L, -638853132824752281L}).toString())) {
                            c = 1;
                        }
                        c = 65535;
                    } else {
                        if (str.equals(new ObfuscatedString(new long[]{-2524651800608791200L, 1291472562848794333L, -9059712006775913832L, -8489249443132600867L}).toString())) {
                            c = 0;
                        }
                        c = 65535;
                    }
                } else {
                    if (str.equals(new ObfuscatedString(new long[]{-6540487625921062393L, 3766106936192254801L, 3757465318482721538L, 7955128054907793913L}).toString())) {
                        c = 2;
                    }
                    c = 65535;
                }
                if (c != 0) {
                    if (c != 1) {
                        if (c != 2) {
                            return null;
                        }
                        return this.zzn;
                    }
                    return this.zzm;
                }
                return this.zzl;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final String zzo() {
        String str;
        zzT();
        synchronized (this.zza) {
            str = this.zzz;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final JSONObject zzp() {
        JSONObject jSONObject;
        zzT();
        synchronized (this.zza) {
            jSONObject = this.zzv;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzq(Runnable runnable) {
        this.zzc.add(runnable);
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzr(final Context context) {
        synchronized (this.zza) {
            try {
                if (this.zzf != null) {
                    return;
                }
                zzgey zzgeyVar = zzcep.zza;
                final String obfuscatedString = new ObfuscatedString(new long[]{8974208273097435199L, -4745041855266368188L}).toString();
                this.zzd = zzgeyVar.zza(new Runnable(context, obfuscatedString) { // from class: com.google.android.gms.ads.internal.util.zzi
                    public final /* synthetic */ Context zzb;
                    public final /* synthetic */ String zzc = new ObfuscatedString(new long[]{5822690894192457477L, -3274890280600588110L}).toString();

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzj.this.zzS(this.zzb, this.zzc);
                    }
                });
                this.zzb = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzs() {
        zzT();
        synchronized (this.zza) {
            try {
                this.zzv = new JSONObject();
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.remove(new ObfuscatedString(new long[]{-2220227358721231322L, -7194434506536629595L, -4010873242271426453L, 9155739955949673400L}).toString());
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzt(long j) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzq == j) {
                    return;
                }
                this.zzq = j;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putLong(new ObfuscatedString(new long[]{8866371497445783716L, 3385493656756676068L, -4946455853740479139L, 3065964523068501742L, -4946655232907819623L}).toString(), j);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzu(String str) {
        zzT();
        synchronized (this.zza) {
            try {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
                if (str != null && !str.equals(this.zzp.zzc())) {
                    this.zzp = new zzcdf(str, currentTimeMillis);
                    SharedPreferences.Editor editor = this.zzg;
                    if (editor != null) {
                        editor.putString(new ObfuscatedString(new long[]{4705683864325361078L, 2143311866000866091L, 4506330895654631369L, 5956442131288816311L}).toString(), str);
                        this.zzg.putLong(new ObfuscatedString(new long[]{-8899021356813842022L, -4834927303202286405L, -8773114219881653903L, -5095532429207242191L, -615115866768902091L}).toString(), currentTimeMillis);
                        this.zzg.apply();
                    }
                    zzU();
                    Iterator it = this.zzc.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                    return;
                }
                this.zzp.zzg(currentTimeMillis);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzv(int i) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzt == i) {
                    return;
                }
                this.zzt = i;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putInt(new ObfuscatedString(new long[]{-6001175766029963121L, 7771536379904490543L, 3795587738744390146L}).toString(), i);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzw(@Nullable String str) {
        zzT();
        synchronized (this.zza) {
            try {
                if (str.equals(this.zzi)) {
                    return;
                }
                this.zzi = str;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{3613875487352038758L, 1416298002379022799L, 5413889846643654003L, 1432628491080730256L}).toString(), str);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzx(boolean z) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzw == z) {
                    return;
                }
                this.zzw = z;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putBoolean(new ObfuscatedString(new long[]{2464040579416025052L, -5079074666899830034L, -7824023808505902514L, -4740190948241056218L}).toString(), z);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzy(@Nullable String str) {
        zzT();
        synchronized (this.zza) {
            try {
                if (str.equals(this.zzj)) {
                    return;
                }
                this.zzj = str;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putString(new ObfuscatedString(new long[]{-8443886200856255160L, 2045508849398508150L, -3131977641986498436L, -38702600133944829L}).toString(), str);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzg
    public final void zzz(boolean z) {
        zzT();
        synchronized (this.zza) {
            try {
                if (this.zzx == z) {
                    return;
                }
                this.zzx = z;
                SharedPreferences.Editor editor = this.zzg;
                if (editor != null) {
                    editor.putBoolean(new ObfuscatedString(new long[]{-4160525666192398012L, 2086536127354080800L, 7678083952660310844L, 4872088317541200124L, 3671943784002044473L}).toString(), z);
                    this.zzg.apply();
                }
                zzU();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
