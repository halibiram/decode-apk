package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import app.tunnel.logger.utils.TrafficData;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzkz implements Handler.Callback, zzuo, zzyn, zzlw, zziw, zzlz {
    private boolean zzB;
    private boolean zzE;
    private int zzF;

    @Nullable
    private zzky zzG;
    private long zzH;
    private int zzI;
    private boolean zzJ;

    @Nullable
    private zziz zzK;
    private final zzjk zzM;
    private final zziu zzN;
    private final zzmf[] zza;
    private final Set zzb;
    private final zzmh[] zzc;
    private final zzyo zzd;
    private final zzyp zze;
    private final zzlc zzf;
    private final zzyw zzg;
    private final zzew zzh;

    @Nullable
    private final HandlerThread zzi;
    private final Looper zzj;
    private final zzcw zzk;
    private final zzcu zzl;
    private final long zzm;
    private final zzix zzn;
    private final ArrayList zzo;
    private final zzel zzp;
    private final zzll zzq;
    private final zzlx zzr;
    private final long zzs;
    private zzmj zzt;
    private zzly zzu;
    private zzkx zzv;
    private boolean zzw;
    private boolean zzy;
    private boolean zzz;
    private int zzC = 0;
    private boolean zzD = false;
    private boolean zzx = false;
    private long zzL = -9223372036854775807L;
    private long zzA = -9223372036854775807L;

    public zzkz(zzmf[] zzmfVarArr, zzyo zzyoVar, zzyp zzypVar, zzlc zzlcVar, zzyw zzywVar, int i, boolean z, zzmp zzmpVar, zzmj zzmjVar, zziu zziuVar, long j, boolean z2, Looper looper, zzel zzelVar, zzjk zzjkVar, zzpb zzpbVar, Looper looper2) {
        this.zzM = zzjkVar;
        this.zza = zzmfVarArr;
        this.zzd = zzyoVar;
        this.zze = zzypVar;
        this.zzf = zzlcVar;
        this.zzg = zzywVar;
        this.zzt = zzmjVar;
        this.zzN = zziuVar;
        this.zzs = j;
        this.zzp = zzelVar;
        this.zzm = zzlcVar.zza();
        zzlcVar.zzf();
        zzly zzg = zzly.zzg(zzypVar);
        this.zzu = zzg;
        this.zzv = new zzkx(zzg);
        int length = zzmfVarArr.length;
        this.zzc = new zzmh[2];
        zzmg zzd = zzyoVar.zzd();
        for (int i2 = 0; i2 < 2; i2++) {
            zzmfVarArr[i2].zzu(i2, zzpbVar, zzelVar);
            this.zzc[i2] = zzmfVarArr[i2].zzl();
            this.zzc[i2].zzK(zzd);
        }
        this.zzn = new zzix(this, zzelVar);
        this.zzo = new ArrayList();
        this.zzb = Collections.newSetFromMap(new IdentityHashMap());
        this.zzk = new zzcw();
        this.zzl = new zzcu();
        zzyoVar.zzs(this, zzywVar);
        this.zzJ = true;
        zzew zzb = zzelVar.zzb(looper, null);
        this.zzq = new zzll(zzmpVar, zzb, new zzkr(this));
        this.zzr = new zzlx(this, zzmpVar, zzb, zzpbVar);
        HandlerThread handlerThread = new HandlerThread(new ObfuscatedString(new long[]{8591340071670260106L, 5110960359952905147L, -6391928536395854794L, 7416154010382831586L}).toString(), -16);
        this.zzi = handlerThread;
        handlerThread.start();
        Looper looper3 = handlerThread.getLooper();
        this.zzj = looper3;
        this.zzh = zzelVar.zzb(looper3, this);
    }

    private final void zzA(zzmf zzmfVar) {
        if (!zzaf(zzmfVar)) {
            return;
        }
        this.zzn.zzd(zzmfVar);
        zzam(zzmfVar);
        zzmfVar.zzq();
        this.zzF--;
    }

    private final void zzB() {
        int length = this.zza.length;
        zzC(new boolean[2], this.zzq.zzf().zzf());
    }

    private final void zzC(boolean[] zArr, long j) {
        boolean z;
        boolean z2;
        boolean z3;
        zzli zzf = this.zzq.zzf();
        zzyp zzi = zzf.zzi();
        int i = 0;
        while (true) {
            int length = this.zza.length;
            if (i >= 2) {
                break;
            }
            if (!zzi.zzb(i) && this.zzb.remove(this.zza[i])) {
                this.zza[i].zzH();
            }
            i++;
        }
        int i2 = 0;
        while (true) {
            int length2 = this.zza.length;
            if (i2 < 2) {
                if (zzi.zzb(i2)) {
                    boolean z4 = zArr[i2];
                    zzmf zzmfVar = this.zza[i2];
                    if (!zzaf(zzmfVar)) {
                        zzll zzllVar = this.zzq;
                        zzli zzf2 = zzllVar.zzf();
                        if (zzf2 == zzllVar.zze()) {
                            z = true;
                        } else {
                            z = false;
                        }
                        zzyp zzi2 = zzf2.zzi();
                        zzmi zzmiVar = zzi2.zzb[i2];
                        zzam[] zzak = zzak(zzi2.zzc[i2]);
                        if (zzai() && this.zzu.zze == 3) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        if (!z4 && z2) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        this.zzF++;
                        this.zzb.add(zzmfVar);
                        zzmfVar.zzr(zzmiVar, zzak, zzf2.zzc[i2], this.zzH, z3, z, j, zzf2.zze(), zzf2.zzf.zza);
                        zzmfVar.zzt(11, new zzks(this));
                        this.zzn.zze(zzmfVar);
                        if (z2) {
                            zzmfVar.zzN();
                        }
                    }
                }
                i2++;
            } else {
                zzf.zzg = true;
                return;
            }
        }
    }

    private final void zzD(IOException iOException, int i) {
        zzll zzllVar = this.zzq;
        zziz zzc = zziz.zzc(iOException, i);
        zzli zze = zzllVar.zze();
        if (zze != null) {
            zzc = zzc.zza(zze.zzf.zza);
        }
        zzff.zzd(new ObfuscatedString(new long[]{-2238547382537203394L, -4291743874079101954L, -7848978093419470257L, 5729282904795376256L}).toString(), new ObfuscatedString(new long[]{8312694650786793032L, 7494380874039591751L, -6990432701236013085L}).toString(), zzc);
        zzW(false, false);
        this.zzu = this.zzu.zzd(zzc);
    }

    private final void zzE(boolean z) {
        zzur zzurVar;
        long zzc;
        zzli zzd = this.zzq.zzd();
        if (zzd == null) {
            zzurVar = this.zzu.zzb;
        } else {
            zzurVar = zzd.zzf.zza;
        }
        boolean equals = this.zzu.zzk.equals(zzurVar);
        if (!equals) {
            this.zzu = this.zzu.zza(zzurVar);
        }
        zzly zzlyVar = this.zzu;
        if (zzd == null) {
            zzc = zzlyVar.zzr;
        } else {
            zzc = zzd.zzc();
        }
        zzlyVar.zzp = zzc;
        this.zzu.zzq = zzt();
        if ((!equals || z) && zzd != null && zzd.zzd) {
            zzZ(zzd.zzf.zza, zzd.zzh(), zzd.zzi());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x03ae  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x040e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x03c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x039a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzF(zzcx zzcxVar, boolean z) {
        long j;
        zzur zzurVar;
        zzcu zzcuVar;
        int i;
        zzcw zzcwVar;
        long j2;
        Object obj;
        long j3;
        int i2;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        boolean z5;
        long j4;
        boolean z6;
        boolean z7;
        boolean z8;
        long j5;
        boolean z9;
        boolean z10;
        boolean z11;
        zzur zzurVar2;
        long j6;
        int i4;
        boolean z12;
        int i5;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        zzky zzkyVar;
        boolean z18;
        long j7;
        Object obj2;
        zzky zzkyVar2;
        int i6;
        boolean z19;
        long j8;
        int i7;
        long j9;
        boolean z20;
        boolean z21;
        zzly zzlyVar = this.zzu;
        zzky zzkyVar3 = this.zzG;
        int i8 = this.zzC;
        boolean z22 = this.zzD;
        if (zzcxVar.zzo()) {
            zzurVar2 = zzly.zzh();
            j6 = -9223372036854775807L;
            z9 = false;
            z10 = true;
            z11 = false;
            z8 = true;
            j5 = 0;
            j2 = 0;
        } else {
            zzcu zzcuVar2 = this.zzl;
            zzur zzurVar3 = zzlyVar.zzb;
            Object obj3 = zzurVar3.zza;
            boolean zzah = zzah(zzlyVar, zzcuVar2);
            if (!zzlyVar.zzb.zzb() && !zzah) {
                j = zzlyVar.zzr;
            } else {
                j = zzlyVar.zzc;
            }
            long j10 = j;
            zzcw zzcwVar2 = this.zzk;
            if (zzkyVar3 != null) {
                zzurVar = zzurVar3;
                zzcuVar = zzcuVar2;
                Pair zzy = zzy(zzcxVar, zzkyVar3, true, i8, z22, zzcwVar2, zzcuVar);
                if (zzy == null) {
                    i5 = zzcxVar.zzg(z22);
                    j3 = j10;
                    obj = obj3;
                    z15 = false;
                    z14 = false;
                    z16 = true;
                } else {
                    if (zzkyVar3.zzc == -9223372036854775807L) {
                        i5 = zzcxVar.zzn(zzy.first, zzcuVar).zzd;
                        j3 = j10;
                        obj = obj3;
                        z12 = false;
                    } else {
                        Object obj4 = zzy.first;
                        j3 = ((Long) zzy.second).longValue();
                        obj = obj4;
                        z12 = true;
                        i5 = -1;
                    }
                    if (zzlyVar.zze == 4) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    z14 = z13;
                    z15 = z12;
                    z16 = false;
                }
                z2 = z14;
                z3 = z16;
                i2 = i5;
                zzcwVar = zzcwVar2;
                i = -1;
                j2 = 0;
                z4 = z15;
            } else {
                zzurVar = zzurVar3;
                zzcuVar = zzcuVar2;
                if (zzlyVar.zza.zzo()) {
                    i2 = zzcxVar.zzg(z22);
                    zzcwVar = zzcwVar2;
                    j3 = j10;
                    obj = obj3;
                    z2 = false;
                    z3 = false;
                    i = -1;
                } else if (zzcxVar.zza(obj3) == -1) {
                    i = -1;
                    Object zzf = zzf(zzcwVar2, zzcuVar, i8, z22, obj3, zzlyVar.zza, zzcxVar);
                    if (zzf == null) {
                        i3 = zzcxVar.zzg(z22);
                        z5 = true;
                    } else {
                        i3 = zzcxVar.zzn(zzf, zzcuVar).zzd;
                        z5 = false;
                    }
                    i2 = i3;
                    z3 = z5;
                    obj = obj3;
                    zzcwVar = zzcwVar2;
                    j3 = j10;
                    z2 = false;
                } else {
                    i = -1;
                    if (j10 == -9223372036854775807L) {
                        i2 = zzcxVar.zzn(obj3, zzcuVar).zzd;
                        obj = obj3;
                        zzcwVar = zzcwVar2;
                        j3 = j10;
                        z2 = false;
                        z3 = false;
                    } else if (zzah) {
                        zzlyVar.zza.zzn(zzurVar.zza, zzcuVar);
                        zzcwVar = zzcwVar2;
                        if (zzlyVar.zza.zze(zzcuVar.zzd, zzcwVar, 0L).zzp == zzlyVar.zza.zza(zzurVar.zza)) {
                            j2 = 0;
                            Pair zzl = zzcxVar.zzl(zzcwVar, zzcuVar, zzcxVar.zzn(obj3, zzcuVar).zzd, j10);
                            Object obj5 = zzl.first;
                            j3 = ((Long) zzl.second).longValue();
                            obj = obj5;
                        } else {
                            j2 = 0;
                            obj = obj3;
                            j3 = j10;
                        }
                        i2 = -1;
                        z2 = false;
                        z3 = false;
                        z4 = true;
                    } else {
                        zzcwVar = zzcwVar2;
                        j2 = 0;
                        obj = obj3;
                        j3 = j10;
                        i2 = -1;
                        z2 = false;
                        z3 = false;
                        z4 = false;
                    }
                }
                z4 = false;
                j2 = 0;
            }
            if (i2 != i) {
                Pair zzl2 = zzcxVar.zzl(zzcwVar, zzcuVar, i2, -9223372036854775807L);
                Object obj6 = zzl2.first;
                long longValue = ((Long) zzl2.second).longValue();
                obj = obj6;
                j4 = longValue;
                j3 = -9223372036854775807L;
            } else {
                j4 = j3;
            }
            zzur zzi = this.zzq.zzi(zzcxVar, obj, j4);
            int i9 = zzi.zze;
            if (i9 == i || ((i4 = zzurVar.zze) != i && i9 >= i4)) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (zzurVar.zza.equals(obj) && !zzurVar.zzb() && !zzi.zzb() && z6) {
                z7 = true;
            } else {
                z7 = false;
            }
            zzcu zzn = zzcxVar.zzn(obj, zzcuVar);
            if (!zzah && j10 == j3 && zzurVar.zza.equals(zzi.zza)) {
                if (zzurVar.zzb()) {
                    zzn.zzn(zzurVar.zzb);
                }
                if (zzi.zzb()) {
                    zzn.zzn(zzi.zzb);
                }
            }
            z8 = true;
            if (true == z7) {
                zzi = zzurVar;
            }
            if (zzi.zzb()) {
                if (zzi.equals(zzurVar)) {
                    j4 = zzlyVar.zzr;
                } else {
                    zzcxVar.zzn(zzi.zza, zzcuVar);
                    if (zzi.zzc == zzcuVar.zze(zzi.zzb)) {
                        zzcuVar.zzj();
                    }
                    j4 = j2;
                }
            }
            j5 = j4;
            z9 = z2;
            z10 = z3;
            z11 = z4;
            zzurVar2 = zzi;
            j6 = j3;
        }
        if (!this.zzu.zzb.equals(zzurVar2) || j5 != this.zzu.zzr) {
            z17 = true;
        } else {
            z17 = false;
        }
        int i10 = 3;
        if (z10) {
            try {
                if (this.zzu.zze != z8) {
                    try {
                        zzU(4);
                    } catch (Throwable th) {
                        th = th;
                        z18 = z11;
                        zzkyVar = null;
                        zzly zzlyVar2 = this.zzu;
                        zzcx zzcxVar2 = zzlyVar2.zza;
                        zzur zzurVar4 = zzlyVar2.zzb;
                        if (true == z18) {
                        }
                        boolean z23 = true;
                        zzab(zzcxVar, zzurVar2, zzcxVar2, zzurVar4, j7, false);
                        if (z17) {
                        }
                        zzly zzlyVar3 = this.zzu;
                        obj2 = zzlyVar3.zzb.zza;
                        zzcx zzcxVar3 = zzlyVar3.zza;
                        if (z17) {
                        }
                        z23 = false;
                        long j11 = this.zzu.zzd;
                        if (zzcxVar.zza(obj2) == -1) {
                        }
                        zzkyVar2 = zzkyVar;
                        this.zzu = zzz(zzurVar2, j5, j6, j11, z23, i10);
                        zzN();
                        zzP(zzcxVar, this.zzu.zza);
                        this.zzu = this.zzu.zzf(zzcxVar);
                        if (!zzcxVar.zzo()) {
                        }
                        zzE(false);
                        throw th;
                    }
                }
                zzM(false, false, false, z8);
            } catch (Throwable th2) {
                th = th2;
                z18 = z11;
                zzkyVar = null;
                zzly zzlyVar22 = this.zzu;
                zzcx zzcxVar22 = zzlyVar22.zza;
                zzur zzurVar42 = zzlyVar22.zzb;
                if (true == z18) {
                }
                boolean z232 = true;
                zzab(zzcxVar, zzurVar2, zzcxVar22, zzurVar42, j7, false);
                if (z17) {
                }
                zzly zzlyVar32 = this.zzu;
                obj2 = zzlyVar32.zzb.zza;
                zzcx zzcxVar32 = zzlyVar32.zza;
                if (z17) {
                }
                z232 = false;
                long j112 = this.zzu.zzd;
                if (zzcxVar.zza(obj2) == -1) {
                }
                zzkyVar2 = zzkyVar;
                this.zzu = zzz(zzurVar2, j5, j6, j112, z232, i10);
                zzN();
                zzP(zzcxVar, this.zzu.zza);
                this.zzu = this.zzu.zzf(zzcxVar);
                if (!zzcxVar.zzo()) {
                }
                zzE(false);
                throw th;
            }
        }
        zzmf[] zzmfVarArr = this.zza;
        int length = zzmfVarArr.length;
        int i11 = 0;
        while (true) {
            i6 = 2;
            if (i11 < 2) {
                zzmfVarArr[i11].zzM(zzcxVar);
                i11++;
            } else {
                try {
                    break;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
        if (!z17) {
            try {
                zzll zzllVar = this.zzq;
                long j12 = this.zzH;
                zzli zzf2 = zzllVar.zzf();
                if (zzf2 == null) {
                    z19 = z11;
                    j8 = j2;
                } else {
                    long zze = zzf2.zze();
                    z19 = z11;
                    if (zzf2.zzd) {
                        long j13 = zze;
                        int i12 = 0;
                        while (true) {
                            try {
                                zzmf[] zzmfVarArr2 = this.zza;
                                int length2 = zzmfVarArr2.length;
                                if (i12 < i6) {
                                    if (!zzaf(zzmfVarArr2[i12]) || this.zza[i12].zzo() != zzf2.zzc[i12]) {
                                        i7 = i12;
                                    } else {
                                        i7 = i12;
                                        long zzbh = this.zza[i12].zzbh();
                                        j8 = Long.MIN_VALUE;
                                        if (zzbh == Long.MIN_VALUE) {
                                            break;
                                        } else {
                                            j13 = Math.max(zzbh, j13);
                                        }
                                    }
                                    i12 = i7 + 1;
                                    i6 = 2;
                                } else {
                                    j8 = j13;
                                    break;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                z18 = z19;
                                zzkyVar = null;
                                zzly zzlyVar222 = this.zzu;
                                zzcx zzcxVar222 = zzlyVar222.zza;
                                zzur zzurVar422 = zzlyVar222.zzb;
                                if (true == z18) {
                                    j7 = -9223372036854775807L;
                                } else {
                                    j7 = j5;
                                }
                                boolean z2322 = true;
                                zzab(zzcxVar, zzurVar2, zzcxVar222, zzurVar422, j7, false);
                                if (z17 && j6 == this.zzu.zzc) {
                                    zzkyVar2 = zzkyVar;
                                } else {
                                    zzly zzlyVar322 = this.zzu;
                                    obj2 = zzlyVar322.zzb.zza;
                                    zzcx zzcxVar322 = zzlyVar322.zza;
                                    if (z17 || !z || zzcxVar322.zzo() || zzcxVar322.zzn(obj2, this.zzl).zzg) {
                                        z2322 = false;
                                    }
                                    long j1122 = this.zzu.zzd;
                                    if (zzcxVar.zza(obj2) == -1) {
                                        i10 = 4;
                                    }
                                    zzkyVar2 = zzkyVar;
                                    this.zzu = zzz(zzurVar2, j5, j6, j1122, z2322, i10);
                                }
                                zzN();
                                zzP(zzcxVar, this.zzu.zza);
                                this.zzu = this.zzu.zzf(zzcxVar);
                                if (!zzcxVar.zzo()) {
                                    this.zzG = zzkyVar2;
                                }
                                zzE(false);
                                throw th;
                            }
                        }
                    } else {
                        j8 = zze;
                    }
                }
                if (!zzllVar.zzp(zzcxVar, j12, j8)) {
                    zzR(false);
                }
            } catch (Throwable th5) {
                th = th5;
                boolean z24 = z11;
                z18 = z24;
                zzkyVar = null;
                zzly zzlyVar2222 = this.zzu;
                zzcx zzcxVar2222 = zzlyVar2222.zza;
                zzur zzurVar4222 = zzlyVar2222.zzb;
                if (true == z18) {
                }
                boolean z23222 = true;
                zzab(zzcxVar, zzurVar2, zzcxVar2222, zzurVar4222, j7, false);
                if (z17) {
                }
                zzly zzlyVar3222 = this.zzu;
                obj2 = zzlyVar3222.zzb.zza;
                zzcx zzcxVar3222 = zzlyVar3222.zza;
                if (z17) {
                }
                z23222 = false;
                long j11222 = this.zzu.zzd;
                if (zzcxVar.zza(obj2) == -1) {
                }
                zzkyVar2 = zzkyVar;
                this.zzu = zzz(zzurVar2, j5, j6, j11222, z23222, i10);
                zzN();
                zzP(zzcxVar, this.zzu.zza);
                this.zzu = this.zzu.zzf(zzcxVar);
                if (!zzcxVar.zzo()) {
                }
                zzE(false);
                throw th;
            }
        } else {
            z19 = z11;
            if (!zzcxVar.zzo()) {
                for (zzli zze2 = this.zzq.zze(); zze2 != null; zze2 = zze2.zzg()) {
                    if (zze2.zzf.zza.equals(zzurVar2)) {
                        zze2.zzf = this.zzq.zzh(zzcxVar, zze2.zzf);
                        zze2.zzq();
                    }
                }
                j5 = zzv(zzurVar2, j5, z9);
            }
        }
        zzly zzlyVar4 = this.zzu;
        zzcx zzcxVar4 = zzlyVar4.zza;
        zzur zzurVar5 = zzlyVar4.zzb;
        if (true != z19) {
            j9 = -9223372036854775807L;
        } else {
            j9 = j5;
        }
        zzab(zzcxVar, zzurVar2, zzcxVar4, zzurVar5, j9, false);
        if (!z17 && j6 == this.zzu.zzc) {
            z21 = false;
        } else {
            zzly zzlyVar5 = this.zzu;
            Object obj7 = zzlyVar5.zzb.zza;
            zzcx zzcxVar5 = zzlyVar5.zza;
            if (z17 && z && !zzcxVar5.zzo() && !zzcxVar5.zzn(obj7, this.zzl).zzg) {
                z20 = true;
            } else {
                z20 = false;
            }
            long j14 = this.zzu.zzd;
            if (zzcxVar.zza(obj7) == -1) {
                i10 = 4;
            }
            z21 = false;
            this.zzu = zzz(zzurVar2, j5, j6, j14, z20, i10);
        }
        zzN();
        zzP(zzcxVar, this.zzu.zza);
        this.zzu = this.zzu.zzf(zzcxVar);
        if (!zzcxVar.zzo()) {
            this.zzG = null;
        }
        zzE(z21);
    }

    private final void zzG(zzcg zzcgVar, boolean z) {
        zzH(zzcgVar, zzcgVar.zzc, true, z);
    }

    private final void zzH(zzcg zzcgVar, float f, boolean z, boolean z2) {
        int i;
        zzkz zzkzVar = this;
        if (z) {
            if (z2) {
                zzkzVar.zzv.zza(1);
            }
            zzly zzlyVar = zzkzVar.zzu;
            zzkzVar = this;
            zzkzVar.zzu = new zzly(zzlyVar.zza, zzlyVar.zzb, zzlyVar.zzc, zzlyVar.zzd, zzlyVar.zze, zzlyVar.zzf, zzlyVar.zzg, zzlyVar.zzh, zzlyVar.zzi, zzlyVar.zzj, zzlyVar.zzk, zzlyVar.zzl, zzlyVar.zzm, zzcgVar, zzlyVar.zzp, zzlyVar.zzq, zzlyVar.zzr, zzlyVar.zzs, false);
        }
        float f2 = zzcgVar.zzc;
        zzli zze = zzkzVar.zzq.zze();
        while (true) {
            i = 0;
            if (zze == null) {
                break;
            }
            zzyi[] zzyiVarArr = zze.zzi().zzc;
            int length = zzyiVarArr.length;
            while (i < length) {
                zzyi zzyiVar = zzyiVarArr[i];
                i++;
            }
            zze = zze.zzg();
        }
        zzmf[] zzmfVarArr = zzkzVar.zza;
        int length2 = zzmfVarArr.length;
        while (i < 2) {
            zzmf zzmfVar = zzmfVarArr[i];
            if (zzmfVar != null) {
                zzmfVar.zzL(f, zzcgVar.zzc);
            }
            i++;
        }
    }

    private final void zzI() {
        long zze;
        long j;
        boolean z = false;
        if (zzae()) {
            zzli zzd = this.zzq.zzd();
            long zzu = zzu(zzd.zzd());
            if (zzd == this.zzq.zze()) {
                zze = this.zzH;
                j = zzd.zze();
            } else {
                zze = this.zzH - zzd.zze();
                j = zzd.zzf.zzb;
            }
            long j2 = zze - j;
            boolean zzg = this.zzf.zzg(j2, zzu, this.zzn.zzc().zzc);
            if (!zzg && zzu < 500000 && this.zzm > 0) {
                this.zzq.zze().zza.zzj(this.zzu.zzr, false);
                z = this.zzf.zzg(j2, zzu, this.zzn.zzc().zzc);
            } else {
                z = zzg;
            }
        }
        this.zzB = z;
        if (z) {
            this.zzq.zzd().zzk(this.zzH, this.zzn.zzc().zzc, this.zzA);
        }
        zzY();
    }

    private final void zzJ() {
        boolean z;
        this.zzv.zzc(this.zzu);
        z = this.zzv.zzg;
        if (z) {
            zzjk zzjkVar = this.zzM;
            zzjkVar.zza.zzT(this.zzv);
            this.zzv = new zzkx(this.zzu);
        }
    }

    private final void zzK() {
        int i;
        boolean z;
        float f = this.zzn.zzc().zzc;
        zzll zzllVar = this.zzq;
        zzli zzf = zzllVar.zzf();
        boolean z2 = true;
        for (zzli zze = zzllVar.zze(); zze != null && zze.zzd; zze = zze.zzg()) {
            zzyp zzj = zze.zzj(f, this.zzu.zza);
            zzyp zzi = zze.zzi();
            boolean z3 = false;
            if (zzi != null) {
                if (zzi.zzc.length == zzj.zzc.length) {
                    for (int i2 = 0; i2 < zzj.zzc.length; i2++) {
                        if (zzj.zza(zzi, i2)) {
                        }
                    }
                    if (zze != zzf) {
                        z3 = true;
                    }
                    z2 &= z3;
                }
            }
            if (z2) {
                zzll zzllVar2 = this.zzq;
                zzli zze2 = zzllVar2.zze();
                boolean zzn = zzllVar2.zzn(zze2);
                int length = this.zza.length;
                boolean[] zArr = new boolean[2];
                long zzb = zze2.zzb(zzj, this.zzu.zzr, zzn, zArr);
                zzly zzlyVar = this.zzu;
                if (zzlyVar.zze != 4 && zzb != zzlyVar.zzr) {
                    z = true;
                } else {
                    z = false;
                }
                zzly zzlyVar2 = this.zzu;
                i = 2;
                this.zzu = zzz(zzlyVar2.zzb, zzb, zzlyVar2.zzc, zzlyVar2.zzd, z, 5);
                if (z) {
                    zzO(zzb);
                }
                int length2 = this.zza.length;
                boolean[] zArr2 = new boolean[2];
                int i3 = 0;
                while (true) {
                    zzmf[] zzmfVarArr = this.zza;
                    int length3 = zzmfVarArr.length;
                    if (i3 >= 2) {
                        break;
                    }
                    zzmf zzmfVar = zzmfVarArr[i3];
                    boolean zzaf = zzaf(zzmfVar);
                    zArr2[i3] = zzaf;
                    zzwh zzwhVar = zze2.zzc[i3];
                    if (zzaf) {
                        if (zzwhVar != zzmfVar.zzo()) {
                            zzA(zzmfVar);
                        } else if (zArr[i3]) {
                            zzmfVar.zzI(this.zzH);
                        }
                    }
                    i3++;
                }
                zzC(zArr2, this.zzH);
            } else {
                i = 2;
                this.zzq.zzn(zze);
                if (zze.zzd) {
                    zze.zza(zzj, Math.max(zze.zzf.zzb, this.zzH - zze.zze()), false);
                }
            }
            zzE(true);
            if (this.zzu.zze != 4) {
                zzI();
                zzaa();
                this.zzh.zzi(i);
                return;
            }
            return;
        }
    }

    private final void zzL() {
        zzK();
        zzR(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzM(boolean z, boolean z2, boolean z3, boolean z4) {
        long j;
        long j2;
        long j3;
        zzcx zzcxVar;
        zzcx zzcxVar2;
        zzur zzurVar;
        zzws zzwsVar;
        zzyp zzypVar;
        List list;
        this.zzh.zzf(2);
        zziz zzizVar = null;
        this.zzK = null;
        boolean z5 = true;
        zzac(false, true);
        this.zzn.zzi();
        this.zzH = 1000000000000L;
        zzmf[] zzmfVarArr = this.zza;
        int length = zzmfVarArr.length;
        for (int i = 0; i < 2; i++) {
            try {
                zzA(zzmfVarArr[i]);
            } catch (zziz | RuntimeException e) {
                zzff.zzd(new ObfuscatedString(new long[]{-8287931993488882077L, 4434689810440710547L, -8373595562728875778L, 5455716403007772688L}).toString(), new ObfuscatedString(new long[]{-7980134751520600014L, 2207201397386329877L, 200329574395421045L}).toString(), e);
            }
        }
        if (z) {
            zzmf[] zzmfVarArr2 = this.zza;
            int length2 = zzmfVarArr2.length;
            for (int i2 = 0; i2 < 2; i2++) {
                zzmf zzmfVar = zzmfVarArr2[i2];
                if (this.zzb.remove(zzmfVar)) {
                    try {
                        zzmfVar.zzH();
                    } catch (RuntimeException e2) {
                        zzff.zzd(new ObfuscatedString(new long[]{6282103245680166946L, -8483000554498748483L, 2209361638116923189L, -2303149309337119801L}).toString(), new ObfuscatedString(new long[]{-1663363305248696891L, 4883311932560667129L, 7045787894327955146L}).toString(), e2);
                    }
                }
            }
        }
        this.zzF = 0;
        zzly zzlyVar = this.zzu;
        zzur zzurVar2 = zzlyVar.zzb;
        long j4 = zzlyVar.zzr;
        if (!this.zzu.zzb.zzb() && !zzah(this.zzu, this.zzl)) {
            j = this.zzu.zzr;
        } else {
            j = this.zzu.zzc;
        }
        if (z2) {
            this.zzG = null;
            Pair zzx = zzx(this.zzu.zza);
            zzurVar2 = (zzur) zzx.first;
            j4 = ((Long) zzx.second).longValue();
            j = -9223372036854775807L;
            if (!zzurVar2.equals(this.zzu.zzb)) {
                j2 = j4;
                j3 = -9223372036854775807L;
                this.zzq.zzj();
                this.zzB = false;
                zzcxVar = this.zzu.zza;
                if (z3 && (zzcxVar instanceof zzmd)) {
                    zzcxVar = ((zzmd) zzcxVar).zzx(this.zzr.zzq());
                    if (zzurVar2.zzb != -1) {
                        zzcxVar.zzn(zzurVar2.zza, this.zzl);
                        zzcu zzcuVar = this.zzl;
                        zzcw zzcwVar = this.zzk;
                        zzcxVar.zze(zzcuVar.zzd, zzcwVar, 0L);
                        if (zzcwVar.zzb()) {
                            zzcxVar2 = zzcxVar;
                            zzurVar = new zzur(zzurVar2.zza, zzurVar2.zzd);
                            zzly zzlyVar2 = this.zzu;
                            int i3 = zzlyVar2.zze;
                            if (!z4) {
                                zzizVar = zzlyVar2.zzf;
                            }
                            zziz zzizVar2 = zzizVar;
                            if (z5) {
                                zzwsVar = zzws.zza;
                            } else {
                                zzwsVar = zzlyVar2.zzh;
                            }
                            zzws zzwsVar2 = zzwsVar;
                            if (z5) {
                                zzypVar = this.zze;
                            } else {
                                zzypVar = zzlyVar2.zzi;
                            }
                            zzyp zzypVar2 = zzypVar;
                            if (z5) {
                                list = zzgaa.zzl();
                            } else {
                                list = zzlyVar2.zzj;
                            }
                            List list2 = list;
                            zzly zzlyVar3 = this.zzu;
                            this.zzu = new zzly(zzcxVar2, zzurVar, j3, j2, i3, zzizVar2, false, zzwsVar2, zzypVar2, list2, zzurVar, zzlyVar3.zzl, zzlyVar3.zzm, zzlyVar3.zzn, j2, 0L, j2, 0L, false);
                            if (z3) {
                                this.zzr.zzh();
                                return;
                            }
                            return;
                        }
                    }
                }
                zzcxVar2 = zzcxVar;
                zzurVar = zzurVar2;
                zzly zzlyVar22 = this.zzu;
                int i32 = zzlyVar22.zze;
                if (!z4) {
                }
                zziz zzizVar22 = zzizVar;
                if (z5) {
                }
                zzws zzwsVar22 = zzwsVar;
                if (z5) {
                }
                zzyp zzypVar22 = zzypVar;
                if (z5) {
                }
                List list22 = list;
                zzly zzlyVar32 = this.zzu;
                this.zzu = new zzly(zzcxVar2, zzurVar, j3, j2, i32, zzizVar22, false, zzwsVar22, zzypVar22, list22, zzurVar, zzlyVar32.zzl, zzlyVar32.zzm, zzlyVar32.zzn, j2, 0L, j2, 0L, false);
                if (z3) {
                }
            }
        }
        j2 = j4;
        j3 = j;
        z5 = false;
        this.zzq.zzj();
        this.zzB = false;
        zzcxVar = this.zzu.zza;
        if (z3) {
            zzcxVar = ((zzmd) zzcxVar).zzx(this.zzr.zzq());
            if (zzurVar2.zzb != -1) {
            }
        }
        zzcxVar2 = zzcxVar;
        zzurVar = zzurVar2;
        zzly zzlyVar222 = this.zzu;
        int i322 = zzlyVar222.zze;
        if (!z4) {
        }
        zziz zzizVar222 = zzizVar;
        if (z5) {
        }
        zzws zzwsVar222 = zzwsVar;
        if (z5) {
        }
        zzyp zzypVar222 = zzypVar;
        if (z5) {
        }
        List list222 = list;
        zzly zzlyVar322 = this.zzu;
        this.zzu = new zzly(zzcxVar2, zzurVar, j3, j2, i322, zzizVar222, false, zzwsVar222, zzypVar222, list222, zzurVar, zzlyVar322.zzl, zzlyVar322.zzm, zzlyVar322.zzn, j2, 0L, j2, 0L, false);
        if (z3) {
        }
    }

    private final void zzN() {
        zzli zze = this.zzq.zze();
        boolean z = false;
        if (zze != null && zze.zzf.zzh && this.zzx) {
            z = true;
        }
        this.zzy = z;
    }

    private final void zzO(long j) {
        long zze;
        zzli zze2 = this.zzq.zze();
        if (zze2 == null) {
            zze = 1000000000000L;
        } else {
            zze = zze2.zze();
        }
        long j2 = j + zze;
        this.zzH = j2;
        this.zzn.zzf(j2);
        zzmf[] zzmfVarArr = this.zza;
        int length = zzmfVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzmf zzmfVar = zzmfVarArr[i];
            if (zzaf(zzmfVar)) {
                zzmfVar.zzI(this.zzH);
            }
        }
        for (zzli zze3 = this.zzq.zze(); zze3 != null; zze3 = zze3.zzg()) {
            for (zzyi zzyiVar : zze3.zzi().zzc) {
            }
        }
    }

    private final void zzP(zzcx zzcxVar, zzcx zzcxVar2) {
        if (zzcxVar.zzo() && zzcxVar2.zzo()) {
            return;
        }
        int size = this.zzo.size() - 1;
        if (size < 0) {
            Collections.sort(this.zzo);
        } else {
            Object obj = ((zzkw) this.zzo.get(size)).zzb;
            int i = zzfy.zza;
            throw null;
        }
    }

    private final void zzQ(long j, long j2) {
        this.zzh.zzj(2, j + j2);
    }

    private final void zzR(boolean z) {
        zzur zzurVar = this.zzq.zze().zzf.zza;
        long zzw = zzw(zzurVar, this.zzu.zzr, true, false);
        if (zzw != this.zzu.zzr) {
            zzly zzlyVar = this.zzu;
            this.zzu = zzz(zzurVar, zzw, zzlyVar.zzc, zzlyVar.zzd, z, 5);
        }
    }

    private final void zzS(zzcg zzcgVar) {
        this.zzh.zzf(16);
        this.zzn.zzg(zzcgVar);
    }

    private final void zzT(boolean z, int i, boolean z2, int i2) {
        this.zzv.zza(z2 ? 1 : 0);
        this.zzv.zzb(i2);
        this.zzu = this.zzu.zzc(z, i);
        zzac(false, false);
        for (zzli zze = this.zzq.zze(); zze != null; zze = zze.zzg()) {
            for (zzyi zzyiVar : zze.zzi().zzc) {
            }
        }
        if (!zzai()) {
            zzX();
            zzaa();
            return;
        }
        int i3 = this.zzu.zze;
        if (i3 == 3) {
            zzV();
            this.zzh.zzi(2);
        } else if (i3 == 2) {
            this.zzh.zzi(2);
        }
    }

    private final void zzU(int i) {
        zzly zzlyVar = this.zzu;
        if (zzlyVar.zze != i) {
            if (i != 2) {
                this.zzL = -9223372036854775807L;
            }
            this.zzu = zzlyVar.zze(i);
        }
    }

    private final void zzV() {
        zzac(false, false);
        this.zzn.zzh();
        zzmf[] zzmfVarArr = this.zza;
        int length = zzmfVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzmf zzmfVar = zzmfVarArr[i];
            if (zzaf(zzmfVar)) {
                zzmfVar.zzN();
            }
        }
    }

    private final void zzW(boolean z, boolean z2) {
        boolean z3;
        if (z || !this.zzE) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzM(z3, false, true, false);
        this.zzv.zza(z2 ? 1 : 0);
        this.zzf.zzd();
        zzU(1);
    }

    private final void zzX() {
        this.zzn.zzi();
        zzmf[] zzmfVarArr = this.zza;
        int length = zzmfVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzmf zzmfVar = zzmfVarArr[i];
            if (zzaf(zzmfVar)) {
                zzam(zzmfVar);
            }
        }
    }

    private final void zzY() {
        boolean z;
        zzli zzd = this.zzq.zzd();
        if (this.zzB || (zzd != null && zzd.zza.zzp())) {
            z = true;
        } else {
            z = false;
        }
        zzly zzlyVar = this.zzu;
        if (z != zzlyVar.zzg) {
            this.zzu = new zzly(zzlyVar.zza, zzlyVar.zzb, zzlyVar.zzc, zzlyVar.zzd, zzlyVar.zze, zzlyVar.zzf, z, zzlyVar.zzh, zzlyVar.zzi, zzlyVar.zzj, zzlyVar.zzk, zzlyVar.zzl, zzlyVar.zzm, zzlyVar.zzn, zzlyVar.zzp, zzlyVar.zzq, zzlyVar.zzr, zzlyVar.zzs, false);
        }
    }

    private final void zzZ(zzur zzurVar, zzws zzwsVar, zzyp zzypVar) {
        zzcx zzcxVar = this.zzu.zza;
        zzyi[] zzyiVarArr = zzypVar.zzc;
        this.zzf.zze(zzcxVar, zzurVar, this.zza, zzwsVar, zzyiVarArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x00ad, code lost:
    
        r5 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzaa() {
        long j;
        boolean z;
        zzkw zzkwVar;
        zzli zze = this.zzq.zze();
        if (zze != null) {
            if (zze.zzd) {
                j = zze.zza.zzd();
            } else {
                j = -9223372036854775807L;
            }
            if (j != -9223372036854775807L) {
                if (!zze.zzr()) {
                    this.zzq.zzn(zze);
                    zzE(false);
                    zzI();
                }
                zzO(j);
                if (j != this.zzu.zzr) {
                    zzly zzlyVar = this.zzu;
                    this.zzu = zzz(zzlyVar.zzb, j, zzlyVar.zzc, j, true, 5);
                }
            } else {
                zzix zzixVar = this.zzn;
                if (zze != this.zzq.zzf()) {
                    z = true;
                } else {
                    z = false;
                }
                long zzb = zzixVar.zzb(z);
                this.zzH = zzb;
                long zze2 = zzb - zze.zze();
                long j2 = this.zzu.zzr;
                if (!this.zzo.isEmpty() && !this.zzu.zzb.zzb()) {
                    if (this.zzJ) {
                        j2--;
                        this.zzJ = false;
                    }
                    zzly zzlyVar2 = this.zzu;
                    int zza = zzlyVar2.zza.zza(zzlyVar2.zzb.zza);
                    int min = Math.min(this.zzI, this.zzo.size());
                    if (min > 0) {
                        zzkwVar = (zzkw) this.zzo.get(min - 1);
                        while (zzkwVar != null && (zza < 0 || (zza == 0 && j2 < 0))) {
                            int i = min - 1;
                            if (i > 0) {
                                zzkwVar = (zzkw) this.zzo.get(min - 2);
                                min = i;
                            } else {
                                min = i;
                            }
                        }
                        if (min < this.zzo.size()) {
                        }
                        this.zzI = min;
                    }
                    zzkwVar = null;
                }
                if (this.zzn.zzj()) {
                    zzly zzlyVar3 = this.zzu;
                    this.zzu = zzz(zzlyVar3.zzb, zze2, zzlyVar3.zzc, zze2, true, 6);
                } else {
                    zzly zzlyVar4 = this.zzu;
                    zzlyVar4.zzr = zze2;
                    zzlyVar4.zzs = SystemClock.elapsedRealtime();
                }
            }
            this.zzu.zzp = this.zzq.zzd().zzc();
            this.zzu.zzq = zzt();
            zzly zzlyVar5 = this.zzu;
            if (zzlyVar5.zzl && zzlyVar5.zze == 3 && zzaj(zzlyVar5.zza, zzlyVar5.zzb)) {
                zzly zzlyVar6 = this.zzu;
                if (zzlyVar6.zzn.zzc == 1.0f) {
                    float zza2 = this.zzN.zza(zzs(zzlyVar6.zza, zzlyVar6.zzb.zza, zzlyVar6.zzr), zzt());
                    if (this.zzn.zzc().zzc != zza2) {
                        zzS(new zzcg(zza2, this.zzu.zzn.zzd));
                        zzH(this.zzu.zzn, this.zzn.zzc().zzc, false, false);
                    }
                }
            }
        }
    }

    private final void zzab(zzcx zzcxVar, zzur zzurVar, zzcx zzcxVar2, zzur zzurVar2, long j, boolean z) {
        Object obj;
        zzcg zzcgVar;
        if (!zzaj(zzcxVar, zzurVar)) {
            if (zzurVar.zzb()) {
                zzcgVar = zzcg.zza;
            } else {
                zzcgVar = this.zzu.zzn;
            }
            if (!this.zzn.zzc().equals(zzcgVar)) {
                zzS(zzcgVar);
                zzH(this.zzu.zzn, zzcgVar.zzc, false, false);
                return;
            }
            return;
        }
        zzcxVar.zze(zzcxVar.zzn(zzurVar.zza, this.zzl).zzd, this.zzk, 0L);
        zziu zziuVar = this.zzN;
        zzbf zzbfVar = this.zzk.zzl;
        int i = zzfy.zza;
        zziuVar.zzd(zzbfVar);
        if (j != -9223372036854775807L) {
            this.zzN.zze(zzs(zzcxVar, zzurVar.zza, j));
            return;
        }
        Object obj2 = this.zzk.zzc;
        if (!zzcxVar2.zzo()) {
            obj = zzcxVar2.zze(zzcxVar2.zzn(zzurVar2.zza, this.zzl).zzd, this.zzk, 0L).zzc;
        } else {
            obj = null;
        }
        if (zzfy.zzF(obj, obj2) && !z) {
            return;
        }
        this.zzN.zze(-9223372036854775807L);
    }

    private final void zzac(boolean z, boolean z2) {
        long elapsedRealtime;
        this.zzz = z;
        if (z2) {
            elapsedRealtime = -9223372036854775807L;
        } else {
            elapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.zzA = elapsedRealtime;
    }

    private final synchronized void zzad(zzfxu zzfxuVar, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime() + j;
        boolean z = false;
        while (!((zzkp) zzfxuVar).zza.zzw && j > 0) {
            try {
                wait(j);
            } catch (InterruptedException unused) {
                z = true;
            }
            j = elapsedRealtime - SystemClock.elapsedRealtime();
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    private final boolean zzae() {
        zzli zzd = this.zzq.zzd();
        if (zzd == null || zzd.zzd() == Long.MIN_VALUE) {
            return false;
        }
        return true;
    }

    private static boolean zzaf(zzmf zzmfVar) {
        if (zzmfVar.zzbf() != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzag() {
        zzli zze = this.zzq.zze();
        long j = zze.zzf.zze;
        if (!zze.zzd) {
            return false;
        }
        if (j != -9223372036854775807L && this.zzu.zzr >= j && zzai()) {
            return false;
        }
        return true;
    }

    private static boolean zzah(zzly zzlyVar, zzcu zzcuVar) {
        zzur zzurVar = zzlyVar.zzb;
        zzcx zzcxVar = zzlyVar.zza;
        if (!zzcxVar.zzo() && !zzcxVar.zzn(zzurVar.zza, zzcuVar).zzg) {
            return false;
        }
        return true;
    }

    private final boolean zzai() {
        zzly zzlyVar = this.zzu;
        if (zzlyVar.zzl && zzlyVar.zzm == 0) {
            return true;
        }
        return false;
    }

    private final boolean zzaj(zzcx zzcxVar, zzur zzurVar) {
        if (!zzurVar.zzb() && !zzcxVar.zzo()) {
            zzcxVar.zze(zzcxVar.zzn(zzurVar.zza, this.zzl).zzd, this.zzk, 0L);
            if (this.zzk.zzb()) {
                zzcw zzcwVar = this.zzk;
                if (zzcwVar.zzj && zzcwVar.zzg != -9223372036854775807L) {
                    return true;
                }
            }
        }
        return false;
    }

    private static zzam[] zzak(zzyi zzyiVar) {
        int i;
        if (zzyiVar != null) {
            i = zzyiVar.zzc();
        } else {
            i = 0;
        }
        zzam[] zzamVarArr = new zzam[i];
        for (int i2 = 0; i2 < i; i2++) {
            zzamVarArr[i2] = zzyiVar.zzd(i2);
        }
        return zzamVarArr;
    }

    private static final void zzal(zzmb zzmbVar) {
        zzmbVar.zzj();
        try {
            zzmbVar.zzc().zzt(zzmbVar.zza(), zzmbVar.zzg());
        } finally {
            zzmbVar.zzh(true);
        }
    }

    private static final void zzam(zzmf zzmfVar) {
        if (zzmfVar.zzbf() == 2) {
            zzmfVar.zzO();
        }
    }

    private static final void zzan(zzmf zzmfVar, long j) {
        zzmfVar.zzJ();
        if (!(zzmfVar instanceof zzww)) {
            return;
        }
        throw null;
    }

    public static /* synthetic */ zzli zzd(zzkz zzkzVar, zzlj zzljVar, long j) {
        zzlc zzlcVar = zzkzVar.zzf;
        zzyo zzyoVar = zzkzVar.zzd;
        zzyx zzi = zzlcVar.zzi();
        zzyp zzypVar = zzkzVar.zze;
        return new zzli(zzkzVar.zzc, j, zzyoVar, zzi, zzkzVar.zzr, zzljVar, zzypVar);
    }

    @Nullable
    public static Object zzf(zzcw zzcwVar, zzcu zzcuVar, int i, boolean z, Object obj, zzcx zzcxVar, zzcx zzcxVar2) {
        int zza = zzcxVar.zza(obj);
        int zzb = zzcxVar.zzb();
        int i2 = 0;
        int i3 = zza;
        int i4 = -1;
        while (true) {
            if (i2 >= zzb || i4 != -1) {
                break;
            }
            i3 = zzcxVar.zzi(i3, zzcuVar, zzcwVar, i, z);
            if (i3 == -1) {
                i4 = -1;
                break;
            }
            i4 = zzcxVar2.zza(zzcxVar.zzf(i3));
            i2++;
        }
        if (i4 == -1) {
            return null;
        }
        return zzcxVar2.zzf(i4);
    }

    public static final /* synthetic */ void zzr(zzmb zzmbVar) {
        try {
            zzal(zzmbVar);
        } catch (zziz e) {
            zzff.zzd(new ObfuscatedString(new long[]{6654869913093933121L, -1346137730379078478L, -1675248946216539774L, -5891085066334664687L}).toString(), new ObfuscatedString(new long[]{-4306732840034132047L, -2125447957841931326L, -3938501594673556937L, -3687167118924532354L, -3203740558406851302L, -2746738369339845874L, -2037359292365483199L, 1524740067810790589L}).toString(), e);
            throw new RuntimeException(e);
        }
    }

    private final long zzs(zzcx zzcxVar, Object obj, long j) {
        long elapsedRealtime;
        zzcxVar.zze(zzcxVar.zzn(obj, this.zzl).zzd, this.zzk, 0L);
        zzcw zzcwVar = this.zzk;
        if (zzcwVar.zzg != -9223372036854775807L && zzcwVar.zzb()) {
            zzcw zzcwVar2 = this.zzk;
            if (zzcwVar2.zzj) {
                long j2 = zzcwVar2.zzh;
                if (j2 == -9223372036854775807L) {
                    elapsedRealtime = System.currentTimeMillis();
                } else {
                    elapsedRealtime = j2 + SystemClock.elapsedRealtime();
                }
                return zzfy.zzq(elapsedRealtime - this.zzk.zzg) - j;
            }
        }
        return -9223372036854775807L;
    }

    private final long zzt() {
        return zzu(this.zzu.zzp);
    }

    private final long zzu(long j) {
        zzli zzd = this.zzq.zzd();
        if (zzd == null) {
            return 0L;
        }
        return Math.max(0L, j - (this.zzH - zzd.zze()));
    }

    private final long zzv(zzur zzurVar, long j, boolean z) {
        boolean z2;
        zzll zzllVar = this.zzq;
        if (zzllVar.zze() != zzllVar.zzf()) {
            z2 = true;
        } else {
            z2 = false;
        }
        return zzw(zzurVar, j, z2, z);
    }

    private final long zzw(zzur zzurVar, long j, boolean z, boolean z2) {
        zzX();
        zzac(false, true);
        if (z2 || this.zzu.zze == 3) {
            zzU(2);
        }
        zzli zze = this.zzq.zze();
        zzli zzliVar = zze;
        while (zzliVar != null && !zzurVar.equals(zzliVar.zzf.zza)) {
            zzliVar = zzliVar.zzg();
        }
        if (z || zze != zzliVar || (zzliVar != null && zzliVar.zze() + j < 0)) {
            zzmf[] zzmfVarArr = this.zza;
            int length = zzmfVarArr.length;
            for (int i = 0; i < 2; i++) {
                zzA(zzmfVarArr[i]);
            }
            if (zzliVar != null) {
                while (this.zzq.zze() != zzliVar) {
                    this.zzq.zza();
                }
                this.zzq.zzn(zzliVar);
                zzliVar.zzp(1000000000000L);
                zzB();
            }
        }
        if (zzliVar != null) {
            this.zzq.zzn(zzliVar);
            if (!zzliVar.zzd) {
                zzliVar.zzf = zzliVar.zzf.zzb(j);
            } else if (zzliVar.zze) {
                j = zzliVar.zza.zze(j);
                zzliVar.zza.zzj(j - this.zzm, false);
            }
            zzO(j);
            zzI();
        } else {
            this.zzq.zzj();
            zzO(j);
        }
        zzE(false);
        this.zzh.zzi(2);
        return j;
    }

    private final Pair zzx(zzcx zzcxVar) {
        long j = 0;
        if (zzcxVar.zzo()) {
            return Pair.create(zzly.zzh(), 0L);
        }
        Pair zzl = zzcxVar.zzl(this.zzk, this.zzl, zzcxVar.zzg(this.zzD), -9223372036854775807L);
        zzur zzi = this.zzq.zzi(zzcxVar, zzl.first, 0L);
        long longValue = ((Long) zzl.second).longValue();
        if (zzi.zzb()) {
            zzcxVar.zzn(zzi.zza, this.zzl);
            if (zzi.zzc == this.zzl.zze(zzi.zzb)) {
                this.zzl.zzj();
            }
        } else {
            j = longValue;
        }
        return Pair.create(zzi, Long.valueOf(j));
    }

    @Nullable
    private static Pair zzy(zzcx zzcxVar, zzky zzkyVar, boolean z, int i, boolean z2, zzcw zzcwVar, zzcu zzcuVar) {
        zzcx zzcxVar2;
        Pair zzl;
        zzcx zzcxVar3 = zzkyVar.zza;
        if (zzcxVar.zzo()) {
            return null;
        }
        if (true == zzcxVar3.zzo()) {
            zzcxVar2 = zzcxVar;
        } else {
            zzcxVar2 = zzcxVar3;
        }
        try {
            zzl = zzcxVar2.zzl(zzcwVar, zzcuVar, zzkyVar.zzb, zzkyVar.zzc);
        } catch (IndexOutOfBoundsException unused) {
        }
        if (zzcxVar.equals(zzcxVar2)) {
            return zzl;
        }
        if (zzcxVar.zza(zzl.first) != -1) {
            if (zzcxVar2.zzn(zzl.first, zzcuVar).zzg && zzcxVar2.zze(zzcuVar.zzd, zzcwVar, 0L).zzp == zzcxVar2.zza(zzl.first)) {
                return zzcxVar.zzl(zzcwVar, zzcuVar, zzcxVar.zzn(zzl.first, zzcuVar).zzd, zzkyVar.zzc);
            }
            return zzl;
        }
        Object zzf = zzf(zzcwVar, zzcuVar, i, z2, zzl.first, zzcxVar2, zzcxVar);
        if (zzf != null) {
            return zzcxVar.zzl(zzcwVar, zzcuVar, zzcxVar.zzn(zzf, zzcuVar).zzd, -9223372036854775807L);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00eb  */
    @CheckResult
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final zzly zzz(zzur zzurVar, long j, long j2, long j3, boolean z, int i) {
        boolean z2;
        List list;
        zzyp zzypVar;
        zzws zzwsVar;
        zzgaa zzl;
        int i2 = 0;
        if (this.zzJ || j != this.zzu.zzr || !zzurVar.equals(this.zzu.zzb)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzJ = z2;
        zzN();
        zzly zzlyVar = this.zzu;
        zzws zzwsVar2 = zzlyVar.zzh;
        zzyp zzypVar2 = zzlyVar.zzi;
        List list2 = zzlyVar.zzj;
        if (this.zzr.zzj()) {
            zzli zze = this.zzq.zze();
            if (zze == null) {
                zzwsVar2 = zzws.zza;
            } else {
                zzwsVar2 = zze.zzh();
            }
            if (zze == null) {
                zzypVar2 = this.zze;
            } else {
                zzypVar2 = zze.zzi();
            }
            zzyi[] zzyiVarArr = zzypVar2.zzc;
            zzfzx zzfzxVar = new zzfzx();
            boolean z3 = false;
            for (zzyi zzyiVar : zzyiVarArr) {
                if (zzyiVar != null) {
                    zzby zzbyVar = zzyiVar.zzd(0).zzk;
                    if (zzbyVar == null) {
                        zzfzxVar.zzf(new zzby(-9223372036854775807L, new zzbx[0]));
                    } else {
                        zzfzxVar.zzf(zzbyVar);
                        z3 = true;
                    }
                }
            }
            if (z3) {
                zzl = zzfzxVar.zzi();
            } else {
                zzl = zzgaa.zzl();
            }
            if (zze != null) {
                zzlj zzljVar = zze.zzf;
                if (zzljVar.zzc != j2) {
                    zze.zzf = zzljVar.zza(j2);
                }
            }
            zzli zze2 = this.zzq.zze();
            if (zze2 != null) {
                zzyp zzi = zze2.zzi();
                while (true) {
                    int length = this.zza.length;
                    if (i2 >= 2) {
                        break;
                    }
                    if (zzi.zzb(i2)) {
                        if (this.zza[i2].zzbj() != 1) {
                            break;
                        }
                        int i3 = zzi.zzb[i2].zzb;
                    }
                    i2++;
                }
            }
            list = zzl;
        } else {
            if (!zzurVar.equals(this.zzu.zzb)) {
                zzypVar = this.zze;
                zzwsVar = zzws.zza;
                list = zzgaa.zzl();
                if (z) {
                    this.zzv.zzd(i);
                }
                return this.zzu.zzb(zzurVar, j, j2, j3, zzt(), zzwsVar, zzypVar, list);
            }
            list = list2;
        }
        zzwsVar = zzwsVar2;
        zzypVar = zzypVar2;
        if (z) {
        }
        return this.zzu.zzb(zzurVar, j, j2, j3, zzt(), zzwsVar, zzypVar, list);
    }

    /* JADX WARN: Code restructure failed: missing block: B:484:0x08ce, code lost:
    
        if (zzag() != false) goto L473;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0972, code lost:
    
        if (r3 == false) goto L510;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0015. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0aa3  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x06d1 A[Catch: RuntimeException -> 0x0509, IOException -> 0x050d, zztt -> 0x0511, zzgx -> 0x0515, zzcc -> 0x0519, zzrq -> 0x051d, zziz -> 0x0521, TryCatch #13 {zzcc -> 0x0519, zzgx -> 0x0515, zziz -> 0x0521, zzrq -> 0x051d, zztt -> 0x0511, IOException -> 0x050d, RuntimeException -> 0x0509, blocks: (B:272:0x04b3, B:274:0x04c7, B:276:0x04d3, B:278:0x04e2, B:280:0x04ee, B:282:0x0503, B:283:0x0525, B:284:0x0528, B:286:0x052c, B:287:0x0539, B:290:0x06aa, B:292:0x06b2, B:294:0x06ba, B:297:0x06bf, B:298:0x06cb, B:300:0x06d1, B:302:0x06d9, B:307:0x06e9, B:309:0x06ef, B:311:0x070f, B:313:0x0715, B:306:0x071a, B:320:0x071e, B:322:0x0722, B:324:0x0728, B:326:0x072c, B:328:0x0734, B:330:0x073a, B:332:0x0744, B:335:0x074a, B:336:0x074d, B:338:0x0755, B:340:0x0767, B:342:0x076f, B:344:0x0777, B:347:0x0780, B:348:0x07a9, B:350:0x07af, B:352:0x07b5, B:354:0x07bc, B:361:0x07ca, B:364:0x07ce, B:369:0x07d9, B:371:0x07e3, B:372:0x07e8, B:374:0x0803, B:375:0x081b, B:377:0x0821, B:379:0x0829, B:381:0x0832, B:384:0x083f, B:388:0x084e, B:393:0x085b, B:395:0x0861, B:402:0x0873, B:404:0x0878, B:415:0x0886, B:417:0x088c, B:421:0x0899, B:423:0x08a1, B:425:0x08a5, B:426:0x08b0, B:428:0x08b6, B:429:0x09a7, B:432:0x09af, B:434:0x09b4, B:436:0x09bc, B:438:0x09ca, B:440:0x09d1, B:444:0x09d4, B:446:0x09da, B:448:0x09e3, B:450:0x09e9, B:452:0x09f4, B:453:0x0a25, B:455:0x0a2b, B:458:0x0a35, B:461:0x0a57, B:467:0x0a4a, B:469:0x0a4e, B:471:0x0a54, B:473:0x09fb, B:476:0x0a09, B:477:0x0a1d, B:478:0x0a1e, B:479:0x08bf, B:481:0x08c6, B:483:0x08ca, B:486:0x0950, B:488:0x095c, B:491:0x08d7, B:493:0x08db, B:495:0x08ef, B:496:0x08fd, B:498:0x0909, B:501:0x0912, B:503:0x091c, B:508:0x0927, B:514:0x0960, B:516:0x0967, B:518:0x096b, B:521:0x0974, B:523:0x0984, B:525:0x098c, B:527:0x0996, B:529:0x099a, B:531:0x099f, B:532:0x09a4, B:534:0x087e, B:540:0x054b, B:542:0x0551, B:544:0x055f, B:547:0x056a, B:549:0x0570, B:552:0x057e, B:555:0x0584, B:557:0x058c, B:561:0x058e, B:563:0x0596, B:565:0x05a4, B:567:0x05ec, B:569:0x05f6, B:571:0x0601, B:573:0x0609, B:575:0x060c, B:578:0x060f, B:580:0x0615, B:582:0x0624, B:584:0x062a, B:586:0x0638, B:588:0x0642, B:590:0x0653, B:594:0x0659, B:593:0x0664, B:600:0x066a, B:602:0x0670, B:605:0x0675, B:607:0x067b, B:609:0x0683, B:611:0x0689, B:613:0x068f, B:617:0x069d, B:618:0x06a5, B:620:0x06a8, B:626:0x0536, B:628:0x0a5c, B:631:0x0a64, B:633:0x0a6b, B:636:0x0a87), top: B:5:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:318:0x071c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:335:0x074a A[Catch: RuntimeException -> 0x0509, IOException -> 0x050d, zztt -> 0x0511, zzgx -> 0x0515, zzcc -> 0x0519, zzrq -> 0x051d, zziz -> 0x0521, TryCatch #13 {zzcc -> 0x0519, zzgx -> 0x0515, zziz -> 0x0521, zzrq -> 0x051d, zztt -> 0x0511, IOException -> 0x050d, RuntimeException -> 0x0509, blocks: (B:272:0x04b3, B:274:0x04c7, B:276:0x04d3, B:278:0x04e2, B:280:0x04ee, B:282:0x0503, B:283:0x0525, B:284:0x0528, B:286:0x052c, B:287:0x0539, B:290:0x06aa, B:292:0x06b2, B:294:0x06ba, B:297:0x06bf, B:298:0x06cb, B:300:0x06d1, B:302:0x06d9, B:307:0x06e9, B:309:0x06ef, B:311:0x070f, B:313:0x0715, B:306:0x071a, B:320:0x071e, B:322:0x0722, B:324:0x0728, B:326:0x072c, B:328:0x0734, B:330:0x073a, B:332:0x0744, B:335:0x074a, B:336:0x074d, B:338:0x0755, B:340:0x0767, B:342:0x076f, B:344:0x0777, B:347:0x0780, B:348:0x07a9, B:350:0x07af, B:352:0x07b5, B:354:0x07bc, B:361:0x07ca, B:364:0x07ce, B:369:0x07d9, B:371:0x07e3, B:372:0x07e8, B:374:0x0803, B:375:0x081b, B:377:0x0821, B:379:0x0829, B:381:0x0832, B:384:0x083f, B:388:0x084e, B:393:0x085b, B:395:0x0861, B:402:0x0873, B:404:0x0878, B:415:0x0886, B:417:0x088c, B:421:0x0899, B:423:0x08a1, B:425:0x08a5, B:426:0x08b0, B:428:0x08b6, B:429:0x09a7, B:432:0x09af, B:434:0x09b4, B:436:0x09bc, B:438:0x09ca, B:440:0x09d1, B:444:0x09d4, B:446:0x09da, B:448:0x09e3, B:450:0x09e9, B:452:0x09f4, B:453:0x0a25, B:455:0x0a2b, B:458:0x0a35, B:461:0x0a57, B:467:0x0a4a, B:469:0x0a4e, B:471:0x0a54, B:473:0x09fb, B:476:0x0a09, B:477:0x0a1d, B:478:0x0a1e, B:479:0x08bf, B:481:0x08c6, B:483:0x08ca, B:486:0x0950, B:488:0x095c, B:491:0x08d7, B:493:0x08db, B:495:0x08ef, B:496:0x08fd, B:498:0x0909, B:501:0x0912, B:503:0x091c, B:508:0x0927, B:514:0x0960, B:516:0x0967, B:518:0x096b, B:521:0x0974, B:523:0x0984, B:525:0x098c, B:527:0x0996, B:529:0x099a, B:531:0x099f, B:532:0x09a4, B:534:0x087e, B:540:0x054b, B:542:0x0551, B:544:0x055f, B:547:0x056a, B:549:0x0570, B:552:0x057e, B:555:0x0584, B:557:0x058c, B:561:0x058e, B:563:0x0596, B:565:0x05a4, B:567:0x05ec, B:569:0x05f6, B:571:0x0601, B:573:0x0609, B:575:0x060c, B:578:0x060f, B:580:0x0615, B:582:0x0624, B:584:0x062a, B:586:0x0638, B:588:0x0642, B:590:0x0653, B:594:0x0659, B:593:0x0664, B:600:0x066a, B:602:0x0670, B:605:0x0675, B:607:0x067b, B:609:0x0683, B:611:0x0689, B:613:0x068f, B:617:0x069d, B:618:0x06a5, B:620:0x06a8, B:626:0x0536, B:628:0x0a5c, B:631:0x0a64, B:633:0x0a6b, B:636:0x0a87), top: B:5:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0755 A[Catch: RuntimeException -> 0x0509, IOException -> 0x050d, zztt -> 0x0511, zzgx -> 0x0515, zzcc -> 0x0519, zzrq -> 0x051d, zziz -> 0x0521, TryCatch #13 {zzcc -> 0x0519, zzgx -> 0x0515, zziz -> 0x0521, zzrq -> 0x051d, zztt -> 0x0511, IOException -> 0x050d, RuntimeException -> 0x0509, blocks: (B:272:0x04b3, B:274:0x04c7, B:276:0x04d3, B:278:0x04e2, B:280:0x04ee, B:282:0x0503, B:283:0x0525, B:284:0x0528, B:286:0x052c, B:287:0x0539, B:290:0x06aa, B:292:0x06b2, B:294:0x06ba, B:297:0x06bf, B:298:0x06cb, B:300:0x06d1, B:302:0x06d9, B:307:0x06e9, B:309:0x06ef, B:311:0x070f, B:313:0x0715, B:306:0x071a, B:320:0x071e, B:322:0x0722, B:324:0x0728, B:326:0x072c, B:328:0x0734, B:330:0x073a, B:332:0x0744, B:335:0x074a, B:336:0x074d, B:338:0x0755, B:340:0x0767, B:342:0x076f, B:344:0x0777, B:347:0x0780, B:348:0x07a9, B:350:0x07af, B:352:0x07b5, B:354:0x07bc, B:361:0x07ca, B:364:0x07ce, B:369:0x07d9, B:371:0x07e3, B:372:0x07e8, B:374:0x0803, B:375:0x081b, B:377:0x0821, B:379:0x0829, B:381:0x0832, B:384:0x083f, B:388:0x084e, B:393:0x085b, B:395:0x0861, B:402:0x0873, B:404:0x0878, B:415:0x0886, B:417:0x088c, B:421:0x0899, B:423:0x08a1, B:425:0x08a5, B:426:0x08b0, B:428:0x08b6, B:429:0x09a7, B:432:0x09af, B:434:0x09b4, B:436:0x09bc, B:438:0x09ca, B:440:0x09d1, B:444:0x09d4, B:446:0x09da, B:448:0x09e3, B:450:0x09e9, B:452:0x09f4, B:453:0x0a25, B:455:0x0a2b, B:458:0x0a35, B:461:0x0a57, B:467:0x0a4a, B:469:0x0a4e, B:471:0x0a54, B:473:0x09fb, B:476:0x0a09, B:477:0x0a1d, B:478:0x0a1e, B:479:0x08bf, B:481:0x08c6, B:483:0x08ca, B:486:0x0950, B:488:0x095c, B:491:0x08d7, B:493:0x08db, B:495:0x08ef, B:496:0x08fd, B:498:0x0909, B:501:0x0912, B:503:0x091c, B:508:0x0927, B:514:0x0960, B:516:0x0967, B:518:0x096b, B:521:0x0974, B:523:0x0984, B:525:0x098c, B:527:0x0996, B:529:0x099a, B:531:0x099f, B:532:0x09a4, B:534:0x087e, B:540:0x054b, B:542:0x0551, B:544:0x055f, B:547:0x056a, B:549:0x0570, B:552:0x057e, B:555:0x0584, B:557:0x058c, B:561:0x058e, B:563:0x0596, B:565:0x05a4, B:567:0x05ec, B:569:0x05f6, B:571:0x0601, B:573:0x0609, B:575:0x060c, B:578:0x060f, B:580:0x0615, B:582:0x0624, B:584:0x062a, B:586:0x0638, B:588:0x0642, B:590:0x0653, B:594:0x0659, B:593:0x0664, B:600:0x066a, B:602:0x0670, B:605:0x0675, B:607:0x067b, B:609:0x0683, B:611:0x0689, B:613:0x068f, B:617:0x069d, B:618:0x06a5, B:620:0x06a8, B:626:0x0536, B:628:0x0a5c, B:631:0x0a64, B:633:0x0a6b, B:636:0x0a87), top: B:5:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:350:0x07af A[Catch: RuntimeException -> 0x0509, IOException -> 0x050d, zztt -> 0x0511, zzgx -> 0x0515, zzcc -> 0x0519, zzrq -> 0x051d, zziz -> 0x0521, TryCatch #13 {zzcc -> 0x0519, zzgx -> 0x0515, zziz -> 0x0521, zzrq -> 0x051d, zztt -> 0x0511, IOException -> 0x050d, RuntimeException -> 0x0509, blocks: (B:272:0x04b3, B:274:0x04c7, B:276:0x04d3, B:278:0x04e2, B:280:0x04ee, B:282:0x0503, B:283:0x0525, B:284:0x0528, B:286:0x052c, B:287:0x0539, B:290:0x06aa, B:292:0x06b2, B:294:0x06ba, B:297:0x06bf, B:298:0x06cb, B:300:0x06d1, B:302:0x06d9, B:307:0x06e9, B:309:0x06ef, B:311:0x070f, B:313:0x0715, B:306:0x071a, B:320:0x071e, B:322:0x0722, B:324:0x0728, B:326:0x072c, B:328:0x0734, B:330:0x073a, B:332:0x0744, B:335:0x074a, B:336:0x074d, B:338:0x0755, B:340:0x0767, B:342:0x076f, B:344:0x0777, B:347:0x0780, B:348:0x07a9, B:350:0x07af, B:352:0x07b5, B:354:0x07bc, B:361:0x07ca, B:364:0x07ce, B:369:0x07d9, B:371:0x07e3, B:372:0x07e8, B:374:0x0803, B:375:0x081b, B:377:0x0821, B:379:0x0829, B:381:0x0832, B:384:0x083f, B:388:0x084e, B:393:0x085b, B:395:0x0861, B:402:0x0873, B:404:0x0878, B:415:0x0886, B:417:0x088c, B:421:0x0899, B:423:0x08a1, B:425:0x08a5, B:426:0x08b0, B:428:0x08b6, B:429:0x09a7, B:432:0x09af, B:434:0x09b4, B:436:0x09bc, B:438:0x09ca, B:440:0x09d1, B:444:0x09d4, B:446:0x09da, B:448:0x09e3, B:450:0x09e9, B:452:0x09f4, B:453:0x0a25, B:455:0x0a2b, B:458:0x0a35, B:461:0x0a57, B:467:0x0a4a, B:469:0x0a4e, B:471:0x0a54, B:473:0x09fb, B:476:0x0a09, B:477:0x0a1d, B:478:0x0a1e, B:479:0x08bf, B:481:0x08c6, B:483:0x08ca, B:486:0x0950, B:488:0x095c, B:491:0x08d7, B:493:0x08db, B:495:0x08ef, B:496:0x08fd, B:498:0x0909, B:501:0x0912, B:503:0x091c, B:508:0x0927, B:514:0x0960, B:516:0x0967, B:518:0x096b, B:521:0x0974, B:523:0x0984, B:525:0x098c, B:527:0x0996, B:529:0x099a, B:531:0x099f, B:532:0x09a4, B:534:0x087e, B:540:0x054b, B:542:0x0551, B:544:0x055f, B:547:0x056a, B:549:0x0570, B:552:0x057e, B:555:0x0584, B:557:0x058c, B:561:0x058e, B:563:0x0596, B:565:0x05a4, B:567:0x05ec, B:569:0x05f6, B:571:0x0601, B:573:0x0609, B:575:0x060c, B:578:0x060f, B:580:0x0615, B:582:0x0624, B:584:0x062a, B:586:0x0638, B:588:0x0642, B:590:0x0653, B:594:0x0659, B:593:0x0664, B:600:0x066a, B:602:0x0670, B:605:0x0675, B:607:0x067b, B:609:0x0683, B:611:0x0689, B:613:0x068f, B:617:0x069d, B:618:0x06a5, B:620:0x06a8, B:626:0x0536, B:628:0x0a5c, B:631:0x0a64, B:633:0x0a6b, B:636:0x0a87), top: B:5:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x07c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x09ae  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0a2b A[Catch: RuntimeException -> 0x0509, IOException -> 0x050d, zztt -> 0x0511, zzgx -> 0x0515, zzcc -> 0x0519, zzrq -> 0x051d, zziz -> 0x0521, TryCatch #13 {zzcc -> 0x0519, zzgx -> 0x0515, zziz -> 0x0521, zzrq -> 0x051d, zztt -> 0x0511, IOException -> 0x050d, RuntimeException -> 0x0509, blocks: (B:272:0x04b3, B:274:0x04c7, B:276:0x04d3, B:278:0x04e2, B:280:0x04ee, B:282:0x0503, B:283:0x0525, B:284:0x0528, B:286:0x052c, B:287:0x0539, B:290:0x06aa, B:292:0x06b2, B:294:0x06ba, B:297:0x06bf, B:298:0x06cb, B:300:0x06d1, B:302:0x06d9, B:307:0x06e9, B:309:0x06ef, B:311:0x070f, B:313:0x0715, B:306:0x071a, B:320:0x071e, B:322:0x0722, B:324:0x0728, B:326:0x072c, B:328:0x0734, B:330:0x073a, B:332:0x0744, B:335:0x074a, B:336:0x074d, B:338:0x0755, B:340:0x0767, B:342:0x076f, B:344:0x0777, B:347:0x0780, B:348:0x07a9, B:350:0x07af, B:352:0x07b5, B:354:0x07bc, B:361:0x07ca, B:364:0x07ce, B:369:0x07d9, B:371:0x07e3, B:372:0x07e8, B:374:0x0803, B:375:0x081b, B:377:0x0821, B:379:0x0829, B:381:0x0832, B:384:0x083f, B:388:0x084e, B:393:0x085b, B:395:0x0861, B:402:0x0873, B:404:0x0878, B:415:0x0886, B:417:0x088c, B:421:0x0899, B:423:0x08a1, B:425:0x08a5, B:426:0x08b0, B:428:0x08b6, B:429:0x09a7, B:432:0x09af, B:434:0x09b4, B:436:0x09bc, B:438:0x09ca, B:440:0x09d1, B:444:0x09d4, B:446:0x09da, B:448:0x09e3, B:450:0x09e9, B:452:0x09f4, B:453:0x0a25, B:455:0x0a2b, B:458:0x0a35, B:461:0x0a57, B:467:0x0a4a, B:469:0x0a4e, B:471:0x0a54, B:473:0x09fb, B:476:0x0a09, B:477:0x0a1d, B:478:0x0a1e, B:479:0x08bf, B:481:0x08c6, B:483:0x08ca, B:486:0x0950, B:488:0x095c, B:491:0x08d7, B:493:0x08db, B:495:0x08ef, B:496:0x08fd, B:498:0x0909, B:501:0x0912, B:503:0x091c, B:508:0x0927, B:514:0x0960, B:516:0x0967, B:518:0x096b, B:521:0x0974, B:523:0x0984, B:525:0x098c, B:527:0x0996, B:529:0x099a, B:531:0x099f, B:532:0x09a4, B:534:0x087e, B:540:0x054b, B:542:0x0551, B:544:0x055f, B:547:0x056a, B:549:0x0570, B:552:0x057e, B:555:0x0584, B:557:0x058c, B:561:0x058e, B:563:0x0596, B:565:0x05a4, B:567:0x05ec, B:569:0x05f6, B:571:0x0601, B:573:0x0609, B:575:0x060c, B:578:0x060f, B:580:0x0615, B:582:0x0624, B:584:0x062a, B:586:0x0638, B:588:0x0642, B:590:0x0653, B:594:0x0659, B:593:0x0664, B:600:0x066a, B:602:0x0670, B:605:0x0675, B:607:0x067b, B:609:0x0683, B:611:0x0689, B:613:0x068f, B:617:0x069d, B:618:0x06a5, B:620:0x06a8, B:626:0x0536, B:628:0x0a5c, B:631:0x0a64, B:633:0x0a6b, B:636:0x0a87), top: B:5:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x0a3e  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0a3f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0b06  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0b14  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0b2e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0b42  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0b8a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0bb5  */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r15v34 */
    /* JADX WARN: Type inference failed for: r15v35 */
    /* JADX WARN: Type inference failed for: r15v36 */
    /* JADX WARN: Type inference failed for: r15v37 */
    /* JADX WARN: Type inference failed for: r15v38 */
    /* JADX WARN: Type inference failed for: r15v39 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r1v61, types: [com.google.android.gms.internal.ads.zzlx] */
    /* JADX WARN: Type inference failed for: r2v49, types: [com.google.android.gms.internal.ads.zzyw, com.google.android.gms.internal.ads.zzhy] */
    /* JADX WARN: Type inference failed for: r39v0, types: [com.google.android.gms.internal.ads.zzkz, com.google.android.gms.internal.ads.zzuo, java.lang.Object] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean handleMessage(Message message) {
        RuntimeException runtimeException;
        IOException iOException;
        zztt zzttVar;
        zzrq zzrqVar;
        zziz zzizVar;
        zzgx zzgxVar;
        zzcc zzccVar;
        boolean z;
        boolean z2;
        int i;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        zziz zzizVar2;
        zziz zzizVar3;
        zzli zzf;
        boolean z7;
        boolean z8;
        boolean z9;
        long j;
        zzli zzliVar;
        boolean z10;
        boolean z11;
        int i2;
        zzli zzliVar2;
        long j2;
        int i3;
        zzli zzf2;
        boolean z12;
        zzli zze;
        zzli zzg;
        zzli zza;
        boolean z13;
        int i4;
        int i5;
        zzlj zzg2;
        zzky zzkyVar;
        Pair zzy;
        long j3;
        boolean z14;
        zzur zzurVar;
        long j4;
        Throwable th;
        long j5;
        long j6;
        long zzv;
        boolean z15;
        long j7;
        zzly zzlyVar;
        int i6;
        zzly zzz;
        int i7;
        List list;
        zzwk zzwkVar;
        List list2;
        zzwk zzwkVar2;
        int i8;
        long j8;
        List list3;
        zzwk zzwkVar3;
        ?? r15 = 3;
        ?? r152 = 3;
        ?? r153 = 3;
        ?? r154 = 3;
        ?? r155 = 3;
        ?? r156 = 3;
        ?? r157 = 3;
        try {
            try {
                try {
                    try {
                    } catch (zziz e) {
                        e = e;
                    } catch (RuntimeException e2) {
                        e = e2;
                    }
                } catch (zzcc e3) {
                    e = e3;
                } catch (zzgx e4) {
                    e = e4;
                } catch (zzrq e5) {
                    e = e5;
                } catch (zztt e6) {
                    e = e6;
                } catch (IOException e7) {
                    e = e7;
                }
            } catch (zzcc e8) {
                e = e8;
                zzccVar = e;
                z8 = r152;
                zzD(zzccVar, zzccVar.zzb == z8 ? z8 != zzccVar.zza ? 3003 : 3001 : 1000);
                z9 = z8;
                zzJ();
                return z9;
            } catch (zzgx e9) {
                e = e9;
                zzgxVar = e;
                z7 = r153;
                zzD(zzgxVar, zzgxVar.zza);
                z9 = z7;
                zzJ();
                return z9;
            } catch (zziz e10) {
                e = e10;
                zzizVar = e;
                z6 = r154;
                if (zzizVar.zze == z6) {
                }
                if (!zzizVar.zzk) {
                }
                zzizVar2 = this.zzK;
                if (zzizVar2 != null) {
                }
                zzizVar3 = zzizVar;
                zzff.zzd(new ObfuscatedString(new long[]{3735129088106373831L, -6218815987506315251L, -125324939552735707L, -5358201190718252654L}).toString(), new ObfuscatedString(new long[]{34868675863205217L, 2430623508690420766L, 128245189410915315L}).toString(), zzizVar3);
                if (zzizVar3.zze == z6) {
                }
                zzW(z6, false);
                this.zzu = this.zzu.zzd(zzizVar3);
                z9 = z6;
                zzJ();
                return z9;
            } catch (zzrq e11) {
                e = e11;
                zzrqVar = e;
                z5 = r155;
                zzD(zzrqVar, zzrqVar.zza);
                z9 = z5;
                zzJ();
                return z9;
            } catch (zztt e12) {
                e = e12;
                zzttVar = e;
                z4 = r156;
                zzD(zzttVar, PointerIconCompat.TYPE_HAND);
                z9 = z4;
                zzJ();
                return z9;
            } catch (IOException e13) {
                e = e13;
                iOException = e;
                z3 = r157;
                zzD(iOException, TrafficData.INTERVAL_TIME);
                z9 = z3;
                zzJ();
                return z9;
            } catch (RuntimeException e14) {
                e = e14;
                runtimeException = e;
                z = r15;
                z2 = runtimeException instanceof IllegalStateException;
                i = PointerIconCompat.TYPE_WAIT;
                if (!z2) {
                }
                zziz zzd = zziz.zzd(runtimeException, i);
                zzff.zzd(new ObfuscatedString(new long[]{3272144114392245963L, -198948302485457450L, 1668465522141723861L, -8765451620772898032L}).toString(), new ObfuscatedString(new long[]{-6092797562072852365L, -4731707243490300073L, -389421871121712370L}).toString(), zzd);
                zzW(z, false);
                this.zzu = this.zzu.zzd(zzd);
                z9 = z;
                zzJ();
                return z9;
            }
        } catch (zzcc e15) {
            e = e15;
            r152 = 1;
        } catch (zzgx e16) {
            e = e16;
            r153 = 1;
        } catch (zziz e17) {
            e = e17;
            r154 = 1;
        } catch (zzrq e18) {
            e = e18;
            r155 = 1;
        } catch (zztt e19) {
            e = e19;
            r156 = 1;
        } catch (IOException e20) {
            e = e20;
            r157 = 1;
        } catch (RuntimeException e21) {
            e = e21;
            r15 = 1;
        }
        switch (message.what) {
            case 0:
                z9 = true;
                this.zzv.zza(1);
                zzM(false, false, false, true);
                this.zzf.zzb();
                zzU(true != this.zzu.zza.zzo() ? 2 : 4);
                this.zzr.zzg(this.zzg);
                this.zzh.zzi(2);
                zzJ();
                return z9;
            case 1:
                z9 = true;
                zzT(message.arg1 != 0, message.arg2, true, 1);
                zzJ();
                return z9;
            case 2:
                z9 = true;
                z9 = true;
                z9 = true;
                z9 = true;
                long uptimeMillis = SystemClock.uptimeMillis();
                this.zzh.zzf(2);
                if (this.zzu.zza.zzo() || !this.zzr.zzj()) {
                    j = uptimeMillis;
                } else {
                    this.zzq.zzl(this.zzH);
                    if (this.zzq.zzo() && (zzg2 = this.zzq.zzg(this.zzH, this.zzu)) != null) {
                        zzli zzc = this.zzq.zzc(zzg2);
                        zzc.zza.zzl(this, zzg2.zzb);
                        if (this.zzq.zze() == zzc) {
                            zzO(zzg2.zzb);
                        }
                        zzE(false);
                    }
                    if (this.zzB) {
                        this.zzB = zzae();
                        zzY();
                    } else {
                        zzI();
                    }
                    zzli zzf3 = this.zzq.zzf();
                    if (zzf3 != null) {
                        if (zzf3.zzg() != null && !this.zzy) {
                            zzli zzf4 = this.zzq.zzf();
                            if (zzf4.zzd) {
                                int i9 = 0;
                                while (true) {
                                    zzmf[] zzmfVarArr = this.zza;
                                    int length = zzmfVarArr.length;
                                    if (i9 < 2) {
                                        zzmf zzmfVar = zzmfVarArr[i9];
                                        zzwh zzwhVar = zzf4.zzc[i9];
                                        if (zzmfVar.zzo() == zzwhVar) {
                                            if (zzwhVar == null || zzmfVar.zzP()) {
                                                i9++;
                                            } else {
                                                zzf4.zzg();
                                                boolean z16 = zzf4.zzf.zzf;
                                            }
                                        }
                                    } else if (zzf3.zzg().zzd || this.zzH >= zzf3.zzg().zzf()) {
                                        zzyp zzi = zzf3.zzi();
                                        zzli zzb = this.zzq.zzb();
                                        zzyp zzi2 = zzb.zzi();
                                        zzcx zzcxVar = this.zzu.zza;
                                        zzyp zzypVar = zzi2;
                                        zzyp zzypVar2 = zzi;
                                        j2 = uptimeMillis;
                                        i3 = -1;
                                        zzab(zzcxVar, zzb.zzf.zza, zzcxVar, zzf3.zzf.zza, -9223372036854775807L, false);
                                        if (!zzb.zzd || zzb.zza.zzd() == -9223372036854775807L) {
                                            int i10 = 0;
                                            while (true) {
                                                int length2 = this.zza.length;
                                                if (i10 < 2) {
                                                    zzyp zzypVar3 = zzypVar2;
                                                    boolean zzb2 = zzypVar3.zzb(i10);
                                                    zzyp zzypVar4 = zzypVar;
                                                    boolean zzb3 = zzypVar4.zzb(i10);
                                                    if (zzb2 && !this.zza[i10].zzQ()) {
                                                        this.zzc[i10].zzbj();
                                                        zzmi zzmiVar = zzypVar3.zzb[i10];
                                                        zzmi zzmiVar2 = zzypVar4.zzb[i10];
                                                        if (!zzb3 || !zzmiVar2.equals(zzmiVar)) {
                                                            zzan(this.zza[i10], zzb.zzf());
                                                        }
                                                    }
                                                    i10++;
                                                    zzypVar2 = zzypVar3;
                                                    zzypVar = zzypVar4;
                                                }
                                            }
                                        } else {
                                            long zzf5 = zzb.zzf();
                                            zzmf[] zzmfVarArr2 = this.zza;
                                            int length3 = zzmfVarArr2.length;
                                            int i11 = 0;
                                            for (int i12 = 2; i11 < i12; i12 = 2) {
                                                zzmf zzmfVar2 = zzmfVarArr2[i11];
                                                if (zzmfVar2.zzo() != null) {
                                                    zzan(zzmfVar2, zzf5);
                                                }
                                                i11++;
                                            }
                                            if (!zzb.zzr()) {
                                                this.zzq.zzn(zzb);
                                                zzE(false);
                                                zzI();
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            j2 = uptimeMillis;
                            i3 = -1;
                            if (zzf3.zzf.zzi || this.zzy) {
                                int i13 = 0;
                                while (true) {
                                    zzmf[] zzmfVarArr3 = this.zza;
                                    int length4 = zzmfVarArr3.length;
                                    if (i13 < 2) {
                                        zzmf zzmfVar3 = zzmfVarArr3[i13];
                                        zzwh zzwhVar2 = zzf3.zzc[i13];
                                        if (zzwhVar2 != null && zzmfVar3.zzo() == zzwhVar2 && zzmfVar3.zzP()) {
                                            long j9 = zzf3.zzf.zze;
                                            zzan(zzmfVar3, (j9 == -9223372036854775807L || j9 == Long.MIN_VALUE) ? -9223372036854775807L : zzf3.zze() + j9);
                                        }
                                        i13++;
                                    }
                                }
                            }
                        }
                        zzf2 = this.zzq.zzf();
                        if (zzf2 != null && this.zzq.zze() != zzf2 && !zzf2.zzg) {
                            zzli zzf6 = this.zzq.zzf();
                            zzyp zzi3 = zzf6.zzi();
                            i5 = 0;
                            boolean z17 = false;
                            while (true) {
                                zzmf[] zzmfVarArr4 = this.zza;
                                int length5 = zzmfVarArr4.length;
                                if (i5 >= 2) {
                                    zzmf zzmfVar4 = zzmfVarArr4[i5];
                                    if (zzaf(zzmfVar4)) {
                                        zzwh zzo = zzmfVar4.zzo();
                                        zzwh zzwhVar3 = zzf6.zzc[i5];
                                        if (!zzi3.zzb(i5) || zzo != zzwhVar3) {
                                            if (!zzmfVar4.zzQ()) {
                                                zzmfVar4.zzG(zzak(zzi3.zzc[i5]), zzf6.zzc[i5], zzf6.zzf(), zzf6.zze(), zzf6.zzf.zza);
                                            } else if (zzmfVar4.zzV()) {
                                                zzA(zzmfVar4);
                                            } else {
                                                z17 = true;
                                            }
                                        }
                                    }
                                    i5++;
                                } else if (!z17) {
                                    zzB();
                                }
                            }
                        }
                        z12 = false;
                        while (zzai() && !this.zzy && (zze = this.zzq.zze()) != null && (zzg = zze.zzg()) != null && this.zzH >= zzg.zzf() && zzg.zzg) {
                            if (z12) {
                                zzJ();
                            }
                            zza = this.zzq.zza();
                            if (zza == null) {
                                if (this.zzu.zzb.zza.equals(zza.zzf.zza.zza)) {
                                    zzur zzurVar2 = this.zzu.zzb;
                                    if (zzurVar2.zzb == i3) {
                                        zzur zzurVar3 = zza.zzf.zza;
                                        if (zzurVar3.zzb == i3 && zzurVar2.zze != zzurVar3.zze) {
                                            z13 = true;
                                            zzlj zzljVar = zza.zzf;
                                            zzur zzurVar4 = zzljVar.zza;
                                            long j10 = zzljVar.zzb;
                                            long j11 = j2;
                                            this.zzu = zzz(zzurVar4, j10, zzljVar.zzc, j10, !z13, 0);
                                            zzN();
                                            zzaa();
                                            zzyp zzi4 = this.zzq.zze().zzi();
                                            i4 = 0;
                                            while (true) {
                                                int length6 = this.zza.length;
                                                if (i4 >= 2) {
                                                    if (zzi4.zzb(i4)) {
                                                        this.zza[i4].zzs();
                                                    }
                                                    i4++;
                                                }
                                            }
                                            j2 = j11;
                                            z12 = true;
                                            i3 = -1;
                                        }
                                    }
                                }
                                z13 = false;
                                zzlj zzljVar2 = zza.zzf;
                                zzur zzurVar42 = zzljVar2.zza;
                                long j102 = zzljVar2.zzb;
                                long j112 = j2;
                                this.zzu = zzz(zzurVar42, j102, zzljVar2.zzc, j102, !z13, 0);
                                zzN();
                                zzaa();
                                zzyp zzi42 = this.zzq.zze().zzi();
                                i4 = 0;
                                while (true) {
                                    int length62 = this.zza.length;
                                    if (i4 >= 2) {
                                        break;
                                    }
                                    i4++;
                                }
                                j2 = j112;
                                z12 = true;
                                i3 = -1;
                            } else {
                                throw null;
                            }
                        }
                        j = j2;
                    }
                    j2 = uptimeMillis;
                    i3 = -1;
                    zzf2 = this.zzq.zzf();
                    if (zzf2 != null) {
                        zzli zzf62 = this.zzq.zzf();
                        zzyp zzi32 = zzf62.zzi();
                        i5 = 0;
                        boolean z172 = false;
                        while (true) {
                            zzmf[] zzmfVarArr42 = this.zza;
                            int length52 = zzmfVarArr42.length;
                            if (i5 >= 2) {
                            }
                            i5++;
                        }
                    }
                    z12 = false;
                    while (zzai()) {
                        if (z12) {
                        }
                        zza = this.zzq.zza();
                        if (zza == null) {
                        }
                    }
                    j = j2;
                }
                int i14 = this.zzu.zze;
                if (i14 != 1 && i14 != 4) {
                    zzli zze2 = this.zzq.zze();
                    if (zze2 == null) {
                        zzQ(j, 10L);
                    } else {
                        String obfuscatedString = new ObfuscatedString(new long[]{4937369300709627355L, -2892766552060286613L, 3805168776204417702L}).toString();
                        int i15 = zzfy.zza;
                        Trace.beginSection(obfuscatedString);
                        zzaa();
                        if (zze2.zzd) {
                            long zzq = zzfy.zzq(SystemClock.elapsedRealtime());
                            zze2.zza.zzj(this.zzu.zzr - this.zzm, false);
                            z10 = true;
                            int i16 = 0;
                            z11 = true;
                            while (true) {
                                zzmf[] zzmfVarArr5 = this.zza;
                                int length7 = zzmfVarArr5.length;
                                if (i16 < 2) {
                                    zzmf zzmfVar5 = zzmfVarArr5[i16];
                                    if (zzaf(zzmfVar5)) {
                                        zzli zzliVar3 = zze2;
                                        zzmfVar5.zzU(this.zzH, zzq);
                                        if (z11 && zzmfVar5.zzV()) {
                                            zzliVar2 = zzliVar3;
                                            z11 = true;
                                        } else {
                                            zzliVar2 = zzliVar3;
                                            z11 = false;
                                        }
                                        boolean z18 = zzliVar2.zzc[i16] != zzmfVar5.zzo();
                                        boolean z19 = z18 || (!z18 && zzmfVar5.zzP()) || zzmfVar5.zzW() || zzmfVar5.zzV();
                                        z10 = z10 && z19;
                                        if (!z19) {
                                            zzmfVar5.zzv();
                                        }
                                    } else {
                                        zzliVar2 = zze2;
                                    }
                                    i16++;
                                    zze2 = zzliVar2;
                                } else {
                                    zzliVar = zze2;
                                }
                            }
                        } else {
                            zzliVar = zze2;
                            zzliVar.zza.zzk();
                            z10 = true;
                            z11 = true;
                        }
                        long j12 = zzliVar.zzf.zze;
                        if (z11 && zzliVar.zzd && (j12 == -9223372036854775807L || j12 <= this.zzu.zzr)) {
                            if (this.zzy) {
                                this.zzy = false;
                                zzT(false, this.zzu.zzm, false, 5);
                            }
                            if (zzliVar.zzf.zzi) {
                                zzU(4);
                                zzX();
                                int i17 = 2;
                                if (this.zzu.zze == 2) {
                                    int i18 = 0;
                                    while (true) {
                                        zzmf[] zzmfVarArr6 = this.zza;
                                        int length8 = zzmfVarArr6.length;
                                        if (i18 < i17) {
                                            if (zzaf(zzmfVarArr6[i18]) && this.zza[i18].zzo() == zzliVar.zzc[i18]) {
                                                this.zza[i18].zzv();
                                            }
                                            i18++;
                                            i17 = 2;
                                        } else {
                                            zzly zzlyVar2 = this.zzu;
                                            if (!zzlyVar2.zzg && zzlyVar2.zzq < 500000 && zzae()) {
                                                if (this.zzL == -9223372036854775807L) {
                                                    this.zzL = SystemClock.elapsedRealtime();
                                                } else if (SystemClock.elapsedRealtime() - this.zzL >= 4000) {
                                                    throw new IllegalStateException(new ObfuscatedString(new long[]{2526851950970381793L, 4091989034561357488L, 58483878442574389L, -389023079151595972L, 7166650061544820878L, 7045702312548153855L}).toString());
                                                }
                                                boolean z20 = !zzai() && this.zzu.zze == 3;
                                                zzly zzlyVar3 = this.zzu;
                                                boolean z21 = zzlyVar3.zzo;
                                                i2 = zzlyVar3.zze;
                                                if (i2 != 4) {
                                                    if (!z20 && i2 != 2) {
                                                        if (i2 == 3 && this.zzF != 0) {
                                                            zzQ(j, 1000L);
                                                        }
                                                    } else {
                                                        zzQ(j, 10L);
                                                    }
                                                }
                                                Trace.endSection();
                                            }
                                        }
                                    }
                                }
                                this.zzL = -9223372036854775807L;
                                if (zzai()) {
                                }
                                zzly zzlyVar32 = this.zzu;
                                boolean z212 = zzlyVar32.zzo;
                                i2 = zzlyVar32.zze;
                                if (i2 != 4) {
                                }
                                Trace.endSection();
                            }
                        }
                        zzly zzlyVar4 = this.zzu;
                        if (zzlyVar4.zze == 2) {
                            if (this.zzF == 0) {
                                break;
                            } else if (z10) {
                                if (zzlyVar4.zzg) {
                                    zzli zze3 = this.zzq.zze();
                                    long zzb4 = zzaj(this.zzu.zza, zze3.zzf.zza) ? this.zzN.zzb() : -9223372036854775807L;
                                    zzli zzd2 = this.zzq.zzd();
                                    boolean z22 = zzd2.zzr() && zzd2.zzf.zzi;
                                    boolean z23 = zzd2.zzf.zza.zzb() && !zzd2.zzd;
                                    if (!z22) {
                                        if (!z23) {
                                            if (this.zzf.zzh(this.zzu.zza, zze3.zzf.zza, zzt(), this.zzn.zzc().zzc, this.zzz, zzb4)) {
                                            }
                                        }
                                    }
                                }
                                zzU(3);
                                this.zzK = null;
                                if (zzai()) {
                                    zzV();
                                }
                            }
                            int i172 = 2;
                            if (this.zzu.zze == 2) {
                            }
                            this.zzL = -9223372036854775807L;
                            if (zzai()) {
                            }
                            zzly zzlyVar322 = this.zzu;
                            boolean z2122 = zzlyVar322.zzo;
                            i2 = zzlyVar322.zze;
                            if (i2 != 4) {
                            }
                            Trace.endSection();
                        }
                        if (this.zzu.zze == 3) {
                            if (this.zzF == 0) {
                                if (!zzag()) {
                                    zzac(zzai(), false);
                                    zzU(2);
                                    if (this.zzz) {
                                        for (zzli zze4 = this.zzq.zze(); zze4 != null; zze4 = zze4.zzg()) {
                                            for (zzyi zzyiVar : zze4.zzi().zzc) {
                                            }
                                        }
                                        this.zzN.zzc();
                                    }
                                    zzX();
                                }
                            }
                        }
                        int i1722 = 2;
                        if (this.zzu.zze == 2) {
                        }
                        this.zzL = -9223372036854775807L;
                        if (zzai()) {
                        }
                        zzly zzlyVar3222 = this.zzu;
                        boolean z21222 = zzlyVar3222.zzo;
                        i2 = zzlyVar3222.zze;
                        if (i2 != 4) {
                        }
                        Trace.endSection();
                    }
                }
                zzJ();
                return z9;
            case 3:
                try {
                    zzkyVar = (zzky) message.obj;
                    this.zzv.zza(1);
                    zzy = zzy(this.zzu.zza, zzkyVar, true, this.zzC, this.zzD, this.zzk, this.zzl);
                    if (zzy == null) {
                        Pair zzx = zzx(this.zzu.zza);
                        zzur zzurVar5 = (zzur) zzx.first;
                        long longValue = ((Long) zzx.second).longValue();
                        z14 = !this.zzu.zza.zzo();
                        j3 = -9223372036854775807L;
                        zzurVar = zzurVar5;
                        j4 = longValue;
                    } else {
                        Object obj = zzy.first;
                        long longValue2 = ((Long) zzy.second).longValue();
                        j3 = zzkyVar.zzc == -9223372036854775807L ? -9223372036854775807L : longValue2;
                        zzur zzi5 = this.zzq.zzi(this.zzu.zza, obj, longValue2);
                        if (zzi5.zzb()) {
                            this.zzu.zza.zzn(zzi5.zza, this.zzl);
                            if (this.zzl.zze(zzi5.zzb) == zzi5.zzc) {
                                this.zzl.zzj();
                            }
                            zzurVar = zzi5;
                            j4 = 0;
                            z14 = true;
                        } else {
                            z14 = zzkyVar.zzc == -9223372036854775807L;
                            zzurVar = zzi5;
                            j4 = longValue2;
                        }
                    }
                    try {
                    } catch (Throwable th2) {
                        th = th2;
                        j5 = j4;
                    }
                } catch (zziz e22) {
                    e = e22;
                    zzizVar = e;
                    z6 = true;
                    if (zzizVar.zze == z6 && (zzf = this.zzq.zzf()) != null) {
                        zzizVar = zzizVar.zza(zzf.zzf.zza);
                    }
                    if (!zzizVar.zzk && (this.zzK == null || zzizVar.zzb == 5003)) {
                        zzff.zzg(new ObfuscatedString(new long[]{-1235656077580778348L, 5948723065103057502L, -4875082770558269939L, 3448768056543670776L}).toString(), new ObfuscatedString(new long[]{-6067184401128005853L, 6165955471497411009L, -4041856525185583872L, -7369426580767105332L, 4377576555950570154L}).toString(), zzizVar);
                        zziz zzizVar4 = this.zzK;
                        if (zzizVar4 != null) {
                            zzizVar4.addSuppressed(zzizVar);
                            zzizVar = this.zzK;
                        } else {
                            this.zzK = zzizVar;
                        }
                        zzew zzewVar = this.zzh;
                        zzewVar.zzk(zzewVar.zzc(25, zzizVar));
                        z9 = z6;
                    } else {
                        zzizVar2 = this.zzK;
                        if (zzizVar2 != null) {
                            zzizVar2.addSuppressed(zzizVar);
                            zzizVar = this.zzK;
                        }
                        zzizVar3 = zzizVar;
                        zzff.zzd(new ObfuscatedString(new long[]{3735129088106373831L, -6218815987506315251L, -125324939552735707L, -5358201190718252654L}).toString(), new ObfuscatedString(new long[]{34868675863205217L, 2430623508690420766L, 128245189410915315L}).toString(), zzizVar3);
                        if (zzizVar3.zze == z6) {
                            zzll zzllVar = this.zzq;
                            if (zzllVar.zze() != zzllVar.zzf()) {
                                while (true) {
                                    zzll zzllVar2 = this.zzq;
                                    if (zzllVar2.zze() != zzllVar2.zzf()) {
                                        this.zzq.zza();
                                    } else {
                                        zzli zze5 = this.zzq.zze();
                                        zze5.getClass();
                                        zzlj zzljVar3 = zze5.zzf;
                                        zzur zzurVar6 = zzljVar3.zza;
                                        long j13 = zzljVar3.zzb;
                                        this.zzu = zzz(zzurVar6, j13, zzljVar3.zzc, j13, true, 0);
                                    }
                                }
                            }
                        }
                        zzW(z6, false);
                        this.zzu = this.zzu.zzd(zzizVar3);
                        z9 = z6;
                    }
                    zzJ();
                    return z9;
                } catch (RuntimeException e23) {
                    e = e23;
                    runtimeException = e;
                    z = true;
                    z2 = runtimeException instanceof IllegalStateException;
                    i = PointerIconCompat.TYPE_WAIT;
                    if (!z2 && !(runtimeException instanceof IllegalArgumentException)) {
                        i = 1000;
                    }
                    zziz zzd3 = zziz.zzd(runtimeException, i);
                    zzff.zzd(new ObfuscatedString(new long[]{3272144114392245963L, -198948302485457450L, 1668465522141723861L, -8765451620772898032L}).toString(), new ObfuscatedString(new long[]{-6092797562072852365L, -4731707243490300073L, -389421871121712370L}).toString(), zzd3);
                    zzW(z, false);
                    this.zzu = this.zzu.zzd(zzd3);
                    z9 = z;
                    zzJ();
                    return z9;
                }
                if (this.zzu.zza.zzo()) {
                    this.zzG = zzkyVar;
                } else if (zzy == null) {
                    if (this.zzu.zze != 1) {
                        zzU(4);
                    }
                    zzM(false, true, false, true);
                } else {
                    try {
                        if (zzurVar.equals(this.zzu.zzb)) {
                            zzli zze6 = this.zzq.zze();
                            j6 = (zze6 == null || !zze6.zzd || j4 == 0) ? j4 : zze6.zza.zza(j4, this.zzt);
                            if (zzfy.zzt(j6) == zzfy.zzt(this.zzu.zzr) && ((i6 = (zzlyVar = this.zzu).zze) == 2 || i6 == 3)) {
                                long j14 = zzlyVar.zzr;
                                zzz = zzz(zzurVar, j14, j3, j14, z14, 2);
                                this.zzu = zzz;
                                z9 = true;
                                zzJ();
                                return z9;
                            }
                        } else {
                            j6 = j4;
                        }
                        zzly zzlyVar5 = this.zzu;
                        zzcx zzcxVar2 = zzlyVar5.zza;
                        zzab(zzcxVar2, zzurVar, zzcxVar2, zzlyVar5.zzb, j3, true);
                        j7 = zzv;
                        zzz = zzz(zzurVar, j7, j3, j7, z15, 2);
                        this.zzu = zzz;
                        z9 = true;
                        zzJ();
                        return z9;
                    } catch (Throwable th3) {
                        z14 = z15;
                        j5 = zzv;
                        th = th3;
                        this.zzu = zzz(zzurVar, j5, j3, j5, z14, 2);
                        throw th;
                    }
                    zzv = zzv(zzurVar, j6, this.zzu.zze == 4);
                    z15 = z14 | (j4 != zzv);
                }
                j7 = j4;
                z15 = z14;
                zzz = zzz(zzurVar, j7, j3, j7, z15, 2);
                this.zzu = zzz;
                z9 = true;
                zzJ();
                return z9;
            case 4:
                zzS((zzcg) message.obj);
                zzG(this.zzn.zzc(), true);
                z9 = true;
                zzJ();
                return z9;
            case 5:
                this.zzt = (zzmj) message.obj;
                z9 = true;
                zzJ();
                return z9;
            case 6:
                zzW(false, true);
                z9 = true;
                zzJ();
                return z9;
            case 7:
                zzM(true, false, true, false);
                int i19 = 0;
                while (true) {
                    int length9 = this.zza.length;
                    if (i19 < 2) {
                        this.zzc[i19].zzp();
                        this.zza[i19].zzF();
                        i19++;
                    } else {
                        this.zzf.zzc();
                        zzU(1);
                        HandlerThread handlerThread = this.zzi;
                        if (handlerThread != null) {
                            handlerThread.quit();
                        }
                        synchronized (this) {
                            this.zzw = true;
                            notifyAll();
                        }
                        return true;
                    }
                }
            case 8:
                try {
                    if (this.zzq.zzm((zzup) message.obj)) {
                        zzli zzd4 = this.zzq.zzd();
                        zzd4.zzl(this.zzn.zzc().zzc, this.zzu.zza);
                        zzZ(zzd4.zzf.zza, zzd4.zzh(), zzd4.zzi());
                        if (zzd4 == this.zzq.zze()) {
                            zzO(zzd4.zzf.zzb);
                            zzB();
                            zzly zzlyVar6 = this.zzu;
                            zzur zzurVar7 = zzlyVar6.zzb;
                            long j15 = zzd4.zzf.zzb;
                            this.zzu = zzz(zzurVar7, j15, zzlyVar6.zzc, j15, false, 5);
                        }
                        zzI();
                    }
                    z9 = true;
                } catch (zzcc e24) {
                    e = e24;
                    zzccVar = e;
                    z8 = true;
                    zzD(zzccVar, zzccVar.zzb == z8 ? z8 != zzccVar.zza ? 3003 : 3001 : 1000);
                    z9 = z8;
                    zzJ();
                    return z9;
                } catch (zzgx e25) {
                    e = e25;
                    zzgxVar = e;
                    z7 = true;
                    zzD(zzgxVar, zzgxVar.zza);
                    z9 = z7;
                    zzJ();
                    return z9;
                } catch (zziz e26) {
                    e = e26;
                    zzizVar = e;
                    z6 = true;
                    if (zzizVar.zze == z6) {
                        zzizVar = zzizVar.zza(zzf.zzf.zza);
                        break;
                    }
                    if (!zzizVar.zzk) {
                        break;
                    }
                    zzizVar2 = this.zzK;
                    if (zzizVar2 != null) {
                    }
                    zzizVar3 = zzizVar;
                    zzff.zzd(new ObfuscatedString(new long[]{3735129088106373831L, -6218815987506315251L, -125324939552735707L, -5358201190718252654L}).toString(), new ObfuscatedString(new long[]{34868675863205217L, 2430623508690420766L, 128245189410915315L}).toString(), zzizVar3);
                    if (zzizVar3.zze == z6) {
                    }
                    zzW(z6, false);
                    this.zzu = this.zzu.zzd(zzizVar3);
                    z9 = z6;
                    zzJ();
                    return z9;
                } catch (zzrq e27) {
                    e = e27;
                    zzrqVar = e;
                    z5 = true;
                    zzD(zzrqVar, zzrqVar.zza);
                    z9 = z5;
                    zzJ();
                    return z9;
                } catch (zztt e28) {
                    e = e28;
                    zzttVar = e;
                    z4 = true;
                    zzD(zzttVar, PointerIconCompat.TYPE_HAND);
                    z9 = z4;
                    zzJ();
                    return z9;
                } catch (IOException e29) {
                    e = e29;
                    iOException = e;
                    z3 = true;
                    zzD(iOException, TrafficData.INTERVAL_TIME);
                    z9 = z3;
                    zzJ();
                    return z9;
                } catch (RuntimeException e30) {
                    e = e30;
                    runtimeException = e;
                    z = true;
                    z2 = runtimeException instanceof IllegalStateException;
                    i = PointerIconCompat.TYPE_WAIT;
                    if (!z2) {
                        i = 1000;
                        break;
                    }
                    zziz zzd32 = zziz.zzd(runtimeException, i);
                    zzff.zzd(new ObfuscatedString(new long[]{3272144114392245963L, -198948302485457450L, 1668465522141723861L, -8765451620772898032L}).toString(), new ObfuscatedString(new long[]{-6092797562072852365L, -4731707243490300073L, -389421871121712370L}).toString(), zzd32);
                    zzW(z, false);
                    this.zzu = this.zzu.zzd(zzd32);
                    z9 = z;
                    zzJ();
                    return z9;
                }
                zzJ();
                return z9;
            case 9:
                if (this.zzq.zzm((zzup) message.obj)) {
                    this.zzq.zzl(this.zzH);
                    zzI();
                }
                z9 = true;
                zzJ();
                return z9;
            case 10:
                zzK();
                z9 = true;
                zzJ();
                return z9;
            case 11:
                int i20 = message.arg1;
                this.zzC = i20;
                if (!this.zzq.zzq(this.zzu.zza, i20)) {
                    zzR(true);
                }
                zzE(false);
                z9 = true;
                zzJ();
                return z9;
            case 12:
                boolean z24 = message.arg1 != 0;
                this.zzD = z24;
                if (!this.zzq.zzr(this.zzu.zza, z24)) {
                    zzR(true);
                }
                zzE(false);
                z9 = true;
                zzJ();
                return z9;
            case 13:
                boolean z25 = message.arg1 != 0;
                AtomicBoolean atomicBoolean = (AtomicBoolean) message.obj;
                if (this.zzE != z25) {
                    this.zzE = z25;
                    if (!z25) {
                        zzmf[] zzmfVarArr7 = this.zza;
                        int length10 = zzmfVarArr7.length;
                        for (int i21 = 0; i21 < 2; i21++) {
                            zzmf zzmfVar6 = zzmfVarArr7[i21];
                            if (!zzaf(zzmfVar6) && this.zzb.remove(zzmfVar6)) {
                                zzmfVar6.zzH();
                            }
                        }
                    }
                }
                if (atomicBoolean != null) {
                    synchronized (this) {
                        atomicBoolean.set(true);
                        notifyAll();
                    }
                }
                z9 = true;
                zzJ();
                return z9;
            case 14:
                zzmb zzmbVar = (zzmb) message.obj;
                if (zzmbVar.zzb() == this.zzj) {
                    zzal(zzmbVar);
                    int i22 = this.zzu.zze;
                    if (i22 == 3 || i22 == 2) {
                        this.zzh.zzi(2);
                    }
                } else {
                    this.zzh.zzc(15, zzmbVar).zza();
                }
                z9 = true;
                zzJ();
                return z9;
            case 15:
                final zzmb zzmbVar2 = (zzmb) message.obj;
                Looper zzb5 = zzmbVar2.zzb();
                if (!zzb5.getThread().isAlive()) {
                    try {
                        zzff.zzf(new ObfuscatedString(new long[]{-6121945303948566799L, 5051034216441105725L}).toString(), new ObfuscatedString(new long[]{-1367172530531247633L, 333393454543637482L, 4402847999205222774L, -3912066193838967556L, -5704582554775675824L, 922439835112943846L}).toString());
                        zzmbVar2.zzh(false);
                    } catch (zzcc e31) {
                        e = e31;
                        zzccVar = e;
                        z8 = true;
                        zzD(zzccVar, zzccVar.zzb == z8 ? z8 != zzccVar.zza ? 3003 : 3001 : 1000);
                        z9 = z8;
                        zzJ();
                        return z9;
                    } catch (zzgx e32) {
                        e = e32;
                        zzgxVar = e;
                        z7 = true;
                        zzD(zzgxVar, zzgxVar.zza);
                        z9 = z7;
                        zzJ();
                        return z9;
                    } catch (zziz e33) {
                        e = e33;
                        zzizVar = e;
                        z6 = true;
                        if (zzizVar.zze == z6) {
                        }
                        if (!zzizVar.zzk) {
                        }
                        zzizVar2 = this.zzK;
                        if (zzizVar2 != null) {
                        }
                        zzizVar3 = zzizVar;
                        zzff.zzd(new ObfuscatedString(new long[]{3735129088106373831L, -6218815987506315251L, -125324939552735707L, -5358201190718252654L}).toString(), new ObfuscatedString(new long[]{34868675863205217L, 2430623508690420766L, 128245189410915315L}).toString(), zzizVar3);
                        if (zzizVar3.zze == z6) {
                        }
                        zzW(z6, false);
                        this.zzu = this.zzu.zzd(zzizVar3);
                        z9 = z6;
                        zzJ();
                        return z9;
                    } catch (zzrq e34) {
                        e = e34;
                        zzrqVar = e;
                        z5 = true;
                        zzD(zzrqVar, zzrqVar.zza);
                        z9 = z5;
                        zzJ();
                        return z9;
                    } catch (zztt e35) {
                        e = e35;
                        zzttVar = e;
                        z4 = true;
                        zzD(zzttVar, PointerIconCompat.TYPE_HAND);
                        z9 = z4;
                        zzJ();
                        return z9;
                    } catch (IOException e36) {
                        e = e36;
                        iOException = e;
                        z3 = true;
                        zzD(iOException, TrafficData.INTERVAL_TIME);
                        z9 = z3;
                        zzJ();
                        return z9;
                    } catch (RuntimeException e37) {
                        e = e37;
                        runtimeException = e;
                        z = true;
                        z2 = runtimeException instanceof IllegalStateException;
                        i = PointerIconCompat.TYPE_WAIT;
                        if (!z2) {
                        }
                        zziz zzd322 = zziz.zzd(runtimeException, i);
                        zzff.zzd(new ObfuscatedString(new long[]{3272144114392245963L, -198948302485457450L, 1668465522141723861L, -8765451620772898032L}).toString(), new ObfuscatedString(new long[]{-6092797562072852365L, -4731707243490300073L, -389421871121712370L}).toString(), zzd322);
                        zzW(z, false);
                        this.zzu = this.zzu.zzd(zzd322);
                        z9 = z;
                        zzJ();
                        return z9;
                    }
                } else {
                    this.zzp.zzb(zzb5, null).zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkq
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzkz.zzr(zzmbVar2);
                        }
                    });
                }
                z9 = true;
                zzJ();
                return z9;
            case 16:
                zzG((zzcg) message.obj, false);
                z9 = true;
                zzJ();
                return z9;
            case 17:
                zzku zzkuVar = (zzku) message.obj;
                this.zzv.zza(1);
                i7 = zzkuVar.zzb;
                if (i7 != -1) {
                    list2 = zzkuVar.zza;
                    zzwkVar2 = zzkuVar.zzd;
                    zzmd zzmdVar = new zzmd(list2, zzwkVar2);
                    i8 = zzkuVar.zzb;
                    j8 = zzkuVar.zzc;
                    this.zzG = new zzky(zzmdVar, i8, j8);
                }
                zzlx zzlxVar = this.zzr;
                list = zzkuVar.zza;
                zzwkVar = zzkuVar.zzd;
                zzF(zzlxVar.zzn(list, zzwkVar), false);
                z9 = true;
                zzJ();
                return z9;
            case 18:
                zzku zzkuVar2 = (zzku) message.obj;
                int i23 = message.arg1;
                this.zzv.zza(1);
                zzlx zzlxVar2 = this.zzr;
                if (i23 == -1) {
                    i23 = zzlxVar2.zza();
                }
                list3 = zzkuVar2.zza;
                zzwkVar3 = zzkuVar2.zzd;
                zzF(zzlxVar2.zzk(i23, list3, zzwkVar3), false);
                z9 = true;
                zzJ();
                return z9;
            case 19:
                zzkv zzkvVar = (zzkv) message.obj;
                this.zzv.zza(1);
                zzlx zzlxVar3 = this.zzr;
                int i24 = zzkvVar.zza;
                zzF(zzlxVar3.zzl(0, 0, 0, null), false);
                z9 = true;
                zzJ();
                return z9;
            case 20:
                int i25 = message.arg1;
                int i26 = message.arg2;
                zzwk zzwkVar4 = (zzwk) message.obj;
                this.zzv.zza(1);
                zzF(this.zzr.zzm(i25, i26, zzwkVar4), false);
                z9 = true;
                zzJ();
                return z9;
            case 21:
                zzwk zzwkVar5 = (zzwk) message.obj;
                this.zzv.zza(1);
                zzF(this.zzr.zzo(zzwkVar5), false);
                z9 = true;
                zzJ();
                return z9;
            case 22:
                zzF(this.zzr.zzb(), true);
                z9 = true;
                zzJ();
                return z9;
            case 23:
                this.zzx = message.arg1 != 0;
                zzN();
                if (this.zzy && this.zzq.zzf() != this.zzq.zze()) {
                    zzR(true);
                    zzE(false);
                }
                z9 = true;
                zzJ();
                return z9;
            case 24:
            default:
                return false;
            case 25:
                zzL();
                z9 = true;
                zzJ();
                return z9;
            case 26:
                zzL();
                z9 = true;
                zzJ();
                return z9;
            case 27:
                int i27 = message.arg1;
                int i28 = message.arg2;
                List list4 = (List) message.obj;
                this.zzv.zza(1);
                zzF(this.zzr.zzc(i27, i28, list4), false);
                z9 = true;
                zzJ();
                return z9;
        }
    }

    @Override // com.google.android.gms.internal.ads.zziw
    public final void zza(zzcg zzcgVar) {
        this.zzh.zzc(16, zzcgVar).zza();
    }

    public final Looper zzb() {
        return this.zzj;
    }

    public final /* synthetic */ Boolean zze() {
        return Boolean.valueOf(this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final /* bridge */ /* synthetic */ void zzg(zzwj zzwjVar) {
        this.zzh.zzc(9, (zzup) zzwjVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlw
    public final void zzh() {
        this.zzh.zzi(22);
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        this.zzh.zzc(8, zzupVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    public final void zzj() {
        this.zzh.zzi(10);
    }

    public final void zzk() {
        this.zzh.zzb(0).zza();
    }

    public final void zzl(zzcx zzcxVar, int i, long j) {
        this.zzh.zzc(3, new zzky(zzcxVar, i, j)).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzlz
    public final synchronized void zzm(zzmb zzmbVar) {
        if (!this.zzw && this.zzj.getThread().isAlive()) {
            this.zzh.zzc(14, zzmbVar).zza();
            return;
        }
        zzff.zzf(new ObfuscatedString(new long[]{-173280794867684205L, 4414088966635463492L, -5224483190255933481L, -3846923928910956700L}).toString(), new ObfuscatedString(new long[]{-1958637001060727802L, 5176624035037496631L, -3658261429359809558L, -2835634957928374119L, -4323801676673085802L, -5607018563460855142L}).toString());
        zzmbVar.zzh(false);
    }

    public final void zzn(boolean z, int i) {
        this.zzh.zzd(1, z ? 1 : 0, i).zza();
    }

    public final void zzo() {
        this.zzh.zzb(6).zza();
    }

    public final synchronized boolean zzp() {
        if (!this.zzw && this.zzj.getThread().isAlive()) {
            this.zzh.zzi(7);
            zzad(new zzkp(this), this.zzs);
            return this.zzw;
        }
        return true;
    }

    public final void zzq(List list, int i, long j, zzwk zzwkVar) {
        this.zzh.zzc(17, new zzku(list, zzwkVar, i, j, null)).zza();
    }
}
