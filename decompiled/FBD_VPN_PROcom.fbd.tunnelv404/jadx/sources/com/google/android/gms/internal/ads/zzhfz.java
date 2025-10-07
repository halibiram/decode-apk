package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzhfz extends zzgzu implements zzhbf {
    private static final zzhfz zzb;
    private zzheh zzB;
    private zzhdz zzD;
    private zzhfa zzF;
    private int zzG;
    private long zzJ;
    private zzhfy zzK;
    private int zzd;
    private int zze;
    private int zzf;
    private zzhed zzj;
    private zzhfj zzn;
    private boolean zzo;
    private boolean zzr;
    private boolean zzs;
    private zzhfr zzu;
    private boolean zzv;
    private zzhfv zzz;
    private byte zzL = 2;
    private String zzg = new ObfuscatedString(new long[]{-1969150077739940812L}).toString();
    private String zzh = new ObfuscatedString(new long[]{-4537742277358437478L}).toString();
    private String zzi = new ObfuscatedString(new long[]{4489123934369817773L}).toString();
    private zzhad zzk = zzgzu.zzaN();
    private zzhad zzl = zzgzu.zzaN();
    private String zzm = new ObfuscatedString(new long[]{2683921203740044886L}).toString();
    private zzhad zzp = zzgzu.zzaN();
    private String zzq = new ObfuscatedString(new long[]{-2292405391363725894L}).toString();
    private zzgyl zzt = zzgyl.zzb;
    private String zzw = new ObfuscatedString(new long[]{6051082881389203664L}).toString();
    private zzhad zzx = zzgzu.zzaN();
    private zzhad zzy = zzgzu.zzaN();
    private zzhad zzA = zzgzu.zzaN();
    private String zzC = new ObfuscatedString(new long[]{-5096101175321295569L}).toString();
    private zzhad zzE = zzgzu.zzaN();
    private zzhad zzH = zzgzu.zzaN();
    private zzhad zzI = zzgzu.zzaN();

    static {
        zzhfz zzhfzVar = new zzhfz();
        zzb = zzhfzVar;
        zzgzu.zzaU(zzhfz.class, zzhfzVar);
    }

    private zzhfz() {
    }

    public static zzheb zza() {
        return (zzheb) zzb.zzaA();
    }

    public static /* synthetic */ void zzg(zzhfz zzhfzVar, String str) {
        str.getClass();
        zzhfzVar.zzd |= 4;
        zzhfzVar.zzg = str;
    }

    public static /* synthetic */ void zzh(zzhfz zzhfzVar, String str) {
        str.getClass();
        zzhfzVar.zzd |= 8;
        zzhfzVar.zzh = str;
    }

    public static /* synthetic */ void zzi(zzhfz zzhfzVar, zzhed zzhedVar) {
        zzhedVar.getClass();
        zzhfzVar.zzj = zzhedVar;
        zzhfzVar.zzd |= 32;
    }

    public static /* synthetic */ void zzj(zzhfz zzhfzVar, zzhfp zzhfpVar) {
        zzhfpVar.getClass();
        zzhad zzhadVar = zzhfzVar.zzk;
        if (!zzhadVar.zzc()) {
            zzhfzVar.zzk = zzgzu.zzaO(zzhadVar);
        }
        zzhfzVar.zzk.add(zzhfpVar);
    }

    public static /* synthetic */ void zzk(zzhfz zzhfzVar, String str) {
        zzhfzVar.zzd |= 64;
        zzhfzVar.zzm = str;
    }

    public static /* synthetic */ void zzl(zzhfz zzhfzVar) {
        zzhfzVar.zzd &= -65;
        zzhfzVar.zzm = zzb.zzm;
    }

    public static /* synthetic */ void zzm(zzhfz zzhfzVar, zzhfj zzhfjVar) {
        zzhfjVar.getClass();
        zzhfzVar.zzn = zzhfjVar;
        zzhfzVar.zzd |= 128;
    }

    public static /* synthetic */ void zzn(zzhfz zzhfzVar, zzhfr zzhfrVar) {
        zzhfrVar.getClass();
        zzhfzVar.zzu = zzhfrVar;
        zzhfzVar.zzd |= 8192;
    }

    public static /* synthetic */ void zzo(zzhfz zzhfzVar, Iterable iterable) {
        zzhad zzhadVar = zzhfzVar.zzx;
        if (!zzhadVar.zzc()) {
            zzhfzVar.zzx = zzgzu.zzaO(zzhadVar);
        }
        zzgxt.zzav(iterable, zzhfzVar.zzx);
    }

    public static /* synthetic */ void zzp(zzhfz zzhfzVar, Iterable iterable) {
        zzhad zzhadVar = zzhfzVar.zzy;
        if (!zzhadVar.zzc()) {
            zzhfzVar.zzy = zzgzu.zzaO(zzhadVar);
        }
        zzgxt.zzav(iterable, zzhfzVar.zzy);
    }

    public static /* synthetic */ void zzq(zzhfz zzhfzVar, int i) {
        zzhfzVar.zze = i - 1;
        zzhfzVar.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgzu
    public final Object zzb(int i, Object obj, Object obj2) {
        byte b;
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (obj == null) {
                                b = 0;
                            } else {
                                b = 1;
                            }
                            this.zzL = b;
                            return null;
                        }
                        return zzb;
                    }
                    return new zzheb(null);
                }
                return new zzhfz();
            }
            return zzgzu.zzaR(zzb, "\u0001!\u0000\u0001\u0001!!\u0000\t\u0001\u0001ဈ\u0002\u0002ဈ\u0003\u0003ဈ\u0004\u0004Л\u0005ဇ\b\u0006\u001a\u0007ဈ\t\bဇ\n\tဇ\u000b\n᠌\u0000\u000b᠌\u0001\fဉ\u0005\rဈ\u0006\u000eဉ\u0007\u000fည\f\u0010\u001b\u0011ဉ\r\u0012ဇ\u000e\u0013ဈ\u000f\u0014\u001a\u0015\u001a\u0016ဉ\u0010\u0017\u001b\u0018ဉ\u0011\u0019ဈ\u0012\u001aဉ\u0013\u001b\u001b\u001cဉ\u0014\u001d᠌\u0015\u001e\u001b\u001f\u001b ဂ\u0016!ဉ\u0017", new Object[]{new ObfuscatedString(new long[]{-745824735435042616L, -8486947856342448367L}).toString(), new ObfuscatedString(new long[]{-7687044035253342623L, -8793669217121940792L}).toString(), new ObfuscatedString(new long[]{3713944167554717688L, 1456237881075592225L}).toString(), new ObfuscatedString(new long[]{-8441825828960275602L, -4617443699456421772L}).toString(), new ObfuscatedString(new long[]{292863752117586577L, -2740275301384080588L}).toString(), zzhfp.class, new ObfuscatedString(new long[]{6261048260059332036L, -5487137715665206464L}).toString(), new ObfuscatedString(new long[]{-2178035930810595224L, -5078228227606281834L}).toString(), new ObfuscatedString(new long[]{7649602894992379434L, 3811466867053240791L}).toString(), new ObfuscatedString(new long[]{-2368977517497613374L, -4087332993341035975L}).toString(), new ObfuscatedString(new long[]{3359091313453452315L, -1013467831502558908L}).toString(), new ObfuscatedString(new long[]{-5675913032433697783L, -8943169787110168350L}).toString(), zzhfk.zza, new ObfuscatedString(new long[]{2071822315811331379L, 3069497465224290339L}).toString(), zzhea.zza, new ObfuscatedString(new long[]{1270466310696866203L, -7485359007064183611L}).toString(), new ObfuscatedString(new long[]{-5279725458832771351L, 8084731741737700373L}).toString(), new ObfuscatedString(new long[]{-1106994198527793764L, -8682641778970544100L}).toString(), new ObfuscatedString(new long[]{8812358346377893085L, 284512955977720730L}).toString(), new ObfuscatedString(new long[]{-2424155043312562540L, 3335156538978784959L}).toString(), zzhgd.class, new ObfuscatedString(new long[]{-2077040088390822051L, 3172131295048645002L}).toString(), new ObfuscatedString(new long[]{7577999999658776497L, 7822380423627400429L}).toString(), new ObfuscatedString(new long[]{-7356329801401564011L, 4460729711848479969L}).toString(), new ObfuscatedString(new long[]{135813628580680454L, -8732344074778275371L}).toString(), new ObfuscatedString(new long[]{2786246054302324881L, 4010402642163567612L}).toString(), new ObfuscatedString(new long[]{-8646702297064900686L, -5434041240642719362L}).toString(), new ObfuscatedString(new long[]{-110372691149337742L, -2468788073526787088L}).toString(), zzhgj.class, new ObfuscatedString(new long[]{3840678223855707847L, 2426178089854057486L}).toString(), new ObfuscatedString(new long[]{-1347182342597419488L, 2020108438429877615L}).toString(), new ObfuscatedString(new long[]{5977385120426979027L, 8832879817982606600L}).toString(), new ObfuscatedString(new long[]{-604104949275389959L, 1954954680320532812L}).toString(), zzhel.class, new ObfuscatedString(new long[]{-1593228438283784422L, 4038717085140173145L}).toString(), new ObfuscatedString(new long[]{-2125309806654316251L, 1855351647521899233L}).toString(), zzhft.zza, new ObfuscatedString(new long[]{5521908778711274171L, -748268706388072532L}).toString(), zzhfd.class, new ObfuscatedString(new long[]{-359944714252583929L, -7583411312968010273L}).toString(), zzhfg.class, new ObfuscatedString(new long[]{3049647274314895790L, 7664288826915912318L}).toString(), new ObfuscatedString(new long[]{-7141225139919177282L, 8445968977373247664L}).toString()});
        }
        return Byte.valueOf(this.zzL);
    }

    public final String zzd() {
        return this.zzm;
    }

    public final String zze() {
        return this.zzg;
    }

    public final List zzf() {
        return this.zzk;
    }
}
