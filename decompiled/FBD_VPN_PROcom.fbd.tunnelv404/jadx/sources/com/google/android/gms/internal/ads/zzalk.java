package com.google.android.gms.internal.ads;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Locale;

/* loaded from: classes2.dex */
final class zzalk {
    public final String zza;
    public final int zzb;

    @Nullable
    @ColorInt
    public final Integer zzc;

    @Nullable
    @ColorInt
    public final Integer zzd;
    public final float zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final int zzj;

    private zzalk(String str, int i, @Nullable @ColorInt Integer num, @Nullable @ColorInt Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.zza = str;
        this.zzb = i;
        this.zzc = num;
        this.zzd = num2;
        this.zze = f;
        this.zzf = z;
        this.zzg = z2;
        this.zzh = z3;
        this.zzi = z4;
        this.zzj = i2;
    }

    @Nullable
    public static zzalk zzb(String str, zzali zzaliVar) {
        int i;
        Integer num;
        Integer num2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i2;
        int parseInt;
        zzek.zzd(str.startsWith(new ObfuscatedString(new long[]{-5288279765007799225L, -6409128977356212074L}).toString()));
        String[] split = TextUtils.split(str.substring(6), new ObfuscatedString(new long[]{7590458517962256722L, -3596296838546820522L}).toString());
        int length = split.length;
        int i3 = zzaliVar.zzk;
        if (length != i3) {
            zzff.zzf(new ObfuscatedString(new long[]{-3334994431449597876L, 8215617238360126593L}).toString(), String.format(Locale.US, new ObfuscatedString(new long[]{-3116721112396744099L, -6387913573110059055L, 2093394355991517821L, 7499713546982371871L, 7782170539443819680L, -5280071659754610674L, -3089721005147636867L, -2295860577375261397L, -8261260723857720981L, -3955307820496469122L}).toString(), Integer.valueOf(i3), Integer.valueOf(length), str));
            return null;
        }
        try {
            String trim = split[zzaliVar.zza].trim();
            int i4 = zzaliVar.zzb;
            if (i4 != -1) {
                i = zzd(split[i4].trim());
            } else {
                i = -1;
            }
            int i5 = zzaliVar.zzc;
            if (i5 != -1) {
                num = zzc(split[i5].trim());
            } else {
                num = null;
            }
            int i6 = zzaliVar.zzd;
            if (i6 != -1) {
                num2 = zzc(split[i6].trim());
            } else {
                num2 = null;
            }
            int i7 = zzaliVar.zze;
            float f = -3.4028235E38f;
            if (i7 != -1) {
                String trim2 = split[i7].trim();
                try {
                    f = Float.parseFloat(trim2);
                } catch (NumberFormatException e) {
                    zzff.zzg(new ObfuscatedString(new long[]{3042892199625203675L, 6536708916372200352L}).toString(), new ObfuscatedString(new long[]{6791302520536599603L, -244794855349213785L, 3744229786146790371L, -5134973588154511802L, -3229745225486349813L}).toString() + trim2 + new ObfuscatedString(new long[]{-1354244356015878133L, -5584261237071613707L}).toString(), e);
                }
            }
            int i8 = zzaliVar.zzf;
            if (i8 != -1 && zze(split[i8].trim())) {
                z = true;
            } else {
                z = false;
            }
            int i9 = zzaliVar.zzg;
            if (i9 != -1 && zze(split[i9].trim())) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i10 = zzaliVar.zzh;
            if (i10 != -1 && zze(split[i10].trim())) {
                z3 = true;
            } else {
                z3 = false;
            }
            int i11 = zzaliVar.zzi;
            if (i11 != -1 && zze(split[i11].trim())) {
                z4 = true;
            } else {
                z4 = false;
            }
            int i12 = zzaliVar.zzj;
            if (i12 != -1) {
                String trim3 = split[i12].trim();
                try {
                    parseInt = Integer.parseInt(trim3.trim());
                } catch (NumberFormatException unused) {
                }
                if (parseInt == 1 || parseInt == 3) {
                    i2 = parseInt;
                    return new zzalk(trim, i, num, num2, f, z, z2, z3, z4, i2);
                }
                zzff.zzf(new ObfuscatedString(new long[]{3604954443619299300L, -866157064260842518L}).toString(), new ObfuscatedString(new long[]{6885331850018269979L, 4287655299224191852L, 5112235672804662633L, -8028024474422823006L, -2211288320591321684L}).toString().concat(String.valueOf(trim3)));
            }
            i2 = -1;
            return new zzalk(trim, i, num, num2, f, z, z2, z3, z4, i2);
        } catch (RuntimeException e2) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-3611656942850376279L, -7189427481894221400L, -3027639028240609756L, 7267854264036884637L, -6711299993494158948L, 1026139446804017921L}).toString());
            sb.append(str);
            zzff.zzg(new ObfuscatedString(new long[]{8115099459825277326L, 5745870217790053485L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7991578760848187752L, -6509237851096990503L}), sb), e2);
            return null;
        }
    }

    @Nullable
    @ColorInt
    public static Integer zzc(String str) {
        long parseLong;
        boolean z;
        try {
            if (str.startsWith(new ObfuscatedString(new long[]{1886475662682564724L, 5045933372557433710L}).toString())) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= 4294967295L) {
                z = true;
            } else {
                z = false;
            }
            zzek.zzd(z);
            int zza = zzgcu.zza(((parseLong >> 24) & 255) ^ 255);
            int zza2 = zzgcu.zza((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(zza, zzgcu.zza(parseLong & 255), zzgcu.zza((parseLong >> 8) & 255), zza2));
        } catch (IllegalArgumentException e) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-1720647075334468402L, -7374619925803291470L, -6896786687392982674L, -8568864578708008428L, 7559789401336534861L, -8650603234336769322L}).toString());
            sb.append(str);
            zzff.zzg(new ObfuscatedString(new long[]{8522825027363689492L, 6732773562301370734L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1527078058253335347L, -1626752753620418801L}), sb), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzd(String str) {
        int parseInt;
        try {
            parseInt = Integer.parseInt(str.trim());
        } catch (NumberFormatException unused) {
        }
        switch (parseInt) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return parseInt;
            default:
                String valueOf = String.valueOf(str);
                zzff.zzf(new ObfuscatedString(new long[]{6916608580359189023L, -3643554867680578706L}).toString(), new ObfuscatedString(new long[]{5971008361171706232L, 4498152300851693720L, -6451868344173683924L, 4727669977287543300L, 5491586141306563034L}).toString().concat(valueOf));
                return -1;
        }
    }

    private static boolean zze(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{6599527727279655930L, -7804211541033195146L, 6132410828562869708L, 1571199019707253395L, 3662401892682692479L}).toString());
            sb.append(str);
            zzff.zzg(new ObfuscatedString(new long[]{-6170112556512578277L, -9196849777509014516L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5394321457097712407L, -1292978319328970524L}), sb), e);
            return false;
        }
    }
}
