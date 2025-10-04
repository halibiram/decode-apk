package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzcbt implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final Context zza;
    private final SharedPreferences zzb;
    private final com.google.android.gms.ads.internal.util.zzg zzc;
    private final zzcch zzd;
    private String zze = new ObfuscatedString(new long[]{-7407713243281674626L, 3142937046188116996L}).toString();
    private int zzf = -1;

    public zzcbt(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzcch zzcchVar) {
        this.zzb = PreferenceManager.getDefaultSharedPreferences(context);
        this.zzc = zzgVar;
        this.zza = context;
        this.zzd = zzcchVar;
    }

    private final void zzb() {
        this.zzc.zzH(true);
        com.google.android.gms.ads.internal.util.zzad.zzc(this.zza);
    }

    private final void zzc(String str, int i) {
        Context context;
        boolean z = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaw)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals(new ObfuscatedString(new long[]{-3316674046462973432L, -7465893899424405937L}).toString())))) {
            z = false;
        }
        this.zzc.zzH(z);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgj)).booleanValue() && z && (context = this.zza) != null) {
            context.deleteDatabase(new ObfuscatedString(new long[]{-5737059504900429977L, 3319782273497666536L, 5919136152662280496L}).toString());
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        char c;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzay)).booleanValue()) {
            if (Objects.equals(str, new ObfuscatedString(new long[]{2146215816889279594L, 5154063421662411644L, -8364609540778481624L, 4054791785572605265L, -6606386827966180289L}).toString())) {
                int i = sharedPreferences.getInt(new ObfuscatedString(new long[]{-6016152859010813609L, 6262195048384279325L, -3809377461031372567L, 9102133461670724440L, -8309483812752524217L}).toString(), -1);
                if (i != this.zzc.zzb()) {
                    zzb();
                }
                this.zzc.zzE(i);
                return;
            }
            if (Objects.equals(str, new ObfuscatedString(new long[]{893458032992352339L, 6725260692048737514L, -2704488613643644158L, -5353928055374586251L}).toString()) || Objects.equals(str, new ObfuscatedString(new long[]{4662119479334527955L, 6697429273535327039L, -7209465835321658400L}).toString()) || Objects.equals(str, new ObfuscatedString(new long[]{6187543106262463097L, 2513663271327319283L, 5722723261076659760L, -2916903381502638550L}).toString())) {
                String string = sharedPreferences.getString(str, new ObfuscatedString(new long[]{-4588270704601873443L, 4500520871426073484L}).toString());
                if (string != null && !string.equals(this.zzc.zzn(str))) {
                    zzb();
                }
                this.zzc.zzF(str, string);
                return;
            }
            return;
        }
        String string2 = sharedPreferences.getString(new ObfuscatedString(new long[]{-4776842960202978433L, 6012220930149783427L, -658701917528973392L, 7741448047463681307L}).toString(), new ObfuscatedString(new long[]{-1412226328590511108L, -5193817838413379884L}).toString());
        int i2 = sharedPreferences.getInt(new ObfuscatedString(new long[]{-3485203120212974883L, -1286623435013447975L, -1385473624653633138L, -5232922707288857115L, 427849420258765361L}).toString(), -1);
        String valueOf = String.valueOf(str);
        int hashCode = valueOf.hashCode();
        if (hashCode != -2004976699) {
            if (hashCode == -527267622 && valueOf.equals(new ObfuscatedString(new long[]{-6657047301471520238L, -2211130065458226515L, 272162900415900900L, 7959660634754086599L, -4606268973055411573L}).toString())) {
                c = 1;
            }
            c = 65535;
        } else {
            if (valueOf.equals(new ObfuscatedString(new long[]{7167922085141046052L, -7600441907312295074L, -6565862142509333400L, 7794749700401755589L}).toString())) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c == 1) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaw)).booleanValue() && i2 != -1 && this.zzf != i2) {
                    this.zzf = i2;
                    zzc(string2, i2);
                    return;
                }
                return;
            }
            return;
        }
        if (!string2.equals(new ObfuscatedString(new long[]{1662063620193545846L, 9099417999076670603L}).toString()) && !this.zze.equals(string2)) {
            this.zze = string2;
            zzc(string2, i2);
        }
    }

    public final void zza() {
        this.zzb.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.zzb, new ObfuscatedString(new long[]{-4231835469825736888L, -3825356539785455800L, 3663284275528763613L, -8343466285638149458L, -4784644397048146243L}).toString());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzay)).booleanValue()) {
            onSharedPreferenceChanged(this.zzb, new ObfuscatedString(new long[]{8739111083905712701L, -2811857461307772542L, -8807525203680094130L, -4160243002032188210L}).toString());
            onSharedPreferenceChanged(this.zzb, new ObfuscatedString(new long[]{-7596480041764811199L, -551486903214022920L, -7131255797687856928L}).toString());
        } else {
            onSharedPreferenceChanged(this.zzb, new ObfuscatedString(new long[]{3101309147577033969L, -1530004960366112409L, 1201996496106664161L, 4399819507362874237L}).toString());
        }
    }
}
