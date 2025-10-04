package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.util.zzad;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzbho;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcei;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzr {
    private final Context zza;
    private final String zzb;
    private final Map zzc = new TreeMap();
    private String zzd;
    private String zze;
    private final String zzf;

    public zzr(Context context, String str) {
        String concat;
        this.zza = context.getApplicationContext();
        this.zzb = str;
        String packageName = context.getPackageName();
        try {
            concat = packageName + new ObfuscatedString(new long[]{4246310545559412170L, -7034587267089700378L}).toString() + Wrappers.packageManager(context).getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8608341572856849192L, 2781767126664354070L, 7063754693794066685L, 6534078441845517782L, -3443885402168663151L, 2564979172689171321L, 960441803011364989L}).toString(), e);
            concat = String.valueOf(packageName).concat(new ObfuscatedString(new long[]{-8801832449232952702L, -6845763898220991896L}).toString());
        }
        this.zzf = concat;
    }

    public final String zza() {
        return this.zzf;
    }

    public final String zzb() {
        return this.zze;
    }

    public final String zzc() {
        return this.zzb;
    }

    public final String zzd() {
        return this.zzd;
    }

    public final Map zze() {
        return this.zzc;
    }

    public final void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcei zzceiVar) {
        Bundle bundle;
        this.zzd = zzlVar.zzj.zza;
        Bundle bundle2 = zzlVar.zzm;
        if (bundle2 != null) {
            bundle = bundle2.getBundle(AdMobAdapter.class.getName());
        } else {
            bundle = null;
        }
        if (bundle != null) {
            String str = (String) zzbho.zzc.zze();
            for (String str2 : bundle.keySet()) {
                if (str.equals(str2)) {
                    this.zze = bundle.getString(str2);
                } else if (str2.startsWith(new ObfuscatedString(new long[]{4817102512447491895L, 1913821573271612001L}).toString())) {
                    this.zzc.put(str2.substring(4), bundle.getString(str2));
                }
            }
            this.zzc.put(new ObfuscatedString(new long[]{-2015679946280128092L, 3129542199457148731L, 8739499485367332553L}).toString(), zzceiVar.zza);
            if (((Boolean) zzbho.zza.zze()).booleanValue()) {
                Bundle zzb = zzad.zzb(this.zza, (String) zzbho.zzb.zze());
                for (String str3 : zzb.keySet()) {
                    this.zzc.put(str3, zzb.get(str3).toString());
                }
            }
        }
    }
}
