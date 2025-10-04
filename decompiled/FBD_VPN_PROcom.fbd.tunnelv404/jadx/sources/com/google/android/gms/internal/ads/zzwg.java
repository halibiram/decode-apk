package com.google.android.gms.internal.ads;

import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzwg implements zzaea {
    private boolean zzB;

    @Nullable
    private zzrz zzC;
    private final zzwa zza;

    @Nullable
    private final zzry zzd;

    @Nullable
    private final zzrs zze;

    @Nullable
    private zzwf zzf;

    @Nullable
    private zzam zzg;
    private int zzo;
    private int zzp;
    private int zzq;
    private int zzr;
    private boolean zzv;

    @Nullable
    private zzam zzy;

    @Nullable
    private zzam zzz;
    private final zzwc zzb = new zzwc();
    private int zzh = 1000;
    private long[] zzi = new long[1000];
    private long[] zzj = new long[1000];
    private long[] zzm = new long[1000];
    private int[] zzl = new int[1000];
    private int[] zzk = new int[1000];
    private zzadz[] zzn = new zzadz[1000];
    private final zzwn zzc = new zzwn(new zzep() { // from class: com.google.android.gms.internal.ads.zzwb
        @Override // com.google.android.gms.internal.ads.zzep
        public final void zza(Object obj) {
            throw null;
        }
    });
    private long zzs = Long.MIN_VALUE;
    private long zzt = Long.MIN_VALUE;
    private long zzu = Long.MIN_VALUE;
    private boolean zzx = true;
    private boolean zzw = true;
    private boolean zzA = true;

    public zzwg(zzyx zzyxVar, @Nullable zzry zzryVar, @Nullable zzrs zzrsVar) {
        this.zzd = zzryVar;
        this.zze = zzrsVar;
        this.zza = new zzwa(zzyxVar);
    }

    private final int zzB(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long j2 = this.zzm[i];
            if (j2 > j) {
                break;
            }
            if (!z || (this.zzl[i] & 1) != 0) {
                i3 = i4;
                if (j2 == j) {
                    break;
                }
            }
            i++;
            if (i == this.zzh) {
                i = 0;
            }
        }
        return i3;
    }

    private final int zzC(int i) {
        int i2 = this.zzq + i;
        int i3 = this.zzh;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private final synchronized int zzD(zzlb zzlbVar, zzih zzihVar, boolean z, boolean z2, zzwc zzwcVar) {
        try {
            zzihVar.zzd = false;
            if (!zzL()) {
                if (!z2 && !this.zzv) {
                    zzam zzamVar = this.zzz;
                    if (zzamVar == null || (!z && zzamVar == this.zzg)) {
                        return -3;
                    }
                    zzI(zzamVar, zzlbVar);
                    return -5;
                }
                zzihVar.zzc(4);
                zzihVar.zze = Long.MIN_VALUE;
                return -4;
            }
            zzam zzamVar2 = ((zzwe) this.zzc.zza(this.zzp + this.zzr)).zza;
            if (!z && zzamVar2 == this.zzg) {
                int zzC = zzC(this.zzr);
                if (!zzM(zzC)) {
                    zzihVar.zzd = true;
                    return -3;
                }
                zzihVar.zzc(this.zzl[zzC]);
                if (this.zzr == this.zzo - 1 && (z2 || this.zzv)) {
                    zzihVar.zza(536870912);
                }
                long j = this.zzm[zzC];
                zzihVar.zze = j;
                if (j < this.zzs) {
                    zzihVar.zza(Integer.MIN_VALUE);
                }
                zzwcVar.zza = this.zzk[zzC];
                zzwcVar.zzb = this.zzj[zzC];
                zzwcVar.zzc = this.zzn[zzC];
                return -4;
            }
            zzI(zzamVar2, zzlbVar);
            return -5;
        } catch (Throwable th) {
            throw th;
        }
    }

    private final synchronized long zzE(long j, boolean z, boolean z2) {
        int i;
        try {
            int i2 = this.zzo;
            if (i2 != 0) {
                long[] jArr = this.zzm;
                int i3 = this.zzq;
                if (j >= jArr[i3]) {
                    if (z2 && (i = this.zzr) != i2) {
                        i2 = i + 1;
                    }
                    int zzB = zzB(i3, i2, j, false);
                    if (zzB != -1) {
                        return zzG(zzB);
                    }
                }
            }
            return -1L;
        } finally {
        }
    }

    private final synchronized long zzF() {
        int i = this.zzo;
        if (i == 0) {
            return -1L;
        }
        return zzG(i);
    }

    @GuardedBy("this")
    private final long zzG(int i) {
        long j = this.zzt;
        long j2 = Long.MIN_VALUE;
        if (i != 0) {
            int zzC = zzC(i - 1);
            for (int i2 = 0; i2 < i; i2++) {
                j2 = Math.max(j2, this.zzm[zzC]);
                if ((this.zzl[zzC] & 1) != 0) {
                    break;
                }
                zzC--;
                if (zzC == -1) {
                    zzC = this.zzh - 1;
                }
            }
        }
        this.zzt = Math.max(j, j2);
        this.zzo -= i;
        int i3 = this.zzp + i;
        this.zzp = i3;
        int i4 = this.zzq + i;
        this.zzq = i4;
        int i5 = this.zzh;
        if (i4 >= i5) {
            this.zzq = i4 - i5;
        }
        int i6 = this.zzr - i;
        this.zzr = i6;
        if (i6 < 0) {
            this.zzr = 0;
        }
        this.zzc.zze(i3);
        if (this.zzo == 0) {
            int i7 = this.zzq;
            if (i7 == 0) {
                i7 = this.zzh;
            }
            return this.zzj[i7 - 1] + this.zzk[r12];
        }
        return this.zzj[this.zzq];
    }

    private final synchronized void zzH(long j, int i, long j2, int i2, @Nullable zzadz zzadzVar) {
        boolean z;
        boolean z2;
        try {
            int i3 = this.zzo;
            if (i3 > 0) {
                if (this.zzj[zzC(i3 - 1)] + this.zzk[r0] <= j2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzek.zzd(z2);
            }
            if ((536870912 & i) != 0) {
                z = true;
            } else {
                z = false;
            }
            this.zzv = z;
            this.zzu = Math.max(this.zzu, j);
            int zzC = zzC(this.zzo);
            this.zzm[zzC] = j;
            this.zzj[zzC] = j2;
            this.zzk[zzC] = i2;
            this.zzl[zzC] = i;
            this.zzn[zzC] = zzadzVar;
            this.zzi[zzC] = 0;
            if (this.zzc.zzf() || !((zzwe) this.zzc.zzb()).zza.equals(this.zzz)) {
                zzam zzamVar = this.zzz;
                if (zzamVar != null) {
                    this.zzc.zzc(this.zzp + this.zzo, new zzwe(zzamVar, zzrx.zzb, null));
                } else {
                    throw null;
                }
            }
            int i4 = this.zzo + 1;
            this.zzo = i4;
            int i5 = this.zzh;
            if (i4 == i5) {
                int i6 = i5 + 1000;
                long[] jArr = new long[i6];
                long[] jArr2 = new long[i6];
                long[] jArr3 = new long[i6];
                int[] iArr = new int[i6];
                int[] iArr2 = new int[i6];
                zzadz[] zzadzVarArr = new zzadz[i6];
                int i7 = this.zzq;
                int i8 = i5 - i7;
                System.arraycopy(this.zzj, i7, jArr2, 0, i8);
                System.arraycopy(this.zzm, this.zzq, jArr3, 0, i8);
                System.arraycopy(this.zzl, this.zzq, iArr, 0, i8);
                System.arraycopy(this.zzk, this.zzq, iArr2, 0, i8);
                System.arraycopy(this.zzn, this.zzq, zzadzVarArr, 0, i8);
                System.arraycopy(this.zzi, this.zzq, jArr, 0, i8);
                int i9 = this.zzq;
                System.arraycopy(this.zzj, 0, jArr2, i8, i9);
                System.arraycopy(this.zzm, 0, jArr3, i8, i9);
                System.arraycopy(this.zzl, 0, iArr, i8, i9);
                System.arraycopy(this.zzk, 0, iArr2, i8, i9);
                System.arraycopy(this.zzn, 0, zzadzVarArr, i8, i9);
                System.arraycopy(this.zzi, 0, jArr, i8, i9);
                this.zzj = jArr2;
                this.zzm = jArr3;
                this.zzl = iArr;
                this.zzk = iArr2;
                this.zzn = zzadzVarArr;
                this.zzi = jArr;
                this.zzq = 0;
                this.zzh = i6;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private final void zzI(zzam zzamVar, zzlb zzlbVar) {
        zzae zzaeVar;
        zzam zzamVar2 = this.zzg;
        zzrz zzrzVar = null;
        if (zzamVar2 == null) {
            zzaeVar = null;
        } else {
            zzaeVar = zzamVar2.zzp;
        }
        this.zzg = zzamVar;
        zzae zzaeVar2 = zzamVar.zzp;
        zzlbVar.zza = zzamVar.zzc(this.zzd.zza(zzamVar));
        zzlbVar.zzb = this.zzC;
        if (zzamVar2 != null && zzfy.zzF(zzaeVar, zzaeVar2)) {
            return;
        }
        if (zzamVar.zzp != null) {
            zzrzVar = new zzrz(new zzrq(new zzsb(1), 6001));
        }
        this.zzC = zzrzVar;
        zzlbVar.zzb = zzrzVar;
    }

    private final void zzJ() {
        if (this.zzC != null) {
            this.zzC = null;
            this.zzg = null;
        }
    }

    private final synchronized void zzK() {
        this.zzr = 0;
        this.zza.zzg();
    }

    private final boolean zzL() {
        return this.zzr != this.zzo;
    }

    private final boolean zzM(int i) {
        if (this.zzC != null) {
            return (this.zzl[i] & 1073741824) != 0 ? false : false;
        }
        return true;
    }

    private final synchronized boolean zzN(zzam zzamVar) {
        try {
            this.zzx = false;
            if (zzfy.zzF(zzamVar, this.zzz)) {
                return false;
            }
            if (!this.zzc.zzf() && ((zzwe) this.zzc.zzb()).zza.equals(zzamVar)) {
                this.zzz = ((zzwe) this.zzc.zzb()).zza;
            } else {
                this.zzz = zzamVar;
            }
            boolean z = this.zzA;
            zzam zzamVar2 = this.zzz;
            this.zzA = z & zzcb.zzf(zzamVar2.zzm, zzamVar2.zzj);
            this.zzB = false;
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static /* synthetic */ void zzm(zzwe zzweVar) {
        zzrx zzrxVar = zzweVar.zzb;
        int i = zzrw.zza;
    }

    public final synchronized boolean zzA(long j, boolean z) {
        int zzB;
        try {
            zzK();
            int i = this.zzr;
            int zzC = zzC(i);
            if (zzL() && j >= this.zzm[zzC]) {
                if (j > this.zzu) {
                    if (z) {
                        z = true;
                    }
                }
                if (this.zzA) {
                    zzB = this.zzo - i;
                    int i2 = 0;
                    while (true) {
                        if (i2 < zzB) {
                            if (this.zzm[zzC] < j) {
                                zzC++;
                                if (zzC == this.zzh) {
                                    zzC = 0;
                                }
                                i2++;
                            } else {
                                zzB = i2;
                                break;
                            }
                        } else if (!z) {
                            zzB = -1;
                        }
                    }
                } else {
                    zzB = zzB(zzC, this.zzo - i, j, true);
                }
                if (zzB != -1) {
                    this.zzs = j;
                    this.zzr += zzB;
                    return true;
                }
            }
            return false;
        } finally {
        }
    }

    public final int zza() {
        return this.zzp;
    }

    public final int zzb() {
        return this.zzp + this.zzr;
    }

    public final synchronized int zzc(long j, boolean z) {
        int i = this.zzr;
        int zzC = zzC(i);
        if (zzL() && j >= this.zzm[zzC]) {
            if (j > this.zzu && z) {
                return this.zzo - i;
            }
            int zzB = zzB(zzC, this.zzo - i, j, true);
            if (zzB == -1) {
                return 0;
            }
            return zzB;
        }
        return 0;
    }

    public final int zzd() {
        return this.zzp + this.zzo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        if (r9 != 0) goto L14;
     */
    @CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zze(zzlb zzlbVar, zzih zzihVar, int i, boolean z) {
        boolean z2;
        if ((i & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        int zzD = zzD(zzlbVar, zzihVar, z2, z, this.zzb);
        if (zzD == -4) {
            if (!zzihVar.zzf()) {
                int i2 = i & 1;
                if ((i & 4) == 0) {
                    if (i2 != 0) {
                        this.zza.zzd(zzihVar, this.zzb);
                    } else {
                        this.zza.zze(zzihVar, this.zzb);
                        this.zzr++;
                        return -4;
                    }
                }
            }
            return -4;
        }
        return zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ int zzf(zzu zzuVar, int i, boolean z) {
        return zzady.zza(this, zzuVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final int zzg(zzu zzuVar, int i, boolean z, int i2) {
        return this.zza.zza(zzuVar, i, z);
    }

    public final synchronized long zzh() {
        return this.zzu;
    }

    @Nullable
    public final synchronized zzam zzi() {
        if (this.zzx) {
            return null;
        }
        return this.zzz;
    }

    public final void zzj(long j, boolean z, boolean z2) {
        this.zza.zzc(zzE(j, false, z2));
    }

    public final void zzk() {
        this.zza.zzc(zzF());
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzl(zzam zzamVar) {
        this.zzy = zzamVar;
        boolean zzN = zzN(zzamVar);
        zzwf zzwfVar = this.zzf;
        if (zzwfVar != null && zzN) {
            zzwfVar.zzM(zzamVar);
        }
    }

    @CallSuper
    public final void zzn() {
        zzrz zzrzVar = this.zzC;
        if (zzrzVar == null) {
        } else {
            throw zzrzVar.zza();
        }
    }

    @CallSuper
    public final void zzo() {
        zzk();
        zzJ();
    }

    @CallSuper
    public final void zzp() {
        zzq(true);
        zzJ();
    }

    @CallSuper
    public final void zzq(boolean z) {
        this.zza.zzf();
        this.zzo = 0;
        this.zzp = 0;
        this.zzq = 0;
        this.zzr = 0;
        this.zzw = true;
        this.zzs = Long.MIN_VALUE;
        this.zzt = Long.MIN_VALUE;
        this.zzu = Long.MIN_VALUE;
        this.zzv = false;
        this.zzc.zzd();
        if (z) {
            this.zzy = null;
            this.zzz = null;
            this.zzx = true;
            this.zzA = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ void zzr(zzfp zzfpVar, int i) {
        zzady.zzb(this, zzfpVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzs(zzfp zzfpVar, int i, int i2) {
        this.zza.zzh(zzfpVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzt(long j, int i, int i2, int i3, @Nullable zzadz zzadzVar) {
        if (this.zzw) {
            if ((i & 1) != 0) {
                this.zzw = false;
            } else {
                return;
            }
        }
        if (this.zzA) {
            if (j >= this.zzs) {
                if ((i & 1) == 0) {
                    if (!this.zzB) {
                        zzff.zzf(new ObfuscatedString(new long[]{-5181018969488286153L, -4486351532740368727L, 3329784227075685188L}).toString(), new ObfuscatedString(new long[]{-3989213094924292164L, -7992535456133495728L, -888347230690090685L, 4572110684480741040L, -53097843401809961L, -6238811453322475715L, -3905625795610355028L, 4694378336413070878L}).toString().concat(String.valueOf(this.zzz)));
                        this.zzB = true;
                    }
                    i |= 1;
                }
            } else {
                return;
            }
        }
        zzH(j, i, (this.zza.zzb() - i2) - i3, i2, zzadzVar);
    }

    public final void zzu(long j) {
        this.zzs = j;
    }

    public final void zzv(@Nullable zzwf zzwfVar) {
        this.zzf = zzwfVar;
    }

    public final synchronized void zzw(int i) {
        boolean z = false;
        if (i >= 0) {
            try {
                if (this.zzr + i <= this.zzo) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzek.zzd(z);
        this.zzr += i;
    }

    public final synchronized boolean zzx() {
        return this.zzv;
    }

    @CallSuper
    public final synchronized boolean zzy(boolean z) {
        boolean z2 = true;
        if (!zzL()) {
            if (!z && !this.zzv) {
                zzam zzamVar = this.zzz;
                if (zzamVar != null) {
                    if (zzamVar == this.zzg) {
                        return false;
                    }
                } else {
                    z2 = false;
                }
            }
            return z2;
        }
        if (((zzwe) this.zzc.zza(this.zzp + this.zzr)).zza != this.zzg) {
            return true;
        }
        return zzM(zzC(this.zzr));
    }

    public final synchronized boolean zzz(int i) {
        zzK();
        int i2 = this.zzp;
        if (i >= i2 && i <= this.zzo + i2) {
            this.zzs = Long.MIN_VALUE;
            this.zzr = i - i2;
            return true;
        }
        return false;
    }
}
