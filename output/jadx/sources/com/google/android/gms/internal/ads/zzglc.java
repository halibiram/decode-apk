package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzglc {

    @Nullable
    private String zza;

    @Nullable
    private zzgld zzb;

    @Nullable
    private zzghi zzc;

    private zzglc() {
    }

    public final zzglc zza(zzghi zzghiVar) {
        this.zzc = zzghiVar;
        return this;
    }

    public final zzglc zzb(zzgld zzgldVar) {
        this.zzb = zzgldVar;
        return this;
    }

    public final zzglc zzc(String str) {
        this.zza = str;
        return this;
    }

    public final zzglf zzd() {
        if (this.zza != null) {
            zzgld zzgldVar = this.zzb;
            if (zzgldVar != null) {
                zzghi zzghiVar = this.zzc;
                if (zzghiVar != null) {
                    if (!zzghiVar.zza()) {
                        if ((zzgldVar.equals(zzgld.zza) && (zzghiVar instanceof zzgji)) || ((zzgldVar.equals(zzgld.zzc) && (zzghiVar instanceof zzgkg)) || ((zzgldVar.equals(zzgld.zzb) && (zzghiVar instanceof zzgly)) || ((zzgldVar.equals(zzgld.zzd) && (zzghiVar instanceof zzghz)) || ((zzgldVar.equals(zzgld.zze) && (zzghiVar instanceof zzgiq)) || (zzgldVar.equals(zzgld.zzf) && (zzghiVar instanceof zzgjv))))))) {
                            return new zzglf(this.zza, this.zzb, this.zzc, null);
                        }
                        String zzgldVar2 = this.zzb.toString();
                        String valueOf = String.valueOf(this.zzc);
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{299638234298340462L, -5212267081073316526L, -5388400683350797270L, 8848347817498834072L, -151747997446662813L}).toString());
                        sb.append(zzgldVar2);
                        sb.append(new ObfuscatedString(new long[]{-2980546603505893673L, 2914550816166741677L, -6013954719698681820L, 8864608418106708895L, -1128933534253891357L, 4639021972228216104L}).toString());
                        sb.append(valueOf);
                        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6495005081724520627L, 3475091834269787961L}), sb));
                    }
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7870732548978270992L, -1142184693568014419L, -3647875519451600443L, 4232146817689353729L, 6033422735086656551L, -6442572574734491700L, 5484118851542284908L, 9045000637335257561L}).toString());
                }
                throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4344266095404777556L, 6969812393775205537L, -6678006457484972735L, 4612785837850240124L, -5445773121708839368L, 2968643826631050543L}).toString());
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{-8399937089592728972L, 7754372932543880095L, -5526487596052941134L, 7509694531338744900L, -1139074560490468976L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4981318422388275621L, 2760426681998406380L, 9080023878625996254L, 8420370914601937858L}).toString());
    }

    public /* synthetic */ zzglc(zzglb zzglbVar) {
    }
}
