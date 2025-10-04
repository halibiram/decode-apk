package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbzh {
    private final List zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final boolean zze;
    private final boolean zzf;
    private final String zzg;
    private final String zzh;
    private final String zzi;
    private final int zzj;
    private final JSONObject zzk;
    private final String zzl;
    private final String zzm;

    public zzbzh(JSONObject jSONObject) {
        List asList;
        this.zzi = jSONObject.optString(new ObfuscatedString(new long[]{-1932257859817785039L, -1325918239373600255L}).toString());
        this.zzb = jSONObject.optString(new ObfuscatedString(new long[]{-4292017064000707435L, -5004690428130377545L}).toString());
        this.zzc = jSONObject.optString(new ObfuscatedString(new long[]{-9197319104868583955L, -425925335001103952L, 2866807343505491307L}).toString());
        this.zze = zzj(jSONObject.optString(new ObfuscatedString(new long[]{3127023505780787486L, -6076285300147755836L, -6800834509777412843L}).toString()));
        this.zzf = zzj(jSONObject.optString(new ObfuscatedString(new long[]{-1793553114961997060L, -1878991935531185325L, -7609641680257357198L}).toString(), new ObfuscatedString(new long[]{8374427230987605189L, -2329354213008503588L}).toString()));
        this.zzg = jSONObject.optString(new ObfuscatedString(new long[]{-2921842151608846943L, 6418037465778632017L, 733259692725827467L}).toString());
        this.zzd = jSONObject.optString(new ObfuscatedString(new long[]{-7499382830824540398L, -3775945497952908324L}).toString());
        String optString = jSONObject.optString(new ObfuscatedString(new long[]{-6136365928498849975L, 2644255606996565697L}).toString());
        if (optString == null) {
            asList = null;
        } else {
            asList = Arrays.asList(optString.split(new ObfuscatedString(new long[]{5536365543852460898L, -389607671696445021L}).toString()));
        }
        this.zza = asList;
        this.zzj = jSONObject.optInt(new ObfuscatedString(new long[]{-8763613840377878441L, -8150906230607843176L}).toString(), 0) == 1 ? -2 : 1;
        this.zzh = jSONObject.optString(new ObfuscatedString(new long[]{9003805481037766650L, -2663072958973296747L, -7823328952154227118L}).toString());
        jSONObject.optBoolean(new ObfuscatedString(new long[]{-6928193965019819612L, 567791058472998632L, -5025785241876406000L, 442716486148564406L}).toString());
        JSONObject optJSONObject = jSONObject.optJSONObject(new ObfuscatedString(new long[]{-7012953092421176920L, 5693355965422374082L, -5323320662607401540L, -8339009241362489471L}).toString());
        this.zzk = optJSONObject == null ? new JSONObject() : optJSONObject;
        this.zzl = jSONObject.optString(new ObfuscatedString(new long[]{-6105289027538692293L, -1305939859338684585L, -4608189704531456319L, 6461676033109055853L, 6679888312074143328L}).toString());
        jSONObject.optBoolean(new ObfuscatedString(new long[]{8658216780680240276L, 1786617194808680502L, -8326539028628921472L, 3236966239437561757L, -8058428491571788749L}).toString());
        this.zzm = jSONObject.optString(new ObfuscatedString(new long[]{1431293773898184069L, -7320337413153150570L}).toString());
    }

    private static boolean zzj(String str) {
        if (str == null) {
            return false;
        }
        if (!str.equals(new ObfuscatedString(new long[]{1984411856904348185L, 3013699329438737838L}).toString()) && !str.equals(new ObfuscatedString(new long[]{1562141695403059430L, -983070306932508412L}).toString())) {
            return false;
        }
        return true;
    }

    public final int zza() {
        return this.zzj;
    }

    public final String zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzm;
    }

    public final String zzd() {
        return this.zzc;
    }

    public final String zze() {
        return this.zzi;
    }

    public final List zzf() {
        return this.zza;
    }

    public final JSONObject zzg() {
        return this.zzk;
    }

    public final boolean zzh() {
        return this.zzf;
    }

    public final boolean zzi() {
        return this.zze;
    }
}
