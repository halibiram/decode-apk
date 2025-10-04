package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzcgk {
    public final boolean zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final String zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final int zzi;
    public final boolean zzj;
    public final boolean zzk;
    public final boolean zzl;
    public final boolean zzm;
    public final long zzn;
    public final long zzo;

    public zzcgk(String str) {
        String string;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.zza = zza(jSONObject, new ObfuscatedString(new long[]{-9084996119238456180L, -6135618946315543784L, -3992549866649172880L, -3525917730718850714L, -5292024579938535955L}).toString(), zzbgc.zzJ);
        this.zzb = zzb(jSONObject, new ObfuscatedString(new long[]{-3288068192452440715L, -2461281610283065062L, 2140515800695255423L, 400232406025190421L, -8938260828013568643L}).toString(), zzbgc.zzl);
        this.zzc = zzb(jSONObject, new ObfuscatedString(new long[]{-5802434655390854834L, 3855365073923699204L, 766072552620977419L, 3398037547951361373L}).toString(), zzbgc.zzw);
        this.zzd = zzb(jSONObject, new ObfuscatedString(new long[]{5865770901982075190L, 2895422168453549166L, -6778120713513710772L, -6557154091155352104L, 8690979524572462484L}).toString(), zzbgc.zzh);
        String obfuscatedString = new ObfuscatedString(new long[]{4791994443680189375L, 7490127121475983444L, -7567863131632506400L, 4362863226458318594L}).toString();
        zzbfu zzbfuVar = zzbgc.zzg;
        if (jSONObject != null) {
            try {
                string = jSONObject.getString(obfuscatedString);
            } catch (JSONException unused2) {
            }
            this.zze = string;
            this.zzf = zzb(jSONObject, new ObfuscatedString(new long[]{7511982860695920927L, 543422842187021488L, 8616502263003266336L, -4636509634106282544L}).toString(), zzbgc.zzi);
            this.zzg = zzb(jSONObject, new ObfuscatedString(new long[]{-2016055532332055936L, -8069512983171173144L, -6109552374820396831L, 128661343547566015L, -1377119560465437596L}).toString(), zzbgc.zzj);
            this.zzh = zzb(jSONObject, new ObfuscatedString(new long[]{-8803673281555304988L, 8791493084196955818L, -5508438229143412301L, 5586747914482032843L}).toString(), zzbgc.zzk);
            this.zzi = zzb(jSONObject, new ObfuscatedString(new long[]{237919094474669002L, -6090647800497992684L, 5006221475390369165L, 6252405559048808773L, -8885130963395007469L}).toString(), zzbgc.zzm);
            this.zzj = zza(jSONObject, new ObfuscatedString(new long[]{-4866533827188368938L, 6666640130949980825L, -1377218600814941929L, 8346614011300741740L}).toString(), zzbgc.zzei);
            zzb(jSONObject, new ObfuscatedString(new long[]{8234970551643773795L, 1385064108118803723L, 3692915329554032065L}).toString(), zzbgc.zzn);
            this.zzk = zza(jSONObject, new ObfuscatedString(new long[]{3695947226745623096L, 5462430785142252254L, -1976742603951181802L, 8412828180382547162L, 175637842261131364L, -470562685009770624L}).toString(), zzbgc.zzq);
            this.zzl = zza(jSONObject, new ObfuscatedString(new long[]{-6233746267814216983L, -4281644959047118680L, 6004709661302580405L, 944242446364349202L, -8099687258413547832L}).toString(), zzbgc.zzbR);
            this.zzm = zza(jSONObject, new ObfuscatedString(new long[]{-1476173308250449349L, -1532408764690612236L, 8840984023671512736L, -3563163927462534215L, 5579802677073156684L}).toString(), zzbgc.zzbT);
            this.zzn = zzc(jSONObject, new ObfuscatedString(new long[]{-3034629173370257471L, 898237890244738497L, -9096734646498328337L, 4547564942501104413L, -8311207084045670661L, -6088080955913514668L}).toString(), zzbgc.zzbU);
            this.zzo = zzc(jSONObject, new ObfuscatedString(new long[]{-9215928633613656403L, 2037620517560782450L, 5170220353003553459L, 1030390149935203795L, -4289662023998520473L, -489940968165186082L}).toString(), zzbgc.zzbV);
        }
        string = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar);
        this.zze = string;
        this.zzf = zzb(jSONObject, new ObfuscatedString(new long[]{7511982860695920927L, 543422842187021488L, 8616502263003266336L, -4636509634106282544L}).toString(), zzbgc.zzi);
        this.zzg = zzb(jSONObject, new ObfuscatedString(new long[]{-2016055532332055936L, -8069512983171173144L, -6109552374820396831L, 128661343547566015L, -1377119560465437596L}).toString(), zzbgc.zzj);
        this.zzh = zzb(jSONObject, new ObfuscatedString(new long[]{-8803673281555304988L, 8791493084196955818L, -5508438229143412301L, 5586747914482032843L}).toString(), zzbgc.zzk);
        this.zzi = zzb(jSONObject, new ObfuscatedString(new long[]{237919094474669002L, -6090647800497992684L, 5006221475390369165L, 6252405559048808773L, -8885130963395007469L}).toString(), zzbgc.zzm);
        this.zzj = zza(jSONObject, new ObfuscatedString(new long[]{-4866533827188368938L, 6666640130949980825L, -1377218600814941929L, 8346614011300741740L}).toString(), zzbgc.zzei);
        zzb(jSONObject, new ObfuscatedString(new long[]{8234970551643773795L, 1385064108118803723L, 3692915329554032065L}).toString(), zzbgc.zzn);
        this.zzk = zza(jSONObject, new ObfuscatedString(new long[]{3695947226745623096L, 5462430785142252254L, -1976742603951181802L, 8412828180382547162L, 175637842261131364L, -470562685009770624L}).toString(), zzbgc.zzq);
        this.zzl = zza(jSONObject, new ObfuscatedString(new long[]{-6233746267814216983L, -4281644959047118680L, 6004709661302580405L, 944242446364349202L, -8099687258413547832L}).toString(), zzbgc.zzbR);
        this.zzm = zza(jSONObject, new ObfuscatedString(new long[]{-1476173308250449349L, -1532408764690612236L, 8840984023671512736L, -3563163927462534215L, 5579802677073156684L}).toString(), zzbgc.zzbT);
        this.zzn = zzc(jSONObject, new ObfuscatedString(new long[]{-3034629173370257471L, 898237890244738497L, -9096734646498328337L, 4547564942501104413L, -8311207084045670661L, -6088080955913514668L}).toString(), zzbgc.zzbU);
        this.zzo = zzc(jSONObject, new ObfuscatedString(new long[]{-9215928633613656403L, 2037620517560782450L, 5170220353003553459L, 1030390149935203795L, -4289662023998520473L, -489940968165186082L}).toString(), zzbgc.zzbV);
    }

    private static final boolean zza(JSONObject jSONObject, String str, zzbfu zzbfuVar) {
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue();
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
                return booleanValue;
            }
        }
        return booleanValue;
    }

    private static final int zzb(JSONObject jSONObject, String str, zzbfu zzbfuVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).intValue();
    }

    private static final long zzc(JSONObject jSONObject, String str, zzbfu zzbfuVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getLong(str);
            } catch (JSONException unused) {
            }
        }
        return ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).longValue();
    }
}
