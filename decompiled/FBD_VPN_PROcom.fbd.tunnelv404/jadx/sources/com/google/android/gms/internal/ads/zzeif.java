package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzeif implements zzeig {
    public static /* synthetic */ zzfod zzc(String str, String str2, String str3, zzeih zzeihVar, String str4, WebView webView, String str5, String str6, zzeii zzeiiVar) {
        String obfuscatedString = new ObfuscatedString(new long[]{-674348789060216206L, -7962243527456547818L, -8948923286120129023L}).toString();
        zzfon zza = zzfon.zza(new ObfuscatedString(new long[]{6818123626765131630L, -862991660015497478L}).toString(), str2);
        zzfom zzm = zzm(obfuscatedString);
        zzfoi zzk = zzk(zzeihVar.toString());
        zzfom zzfomVar = zzfom.zzc;
        if (zzm == zzfomVar) {
            zzcec.zzj(new ObfuscatedString(new long[]{-7645937012018572991L, -8192888706748161622L, -8503689783705805651L, 1070406492349958291L, 1246855561949467982L, -1021144971311917362L, 8795547995892046504L, -2538000369450464672L, -1970912749362664925L, -850125518957840259L}).toString());
            return null;
        }
        if (zzk == null) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-6235743211456637558L, 6241443112460026327L, -6861708773076782480L, -518630661250358899L, 2357598255266574687L, 7450414191217458168L, 5687389264049332638L, -7035793712842915366L}), String.valueOf(zzeihVar));
            return null;
        }
        zzfom zzm2 = zzm(str4);
        if (zzk == zzfoi.zzd && zzm2 == zzfomVar) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{6798194089081186183L, 4337467021366963563L, 9127843464459641887L, 3601955263110772636L, 6848228303702044042L, 7216703427965518692L, -4797604825549246764L, 6569115602232332074L, 7098226561649851524L, 2790299247684334439L}), String.valueOf(str4));
            return null;
        }
        return zzfod.zza(zzfoe.zza(zzk, zzl(zzeiiVar.toString()), zzm, zzm2, true), zzfof.zzb(zza, webView, str5, new ObfuscatedString(new long[]{296524764804451219L}).toString()));
    }

    public static /* synthetic */ zzfod zzd(String str, String str2, String str3, String str4, zzeih zzeihVar, WebView webView, String str5, String str6, zzeii zzeiiVar) {
        String obfuscatedString = new ObfuscatedString(new long[]{-819239402125823177L, -8314873249069824825L, 2682512866298358488L}).toString();
        zzfon zza = zzfon.zza(str, str2);
        zzfom zzm = zzm(obfuscatedString);
        zzfom zzm2 = zzm(str4);
        zzfoi zzk = zzk(zzeihVar.toString());
        zzfom zzfomVar = zzfom.zzc;
        if (zzm == zzfomVar) {
            zzcec.zzj(new ObfuscatedString(new long[]{7406274342789075470L, -4721787172254189976L, -1987256682256765542L, 414611209666842022L, -1306268515696718080L, 3883534253677920823L, -8954397412581239156L, -2664471080599139259L, -8992342717849835145L, 6038130073587282249L}).toString());
            return null;
        }
        if (zzk == null) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-9126160936028181804L, -8882348610933219865L, -4261623455052726921L, -6551297228515070619L, 1929916110043110732L, 8587382198654946414L, 8708580146979755852L, 12948708719127918L}), String.valueOf(zzeihVar));
            return null;
        }
        if (zzk == zzfoi.zzd && zzm2 == zzfomVar) {
            AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{-1762246165601642422L, 2085330779287715195L, 1677000633225086112L, 9002668203615951631L, 6189911904119167400L, 2139395489548751172L, -4653705128381350074L, -4907808687439896757L, 1255112530188356087L, 8331008455071727102L}), String.valueOf(str4));
            return null;
        }
        return zzfod.zza(zzfoe.zza(zzk, zzl(zzeiiVar.toString()), zzm, zzm2, true), zzfof.zzc(zza, webView, str5, new ObfuscatedString(new long[]{-4791655733760990051L}).toString()));
    }

    @Nullable
    private static zzfoi zzk(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -382745961) {
            if (hashCode != 112202875) {
                if (hashCode == 714893483 && str.equals(new ObfuscatedString(new long[]{-2382716236869771046L, -2205619033622204200L, -5442855555006642642L}).toString())) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str.equals(new ObfuscatedString(new long[]{3162700027326866259L, 7662658907178126095L}).toString())) {
                    c = 2;
                }
                c = 65535;
            }
        } else {
            if (str.equals(new ObfuscatedString(new long[]{9136719377529331276L, -5810896755263103218L, -3458023173146216223L}).toString())) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return null;
                }
                return zzfoi.zzd;
            }
            return zzfoi.zzc;
        }
        return zzfoi.zzb;
    }

    private static zzfol zzl(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode != -1104128070) {
            if (hashCode != 1318088141) {
                if (hashCode == 1988248512 && str.equals(new ObfuscatedString(new long[]{8112554508962296928L, 4385571512916159210L}).toString())) {
                    c = 2;
                }
                c = 65535;
            } else {
                if (str.equals(new ObfuscatedString(new long[]{7590058666248347295L, -4313460594275490237L, -3761640166098626604L, 4381386416868858221L}).toString())) {
                    c = 1;
                }
                c = 65535;
            }
        } else {
            if (str.equals(new ObfuscatedString(new long[]{2561846217076699762L, 3397483978663371585L, 3834609884983842512L}).toString())) {
                c = 0;
            }
            c = 65535;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    return zzfol.zzb;
                }
                return zzfol.zze;
            }
            return zzfol.zza;
        }
        return zzfol.zzd;
    }

    private static zzfom zzm(@Nullable String str) {
        if (new ObfuscatedString(new long[]{7195196112349500411L, -527998385290488083L}).toString().equals(str)) {
            return zzfom.zza;
        }
        if (new ObfuscatedString(new long[]{-7376278610177226776L, -4973034609095839046L, -3757466554847881921L}).toString().equals(str)) {
            return zzfom.zzb;
        }
        return zzfom.zzc;
    }

    @Nullable
    private static final Object zzn(zzeie zzeieVar) {
        try {
            return zzeieVar.zza();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{-8850836340231978712L, 8579364240835499555L, 1710347197517079593L}).toString());
            return null;
        }
    }

    private static final void zzo(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{1667013598077097798L, -1357093215459606381L, 6351306441318713769L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    @Nullable
    public final zzfod zza(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final zzeii zzeiiVar, final zzeih zzeihVar, @Nullable final String str5) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
            final String obfuscatedString = new ObfuscatedString(new long[]{-853435816073594440L}).toString();
            final String obfuscatedString2 = new ObfuscatedString(new long[]{6173168270239273938L, 9079456867273430857L, -8618393651992242439L}).toString();
            final String obfuscatedString3 = new ObfuscatedString(new long[]{-1807669094562687107L, -5457836310946467350L}).toString();
            return (zzfod) zzn(new zzeie(obfuscatedString3, str, obfuscatedString2, zzeihVar, str4, webView, str5, obfuscatedString, zzeiiVar) { // from class: com.google.android.gms.internal.ads.zzeib
                public final /* synthetic */ String zzb;
                public final /* synthetic */ zzeih zzd;
                public final /* synthetic */ String zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzeii zzi;
                public final /* synthetic */ String zza = new ObfuscatedString(new long[]{7531883075784372932L, 4592176447135657051L}).toString();
                public final /* synthetic */ String zzc = new ObfuscatedString(new long[]{-6874120291258873685L, -5114384423960408001L, -8788909465766850332L}).toString();
                public final /* synthetic */ String zzh = new ObfuscatedString(new long[]{9139204095027003216L}).toString();

                {
                    this.zzb = str;
                    this.zzd = zzeihVar;
                    this.zze = str4;
                    this.zzf = webView;
                    this.zzg = str5;
                    this.zzi = zzeiiVar;
                }

                @Override // com.google.android.gms.internal.ads.zzeie
                public final Object zza() {
                    return zzeif.zzc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    @Nullable
    public final zzfod zzb(final String str, final WebView webView, String str2, String str3, @Nullable final String str4, final String str5, final zzeii zzeiiVar, final zzeih zzeihVar, @Nullable final String str6) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
            final String obfuscatedString = new ObfuscatedString(new long[]{671530897882358676L}).toString();
            final String obfuscatedString2 = new ObfuscatedString(new long[]{-1590624595161724852L, 506225142757542342L, 2935250126265042288L}).toString();
            return (zzfod) zzn(new zzeie(str5, str, obfuscatedString2, str4, zzeihVar, webView, str6, obfuscatedString, zzeiiVar) { // from class: com.google.android.gms.internal.ads.zzehy
                public final /* synthetic */ String zza;
                public final /* synthetic */ String zzb;
                public final /* synthetic */ String zzd;
                public final /* synthetic */ zzeih zze;
                public final /* synthetic */ WebView zzf;
                public final /* synthetic */ String zzg;
                public final /* synthetic */ zzeii zzi;
                public final /* synthetic */ String zzc = new ObfuscatedString(new long[]{-6858341928508319545L, -1296951315236751818L, 7083786335019643570L}).toString();
                public final /* synthetic */ String zzh = new ObfuscatedString(new long[]{6300379713644178980L}).toString();

                {
                    this.zzd = str4;
                    this.zze = zzeihVar;
                    this.zzf = webView;
                    this.zzg = str6;
                    this.zzi = zzeiiVar;
                }

                @Override // com.google.android.gms.internal.ads.zzeie
                public final Object zza() {
                    return zzeif.zzd(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    @Nullable
    public final String zze(Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue()) {
            return null;
        }
        return (String) zzn(new zzeie() { // from class: com.google.android.gms.internal.ads.zzeic
            @Override // com.google.android.gms.internal.ads.zzeie
            public final Object zza() {
                return new ObfuscatedString(new long[]{-7297803985435981863L, 4763644988564809450L, 5155772823144308710L, 2408301460222595787L}).toString();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final void zzf(final zzfod zzfodVar, final View view) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehw
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
                    zzfod.this.zzb(view, zzfok.zzc, new ObfuscatedString(new long[]{-2058281051467810004L, 8970136543026727216L, -2525048755813573031L}).toString());
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final void zzg(final zzfod zzfodVar) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeid
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
                    zzfod.this.zzc();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final void zzh(final zzfod zzfodVar, final View view) {
        zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehx
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
                    zzfod.this.zzd(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final void zzi(final zzfod zzfodVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue() && zzfob.zzb()) {
            Objects.requireNonNull(zzfodVar);
            zzo(new Runnable() { // from class: com.google.android.gms.internal.ads.zzehz
                @Override // java.lang.Runnable
                public final void run() {
                    zzfod.this.zze();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeig
    public final boolean zzj(final Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzeU)).booleanValue()) {
            zzcec.zzj(new ObfuscatedString(new long[]{9026078829983130289L, 7440018598820336982L, -5946537953916858721L, -5047862753734245180L}).toString());
            return false;
        }
        Boolean bool = (Boolean) zzn(new zzeie() { // from class: com.google.android.gms.internal.ads.zzeia
            @Override // com.google.android.gms.internal.ads.zzeie
            public final Object zza() {
                if (zzfob.zzb()) {
                    return Boolean.TRUE;
                }
                zzfob.zza(context);
                return Boolean.valueOf(zzfob.zzb());
            }
        });
        if (bool == null || !bool.booleanValue()) {
            return false;
        }
        return true;
    }
}
