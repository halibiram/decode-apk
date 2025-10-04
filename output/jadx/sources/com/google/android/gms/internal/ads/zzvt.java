package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import j$.util.DesugarCollections;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzvt implements zzup, zzacx, zzzc, zzzh, zzwf {
    private static final Map zzb;
    private static final zzam zzc;
    private long zzA;
    private boolean zzB;
    private int zzC;
    private boolean zzD;
    private boolean zzE;
    private int zzF;
    private boolean zzG;
    private long zzH;
    private long zzI;
    private boolean zzJ;
    private int zzK;
    private boolean zzL;
    private boolean zzM;
    private final zzzb zzN;
    private final zzyx zzO;
    private final Uri zzd;
    private final zzgw zze;
    private final zzry zzf;
    private final zzva zzg;
    private final zzrs zzh;
    private final zzvp zzi;
    private final long zzj;
    private final zzzk zzk = new zzzk(new ObfuscatedString(new long[]{-3085618412695957974L, -7709924403290916453L, -1065508218398895259L, 5905312686435952327L}).toString());
    private final zzvi zzl;
    private final zzeo zzm;
    private final Runnable zzn;
    private final Runnable zzo;
    private final Handler zzp;
    private final boolean zzq;

    @Nullable
    private zzuo zzr;

    @Nullable
    private zzaga zzs;
    private zzwg[] zzt;
    private zzvr[] zzu;
    private boolean zzv;
    private boolean zzw;
    private boolean zzx;
    private zzvs zzy;
    private zzadu zzz;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-4930220839619452562L, 4564097795246739731L, 2385334025269314793L}).toString(), new ObfuscatedString(new long[]{-2852307576384834349L, -1524614961694184487L}).toString());
        zzb = DesugarCollections.unmodifiableMap(hashMap);
        zzak zzakVar = new zzak();
        zzakVar.zzK(new ObfuscatedString(new long[]{-1068764329869058778L, -4904198591540466017L}).toString());
        zzakVar.zzW(new ObfuscatedString(new long[]{7588562205532117837L, -1154418311269793779L, -2966345836692789545L, -3605561173856641164L}).toString());
        zzc = zzakVar.zzac();
    }

    public zzvt(Uri uri, zzgw zzgwVar, zzvi zzviVar, zzry zzryVar, zzrs zzrsVar, zzzb zzzbVar, zzva zzvaVar, zzvp zzvpVar, zzyx zzyxVar, @Nullable String str, int i, long j) {
        this.zzd = uri;
        this.zze = zzgwVar;
        this.zzf = zzryVar;
        this.zzh = zzrsVar;
        this.zzN = zzzbVar;
        this.zzg = zzvaVar;
        this.zzi = zzvpVar;
        this.zzO = zzyxVar;
        this.zzj = i;
        this.zzl = zzviVar;
        this.zzA = j;
        this.zzq = j != -9223372036854775807L;
        this.zzm = new zzeo(zzel.zza);
        this.zzn = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvk
            @Override // java.lang.Runnable
            public final void run() {
                zzvt.this.zzU();
            }
        };
        this.zzo = new Runnable() { // from class: com.google.android.gms.internal.ads.zzvl
            @Override // java.lang.Runnable
            public final void run() {
                zzvt.this.zzE();
            }
        };
        this.zzp = zzfy.zzw(null);
        this.zzu = new zzvr[0];
        this.zzt = new zzwg[0];
        this.zzI = -9223372036854775807L;
        this.zzC = 1;
    }

    private final int zzQ() {
        int i = 0;
        for (zzwg zzwgVar : this.zzt) {
            i += zzwgVar.zzd();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzR(boolean z) {
        int i = 0;
        long j = Long.MIN_VALUE;
        while (true) {
            zzwg[] zzwgVarArr = this.zzt;
            if (i < zzwgVarArr.length) {
                if (!z) {
                    zzvs zzvsVar = this.zzy;
                    zzvsVar.getClass();
                    if (!zzvsVar.zzc[i]) {
                        i++;
                    }
                }
                j = Math.max(j, zzwgVarArr[i].zzh());
                i++;
            } else {
                return j;
            }
        }
    }

    private final zzaea zzS(zzvr zzvrVar) {
        int length = this.zzt.length;
        for (int i = 0; i < length; i++) {
            if (zzvrVar.equals(this.zzu[i])) {
                return this.zzt[i];
            }
        }
        zzwg zzwgVar = new zzwg(this.zzO, this.zzf, this.zzh);
        zzwgVar.zzv(this);
        int i2 = length + 1;
        zzvr[] zzvrVarArr = (zzvr[]) Arrays.copyOf(this.zzu, i2);
        zzvrVarArr[length] = zzvrVar;
        int i3 = zzfy.zza;
        this.zzu = zzvrVarArr;
        zzwg[] zzwgVarArr = (zzwg[]) Arrays.copyOf(this.zzt, i2);
        zzwgVarArr[length] = zzwgVar;
        this.zzt = zzwgVarArr;
        return zzwgVar;
    }

    @EnsuresNonNull({"trackState", "seekMap"})
    private final void zzT() {
        zzek.zzf(this.zzw);
        this.zzy.getClass();
        this.zzz.getClass();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzU() {
        boolean z;
        zzby zzc2;
        int i;
        if (!this.zzM && !this.zzw && this.zzv && this.zzz != null) {
            for (zzwg zzwgVar : this.zzt) {
                if (zzwgVar.zzi() == null) {
                    return;
                }
            }
            this.zzm.zzc();
            int length = this.zzt.length;
            zzcz[] zzczVarArr = new zzcz[length];
            boolean[] zArr = new boolean[length];
            for (int i2 = 0; i2 < length; i2++) {
                zzam zzi = this.zzt[i2].zzi();
                zzi.getClass();
                String str = zzi.zzm;
                boolean zzg = zzcb.zzg(str);
                if (zzg || zzcb.zzh(str)) {
                    z = true;
                } else {
                    z = false;
                }
                zArr[i2] = z;
                this.zzx = z | this.zzx;
                zzaga zzagaVar = this.zzs;
                if (zzagaVar != null) {
                    if (zzg || this.zzu[i2].zzb) {
                        zzby zzbyVar = zzi.zzk;
                        if (zzbyVar == null) {
                            zzc2 = new zzby(-9223372036854775807L, zzagaVar);
                        } else {
                            zzc2 = zzbyVar.zzc(zzagaVar);
                        }
                        zzak zzb2 = zzi.zzb();
                        zzb2.zzP(zzc2);
                        zzi = zzb2.zzac();
                    }
                    if (zzg && zzi.zzg == -1 && zzi.zzh == -1 && (i = zzagaVar.zza) != -1) {
                        zzak zzb3 = zzi.zzb();
                        zzb3.zzx(i);
                        zzi = zzb3.zzac();
                    }
                }
                zzczVarArr[i2] = new zzcz(Integer.toString(i2), zzi.zzc(this.zzf.zza(zzi)));
            }
            this.zzy = new zzvs(new zzws(zzczVarArr), zArr);
            this.zzw = true;
            zzuo zzuoVar = this.zzr;
            zzuoVar.getClass();
            zzuoVar.zzi(this);
        }
    }

    private final void zzV(int i) {
        zzT();
        zzvs zzvsVar = this.zzy;
        boolean[] zArr = zzvsVar.zzd;
        if (!zArr[i]) {
            zzam zzb2 = zzvsVar.zza.zzb(i).zzb(0);
            this.zzg.zzc(new zzun(1, zzcb.zzb(zzb2.zzm), zzb2, 0, null, zzfy.zzt(this.zzH), -9223372036854775807L));
            zArr[i] = true;
        }
    }

    private final void zzW(int i) {
        zzT();
        boolean[] zArr = this.zzy.zzb;
        if (this.zzJ && zArr[i] && !this.zzt[i].zzy(false)) {
            this.zzI = 0L;
            this.zzJ = false;
            this.zzE = true;
            this.zzH = 0L;
            this.zzK = 0;
            for (zzwg zzwgVar : this.zzt) {
                zzwgVar.zzq(false);
            }
            zzuo zzuoVar = this.zzr;
            zzuoVar.getClass();
            zzuoVar.zzg(this);
        }
    }

    private final void zzX() {
        zzvo zzvoVar = new zzvo(this, this.zzd, this.zze, this.zzl, this, this.zzm);
        if (this.zzw) {
            zzek.zzf(zzY());
            long j = this.zzA;
            if (j != -9223372036854775807L && this.zzI > j) {
                this.zzL = true;
                this.zzI = -9223372036854775807L;
                return;
            }
            zzadu zzaduVar = this.zzz;
            zzaduVar.getClass();
            zzvo.zzf(zzvoVar, zzaduVar.zzg(this.zzI).zza.zzc, this.zzI);
            for (zzwg zzwgVar : this.zzt) {
                zzwgVar.zzu(this.zzI);
            }
            this.zzI = -9223372036854775807L;
        }
        this.zzK = zzQ();
        long zza = this.zzk.zza(zzvoVar, this, zzzb.zza(this.zzC));
        zzhb zzd = zzvo.zzd(zzvoVar);
        this.zzg.zzg(new zzui(zzvo.zzb(zzvoVar), zzd, zzd.zza, Collections.emptyMap(), zza, 0L, 0L), new zzun(1, -1, null, 0, null, zzfy.zzt(zzvo.zzc(zzvoVar)), zzfy.zzt(this.zzA)));
    }

    private final boolean zzY() {
        return this.zzI != -9223372036854775807L;
    }

    private final boolean zzZ() {
        return this.zzE || zzY();
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final void zzD() {
        this.zzv = true;
        this.zzp.post(this.zzn);
    }

    public final /* synthetic */ void zzE() {
        if (!this.zzM) {
            zzuo zzuoVar = this.zzr;
            zzuoVar.getClass();
            zzuoVar.zzg(this);
        }
    }

    public final /* synthetic */ void zzF() {
        this.zzG = true;
    }

    public final /* synthetic */ void zzG(zzadu zzaduVar) {
        zzadu zzadtVar;
        if (this.zzs == null) {
            zzadtVar = zzaduVar;
        } else {
            zzadtVar = new zzadt(-9223372036854775807L, 0L);
        }
        this.zzz = zzadtVar;
        if (zzaduVar.zza() == -9223372036854775807L && this.zzA != -9223372036854775807L) {
            this.zzz = new zzvn(this, this.zzz);
        }
        this.zzA = this.zzz.zza();
        boolean z = false;
        int i = 1;
        if (!this.zzG && zzaduVar.zza() == -9223372036854775807L) {
            z = true;
        }
        this.zzB = z;
        if (true == z) {
            i = 7;
        }
        this.zzC = i;
        this.zzi.zza(this.zzA, zzaduVar.zzh(), this.zzB);
        if (!this.zzw) {
            zzU();
        }
    }

    public final void zzH() {
        this.zzk.zzi(zzzb.zza(this.zzC));
    }

    public final void zzI(int i) {
        this.zzt[i].zzn();
        zzH();
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* bridge */ /* synthetic */ void zzJ(zzzg zzzgVar, long j, long j2, boolean z) {
        zzvo zzvoVar = (zzvo) zzzgVar;
        zzhx zze = zzvo.zze(zzvoVar);
        zzui zzuiVar = new zzui(zzvo.zzb(zzvoVar), zzvo.zzd(zzvoVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zzvo.zzb(zzvoVar);
        this.zzg.zzd(zzuiVar, new zzun(1, -1, null, 0, null, zzfy.zzt(zzvo.zzc(zzvoVar)), zzfy.zzt(this.zzA)));
        if (!z) {
            for (zzwg zzwgVar : this.zzt) {
                zzwgVar.zzq(false);
            }
            if (this.zzF > 0) {
                zzuo zzuoVar = this.zzr;
                zzuoVar.getClass();
                zzuoVar.zzg(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final /* bridge */ /* synthetic */ void zzK(zzzg zzzgVar, long j, long j2) {
        zzadu zzaduVar;
        long j3;
        if (this.zzA == -9223372036854775807L && (zzaduVar = this.zzz) != null) {
            boolean zzh = zzaduVar.zzh();
            long zzR = zzR(true);
            if (zzR == Long.MIN_VALUE) {
                j3 = 0;
            } else {
                j3 = zzR + WorkRequest.MIN_BACKOFF_MILLIS;
            }
            this.zzA = j3;
            this.zzi.zza(j3, zzh, this.zzB);
        }
        zzvo zzvoVar = (zzvo) zzzgVar;
        zzhx zze = zzvo.zze(zzvoVar);
        zzui zzuiVar = new zzui(zzvo.zzb(zzvoVar), zzvo.zzd(zzvoVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zzvo.zzb(zzvoVar);
        this.zzg.zze(zzuiVar, new zzun(1, -1, null, 0, null, zzfy.zzt(zzvo.zzc(zzvoVar)), zzfy.zzt(this.zzA)));
        this.zzL = true;
        zzuo zzuoVar = this.zzr;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzzh
    public final void zzL() {
        for (zzwg zzwgVar : this.zzt) {
            zzwgVar.zzp();
        }
        this.zzl.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzwf
    public final void zzM(zzam zzamVar) {
        this.zzp.post(this.zzn);
    }

    public final void zzN() {
        if (this.zzw) {
            for (zzwg zzwgVar : this.zzt) {
                zzwgVar.zzo();
            }
        }
        this.zzk.zzj(this);
        this.zzp.removeCallbacksAndMessages(null);
        this.zzr = null;
        this.zzM = true;
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final void zzO(final zzadu zzaduVar) {
        this.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvm
            @Override // java.lang.Runnable
            public final void run() {
                zzvt.this.zzG(zzaduVar);
            }
        });
    }

    public final boolean zzP(int i) {
        if (!zzZ() && this.zzt[i].zzy(this.zzL)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzmj zzmjVar) {
        boolean z;
        zzT();
        if (!this.zzz.zzh()) {
            return 0L;
        }
        zzads zzg = this.zzz.zzg(j);
        zzadv zzadvVar = zzg.zza;
        zzadv zzadvVar2 = zzg.zzb;
        long j2 = zzmjVar.zzf;
        if (j2 == 0) {
            if (zzmjVar.zzg == 0) {
                return j;
            }
            j2 = 0;
        }
        long j3 = zzadvVar.zzb;
        int i = zzfy.zza;
        long j4 = j - j2;
        long j5 = zzmjVar.zzg;
        long j6 = j + j5;
        long j7 = j ^ j6;
        long j8 = j5 ^ j6;
        if (((j ^ j2) & (j ^ j4)) < 0) {
            j4 = Long.MIN_VALUE;
        }
        if ((j7 & j8) < 0) {
            j6 = Long.MAX_VALUE;
        }
        boolean z2 = true;
        if (j4 <= j3 && j3 <= j6) {
            z = true;
        } else {
            z = false;
        }
        long j9 = zzadvVar2.zzb;
        if (j4 > j9 || j9 > j6) {
            z2 = false;
        }
        if (z && z2) {
            if (Math.abs(j3 - j) > Math.abs(j9 - j)) {
                return j9;
            }
        } else if (!z) {
            if (z2) {
                return j9;
            }
            return j4;
        }
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final long zzb() {
        long j;
        zzT();
        if (this.zzL || this.zzF == 0) {
            return Long.MIN_VALUE;
        }
        if (zzY()) {
            return this.zzI;
        }
        if (this.zzx) {
            int length = this.zzt.length;
            j = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                zzvs zzvsVar = this.zzy;
                if (zzvsVar.zzb[i] && zzvsVar.zzc[i] && !this.zzt[i].zzx()) {
                    j = Math.min(j, this.zzt[i].zzh());
                }
            }
        } else {
            j = Long.MAX_VALUE;
        }
        if (j == Long.MAX_VALUE) {
            j = zzR(false);
        }
        if (j == Long.MIN_VALUE) {
            return this.zzH;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final long zzc() {
        return zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        if (this.zzE) {
            if (this.zzL || zzQ() > this.zzK) {
                this.zzE = false;
                return this.zzH;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        boolean zzA;
        zzT();
        boolean[] zArr = this.zzy.zzb;
        if (true != this.zzz.zzh()) {
            j = 0;
        }
        this.zzE = false;
        this.zzH = j;
        if (zzY()) {
            this.zzI = j;
            return j;
        }
        if (this.zzC != 7) {
            int length = this.zzt.length;
            for (int i = 0; i < length; i++) {
                zzwg zzwgVar = this.zzt[i];
                if (this.zzq) {
                    zzA = zzwgVar.zzz(zzwgVar.zza());
                } else {
                    zzA = zzwgVar.zzA(j, false);
                }
                if (zzA || (!zArr[i] && this.zzx)) {
                }
            }
            return j;
        }
        this.zzJ = false;
        this.zzI = j;
        this.zzL = false;
        zzzk zzzkVar = this.zzk;
        if (zzzkVar.zzl()) {
            for (zzwg zzwgVar2 : this.zzt) {
                zzwgVar2.zzk();
            }
            this.zzk.zzg();
        } else {
            zzzkVar.zzh();
            for (zzwg zzwgVar3 : this.zzt) {
                zzwgVar3.zzq(false);
            }
        }
        return j;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (r2 == 0) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d8  */
    @Override // com.google.android.gms.internal.ads.zzup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzf(zzyi[] zzyiVarArr, boolean[] zArr, zzwh[] zzwhVarArr, boolean[] zArr2, long j) {
        boolean z;
        int i;
        zzyi zzyiVar;
        boolean z2;
        boolean z3;
        int i2;
        zzT();
        zzvs zzvsVar = this.zzy;
        zzws zzwsVar = zzvsVar.zza;
        boolean[] zArr3 = zzvsVar.zzc;
        int i3 = this.zzF;
        int i4 = 0;
        for (int i5 = 0; i5 < zzyiVarArr.length; i5++) {
            zzwh zzwhVar = zzwhVarArr[i5];
            if (zzwhVar != null && (zzyiVarArr[i5] == null || !zArr[i5])) {
                i2 = ((zzvq) zzwhVar).zzb;
                zzek.zzf(zArr3[i2]);
                this.zzF--;
                zArr3[i2] = false;
                zzwhVarArr[i5] = null;
            }
        }
        if (!this.zzq) {
            if (!this.zzD) {
                if (j == 0) {
                    j = 0;
                }
                z = true;
            }
            for (i = 0; i < zzyiVarArr.length; i++) {
                if (zzwhVarArr[i] == null && (zzyiVar = zzyiVarArr[i]) != null) {
                    if (zzyiVar.zzc() == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzek.zzf(z2);
                    if (zzyiVar.zza(0) == 0) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zzek.zzf(z3);
                    int zza = zzwsVar.zza(zzyiVar.zze());
                    zzek.zzf(!zArr3[zza]);
                    this.zzF++;
                    zArr3[zza] = true;
                    zzwhVarArr[i] = new zzvq(this, zza);
                    zArr2[i] = true;
                    if (!z) {
                        zzwg zzwgVar = this.zzt[zza];
                        if (zzwgVar.zzb() != 0 && !zzwgVar.zzA(j, true)) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                }
            }
            if (this.zzF != 0) {
                this.zzJ = false;
                this.zzE = false;
                if (this.zzk.zzl()) {
                    zzwg[] zzwgVarArr = this.zzt;
                    int length = zzwgVarArr.length;
                    while (i4 < length) {
                        zzwgVarArr[i4].zzk();
                        i4++;
                    }
                    this.zzk.zzg();
                } else {
                    for (zzwg zzwgVar2 : this.zzt) {
                        zzwgVar2.zzq(false);
                    }
                }
            } else if (z) {
                j = zze(j);
                while (i4 < zzwhVarArr.length) {
                    if (zzwhVarArr[i4] != null) {
                        zArr2[i4] = true;
                    }
                    i4++;
                }
            }
            this.zzD = true;
            return j;
        }
        z = false;
        while (i < zzyiVarArr.length) {
        }
        if (this.zzF != 0) {
        }
        this.zzD = true;
        return j;
    }

    public final int zzg(int i, zzlb zzlbVar, zzih zzihVar, int i2) {
        if (zzZ()) {
            return -3;
        }
        zzV(i);
        int zze = this.zzt[i].zze(zzlbVar, zzihVar, i2, this.zzL);
        if (zze == -3) {
            zzW(i);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzws zzh() {
        zzT();
        return this.zzy.zza;
    }

    public final int zzi(int i, long j) {
        if (zzZ()) {
            return 0;
        }
        zzV(i);
        zzwg zzwgVar = this.zzt[i];
        int zzc2 = zzwgVar.zzc(j, this.zzL);
        zzwgVar.zzw(zzc2);
        if (zzc2 == 0) {
            zzW(i);
            return 0;
        }
        return zzc2;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        if (!this.zzq) {
            zzT();
            if (!zzY()) {
                boolean[] zArr = this.zzy.zzc;
                int length = this.zzt.length;
                for (int i = 0; i < length; i++) {
                    this.zzt[i].zzj(j, false, zArr[i]);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() {
        zzH();
        if (this.zzL && !this.zzw) {
            throw zzcc.zza(new ObfuscatedString(new long[]{-7979134430235389245L, 2286704662565273180L, 606674154220450870L, -6392078954004169456L, 7063246242285683327L, -5334079758179348852L, -5578943919174132999L}).toString(), null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.zzr = zzuoVar;
        this.zzm.zze();
        zzX();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final void zzm(long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final boolean zzo(zzlg zzlgVar) {
        if (!this.zzL) {
            zzzk zzzkVar = this.zzk;
            if (!zzzkVar.zzk() && !this.zzJ) {
                if (!this.zzw || this.zzF != 0) {
                    boolean zze = this.zzm.zze();
                    if (!zzzkVar.zzl()) {
                        zzX();
                        return true;
                    }
                    return zze;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final boolean zzp() {
        return this.zzk.zzl() && this.zzm.zzd();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    @Override // com.google.android.gms.internal.ads.zzzc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ zzze zzu(zzzg zzzgVar, long j, long j2, IOException iOException, int i) {
        long j3;
        boolean z;
        zzze zzb2;
        zzadu zzaduVar;
        boolean zzc2;
        zzvo zzvoVar = (zzvo) zzzgVar;
        zzhx zze = zzvo.zze(zzvoVar);
        zzui zzuiVar = new zzui(zzvo.zzb(zzvoVar), zzvo.zzd(zzvoVar), zze.zzh(), zze.zzi(), j, j2, zze.zzg());
        zzvo.zzc(zzvoVar);
        int i2 = zzfy.zza;
        if (!(iOException instanceof zzcc) && !(iOException instanceof FileNotFoundException) && !(iOException instanceof zzho) && !(iOException instanceof zzzj)) {
            for (Throwable th = iOException; th != null; th = th.getCause()) {
                if (!(th instanceof zzgx) || ((zzgx) th).zza != 2008) {
                }
            }
            j3 = Math.min((i - 1) * 1000, 5000);
            if (j3 != -9223372036854775807L) {
                zzb2 = zzzk.zzd;
            } else {
                int zzQ = zzQ();
                if (zzQ > this.zzK) {
                    z = true;
                } else {
                    z = false;
                }
                if (!this.zzG && ((zzaduVar = this.zzz) == null || zzaduVar.zza() == -9223372036854775807L)) {
                    boolean z2 = this.zzw;
                    if (z2 && !zzZ()) {
                        this.zzJ = true;
                        zzb2 = zzzk.zzc;
                    } else {
                        this.zzE = z2;
                        this.zzH = 0L;
                        this.zzK = 0;
                        for (zzwg zzwgVar : this.zzt) {
                            zzwgVar.zzq(false);
                        }
                        zzvo.zzf(zzvoVar, 0L, 0L);
                    }
                } else {
                    this.zzK = zzQ;
                }
                zzb2 = zzzk.zzb(z, j3);
            }
            zzc2 = zzb2.zzc();
            this.zzg.zzf(zzuiVar, new zzun(1, -1, null, 0, null, zzfy.zzt(zzvo.zzc(zzvoVar)), zzfy.zzt(this.zzA)), iOException, true ^ zzc2);
            if (!zzc2) {
                zzvo.zzb(zzvoVar);
            }
            return zzb2;
        }
        j3 = -9223372036854775807L;
        if (j3 != -9223372036854775807L) {
        }
        zzc2 = zzb2.zzc();
        this.zzg.zzf(zzuiVar, new zzun(1, -1, null, 0, null, zzfy.zzt(zzvo.zzc(zzvoVar)), zzfy.zzt(this.zzA)), iOException, true ^ zzc2);
        if (!zzc2) {
        }
        return zzb2;
    }

    public final zzaea zzv() {
        return zzS(new zzvr(0, true));
    }

    @Override // com.google.android.gms.internal.ads.zzacx
    public final zzaea zzw(int i, int i2) {
        return zzS(new zzvr(i, false));
    }
}
