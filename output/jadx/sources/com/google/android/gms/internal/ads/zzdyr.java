package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzdyr implements zzdba, zzdds, zzdcp {
    private final zzdzd zza;
    private final String zzb;
    private final String zzc;
    private zzdaq zzf;
    private com.google.android.gms.ads.internal.client.zze zzg;
    private JSONObject zzk;
    private boolean zzl;
    private boolean zzm;
    private boolean zzn;
    private String zzh = new ObfuscatedString(new long[]{8422774664598459530L}).toString();
    private String zzi = new ObfuscatedString(new long[]{-2711417016949294461L}).toString();
    private String zzj = new ObfuscatedString(new long[]{2242940887125545534L}).toString();
    private int zzd = 0;
    private zzdyq zze = zzdyq.zza;

    public zzdyr(zzdzd zzdzdVar, zzfhh zzfhhVar, String str) {
        this.zza = zzdzdVar;
        this.zzc = str;
        this.zzb = zzfhhVar.zzf;
    }

    private static JSONObject zzh(com.google.android.gms.ads.internal.client.zze zzeVar) {
        JSONObject zzh;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{-657724672538642669L, 3224036071398579060L, 2278412397106769640L}).toString(), zzeVar.zzc);
        jSONObject.put(new ObfuscatedString(new long[]{-6672121892761977661L, -2310799729721103140L, -7309924716762719696L}).toString(), zzeVar.zza);
        jSONObject.put(new ObfuscatedString(new long[]{-1487774811276628300L, -189036100228281924L, 2569949401739064908L}).toString(), zzeVar.zzb);
        com.google.android.gms.ads.internal.client.zze zzeVar2 = zzeVar.zzd;
        if (zzeVar2 == null) {
            zzh = null;
        } else {
            zzh = zzh(zzeVar2);
        }
        jSONObject.put(new ObfuscatedString(new long[]{1721392807667932963L, -2418517875850798616L, -413569968637938033L}).toString(), zzh);
        return jSONObject;
    }

    private final JSONObject zzi(zzdaq zzdaqVar) {
        JSONObject zzh;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(new ObfuscatedString(new long[]{2987034637078932838L, 4410645411593412912L, -9177450366299973066L, 1553934238418201109L}).toString(), zzdaqVar.zzg());
        jSONObject.put(new ObfuscatedString(new long[]{1777036461031222706L, 2151865424429746217L, -3066627403753176400L, 575129606476814750L}).toString(), zzdaqVar.zzc());
        jSONObject.put(new ObfuscatedString(new long[]{-4409519181054259851L, 5962800214577655918L, 2716320086825105350L}).toString(), zzdaqVar.zzi());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzje)).booleanValue()) {
            String zzd = zzdaqVar.zzd();
            if (!TextUtils.isEmpty(zzd)) {
                zzcec.zze(new ObfuscatedString(new long[]{4425330736616560515L, 544783841985521444L, -6373896764758163084L}).toString().concat(String.valueOf(zzd)));
                jSONObject.put(new ObfuscatedString(new long[]{-7724523449899437073L, 1426631107422988751L, 6861078412959565387L}).toString(), new JSONObject(zzd));
            }
        }
        if (!TextUtils.isEmpty(this.zzh)) {
            jSONObject.put(new ObfuscatedString(new long[]{6077464994211071912L, -5679497131572591852L, 8859268719339581049L}).toString(), this.zzh);
        }
        if (!TextUtils.isEmpty(this.zzi)) {
            jSONObject.put(new ObfuscatedString(new long[]{-341379907646129690L, -4721294264730405275L}).toString(), this.zzi);
        }
        if (!TextUtils.isEmpty(this.zzj)) {
            jSONObject.put(new ObfuscatedString(new long[]{-8790842171871761162L, 5842073888195306090L, 467347690796769415L}).toString(), this.zzj);
        }
        Object obj = this.zzk;
        if (obj != null) {
            jSONObject.put(new ObfuscatedString(new long[]{-6059476712851192469L, -102124042750185337L, 961357916433112265L, 2976957740154288278L}).toString(), obj);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjh)).booleanValue()) {
            jSONObject.put(new ObfuscatedString(new long[]{-4540136200857223752L, -338492240961535741L, -4993938713782140550L, -1122077212097111646L}).toString(), this.zzn);
        }
        JSONArray jSONArray = new JSONArray();
        for (com.google.android.gms.ads.internal.client.zzu zzuVar : zzdaqVar.zzj()) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(new ObfuscatedString(new long[]{4398672146414026367L, 736843258739834734L, 6312535916527248394L}).toString(), zzuVar.zza);
            jSONObject2.put(new ObfuscatedString(new long[]{7299730458378665585L, -5391938910802395689L, -1144138882055088266L}).toString(), zzuVar.zzb);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjf)).booleanValue()) {
                jSONObject2.put(new ObfuscatedString(new long[]{3799725060047940798L, -5069521894312934231L, -5942849814979322891L}).toString(), com.google.android.gms.ads.internal.client.zzay.zzb().zzh(zzuVar.zzd));
            }
            com.google.android.gms.ads.internal.client.zze zzeVar = zzuVar.zzc;
            if (zzeVar == null) {
                zzh = null;
            } else {
                zzh = zzh(zzeVar);
            }
            jSONObject2.put(new ObfuscatedString(new long[]{-7746174225172244467L, -1354287492347893316L}).toString(), zzh);
            jSONArray.put(jSONObject2);
        }
        jSONObject.put(new ObfuscatedString(new long[]{-7243850380655780336L, 5178158090645928962L, 7723540586876810961L}).toString(), jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdcp
    public final void zza(zzcwh zzcwhVar) {
        if (this.zza.zzp()) {
            this.zzf = zzcwhVar.zzl();
            this.zze = zzdyq.zzb;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
                this.zza.zzf(this.zzb, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void zzbK(com.google.android.gms.ads.internal.client.zze zzeVar) {
        if (this.zza.zzp()) {
            this.zze = zzdyq.zzc;
            this.zzg = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
                this.zza.zzf(this.zzb, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbw(zzbze zzbzeVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue() && this.zza.zzp()) {
            this.zza.zzf(this.zzb, this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbx(zzfgy zzfgyVar) {
        if (this.zza.zzp()) {
            int i = 0;
            if (!zzfgyVar.zzb.zza.isEmpty()) {
                this.zzd = ((zzfgm) zzfgyVar.zzb.zza.get(0)).zzb;
            }
            if (!TextUtils.isEmpty(zzfgyVar.zzb.zzb.zzk)) {
                this.zzh = zzfgyVar.zzb.zzb.zzk;
            }
            if (!TextUtils.isEmpty(zzfgyVar.zzb.zzb.zzl)) {
                this.zzi = zzfgyVar.zzb.zzb.zzl;
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjh)).booleanValue()) {
                if (!this.zza.zzr()) {
                    this.zzn = true;
                    return;
                }
                if (!TextUtils.isEmpty(zzfgyVar.zzb.zzb.zzm)) {
                    this.zzj = zzfgyVar.zzb.zzb.zzm;
                }
                if (zzfgyVar.zzb.zzb.zzn.length() > 0) {
                    this.zzk = zzfgyVar.zzb.zzb.zzn;
                }
                zzdzd zzdzdVar = this.zza;
                JSONObject jSONObject = this.zzk;
                if (jSONObject != null) {
                    i = jSONObject.toString().length();
                }
                if (!TextUtils.isEmpty(this.zzj)) {
                    i += this.zzj.length();
                }
                zzdzdVar.zzj(i);
            }
        }
    }

    public final String zzc() {
        return this.zzc;
    }

    public final JSONObject zzd() {
        JSONObject jSONObject;
        IBinder iBinder;
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(new ObfuscatedString(new long[]{4060533280382581308L, -1733927348715006295L}).toString(), this.zze);
        jSONObject2.put(new ObfuscatedString(new long[]{-813506111076404206L, 4565712589377542066L}).toString(), zzfgm.zza(this.zzd));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjl)).booleanValue()) {
            jSONObject2.put(new ObfuscatedString(new long[]{1164180473824935086L, -8548197831984484498L, 111072229431625852L}).toString(), this.zzl);
            if (this.zzl) {
                jSONObject2.put(new ObfuscatedString(new long[]{-7650383226057453236L, 6453538104593012512L}).toString(), this.zzm);
            }
        }
        zzdaq zzdaqVar = this.zzf;
        if (zzdaqVar != null) {
            jSONObject = zzi(zzdaqVar);
        } else {
            com.google.android.gms.ads.internal.client.zze zzeVar = this.zzg;
            JSONObject jSONObject3 = null;
            if (zzeVar != null && (iBinder = zzeVar.zze) != null) {
                zzdaq zzdaqVar2 = (zzdaq) iBinder;
                jSONObject3 = zzi(zzdaqVar2);
                if (zzdaqVar2.zzj().isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(zzh(this.zzg));
                    jSONObject3.put(new ObfuscatedString(new long[]{-8858099137213897519L, -4287797435178707188L}).toString(), jSONArray);
                }
            }
            jSONObject = jSONObject3;
        }
        jSONObject2.put(new ObfuscatedString(new long[]{3478012616716148967L, -8081691367650176007L, -7176844637496665130L}).toString(), jSONObject);
        return jSONObject2;
    }

    public final void zze() {
        this.zzl = true;
    }

    public final void zzf() {
        this.zzm = true;
    }

    public final boolean zzg() {
        if (this.zze != zzdyq.zza) {
            return true;
        }
        return false;
    }
}
