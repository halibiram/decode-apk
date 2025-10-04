package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Collections;

/* loaded from: classes2.dex */
final class zzafb extends zzafg {
    private static final int[] zzb = {5512, 11025, 22050, 44100};
    private boolean zzc;
    private boolean zzd;
    private int zze;

    public zzafb(zzaea zzaeaVar) {
        super(zzaeaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zza(zzfp zzfpVar) {
        String obfuscatedString;
        if (!this.zzc) {
            int zzm = zzfpVar.zzm();
            int i = zzm >> 4;
            this.zze = i;
            if (i == 2) {
                int i2 = zzb[(zzm >> 2) & 3];
                zzak zzakVar = new zzak();
                zzakVar.zzW(new ObfuscatedString(new long[]{-225417314045178174L, 5021048123937968355L, 2806584955472224024L}).toString());
                zzakVar.zzy(1);
                zzakVar.zzX(i2);
                this.zza.zzl(zzakVar.zzac());
                this.zzd = true;
            } else if (i != 7 && i != 8) {
                if (i != 10) {
                    throw new zzaff(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{2185529768813244597L, -3466874689788059975L, 6624872978563076333L, 6355926157708294478L, -5636085890256350052L}), new StringBuilder(), i));
                }
            } else {
                zzak zzakVar2 = new zzak();
                if (i == 7) {
                    obfuscatedString = new ObfuscatedString(new long[]{-749585079512750800L, -5291572141318885075L, -4964483237690170980L}).toString();
                } else {
                    obfuscatedString = new ObfuscatedString(new long[]{-3643078145533939633L, -8305797659517265932L, 2011822318199224780L}).toString();
                }
                zzakVar2.zzW(obfuscatedString);
                zzakVar2.zzy(1);
                zzakVar2.zzX(8000);
                this.zza.zzl(zzakVar2.zzac());
                this.zzd = true;
            }
            this.zzc = true;
        } else {
            zzfpVar.zzL(1);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafg
    public final boolean zzb(zzfp zzfpVar, long j) {
        if (this.zze == 2) {
            int zzb2 = zzfpVar.zzb();
            this.zza.zzr(zzfpVar, zzb2);
            this.zza.zzt(j, 1, zzb2, 0, null);
            return true;
        }
        int zzm = zzfpVar.zzm();
        if (zzm == 0 && !this.zzd) {
            int zzb3 = zzfpVar.zzb();
            byte[] bArr = new byte[zzb3];
            zzfpVar.zzG(bArr, 0, zzb3);
            zzabr zza = zzabs.zza(bArr);
            zzak zzakVar = new zzak();
            zzakVar.zzW(new ObfuscatedString(new long[]{-6480077765903502940L, 9138135682628117035L, 8277932591514776940L}).toString());
            zzakVar.zzz(zza.zzc);
            zzakVar.zzy(zza.zzb);
            zzakVar.zzX(zza.zza);
            zzakVar.zzL(Collections.singletonList(bArr));
            this.zza.zzl(zzakVar.zzac());
            this.zzd = true;
            return false;
        }
        if (this.zze == 10 && zzm != 1) {
            return false;
        }
        int zzb4 = zzfpVar.zzb();
        this.zza.zzr(zzfpVar, zzb4);
        this.zza.zzt(j, 1, zzb4, 0, null);
        return true;
    }
}
