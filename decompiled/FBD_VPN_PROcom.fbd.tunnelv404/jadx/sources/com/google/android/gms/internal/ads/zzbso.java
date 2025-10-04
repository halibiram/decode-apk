package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbso {
    public final String zza;
    public final String zzb;
    public final List zzc;
    public final String zzd;
    public final String zze;
    public final List zzf;
    public final List zzg;
    public final List zzh;
    public final List zzi;
    public final List zzj;
    public final String zzk;
    public final List zzl;
    public final List zzm;
    public final List zzn;
    public final String zzo;
    public final String zzp;

    @Nullable
    public final String zzq;

    @Nullable
    public final String zzr;
    public final String zzs;

    @Nullable
    public final List zzt;
    public final String zzu;

    @Nullable
    public final String zzv;

    public zzbso(JSONObject jSONObject) {
        List list;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        this.zzb = jSONObject.optString(new ObfuscatedString(new long[]{7456624426342359195L, -224231651074766971L}).toString());
        JSONArray jSONArray = jSONObject.getJSONArray(new ObfuscatedString(new long[]{8552783028024282397L, 2142498343594671001L}).toString());
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        this.zzc = DesugarCollections.unmodifiableList(arrayList);
        this.zzd = jSONObject.optString(new ObfuscatedString(new long[]{5116632058807568423L, -5000957312707805011L, -1924044089197640419L}).toString(), null);
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzf = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{-1095936647673890250L, 8700303819463941640L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzg = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{7035876003971787611L, 4165804851503489312L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzh = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{-1313590089031916665L, 2665576808668506726L, -6433797983198078985L, -3510989025382724191L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzj = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{8279026606320110451L, -682854592946140944L, 8851751931248451531L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzl = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{-5706503092426957982L, -3156351379303361533L, 8608728107288278038L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzn = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{-8057702647460581926L, -3850993722874610997L, -4300966903692114893L, 7361596177394795818L}).toString());
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzm = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{1864388485226862121L, 5357370893794407310L, -5132536540807197672L, 3869133728294765756L}).toString());
        this.zzo = jSONObject.optString(new ObfuscatedString(new long[]{6794918237495356451L, 3930191437357367036L, -3179449326762491474L}).toString());
        this.zzp = jSONObject.optString(new ObfuscatedString(new long[]{-1305353877374381751L, 8388647752786723772L, 2674017151301738634L, 2863600813019310557L}).toString());
        JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{1904275248790830343L, -5366855557449851188L}).toString());
        if (optJSONObject != null) {
            com.google.android.gms.ads.internal.zzt.zzg();
            list = zzbsq.zza(optJSONObject, new ObfuscatedString(new long[]{6045954676120421911L, -3595869108555107534L, -6729538411849300932L, -2616871450691772493L}).toString());
        } else {
            list = null;
        }
        this.zzi = list;
        if (optJSONObject != null) {
            str = optJSONObject.toString();
        } else {
            str = null;
        }
        this.zza = str;
        JSONObject optJSONObject2 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{1387174455825324766L, 7313646472077282059L}).toString());
        if (optJSONObject2 != null) {
            str2 = optJSONObject2.toString();
        } else {
            str2 = null;
        }
        this.zzk = str2;
        if (optJSONObject2 != null) {
            str3 = optJSONObject2.optString(new ObfuscatedString(new long[]{5224259099547320001L, 2465225024078276841L, -4856429326957546439L}).toString());
        } else {
            str3 = null;
        }
        this.zze = str3;
        this.zzq = jSONObject.optString(new ObfuscatedString(new long[]{-1369559037977686850L, -8727346392705434696L, 9182548115881779026L}).toString(), null);
        this.zzr = jSONObject.optString(new ObfuscatedString(new long[]{41530355034915844L, -2607563304310404229L, -3331678965680412739L}).toString(), null);
        JSONObject optJSONObject3 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-1169806812687174712L, 5028667185387978076L}).toString());
        if (optJSONObject3 != null) {
            str4 = optJSONObject3.toString();
        } else {
            str4 = null;
        }
        this.zzs = str4;
        com.google.android.gms.ads.internal.zzt.zzg();
        this.zzt = zzbsq.zza(jSONObject, new ObfuscatedString(new long[]{1907582281830459800L, -3318491707800909635L, -7585222537325358400L}).toString());
        JSONObject optJSONObject4 = jSONObject.optJSONObject(new ObfuscatedString(new long[]{8473798721500590670L, -2954417854521065135L, -2804321409200130140L, -1012676560611180531L}).toString());
        if (optJSONObject4 != null) {
            str5 = optJSONObject4.toString();
        } else {
            str5 = null;
        }
        this.zzu = str5;
        this.zzv = jSONObject.optString(new ObfuscatedString(new long[]{5771525003597387495L, -8337457097108682684L, -4521323652388577049L}).toString(), null);
        jSONObject.optLong(new ObfuscatedString(new long[]{-1353131799043462164L, 6022245289110732699L, 1703056493971413276L, 139990644566771652L, -30181664397724176L}).toString(), -1L);
    }
}
