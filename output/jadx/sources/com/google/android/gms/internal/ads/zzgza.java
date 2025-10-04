package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class zzgza extends zzgya {
    private static final Logger zza = Logger.getLogger(zzgza.class.getName());
    private static final boolean zzb = zzhcz.zzA();
    public static final /* synthetic */ int zzf = 0;
    zzgzb zze;

    private zzgza() {
    }

    public static int zzA(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static zzgza zzB(byte[] bArr, int i, int i2) {
        return new zzgyw(bArr, 0, i2);
    }

    @Deprecated
    public static int zzw(int i, zzhbe zzhbeVar, zzhby zzhbyVar) {
        int zzz = zzz(i << 3);
        return ((zzgxt) zzhbeVar).zzat(zzhbyVar) + zzz + zzz;
    }

    public static int zzx(zzhbe zzhbeVar, zzhby zzhbyVar) {
        int zzat = ((zzgxt) zzhbeVar).zzat(zzhbyVar);
        return zzz(zzat) + zzat;
    }

    public static int zzy(String str) {
        int length;
        try {
            length = zzhde.zze(str);
        } catch (zzhdd unused) {
            length = str.getBytes(zzhae.zzb).length;
        }
        return zzz(length) + length;
    }

    public static int zzz(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public final void zzC() {
        if (zzb() == 0) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{4107920931994075602L, -1799804325285883376L, -1884616245245984219L, -7560284060609219448L, -4575222174655202055L, -4195407645755466078L}).toString());
        }
    }

    public final void zzD(String str, zzhdd zzhddVar) {
        zza.logp(Level.WARNING, new ObfuscatedString(new long[]{-3078291558719355440L, 5245084490330214372L, -5391824242821539570L, 5469208516122411523L, -512645886662565218L, 5381909111580315197L}).toString(), new ObfuscatedString(new long[]{-6710866049013318175L, 1014957351678228013L, -6157850628336078046L, 807246257219048460L, 1206818858717277946L}).toString(), new ObfuscatedString(new long[]{-7809249996350960874L, -5507981203872405495L, 3673605344192268617L, -5598153210470926134L, -4448315748687145996L, 3327161079499824004L, 728741045802601185L, -8486484651162342978L, 581859841377035744L, -2788125319260633957L, 2310323722017949743L, 6570086647624449505L}).toString(), (Throwable) zzhddVar);
        byte[] bytes = str.getBytes(zzhae.zzb);
        try {
            int length = bytes.length;
            zzs(length);
            zza(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzgyx(e);
        }
    }

    public abstract void zzH();

    public abstract void zzI(byte b);

    public abstract void zzJ(int i, boolean z);

    public abstract void zzK(int i, zzgyl zzgylVar);

    @Override // com.google.android.gms.internal.ads.zzgya
    public abstract void zza(byte[] bArr, int i, int i2);

    public abstract int zzb();

    public abstract void zzh(int i, int i2);

    public abstract void zzi(int i);

    public abstract void zzj(int i, long j);

    public abstract void zzk(long j);

    public abstract void zzl(int i, int i2);

    public abstract void zzm(int i);

    public abstract void zzn(int i, zzhbe zzhbeVar, zzhby zzhbyVar);

    public abstract void zzo(int i, String str);

    public abstract void zzq(int i, int i2);

    public abstract void zzr(int i, int i2);

    public abstract void zzs(int i);

    public abstract void zzt(int i, long j);

    public abstract void zzu(long j);

    public /* synthetic */ zzgza(zzgyz zzgyzVar) {
    }
}
