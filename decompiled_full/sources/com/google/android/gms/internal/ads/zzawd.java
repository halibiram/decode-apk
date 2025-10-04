package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzawd implements zzfsq {
    private final zzfqt zza;
    private final zzfrk zzb;
    private final zzawq zzc;
    private final zzawc zzd;
    private final zzavm zze;
    private final zzaws zzf;
    private final zzawk zzg;
    private final zzawb zzh;

    public zzawd(@NonNull zzfqt zzfqtVar, @NonNull zzfrk zzfrkVar, @NonNull zzawq zzawqVar, @NonNull zzawc zzawcVar, @Nullable zzavm zzavmVar, @Nullable zzaws zzawsVar, @Nullable zzawk zzawkVar, @Nullable zzawb zzawbVar) {
        this.zza = zzfqtVar;
        this.zzb = zzfrkVar;
        this.zzc = zzawqVar;
        this.zzd = zzawcVar;
        this.zze = zzavmVar;
        this.zzf = zzawsVar;
        this.zzg = zzawkVar;
        this.zzh = zzawbVar;
    }

    private final Map zze() {
        HashMap hashMap = new HashMap();
        zzfqt zzfqtVar = this.zza;
        zzatd zzb = this.zzb.zzb();
        hashMap.put(new ObfuscatedString(new long[]{4967075143752592068L, 3732662925245280540L}).toString(), zzfqtVar.zzb());
        hashMap.put(new ObfuscatedString(new long[]{342899511010857657L, 2794553882925379076L}).toString(), Boolean.valueOf(this.zza.zzc()));
        hashMap.put(new ObfuscatedString(new long[]{301511742789607032L, -809264118379334846L}).toString(), zzb.zzh());
        hashMap.put(new ObfuscatedString(new long[]{-6616725760790616277L, -675804098002037994L}).toString(), Boolean.valueOf(this.zzd.zza()));
        hashMap.put(new ObfuscatedString(new long[]{6286044485255653589L, 1847877264237938554L}).toString(), new Throwable());
        zzawk zzawkVar = this.zzg;
        if (zzawkVar != null) {
            hashMap.put(new ObfuscatedString(new long[]{4214549507569173759L, 160613982419054271L}).toString(), Long.valueOf(zzawkVar.zzc()));
            hashMap.put(new ObfuscatedString(new long[]{-1104454159325869347L, -2259971222298691364L}).toString(), Long.valueOf(this.zzg.zzg()));
            hashMap.put(new ObfuscatedString(new long[]{-3030053903270283605L, 5212174270747319485L}).toString(), Long.valueOf(this.zzg.zzd()));
            hashMap.put(new ObfuscatedString(new long[]{6685759060981132688L, -5567369837548552806L}).toString(), Long.valueOf(this.zzg.zzh()));
            hashMap.put(new ObfuscatedString(new long[]{388209006752793688L, 8320205060764560431L}).toString(), Long.valueOf(this.zzg.zzb()));
            hashMap.put(new ObfuscatedString(new long[]{-884870096784097937L, 5053614197210098740L}).toString(), Long.valueOf(this.zzg.zzf()));
            hashMap.put(new ObfuscatedString(new long[]{-3761322896721650254L, 2099989585196854297L}).toString(), Long.valueOf(this.zzg.zza()));
            hashMap.put(new ObfuscatedString(new long[]{-6002812919844159320L, 7541417776513681605L}).toString(), Long.valueOf(this.zzg.zze()));
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfsq
    public final Map zza() {
        zzawq zzawqVar = this.zzc;
        Map zze = zze();
        zze.put(new ObfuscatedString(new long[]{-9150788833566938228L, -4973359036723459295L}).toString(), Long.valueOf(zzawqVar.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfsq
    public final Map zzb() {
        Map zze = zze();
        zzatd zza = this.zzb.zza();
        zze.put(new ObfuscatedString(new long[]{-4537911663050149984L, -4295310091976435930L}).toString(), Boolean.valueOf(this.zza.zzd()));
        zze.put(new ObfuscatedString(new long[]{6384268425706010097L, -330059939084763988L}).toString(), zza.zzg());
        zze.put(new ObfuscatedString(new long[]{-399013404767632834L, 6331626968303833092L}).toString(), Integer.valueOf(zza.zzal() - 1));
        zze.put(new ObfuscatedString(new long[]{3341876027202654664L, -8989474390817787097L}).toString(), Boolean.valueOf(zza.zzai()));
        zzavm zzavmVar = this.zze;
        if (zzavmVar != null) {
            zze.put(new ObfuscatedString(new long[]{1977519512968473436L, 2116886475424659894L}).toString(), Long.valueOf(zzavmVar.zza()));
        }
        zzaws zzawsVar = this.zzf;
        if (zzawsVar != null) {
            zze.put(new ObfuscatedString(new long[]{-3468220276312624189L, -2884937276431526112L}).toString(), Long.valueOf(zzawsVar.zzc()));
            zze.put(new ObfuscatedString(new long[]{-9131094841954170291L, 7859005430254582532L}).toString(), Long.valueOf(this.zzf.zzb()));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfsq
    public final Map zzc() {
        zzawb zzawbVar = this.zzh;
        Map zze = zze();
        if (zzawbVar != null) {
            zze.put(new ObfuscatedString(new long[]{-4573495955207619761L, 2406128848890890652L}).toString(), zzawbVar.zza());
        }
        return zze;
    }

    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
