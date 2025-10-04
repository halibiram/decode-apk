package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import org.json.JSONException;

/* loaded from: classes2.dex */
public final class zzdaq extends com.google.android.gms.ads.internal.client.zzdm {
    private final String zza;
    private final String zzb;
    private final String zzc;
    private final String zzd;
    private final List zze;
    private final long zzf;
    private final String zzg;
    private final zzeis zzh;
    private final Bundle zzi;

    public zzdaq(zzfgm zzfgmVar, String str, zzeis zzeisVar, zzfgp zzfgpVar, String str2) {
        String str3;
        String str4;
        String obfuscatedString;
        String str5 = null;
        if (zzfgmVar == null) {
            str3 = null;
        } else {
            str3 = zzfgmVar.zzac;
        }
        this.zzb = str3;
        this.zzc = str2;
        if (zzfgpVar == null) {
            str4 = null;
        } else {
            str4 = zzfgpVar.zzb;
        }
        this.zzd = str4;
        if (new ObfuscatedString(new long[]{-3823361231115036703L, -4317039282897560850L, 4268302077455224878L, 5854036659912796035L, 141463447040500678L, 6602716833603025062L, -5066201104652523983L, -284077170005683962L, 7108062346089014054L, 7498519531058720513L}).toString().equals(str) || new ObfuscatedString(new long[]{-3848936096113730076L, 8872106998205755835L, 1020649459433489859L, -4090126601303415382L, 2605534446562663034L, 3046101865223744192L, -7226104613342882516L, -6681362847776785381L}).toString().equals(str)) {
            try {
                str5 = zzfgmVar.zzw.getString(new ObfuscatedString(new long[]{5119637323074678408L, 8205866166831665649L, 375525795009830429L}).toString());
            } catch (JSONException unused) {
            }
        }
        this.zza = str5 != null ? str5 : str;
        this.zze = zzeisVar.zzc();
        this.zzh = zzeisVar;
        this.zzf = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() / 1000;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgQ)).booleanValue() && zzfgpVar != null) {
            this.zzi = zzfgpVar.zzj;
        } else {
            this.zzi = new Bundle();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzje)).booleanValue() && zzfgpVar != null && !TextUtils.isEmpty(zzfgpVar.zzh)) {
            obfuscatedString = zzfgpVar.zzh;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{3756859927967980206L}).toString();
        }
        this.zzg = obfuscatedString;
    }

    public final long zzc() {
        return this.zzf;
    }

    public final String zzd() {
        return this.zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final Bundle zze() {
        return this.zzi;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    @Nullable
    public final com.google.android.gms.ads.internal.client.zzu zzf() {
        zzeis zzeisVar = this.zzh;
        if (zzeisVar != null) {
            return zzeisVar.zza();
        }
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzg() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzh() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final String zzi() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdn
    public final List zzj() {
        return this.zze;
    }

    public final String zzk() {
        return this.zzd;
    }
}
