package com.google.android.gms.internal.ads;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.LocaleList;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzxn extends zzyc implements Comparable {
    private final int zze;
    private final boolean zzf;

    @Nullable
    private final String zzg;
    private final zzxu zzh;
    private final boolean zzi;
    private final int zzj;
    private final int zzk;
    private final int zzl;
    private final boolean zzm;
    private final int zzn;
    private final int zzo;
    private final boolean zzp;
    private final int zzq;
    private final int zzr;
    private final int zzs;
    private final int zzt;
    private final boolean zzu;
    private final boolean zzv;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public zzxn(int i, zzcz zzczVar, int i2, zzxu zzxuVar, int i3, boolean z, zzfxf zzfxfVar, int i4) {
        super(i, zzczVar, i2);
        int i5;
        int i6;
        int i7;
        boolean z2;
        boolean z3;
        String[] strArr;
        int i8;
        boolean z4;
        boolean z5;
        boolean z6;
        LocaleList locales;
        String languageTags;
        int i9 = 2;
        this.zzh = zzxuVar;
        if (true != zzxuVar.zzR) {
            i5 = 16;
        } else {
            i5 = 24;
        }
        this.zzg = zzyg.zzh(this.zzd.zzd);
        this.zzi = zzyg.zzo(i3, false);
        int i10 = 0;
        while (true) {
            i6 = Integer.MAX_VALUE;
            if (i10 < zzxuVar.zzq.size()) {
                i7 = zzyg.zzb(this.zzd, (String) zzxuVar.zzq.get(i10), false);
                if (i7 > 0) {
                    break;
                } else {
                    i10++;
                }
            } else {
                i10 = Integer.MAX_VALUE;
                i7 = 0;
                break;
            }
        }
        this.zzk = i10;
        this.zzj = i7;
        this.zzl = zzyg.zza(this.zzd.zzf, 0);
        zzam zzamVar = this.zzd;
        int i11 = zzamVar.zzf;
        if (i11 == 0 || (i11 & 1) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzm = z2;
        if (1 != (zzamVar.zze & 1)) {
            z3 = false;
        } else {
            z3 = true;
        }
        this.zzp = z3;
        this.zzq = zzamVar.zzz;
        this.zzr = zzamVar.zzA;
        this.zzs = zzamVar.zzi;
        this.zzf = zzfxfVar.zza(zzamVar);
        Configuration configuration = Resources.getSystem().getConfiguration();
        if (zzfy.zza >= 24) {
            locales = configuration.getLocales();
            languageTags = locales.toLanguageTags();
            strArr = languageTags.split(new ObfuscatedString(new long[]{-6733896031472807060L, 2779005461011674757L}).toString(), -1);
        } else {
            strArr = new String[]{configuration.locale.toLanguageTag()};
        }
        for (int i12 = 0; i12 < strArr.length; i12++) {
            strArr[i12] = zzfy.zzC(strArr[i12]);
        }
        int i13 = 0;
        while (true) {
            if (i13 < strArr.length) {
                i8 = zzyg.zzb(this.zzd, strArr[i13], false);
                if (i8 > 0) {
                    break;
                } else {
                    i13++;
                }
            } else {
                i13 = Integer.MAX_VALUE;
                i8 = 0;
                break;
            }
        }
        this.zzn = i13;
        this.zzo = i8;
        int i14 = 0;
        while (true) {
            if (i14 >= zzxuVar.zzu.size()) {
                break;
            }
            String str = this.zzd.zzm;
            if (str != null && str.equals(zzxuVar.zzu.get(i14))) {
                i6 = i14;
                break;
            }
            i14++;
        }
        this.zzt = i6;
        if ((i3 & 384) == 128) {
            z4 = true;
        } else {
            z4 = false;
        }
        this.zzu = z4;
        if ((i3 & 64) == 64) {
            z5 = true;
        } else {
            z5 = false;
        }
        this.zzv = z5;
        zzxu zzxuVar2 = this.zzh;
        if (!zzyg.zzo(i3, zzxuVar2.zzT) || (!(z6 = this.zzf) && !zzxuVar2.zzM)) {
            i9 = 0;
        } else if (!zzyg.zzo(i3, false) || !z6 || this.zzd.zzi == -1 || ((!zzxuVar2.zzV && z) || (i5 & i3) == 0)) {
            i9 = 1;
        }
        this.zze = i9;
    }

    @Override // java.lang.Comparable
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final int compareTo(zzxn zzxnVar) {
        zzgbj zzgbjVar;
        zzgbj zza;
        zzgbj zzgbjVar2;
        if (this.zzf && this.zzi) {
            zza = zzyg.zzc;
        } else {
            zzgbjVar = zzyg.zzc;
            zza = zzgbjVar.zza();
        }
        zzfzp zzd = zzfzp.zzk().zze(this.zzi, zzxnVar.zzi).zzd(Integer.valueOf(this.zzk), Integer.valueOf(zzxnVar.zzk), zzgbj.zzc().zza()).zzb(this.zzj, zzxnVar.zzj).zzb(this.zzl, zzxnVar.zzl).zze(this.zzp, zzxnVar.zzp).zze(this.zzm, zzxnVar.zzm).zzd(Integer.valueOf(this.zzn), Integer.valueOf(zzxnVar.zzn), zzgbj.zzc().zza()).zzb(this.zzo, zzxnVar.zzo).zze(this.zzf, zzxnVar.zzf).zzd(Integer.valueOf(this.zzt), Integer.valueOf(zzxnVar.zzt), zzgbj.zzc().zza());
        Integer valueOf = Integer.valueOf(this.zzs);
        Integer valueOf2 = Integer.valueOf(zzxnVar.zzs);
        boolean z = this.zzh.zzB;
        zzgbjVar2 = zzyg.zzd;
        zzfzp zzd2 = zzd.zzd(valueOf, valueOf2, zzgbjVar2).zze(this.zzu, zzxnVar.zzu).zze(this.zzv, zzxnVar.zzv).zzd(Integer.valueOf(this.zzq), Integer.valueOf(zzxnVar.zzq), zza).zzd(Integer.valueOf(this.zzr), Integer.valueOf(zzxnVar.zzr), zza);
        Integer valueOf3 = Integer.valueOf(this.zzs);
        Integer valueOf4 = Integer.valueOf(zzxnVar.zzs);
        if (!zzfy.zzF(this.zzg, zzxnVar.zzg)) {
            zza = zzyg.zzd;
        }
        return zzd2.zzd(valueOf3, valueOf4, zza).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final int zzb() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzyc
    public final /* bridge */ /* synthetic */ boolean zzc(zzyc zzycVar) {
        String str;
        zzxn zzxnVar = (zzxn) zzycVar;
        boolean z = this.zzh.zzP;
        zzam zzamVar = this.zzd;
        int i = zzamVar.zzz;
        if (i != -1) {
            zzam zzamVar2 = zzxnVar.zzd;
            if (i == zzamVar2.zzz && (str = zzamVar.zzm) != null && TextUtils.equals(str, zzamVar2.zzm)) {
                boolean z2 = this.zzh.zzO;
                int i2 = this.zzd.zzA;
                if (i2 != -1 && i2 == zzxnVar.zzd.zzA && this.zzu == zzxnVar.zzu && this.zzv == zzxnVar.zzv) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
