package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzaos implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaoo
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzaos()};
        }
    };
    private zzacx zzb;
    private zzaea zzc;
    private zzaoq zzf;
    private int zzd = 0;
    private long zze = -1;
    private int zzg = -1;
    private long zzh = -1;

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0129, code lost:
    
        if (r4 != 65534) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0160  */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        boolean z;
        int zzk;
        zzek.zzb(this.zzc);
        int i = zzfy.zza;
        int i2 = this.zzd;
        boolean z2 = true;
        if (i2 != 0) {
            long j = -1;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (this.zzh == -1) {
                            z2 = false;
                        }
                        zzek.zzf(z2);
                        long zzf = this.zzh - zzacvVar.zzf();
                        zzaoq zzaoqVar = this.zzf;
                        zzaoqVar.getClass();
                        if (zzaoqVar.zzc(zzacvVar, zzf)) {
                            return -1;
                        }
                        return 0;
                    }
                    Pair zza2 = zzaov.zza(zzacvVar);
                    this.zzg = ((Long) zza2.first).intValue();
                    long longValue = ((Long) zza2.second).longValue();
                    long j2 = this.zze;
                    if (j2 != -1 && longValue == 4294967295L) {
                        longValue = j2;
                    }
                    long j3 = this.zzg + longValue;
                    this.zzh = j3;
                    long zzd = zzacvVar.zzd();
                    if (zzd != -1 && j3 > zzd) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{3984696032555032383L, -3024607638747688901L, 2091775407454582094L, 6603957099424717830L, -8411261107411041533L}).toString());
                        sb.append(j3);
                        zzff.zzf(new ObfuscatedString(new long[]{-5814357112707199463L, 1277920087525876130L, 4726232160795177218L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{1992228739081873462L, 2315437946115327281L}), sb, zzd));
                        this.zzh = zzd;
                        j3 = zzd;
                    }
                    zzaoq zzaoqVar2 = this.zzf;
                    zzaoqVar2.getClass();
                    zzaoqVar2.zza(this.zzg, j3);
                    this.zzd = 4;
                    return 0;
                }
                zzaot zzb = zzaov.zzb(zzacvVar);
                int i3 = zzb.zza;
                if (i3 == 17) {
                    this.zzf = new zzaop(this.zzb, this.zzc, zzb);
                } else if (i3 == 6) {
                    this.zzf = new zzaor(this.zzb, this.zzc, zzb, new ObfuscatedString(new long[]{8187298312603739374L, 729314362804553597L, -1144242006786171500L}).toString(), -1);
                } else if (i3 == 7) {
                    this.zzf = new zzaor(this.zzb, this.zzc, zzb, new ObfuscatedString(new long[]{6109976609829965488L, -4489392540710442758L, -8267464547366801513L}).toString(), -1);
                } else {
                    int i4 = zzb.zze;
                    if (i3 != 1) {
                        if (i3 == 3) {
                            if (i4 == 32) {
                                zzk = 4;
                                if (zzk != 0) {
                                    this.zzf = new zzaor(this.zzb, this.zzc, zzb, new ObfuscatedString(new long[]{-3482137538519009877L, 5510526123432118752L, -5714004894791791663L}).toString(), zzk);
                                } else {
                                    throw zzcc.zzc(new ObfuscatedString(new long[]{-8680361396999048553L, 4098499062935946916L, 5703736810032935558L, 685160259654738068L, 2537434724722106079L}).toString() + i3);
                                }
                            }
                        }
                        zzk = 0;
                        if (zzk != 0) {
                        }
                    }
                    zzk = zzfy.zzk(i4);
                    if (zzk != 0) {
                    }
                }
                this.zzd = 3;
                return 0;
            }
            zzfp zzfpVar = new zzfp(8);
            zzaou zza3 = zzaou.zza(zzacvVar, zzfpVar);
            if (zza3.zza != 1685272116) {
                zzacvVar.zzj();
            } else {
                zzack zzackVar = (zzack) zzacvVar;
                zzackVar.zzl(8, false);
                zzfpVar.zzK(0);
                zzackVar.zzm(zzfpVar.zzM(), 0, 8, false);
                j = zzfpVar.zzr();
                zzackVar.zzo(((int) zza3.zzb) + 8, false);
            }
            this.zze = j;
            this.zzd = 2;
            return 0;
        }
        if (zzacvVar.zzf() == 0) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        int i5 = this.zzg;
        if (i5 != -1) {
            ((zzack) zzacvVar).zzo(i5, false);
            this.zzd = 4;
        } else if (zzaov.zzc(zzacvVar)) {
            ((zzack) zzacvVar).zzo((int) (zzacvVar.zze() - zzacvVar.zzf()), false);
            this.zzd = 1;
        } else {
            throw zzcc.zza(new ObfuscatedString(new long[]{-893281459122278769L, 1952006475712723117L, 4884716082377787699L, -7797887919375928750L, -8114340771204408206L, 2119934432662271257L, -210974180229321009L}).toString(), null);
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzb = zzacxVar;
        this.zzc = zzacxVar.zzw(0, 1);
        zzacxVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        int i;
        if (j == 0) {
            i = 0;
        } else {
            i = 4;
        }
        this.zzd = i;
        zzaoq zzaoqVar = this.zzf;
        if (zzaoqVar != null) {
            zzaoqVar.zzb(j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        return zzaov.zzc(zzacvVar);
    }
}
