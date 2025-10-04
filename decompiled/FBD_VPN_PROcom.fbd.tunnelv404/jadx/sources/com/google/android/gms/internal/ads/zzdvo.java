package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzdvo implements zzdfp, com.google.android.gms.ads.internal.client.zza, zzdbr, zzdbb {
    private final Context zza;
    private final zzfhz zzb;
    private final zzdwf zzc;
    private final zzfgy zzd;
    private final zzfgm zze;
    private final zzehh zzf;

    @Nullable
    private Boolean zzg;
    private final boolean zzh = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgR)).booleanValue();

    public zzdvo(Context context, zzfhz zzfhzVar, zzdwf zzdwfVar, zzfgy zzfgyVar, zzfgm zzfgmVar, zzehh zzehhVar) {
        this.zza = context;
        this.zzb = zzfhzVar;
        this.zzc = zzdwfVar;
        this.zzd = zzfgyVar;
        this.zze = zzfgmVar;
        this.zzf = zzehhVar;
    }

    private final zzdwe zzd(String str) {
        String obfuscatedString;
        zzdwe zza = this.zzc.zza();
        zza.zze(this.zzd.zzb.zzb);
        zza.zzd(this.zze);
        zza.zzb(new ObfuscatedString(new long[]{-5956051938843430193L, 1441046740688329444L}).toString(), str);
        boolean z = false;
        if (!this.zze.zzu.isEmpty()) {
            zza.zzb(new ObfuscatedString(new long[]{-5146166555861981279L, 3869298238462429724L}).toString(), (String) this.zze.zzu.get(0));
        }
        if (this.zze.zzaj) {
            if (true != com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza)) {
                obfuscatedString = new ObfuscatedString(new long[]{-6066042770027569741L, 3772487751842294098L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-7090846156442893266L, -7869739818808110389L}).toString();
            }
            zza.zzb(new ObfuscatedString(new long[]{-6799508762582188763L, -7540366811310857670L, 7362576596629815692L, 5948821942703841874L}).toString(), obfuscatedString);
            zza.zzb(new ObfuscatedString(new long[]{6771068091474450413L, -8651416380322860063L, 1343501922937258605L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zza.zzb(new ObfuscatedString(new long[]{2549949718346064555L, 1819605023610551589L, 4124334653602352596L}).toString(), new ObfuscatedString(new long[]{-4112119579098080712L, 5865528760492003859L}).toString());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzha)).booleanValue()) {
            if (com.google.android.gms.ads.nonagon.signalgeneration.zzf.zze(this.zzd.zza.zza) != 1) {
                z = true;
            }
            zza.zzb(new ObfuscatedString(new long[]{4202412322477411079L, -6137263417998781398L}).toString(), String.valueOf(z));
            if (z) {
                com.google.android.gms.ads.internal.client.zzl zzlVar = this.zzd.zza.zza.zzd;
                zza.zzc(new ObfuscatedString(new long[]{6188545273112750765L, 8428626465265035350L}).toString(), zzlVar.zzp);
                zza.zzc(new ObfuscatedString(new long[]{709831852851059260L, -156785222705999852L}).toString(), com.google.android.gms.ads.nonagon.signalgeneration.zzf.zza(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(zzlVar)));
            }
        }
        return zza;
    }

    private final void zze(zzdwe zzdweVar) {
        if (this.zze.zzaj) {
            this.zzf.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzd.zzb.zzb.zzb, zzdweVar.zzf(), 2));
            return;
        }
        zzdweVar.zzg();
    }

    private final boolean zzf() {
        String str;
        if (this.zzg == null) {
            synchronized (this) {
                if (this.zzg == null) {
                    String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbt);
                    com.google.android.gms.ads.internal.zzt.zzp();
                    try {
                        str = com.google.android.gms.ads.internal.util.zzt.zzp(this.zza);
                    } catch (RemoteException unused) {
                        str = null;
                    }
                    boolean z = false;
                    if (str2 != null && str != null) {
                        try {
                            z = Pattern.matches(str2, str);
                        } catch (RuntimeException e) {
                            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{-6016154057439951498L, 575334137664140436L, 4613291353758046284L, -6188693548291421203L, -6701193703233407752L, 696679565219016604L}).toString());
                        }
                    }
                    this.zzg = Boolean.valueOf(z);
                }
            }
        }
        return this.zzg.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!this.zze.zzaj) {
            return;
        }
        zze(zzd(new ObfuscatedString(new long[]{-8069209889987194905L, -5745635676492922567L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (!this.zzh) {
            return;
        }
        zzdwe zzd = zzd(new ObfuscatedString(new long[]{-4256492151658806487L, 3378734332373898202L}).toString());
        zzd.zzb(new ObfuscatedString(new long[]{-3457570178173171981L, -1783523509169482569L}).toString(), new ObfuscatedString(new long[]{425359176923984375L, -1300396463690461101L}).toString());
        int i = zzeVar.zza;
        String str = zzeVar.zzb;
        if (zzeVar.zzc.equals(new ObfuscatedString(new long[]{8041001786032175621L, -1683276646953932458L, 8551130915031581383L, 2890122231718236478L, 7900158026701471053L}).toString()) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(new ObfuscatedString(new long[]{6141105570553065914L, -1665261907760782027L, 5863054750377417935L, 2158814031910611842L, -717530573615689237L}).toString())) {
            com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
            i = zzeVar3.zza;
            str = zzeVar3.zzb;
        }
        if (i >= 0) {
            zzd.zzb(new ObfuscatedString(new long[]{2071348887078821847L, 5988475754171246100L}).toString(), String.valueOf(i));
        }
        String zza = this.zzb.zza(str);
        if (zza != null) {
            zzd.zzb(new ObfuscatedString(new long[]{-6963930470051121116L, -2759561243216494977L}).toString(), zza);
        }
        zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzb() {
        if (!this.zzh) {
            return;
        }
        zzdwe zzd = zzd(new ObfuscatedString(new long[]{1929464734019112906L, 4151512529049265331L}).toString());
        zzd.zzb(new ObfuscatedString(new long[]{5713672981120748464L, -9076279471278525821L}).toString(), new ObfuscatedString(new long[]{-647408518585645352L, -3081814351148762533L}).toString());
        zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzc(zzdkv zzdkvVar) {
        if (!this.zzh) {
            return;
        }
        zzdwe zzd = zzd(new ObfuscatedString(new long[]{4380419524394992217L, -6561966907512223912L}).toString());
        zzd.zzb(new ObfuscatedString(new long[]{-5336502795905510217L, -407049257899514495L}).toString(), new ObfuscatedString(new long[]{6736278420004856088L, 6879290943622039910L, 186575180318008035L}).toString());
        if (!TextUtils.isEmpty(zzdkvVar.getMessage())) {
            zzd.zzb(new ObfuscatedString(new long[]{-3355826031893341288L, 2895897777466551863L}).toString(), zzdkvVar.getMessage());
        }
        zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final void zzi() {
        if (!zzf()) {
            return;
        }
        zzd(new ObfuscatedString(new long[]{7914195251571224353L, 6127783943471581874L, 7483958362388184722L}).toString()).zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final void zzj() {
        if (!zzf()) {
            return;
        }
        zzd(new ObfuscatedString(new long[]{7816526058986236415L, 7438454010407101156L, 4775076629570645823L, 4557494331622402400L}).toString()).zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final void zzq() {
        if (!zzf() && !this.zze.zzaj) {
            return;
        }
        zze(zzd(new ObfuscatedString(new long[]{4973241418923870567L, -5321178828241581523L, -3032602764007214804L}).toString()));
    }
}
