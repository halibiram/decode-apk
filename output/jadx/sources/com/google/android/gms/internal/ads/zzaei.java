package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzaei implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaeh
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzaei(0)};
        }
    };
    private static final int[] zzb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] zzc;
    private static final byte[] zzd;
    private static final byte[] zze;
    private static final int zzf;
    private final byte[] zzg;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private boolean zzl;
    private int zzm;
    private int zzn;
    private long zzo;
    private zzacx zzp;
    private zzaea zzq;
    private zzadu zzr;
    private boolean zzs;

    static {
        int[] iArr = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
        zzc = iArr;
        int i = zzfy.zza;
        String obfuscatedString = new ObfuscatedString(new long[]{5981751133862958402L, 5895776520456848629L}).toString();
        Charset charset = zzfwq.zzc;
        zzd = obfuscatedString.getBytes(charset);
        zze = new ObfuscatedString(new long[]{6658725742266964620L, -1601761640852286263L, -5227906966863653896L}).toString().getBytes(charset);
        zzf = iArr[8];
    }

    public zzaei(int i) {
        this.zzg = new byte[1];
        this.zzm = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003b A[Catch: EOFException -> 0x00f5, TryCatch #0 {EOFException -> 0x00f5, blocks: (B:13:0x000a, B:15:0x001e, B:23:0x003b, B:25:0x0046, B:31:0x0041, B:38:0x007d, B:41:0x009c, B:42:0x00d1, B:43:0x00d2, B:44:0x00f4), top: B:12:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0041 A[Catch: EOFException -> 0x00f5, TryCatch #0 {EOFException -> 0x00f5, blocks: (B:13:0x000a, B:15:0x001e, B:23:0x003b, B:25:0x0046, B:31:0x0041, B:38:0x007d, B:41:0x009c, B:42:0x00d1, B:43:0x00d2, B:44:0x00f4), top: B:12:0x000a }] */
    @RequiresNonNull({"trackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zza(zzacv zzacvVar) {
        int i;
        int i2;
        int i3 = this.zzk;
        if (i3 == 0) {
            try {
                zzacvVar.zzj();
                ((zzack) zzacvVar).zzm(this.zzg, 0, 1, false);
                byte b = this.zzg[0];
                if ((b & 131) <= 0) {
                    boolean z = this.zzh;
                    int i4 = (b >> 3) & 15;
                    if (z) {
                        if (i4 >= 10) {
                            if (i4 > 13) {
                            }
                        }
                        if (!z) {
                            i = zzc[i4];
                        } else {
                            i = zzb[i4];
                        }
                        i3 = i;
                        this.zzj = i3;
                        this.zzk = i3;
                        i2 = this.zzm;
                        if (i2 == -1) {
                            this.zzm = i3;
                            i2 = i3;
                        }
                        if (i2 == i3) {
                            this.zzn++;
                        }
                    }
                    if (!z) {
                        if (i4 >= 12 && i4 <= 14) {
                        }
                        if (!z) {
                        }
                        i3 = i;
                        this.zzj = i3;
                        this.zzk = i3;
                        i2 = this.zzm;
                        if (i2 == -1) {
                        }
                        if (i2 == i3) {
                        }
                    }
                    String obfuscatedString = new ObfuscatedString(new long[]{7454447852150509673L, 4935073331535836305L}).toString();
                    String obfuscatedString2 = new ObfuscatedString(new long[]{-4026624580331545619L, 3161621342618153119L}).toString();
                    if (true != z) {
                        obfuscatedString = obfuscatedString2;
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{-267123548403173L, 2356653248621500887L, -7478382664344329780L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{-5321462588549276471L, -7549968083418281699L, -2753103291978627556L}).toString() + i4, null);
                }
                throw zzcc.zza(new ObfuscatedString(new long[]{7880544373791617393L, -4978317674311721262L, -7437263234416383661L, 8940579149942200193L, -2175426464283179723L, 6216684006808753705L}).toString() + ((int) b), null);
            } catch (EOFException unused) {
                return -1;
            }
        }
        int zza2 = zzady.zza(this.zzq, zzacvVar, i3, true);
        if (zza2 == -1) {
            return -1;
        }
        int i5 = this.zzk - zza2;
        this.zzk = i5;
        if (i5 > 0) {
            return 0;
        }
        this.zzq.zzt(this.zzi, 1, this.zzj, 0, null);
        this.zzi += 20000;
        return 0;
    }

    private static boolean zzf(zzacv zzacvVar, byte[] bArr) {
        zzacvVar.zzj();
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        ((zzack) zzacvVar).zzm(bArr2, 0, length, false);
        return Arrays.equals(bArr2, bArr);
    }

    private final boolean zzg(zzacv zzacvVar) {
        byte[] bArr = zzd;
        if (zzf(zzacvVar, bArr)) {
            this.zzh = false;
            ((zzack) zzacvVar).zzo(bArr.length, false);
            return true;
        }
        byte[] bArr2 = zze;
        if (!zzf(zzacvVar, bArr2)) {
            return false;
        }
        this.zzh = true;
        ((zzack) zzacvVar).zzo(bArr2.length, false);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        String obfuscatedString;
        int i;
        zzek.zzb(this.zzq);
        int i2 = zzfy.zza;
        if (zzacvVar.zzf() == 0 && !zzg(zzacvVar)) {
            throw zzcc.zza(new ObfuscatedString(new long[]{-970432888585275530L, -7927765498455897087L, 5227765867978436891L, -8186726104007098825L, -6785605828119231706L}).toString(), null);
        }
        if (!this.zzs) {
            this.zzs = true;
            boolean z = this.zzh;
            if (true != z) {
                obfuscatedString = new ObfuscatedString(new long[]{9012017416055970847L, 257008667835153085L, 6659527899895071987L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{7771681647329045261L, 5377605461320535488L, 2338350425664847338L}).toString();
            }
            if (true != z) {
                i = 8000;
            } else {
                i = 16000;
            }
            zzaea zzaeaVar = this.zzq;
            zzak zzakVar = new zzak();
            zzakVar.zzW(obfuscatedString);
            zzakVar.zzO(zzf);
            zzakVar.zzy(1);
            zzakVar.zzX(i);
            zzaeaVar.zzl(zzakVar.zzac());
        }
        int zza2 = zza(zzacvVar);
        if (this.zzl) {
            return zza2;
        }
        zzadt zzadtVar = new zzadt(-9223372036854775807L, 0L);
        this.zzr = zzadtVar;
        this.zzp.zzO(zzadtVar);
        this.zzl = true;
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzp = zzacxVar;
        this.zzq = zzacxVar.zzw(0, 1);
        zzacxVar.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzi = 0L;
        this.zzj = 0;
        this.zzk = 0;
        this.zzo = 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        return zzg(zzacvVar);
    }

    public zzaei() {
        this(0);
    }
}
