package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;
import java.util.Locale;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class zzt {
    public static final zzt zza;
    public static final zzt zzb;

    @Deprecated
    public static final zzn zzc;
    private static final String zzj;
    private static final String zzk;
    private static final String zzl;
    private static final String zzm;
    private static final String zzn;
    private static final String zzo;
    public final int zzd;
    public final int zze;
    public final int zzf;

    @Nullable
    public final byte[] zzg;
    public final int zzh;
    public final int zzi;
    private int zzp;

    static {
        zzr zzrVar = new zzr();
        zzrVar.zzc(1);
        zzrVar.zzb(2);
        zzrVar.zzd(3);
        zza = zzrVar.zzg();
        zzr zzrVar2 = new zzr();
        zzrVar2.zzc(1);
        zzrVar2.zzb(1);
        zzrVar2.zzd(2);
        zzb = zzrVar2.zzg();
        zzj = Integer.toString(0, 36);
        zzk = Integer.toString(1, 36);
        zzl = Integer.toString(2, 36);
        zzm = Integer.toString(3, 36);
        zzn = Integer.toString(4, 36);
        zzo = Integer.toString(5, 36);
        zzc = new zzn() { // from class: com.google.android.gms.internal.ads.zzp
        };
    }

    public /* synthetic */ zzt(int i, int i2, int i3, byte[] bArr, int i4, int i5, zzs zzsVar) {
        this.zzd = i;
        this.zze = i2;
        this.zzf = i3;
        this.zzg = bArr;
        this.zzh = i4;
        this.zzi = i5;
    }

    @Pure
    public static int zza(int i) {
        if (i == 1) {
            return 1;
        }
        if (i != 9) {
            return (i == 4 || i == 5 || i == 6 || i == 7) ? 2 : -1;
        }
        return 6;
    }

    @Pure
    public static int zzb(int i) {
        if (i == 1) {
            return 3;
        }
        if (i == 4) {
            return 10;
        }
        if (i == 13) {
            return 2;
        }
        if (i == 16) {
            return 6;
        }
        if (i != 18) {
            return (i == 6 || i == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String zzg(int i) {
        return (i != -1 ? i != 1 ? i != 2 ? new ObfuscatedString(new long[]{174841279901963606L, -4804850957804965689L, 3089011924461409204L, 3230556017993874633L}) : new ObfuscatedString(new long[]{-3094225639867381235L, -6493081425232394502L, -5858963665741613615L}) : new ObfuscatedString(new long[]{-4674340217133240974L, 3055718323429434859L, 8610361136136562742L}) : new ObfuscatedString(new long[]{5117885142891661450L, -5557977626386666345L, -7952406520485675003L, -2739995909019981832L})).toString();
    }

    private static String zzh(int i) {
        return (i != -1 ? i != 6 ? i != 1 ? i != 2 ? new ObfuscatedString(new long[]{-6504250898005028837L, -6918848903105336591L, -5034907513459690033L, -4317969842839144074L}) : new ObfuscatedString(new long[]{7709362573414951342L, -384132718077866183L}) : new ObfuscatedString(new long[]{-4494161360848376512L, -2836866497230475598L}) : new ObfuscatedString(new long[]{7260308183272764880L, 7479140679873566868L}) : new ObfuscatedString(new long[]{457328683691023682L, -2220474094917677691L, -5438867915533815897L, -1621692522643453874L})).toString();
    }

    private static String zzi(int i) {
        return (i != -1 ? i != 10 ? i != 1 ? i != 2 ? i != 3 ? i != 6 ? i != 7 ? new ObfuscatedString(new long[]{-7365255983903109523L, 1927240163985972019L, 5011150897584499445L, 2186046992767450871L}) : new ObfuscatedString(new long[]{-4530053626548006268L, 194074937348969594L}) : new ObfuscatedString(new long[]{159223940909357088L, -3661475380431121234L, 827667317145439283L}) : new ObfuscatedString(new long[]{-828251019952997784L, 8333667850928802636L, 7280299458816466181L}) : new ObfuscatedString(new long[]{-2676018123515662750L, -2712107152603644550L}) : new ObfuscatedString(new long[]{8240768701610589016L, -3256948654894085556L}) : new ObfuscatedString(new long[]{3958586956543626948L, -6973052835435949727L, -4982821131007239773L}) : new ObfuscatedString(new long[]{-5384466189172892002L, 1103722534995641745L, -4115199766403860966L, -9072242923596842439L})).toString();
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzt.class == obj.getClass()) {
            zzt zztVar = (zzt) obj;
            if (this.zzd == zztVar.zzd && this.zze == zztVar.zze && this.zzf == zztVar.zzf && Arrays.equals(this.zzg, zztVar.zzg) && this.zzh == zztVar.zzh && this.zzi == zztVar.zzi) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzp;
        if (i == 0) {
            int hashCode = ((((Arrays.hashCode(this.zzg) + ((((((this.zzd + 527) * 31) + this.zze) * 31) + this.zzf) * 31)) * 31) + this.zzh) * 31) + this.zzi;
            this.zzp = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        String obfuscatedString;
        String obfuscatedString2;
        boolean z;
        int i = this.zzh;
        if (i != -1) {
            obfuscatedString = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{3053093321893750726L, -7801467011586217056L}), AbstractC0749x8313616e.m3340x952a0a9e(i));
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3140454491207178066L, -5148116745040483763L}).toString();
        }
        int i2 = this.zzi;
        if (i2 != -1) {
            obfuscatedString2 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6990915650632136962L, 5999492657483808281L, 5047897587367481261L}), AbstractC0749x8313616e.m3340x952a0a9e(i2));
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{5436117501377346968L, 9177658488547806452L}).toString();
        }
        byte[] bArr = this.zzg;
        int i3 = this.zzf;
        int i4 = this.zze;
        int i5 = this.zzd;
        if (bArr != null) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-3056859457225939861L, 5209841402287513733L, -3984629653419890247L}).toString());
        sb.append(zzh(i5));
        sb.append(new ObfuscatedString(new long[]{6739235280687293232L, -1876113892982206009L}).toString());
        sb.append(zzg(i4));
        sb.append(new ObfuscatedString(new long[]{-8523624942823935070L, 9142299468208586777L}).toString());
        sb.append(zzi(i3));
        sb.append(new ObfuscatedString(new long[]{-3085291768826478666L, -670592845124149926L}).toString());
        sb.append(z);
        sb.append(new ObfuscatedString(new long[]{2003268658456358711L, -8013917543451888939L}).toString());
        sb.append(obfuscatedString);
        sb.append(new ObfuscatedString(new long[]{-476910025515006598L, 1006766199359545396L}).toString());
        sb.append(obfuscatedString2);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4867476606713711987L, 5358409533877822830L}), sb);
    }

    public final zzr zzc() {
        return new zzr(this, null);
    }

    public final String zzd() {
        String obfuscatedString;
        String obfuscatedString2;
        if (zzf()) {
            obfuscatedString = String.format(Locale.US, new ObfuscatedString(new long[]{6001840913053643655L, -1263790196820654912L}).toString(), zzh(this.zzd), zzg(this.zze), zzi(this.zzf));
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-8152926066312197490L, -5247244363156010465L}).toString();
        }
        if (zze()) {
            int i = this.zzh;
            obfuscatedString2 = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4091384958502635450L, -7972835953194786662L}), AbstractC0749x8313616e.m3340x952a0a9e(i), this.zzi);
        } else {
            obfuscatedString2 = new ObfuscatedString(new long[]{-7685329684631153122L, -1880373141085226607L}).toString();
        }
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7732621270024326814L, 4156610295998336567L}), AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString), obfuscatedString2);
    }

    public final boolean zze() {
        return (this.zzh == -1 || this.zzi == -1) ? false : true;
    }

    public final boolean zzf() {
        return (this.zzd == -1 || this.zze == -1 || this.zzf == -1) ? false : true;
    }
}
