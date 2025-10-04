package com.google.android.gms.internal.measurement;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class zzjb implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzjb zzb = new zziy(zzkk.zzd);
    private static final zzja zzd;
    private int zzc = 0;

    static {
        int i = zzin.zza;
        zzd = new zzja(null);
        zza = new zzit();
    }

    public static int zzj(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-7724627726431572915L, 4939502349606325628L, 2166515542538084679L, -3374854448725348508L, 1254687235682372763L, 881168677826990633L, 587422919076497189L}).toString());
                    sb.append(i);
                    throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5754535713740235273L, -1967297405233010968L}), sb, i2));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{-8737046594041147697L, 574283216604052526L, 4975134852169223472L}).toString());
                sb2.append(i2);
                throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3908337195267086801L, -3419368315882635186L}), sb2, i3));
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{-4264213192322897086L, 4853272670958381314L, 5606811316302387322L, -6000522521657103333L}).toString());
            sb3.append(i);
            throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3148661430518722990L, -2087113684439297082L}), sb3));
        }
        return i4;
    }

    public static zzjb zzl(byte[] bArr, int i, int i2) {
        zzj(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zziy(bArr2);
    }

    public static zzjb zzm(String str) {
        return new zziy(str.getBytes(zzkk.zzb));
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zze(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzis(this);
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer valueOf = Integer.valueOf(zzd());
        if (zzd() <= 50) {
            concat = zzmj.zza(this);
        } else {
            concat = zzmj.zza(zzf(0, 47)).concat(new ObfuscatedString(new long[]{-5383202560963084062L, -8797230423650322871L}).toString());
        }
        return String.format(locale, new ObfuscatedString(new long[]{4402856066272257504L, -4257056269764092010L, -4388663798147603485L, 2660640528872921984L, 6347184630651160455L, -1932421956741764918L}).toString(), hexString, valueOf, concat);
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract int zze(int i, int i2, int i3);

    public abstract zzjb zzf(int i, int i2);

    public abstract String zzg(Charset charset);

    public abstract void zzh(zzir zzirVar);

    public abstract boolean zzi();

    public final int zzk() {
        return this.zzc;
    }

    public final String zzn(Charset charset) {
        if (zzd() == 0) {
            return new ObfuscatedString(new long[]{-2429266544347952614L}).toString();
        }
        return zzg(charset);
    }
}
