package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzggj {
    private final List zza = new ArrayList();
    private final zzgrw zzb = zzgrw.zza;
    private boolean zzc = false;

    public final void zzd() {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            ((zzggh) it.next()).zza = false;
        }
    }

    public final zzggj zza(zzggh zzgghVar) {
        zzggj zzggjVar;
        boolean z;
        zzggjVar = zzgghVar.zzf;
        if (zzggjVar == null) {
            z = zzgghVar.zza;
            if (z) {
                zzd();
            }
            zzgghVar.zzf = this;
            this.zza.add(zzgghVar);
            return this;
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2206614672726981165L, -4621452272736769153L, 1574480676756031423L, -2643564081948585594L, 5695965709057551480L, -8541774956512363897L, 4070981818475140478L, 4443792602104627002L}).toString());
    }

    public final zzggm zzb() {
        zzggi zzggiVar;
        zzggi zzggiVar2;
        zzggi zzggiVar3;
        int i;
        zzggq zzggqVar;
        zzgpc zzf;
        boolean z;
        zzgge zzggeVar;
        zzggi zzggiVar4;
        zzggi zzggiVar5;
        zzggi zzggiVar6;
        zzggi zzggiVar7;
        zzgge unused;
        zzggi unused2;
        char c = 2;
        char c2 = 1;
        if (!this.zzc) {
            this.zzc = true;
            List list = this.zza;
            zzgvd zzd = zzgvg.zzd();
            char c3 = 0;
            int i2 = 0;
            while (i2 < list.size() - 1) {
                int i3 = i2 + 1;
                zzggiVar4 = ((zzggh) list.get(i2)).zze;
                zzggiVar5 = zzggi.zza;
                if (zzggiVar4 == zzggiVar5) {
                    zzggiVar6 = ((zzggh) list.get(i3)).zze;
                    zzggiVar7 = zzggi.zza;
                    if (zzggiVar6 != zzggiVar7) {
                        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-5354131830997585537L, -2736182695515939491L, -8508696841101755057L, -4920010051108596749L, 3341917618626305983L, -5050623568797742568L, 2244474724082830074L, -6806811282742044191L, -8312368714057266577L, 3075050035537976966L, -1815055458316714088L, 5983695231654091755L, 8846175095650357114L}).toString());
                    }
                }
                i2 = i3;
            }
            HashSet hashSet = new HashSet();
            Integer num = null;
            for (zzggh zzgghVar : this.zza) {
                unused = zzgghVar.zzb;
                zzggiVar = zzgghVar.zze;
                if (zzggiVar != null) {
                    zzggiVar2 = zzgghVar.zze;
                    zzggiVar3 = zzggi.zza;
                    int i4 = 3;
                    if (zzggiVar2 == zzggiVar3) {
                        i = 0;
                        while (true) {
                            if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                                break;
                            }
                            SecureRandom secureRandom = new SecureRandom();
                            byte[] bArr = new byte[4];
                            int i5 = 0;
                            while (i5 == 0) {
                                secureRandom.nextBytes(bArr);
                                int i6 = bArr[c3] & 255;
                                int i7 = bArr[c2] & 255;
                                i5 = ((bArr[c] & 255) << 8) | (i7 << 16) | (i6 << 24) | (bArr[3] & 255);
                                c = 2;
                                c2 = 1;
                                c3 = 0;
                            }
                            i = i5;
                        }
                    } else {
                        unused2 = zzgghVar.zze;
                        i = 0;
                    }
                    Integer valueOf = Integer.valueOf(i);
                    if (!hashSet.contains(valueOf)) {
                        hashSet.add(valueOf);
                        zzggh.zza(zzgghVar);
                        zzggqVar = zzgghVar.zzd;
                        zzgge zzc = zzgghVar.zzc();
                        zzgge zzggeVar2 = zzgge.zza;
                        if (!zzggeVar2.equals(zzc)) {
                            if (zzgge.zzb.equals(zzc)) {
                                i4 = 4;
                            } else if (zzgge.zzc.equals(zzc)) {
                                i4 = 5;
                            } else {
                                throw new IllegalStateException(new ObfuscatedString(new long[]{7450956228257725837L, 5843618186372071582L, 2341292203984976011L, -6997041336481352833L}).toString());
                            }
                        }
                        if (zzggqVar instanceof zzgnp) {
                            zzf = ((zzgnp) zzggqVar).zzb();
                        } else {
                            zzf = zzgoe.zzd().zzf(zzggqVar, zzgoy.class);
                        }
                        zzgoy zzgoyVar = (zzgoy) zzf;
                        zzgut zza = zzghb.zza(zzgoyVar.zzc());
                        zzgve zzd2 = zzgvf.zzd();
                        zzd2.zzb(i);
                        zzd2.zzd(i4);
                        zzd2.zza(zza);
                        zzd2.zzc(zzgoyVar.zzc().zzf());
                        zzd.zza((zzgvf) zzd2.zzal());
                        z = zzgghVar.zza;
                        if (z) {
                            if (num == null) {
                                zzggeVar = zzgghVar.zzb;
                                if (zzggeVar == zzggeVar2) {
                                    num = valueOf;
                                } else {
                                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{6852667439523166289L, -1308716229000136091L, -9064686381579311217L, -1385057804066539496L, -7247351614396600430L}).toString());
                                }
                            } else {
                                throw new GeneralSecurityException(new ObfuscatedString(new long[]{286538374263154792L, -4687471999625366305L, 5178144885207056742L, 7080483085762635165L}).toString());
                            }
                        }
                        c = 2;
                        c2 = 1;
                        c3 = 0;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{-2125191151032018203L, 5703075230546507327L}).toString());
                        sb.append(i);
                        throw new GeneralSecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4722956513117573544L, -1849461214264392763L, -433485307563577317L, -4219580233271352102L, -4846096272326060338L}), sb));
                    }
                } else {
                    throw new GeneralSecurityException(new ObfuscatedString(new long[]{-864018656740294838L, -4947359547589301421L, 5933690947090416892L, 2758215990687445572L, -4954987036611432806L, -7112708241672945068L, 1575248429341328566L}).toString());
                }
            }
            if (num != null) {
                zzd.zzb(num.intValue());
                return zzggm.zzb((zzgvg) zzd.zzal(), this.zzb);
            }
            throw new GeneralSecurityException(new ObfuscatedString(new long[]{2953469143079678524L, 3245957043540791814L, 7550847471240519261L, 8665800225163065808L}).toString());
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{2333052728984760826L, -8283471104695473932L, 1250814294896988005L, -4938073932587665574L, 5575726268108007772L, -5876162470098125640L, 426360336719056473L, 2896396475885639708L}).toString());
    }
}
