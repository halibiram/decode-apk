package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class zzgyl implements Iterable, Serializable {
    private static final Comparator zza;
    public static final zzgyl zzb = new zzgyh(zzhae.zzd);
    private static final zzgyk zzd;
    private int zzc = 0;

    static {
        int i = zzgxw.zza;
        zzd = new zzgyk(null);
        zza = new zzgyc();
    }

    private static zzgyl zzc(Iterator it, int i) {
        if (i > 0) {
            if (i == 1) {
                return (zzgyl) it.next();
            }
            int i2 = i >>> 1;
            zzgyl zzc = zzc(it, i2);
            zzgyl zzc2 = zzc(it, i - i2);
            if (Integer.MAX_VALUE - zzc.zzd() >= zzc2.zzd()) {
                return zzhbx.zzC(zzc, zzc2);
            }
            int zzd2 = zzc.zzd();
            int zzd3 = zzc2.zzd();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{1415056108774977024L, -5558594479208644225L, -1244880652856362645L, 2354701005914957811L, -1726404240783888424L}).toString());
            sb.append(zzd2);
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1410814224674421968L, -2281257635523625554L}), sb, zzd3));
        }
        throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{208294135164331374L, 8764254753944469989L, -384463259295801038L, -620668544398610815L}).toString(), Integer.valueOf(i)));
    }

    public static int zzq(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i >= 0) {
                if (i2 < i) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-2916035007275830497L, -590317682767717833L, -3922319030760721897L, 3651681180185277888L, -7507285861799385435L, -4655348057460359562L, -3424270024869618614L}).toString());
                    sb.append(i);
                    throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{4522970941329805195L, -4687116961669324540L}), sb, i2));
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{-6759854845412662596L, 7168161497914366130L, -4444507258590677541L}).toString());
                sb2.append(i2);
                throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-975318478667876222L, 2970830108782182352L}), sb2, i3));
            }
            StringBuilder sb3 = new StringBuilder();
            sb3.append(new ObfuscatedString(new long[]{917633564362958330L, 6420787347714913629L, 4062681772661670441L, 3090678481340962918L}).toString());
            sb3.append(i);
            throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7903260750536081919L, 1166129999532177469L}), sb3));
        }
        return i4;
    }

    public static zzgyi zzt() {
        return new zzgyi(128);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgyl zzu(Iterable iterable) {
        int size;
        if (!(iterable instanceof Collection)) {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        } else {
            size = iterable.size();
        }
        if (size == 0) {
            return zzb;
        }
        return zzc(iterable.iterator(), size);
    }

    public static zzgyl zzv(byte[] bArr, int i, int i2) {
        zzq(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzgyh(bArr2);
    }

    public static zzgyl zzw(String str) {
        return new zzgyh(str.getBytes(zzhae.zzb));
    }

    public static void zzy(int i, int i2) {
        if (((i2 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-7016271828442476337L, 91047228929147917L, -4061889766102545238L}), new StringBuilder(), i));
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{2807506590473460266L, 4940605452308098304L, -2306801483899196572L}).toString());
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-3073828585214189717L, 1499226676108009972L}), sb, i2));
        }
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int i = this.zzc;
        if (i == 0) {
            int zzd2 = zzd();
            i = zzi(zzd2, 0, zzd2);
            if (i == 0) {
                i = 1;
            }
            this.zzc = i;
        }
        return i;
    }

    public final String toString() {
        String concat;
        Locale locale = Locale.ROOT;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        Integer valueOf = Integer.valueOf(zzd());
        if (zzd() <= 50) {
            concat = zzhcn.zza(this);
        } else {
            concat = zzhcn.zza(zzk(0, 47)).concat(new ObfuscatedString(new long[]{-1602566196288317017L, 3127804108181364789L}).toString());
        }
        return String.format(locale, new ObfuscatedString(new long[]{9019493055103833763L, -6931051349689725119L, -5135621012077693809L, 4604994949721243602L, 6137945515667616835L, 5839948320506985617L}).toString(), hexString, valueOf, concat);
    }

    public final byte[] zzA() {
        int zzd2 = zzd();
        if (zzd2 == 0) {
            return zzhae.zzd;
        }
        byte[] bArr = new byte[zzd2];
        zze(bArr, 0, 0, zzd2);
        return bArr;
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract int zzf();

    public abstract boolean zzh();

    public abstract int zzi(int i, int i2, int i3);

    public abstract int zzj(int i, int i2, int i3);

    public abstract zzgyl zzk(int i, int i2);

    public abstract zzgyt zzl();

    public abstract String zzm(Charset charset);

    public abstract ByteBuffer zzn();

    public abstract void zzo(zzgya zzgyaVar);

    public abstract boolean zzp();

    public final int zzr() {
        return this.zzc;
    }

    @Override // java.lang.Iterable
    /* renamed from: zzs, reason: merged with bridge method [inline-methods] */
    public zzgyf iterator() {
        return new zzgyb(this);
    }

    public final String zzx(Charset charset) {
        if (zzd() == 0) {
            return new ObfuscatedString(new long[]{4219891260930926616L}).toString();
        }
        return zzm(charset);
    }

    @Deprecated
    public final void zzz(byte[] bArr, int i, int i2, int i3) {
        zzq(0, i3, zzd());
        zzq(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }
}
