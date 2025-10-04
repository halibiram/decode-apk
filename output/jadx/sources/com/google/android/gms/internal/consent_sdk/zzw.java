package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentInformation;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzw {
    private final zzx zza;
    private final zzck zzb;
    private int zzc = 0;
    private ConsentInformation.PrivacyOptionsRequirementStatus zzd = ConsentInformation.PrivacyOptionsRequirementStatus.UNKNOWN;

    public zzw(zzx zzxVar, zzck zzckVar) {
        this.zza = zzxVar;
        this.zzb = zzckVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzz zza() {
        zzbp zzbpVar;
        zzap zzapVar;
        String str;
        zze zzeVar;
        zzan zzanVar;
        ObfuscatedString obfuscatedString;
        zzck zzckVar = this.zzb;
        int i = zzckVar.zzf;
        int i2 = i - 1;
        if (i != 0) {
            switch (i2) {
                case 1:
                case 2:
                case 3:
                    this.zzc = 3;
                    break;
                case 4:
                    this.zzc = 2;
                    break;
                case 5:
                    this.zzc = 1;
                    break;
                case 6:
                    throw new zzg(1, new ObfuscatedString(new long[]{-8251245230873999626L, -6285438975686577100L, -6168812331653824728L, 4486984674514140736L, 447048839932969010L}).toString().concat(String.valueOf(zzckVar.zzc)));
                case 7:
                    throw new zzg(3, new ObfuscatedString(new long[]{-6704013113478030824L, 1923658490794136555L, 6007568117003163710L, -3513652110275670962L, 4225707770756259583L}).toString().concat(String.valueOf(zzckVar.zzc)));
                default:
                    throw new zzg(1, new ObfuscatedString(new long[]{7010501991978257372L, -7391694541801234325L, 7359908248299768487L, 4138557322044011708L, 4671673643020526841L}).toString());
            }
            int i3 = zzckVar.zzg;
            int i4 = i3 - 1;
            if (i3 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        this.zzd = ConsentInformation.PrivacyOptionsRequirementStatus.NOT_REQUIRED;
                    } else {
                        throw new zzg(1, new ObfuscatedString(new long[]{-6160637904084577611L, 1866499183089281022L, 7068893129012234017L, -5463149305087195929L, -6115474291797172863L}).toString());
                    }
                } else {
                    this.zzd = ConsentInformation.PrivacyOptionsRequirementStatus.REQUIRED;
                }
                String str2 = zzckVar.zza;
                if (str2 == null) {
                    zzbpVar = null;
                } else {
                    zzbpVar = new zzbp(zzckVar.zzb, str2);
                }
                zzapVar = this.zza.zzc;
                zzapVar.zzi(new HashSet(zzckVar.zzd));
                for (zzcj zzcjVar : this.zzb.zze) {
                    int i5 = zzcjVar.zzb;
                    int i6 = i5 - 1;
                    if (i5 != 0) {
                        if (i6 != 0) {
                            if (i6 != 1) {
                                if (i6 == 2) {
                                    obfuscatedString = new ObfuscatedString(new long[]{-7964769447172107075L, -6664969299123915282L});
                                }
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{-8195802897751893842L, -6992434892644534211L});
                            }
                            str = obfuscatedString.toString();
                            if (str == null) {
                                zzx zzxVar = this.zza;
                                zzeVar = zzxVar.zza;
                                String str3 = zzcjVar.zza;
                                zzanVar = zzxVar.zzb;
                                zzeVar.zzb(str, str3, zzanVar);
                            }
                        }
                        str = null;
                        if (str == null) {
                        }
                    } else {
                        throw null;
                    }
                }
                return new zzz(this.zzc, this.zzd, zzbpVar, null);
            }
            throw null;
        }
        throw null;
    }
}
