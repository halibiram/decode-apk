package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzefg implements zzdfp, com.google.android.gms.ads.internal.client.zza, zzdbr, zzdbb {
    private final Context zza;
    private final zzfhz zzb;
    private final zzfgy zzc;
    private final zzfgm zzd;
    private final zzehh zze;

    @Nullable
    private Boolean zzf;
    private final boolean zzg = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgR)).booleanValue();

    @NonNull
    private final zzflw zzh;
    private final String zzi;

    public zzefg(Context context, zzfhz zzfhzVar, zzfgy zzfgyVar, zzfgm zzfgmVar, zzehh zzehhVar, @NonNull zzflw zzflwVar, String str) {
        this.zza = context;
        this.zzb = zzfhzVar;
        this.zzc = zzfgyVar;
        this.zzd = zzfgmVar;
        this.zze = zzehhVar;
        this.zzh = zzflwVar;
        this.zzi = str;
    }

    private final zzflv zzd(String str) {
        String obfuscatedString;
        zzflv zzb = zzflv.zzb(str);
        zzb.zzh(this.zzc, null);
        zzb.zzf(this.zzd);
        zzb.zza(new ObfuscatedString(new long[]{7557657078543646615L, 5093589405155949561L, 4871046660979384148L}).toString(), this.zzi);
        if (!this.zzd.zzu.isEmpty()) {
            zzb.zza(new ObfuscatedString(new long[]{-7397371361708734742L, -1987634431370581658L}).toString(), (String) this.zzd.zzu.get(0));
        }
        if (this.zzd.zzaj) {
            if (true != com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zza)) {
                obfuscatedString = new ObfuscatedString(new long[]{-2734271954229864068L, 3630507771574702549L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-7278196889435822564L, -8871325611903756969L}).toString();
            }
            zzb.zza(new ObfuscatedString(new long[]{-7843669036126041567L, -2472323917814229205L, -6311905895530664603L, 2516366810085994732L}).toString(), obfuscatedString);
            zzb.zza(new ObfuscatedString(new long[]{-772836511073083641L, 7468139612479057664L, -6046236759919013791L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            zzb.zza(new ObfuscatedString(new long[]{-577339192761078812L, -7958438286955317762L, 1038860264483413302L}).toString(), new ObfuscatedString(new long[]{-648027604909176971L, 9199809940878865294L}).toString());
        }
        return zzb;
    }

    private final void zze(zzflv zzflvVar) {
        if (this.zzd.zzaj) {
            this.zze.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), this.zzc.zzb.zzb.zzb, this.zzh.zza(zzflvVar), 2));
            return;
        }
        this.zzh.zzb(zzflvVar);
    }

    private final boolean zzf() {
        String str;
        if (this.zzf == null) {
            synchronized (this) {
                if (this.zzf == null) {
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
                            com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{4107118754424787287L, 3993708181487876715L, -3658480868593912670L, -7390320950041461000L, 6941778263982748166L, -5029656926872322862L}).toString());
                        }
                    }
                    this.zzf = Boolean.valueOf(z);
                }
            }
        }
        return this.zzf.booleanValue();
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        if (!this.zzd.zzaj) {
            return;
        }
        zze(zzd(new ObfuscatedString(new long[]{229533446093781111L, -1536356339200146599L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zza(com.google.android.gms.ads.internal.client.zze zzeVar) {
        com.google.android.gms.ads.internal.client.zze zzeVar2;
        if (!this.zzg) {
            return;
        }
        int i = zzeVar.zza;
        String str = zzeVar.zzb;
        if (zzeVar.zzc.equals(new ObfuscatedString(new long[]{-2622012539314004549L, -3521628464494932257L, -5340874022257395782L, -6779011496348751827L, 6739364285877449979L}).toString()) && (zzeVar2 = zzeVar.zzd) != null && !zzeVar2.zzc.equals(new ObfuscatedString(new long[]{1354069291601667456L, -4789901049923909888L, 7481343770087067120L, 6275103082643535657L, 7289646020007354482L}).toString())) {
            com.google.android.gms.ads.internal.client.zze zzeVar3 = zzeVar.zzd;
            i = zzeVar3.zza;
            str = zzeVar3.zzb;
        }
        zzfhz zzfhzVar = this.zzb;
        String obfuscatedString = new ObfuscatedString(new long[]{5279578239332234735L, 1249760788133247775L}).toString();
        String zza = zzfhzVar.zza(str);
        zzflv zzd = zzd(obfuscatedString);
        zzd.zza(new ObfuscatedString(new long[]{-2760729531675663408L, -3658412727907990069L}).toString(), new ObfuscatedString(new long[]{-7519589736133226415L, -261641533636998303L}).toString());
        if (i >= 0) {
            zzd.zza(new ObfuscatedString(new long[]{-7537421339317023163L, -5680251469536061442L}).toString(), String.valueOf(i));
        }
        if (zza != null) {
            zzd.zza(new ObfuscatedString(new long[]{-7126097894869634945L, -2338814298033942352L}).toString(), zza);
        }
        this.zzh.zzb(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzb() {
        if (!this.zzg) {
            return;
        }
        zzflw zzflwVar = this.zzh;
        zzflv zzd = zzd(new ObfuscatedString(new long[]{5559520694212285510L, 4897534867208898393L}).toString());
        zzd.zza(new ObfuscatedString(new long[]{-7554317728671333787L, -8167677456878671983L}).toString(), new ObfuscatedString(new long[]{-7670446322490395467L, -7985776495408437636L}).toString());
        zzflwVar.zzb(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdbb
    public final void zzc(zzdkv zzdkvVar) {
        if (!this.zzg) {
            return;
        }
        zzflv zzd = zzd(new ObfuscatedString(new long[]{-2275534550590291508L, -8125089846045124068L}).toString());
        zzd.zza(new ObfuscatedString(new long[]{8615722254368255531L, -6557413385031553536L}).toString(), new ObfuscatedString(new long[]{-1461391449493867905L, 6553284391035143692L, 6319275118610647581L}).toString());
        if (!TextUtils.isEmpty(zzdkvVar.getMessage())) {
            zzd.zza(new ObfuscatedString(new long[]{8100013389092585474L, 7432186212326627748L}).toString(), zzdkvVar.getMessage());
        }
        this.zzh.zzb(zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final void zzi() {
        if (!zzf()) {
            return;
        }
        this.zzh.zzb(zzd(new ObfuscatedString(new long[]{-9166623010391720722L, 7251112303305142379L, 9019342062445822209L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzdfp
    public final void zzj() {
        if (!zzf()) {
            return;
        }
        this.zzh.zzb(zzd(new ObfuscatedString(new long[]{2189137283680917103L, -6392339785371770162L, -5317918135638834349L, -4944676450477385488L}).toString()));
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final void zzq() {
        if (!zzf() && !this.zzd.zzaj) {
            return;
        }
        zze(zzd(new ObfuscatedString(new long[]{5457126886007257027L, 4376225937249633771L, 3419734794611358631L}).toString()));
    }
}
