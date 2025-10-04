package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzexg implements zzexp {
    public final boolean zza;
    public final boolean zzb;
    public final String zzc;
    public final boolean zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;

    @Nullable
    public final String zzh;

    public zzexg(boolean z, boolean z2, String str, boolean z3, int i, int i2, int i3, @Nullable String str2) {
        this.zza = z;
        this.zzb = z2;
        this.zzc = str;
        this.zzd = z3;
        this.zze = i;
        this.zzf = i2;
        this.zzg = i3;
        this.zzh = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzexp
    public final /* bridge */ /* synthetic */ void zzj(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putString(new ObfuscatedString(new long[]{-4373102713081679772L, 915356583768598940L}).toString(), this.zzc);
        bundle.putBoolean(new ObfuscatedString(new long[]{-4567419133303959254L, -2156939303641364420L, -3972462479186869165L}).toString(), true);
        bundle.putString(new ObfuscatedString(new long[]{-941228001350975023L, 8123704111026928532L, -9128083682187815903L}).toString(), (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdB));
        bundle.putInt(new ObfuscatedString(new long[]{4796677671150697283L, 6998629178906368392L, -547575082498637393L}).toString(), this.zze);
        bundle.putInt(new ObfuscatedString(new long[]{6183726396080705392L, 7956434618605671977L}).toString(), this.zzf);
        bundle.putInt(new ObfuscatedString(new long[]{-2045127940836350076L, 4527920849340610209L}).toString(), this.zzg);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfV)).booleanValue() && !TextUtils.isEmpty(this.zzh)) {
            bundle.putString(new ObfuscatedString(new long[]{-2238583924637437585L, 5685522478414659995L}).toString(), this.zzh);
        }
        Bundle zza = zzfhv.zza(bundle, new ObfuscatedString(new long[]{9106266660428800791L, 7649016383795334141L}).toString());
        zza.putBoolean(new ObfuscatedString(new long[]{2157025461980180760L, 2037704931739255860L}).toString(), ((Boolean) zzbia.zza.zze()).booleanValue());
        zza.putBoolean(new ObfuscatedString(new long[]{6635348409982706739L, -1354864211215204141L, -6537585159020408000L}).toString(), this.zza);
        zza.putBoolean(new ObfuscatedString(new long[]{694016579614682945L, -8515427352573607554L}).toString(), this.zzb);
        zza.putBoolean(new ObfuscatedString(new long[]{3874467905013370606L, 3497118847281198252L, -1861540649241198035L, 319186927374732718L}).toString(), this.zzd);
        bundle.putBundle(new ObfuscatedString(new long[]{5401482054624129249L, -5879786471241155927L}).toString(), zza);
        Bundle zza2 = zzfhv.zza(zza, new ObfuscatedString(new long[]{-6349020349351460752L, -7248470955128160359L, -8779279931872719262L}).toString());
        zza2.putString(new ObfuscatedString(new long[]{-1820057450679544949L, -2234322411562003621L}).toString(), new ObfuscatedString(new long[]{-4108660132760407539L, 5895589525219353063L, -5285776307357140892L}).toString());
        zza2.putString(new ObfuscatedString(new long[]{-5410698728002715843L, 3270936453832865488L}).toString(), new ObfuscatedString(new long[]{6651238851700409255L, 4022321374202956388L}).toString());
        zza2.putString(new ObfuscatedString(new long[]{2756441072287673646L, -3544089890056129539L, 8982899425304144975L}).toString(), new ObfuscatedString(new long[]{7142275431054549223L, -5687105564849920695L}).toString());
        zza.putBundle(new ObfuscatedString(new long[]{4284488323252250859L, 3477266006820082037L, 8559942743873064627L}).toString(), zza2);
    }
}
