package com.google.android.gms.internal.ads;

import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.ExecutorService;
import kotlin.time.DurationKt;

/* loaded from: classes2.dex */
public final class zzrd implements zzqb {
    private static final Object zza = new Object();

    @Nullable
    @GuardedBy("releaseExecutorLock")
    private static ExecutorService zzb;

    @GuardedBy("releaseExecutorLock")
    private static int zzc;
    private long zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private int zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private float zzI;

    @Nullable
    private ByteBuffer zzJ;
    private int zzK;

    @Nullable
    private ByteBuffer zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private int zzP;
    private zzl zzQ;

    @Nullable
    private zzqp zzR;
    private long zzS;
    private boolean zzT;
    private boolean zzU;
    private long zzV;
    private long zzW;
    private Handler zzX;
    private final zzqt zzY;
    private final zzqj zzZ;
    private final zzqg zzd;
    private final zzrn zze;
    private final zzgaa zzf;
    private final zzgaa zzg;
    private final zzeo zzh;
    private final zzqf zzi;
    private final ArrayDeque zzj;
    private zzrb zzk;
    private final zzqw zzl;
    private final zzqw zzm;
    private final zzqq zzn;

    @Nullable
    private zzpb zzo;

    @Nullable
    private zzpy zzp;

    @Nullable
    private zzqs zzq;
    private zzqs zzr;
    private zzdq zzs;

    @Nullable
    private AudioTrack zzt;
    private zzpd zzu;
    private zzk zzv = zzk.zza;

    @Nullable
    private zzqv zzw;
    private zzqv zzx;
    private zzcg zzy;
    private boolean zzz;

    public /* synthetic */ zzrd(zzqr zzqrVar, zzrc zzrcVar) {
        zzpd zzpdVar;
        zzqt zzqtVar;
        zzqq zzqqVar;
        zzqj zzqjVar;
        zzpdVar = zzqrVar.zza;
        this.zzu = zzpdVar;
        zzqtVar = zzqrVar.zzd;
        this.zzY = zzqtVar;
        int i = zzfy.zza;
        zzqqVar = zzqrVar.zzc;
        this.zzn = zzqqVar;
        zzqjVar = zzqrVar.zze;
        zzqjVar.getClass();
        this.zzZ = zzqjVar;
        zzeo zzeoVar = new zzeo(zzel.zza);
        this.zzh = zzeoVar;
        zzeoVar.zze();
        this.zzi = new zzqf(new zzqy(this, null));
        zzqg zzqgVar = new zzqg();
        this.zzd = zzqgVar;
        zzrn zzrnVar = new zzrn();
        this.zze = zzrnVar;
        this.zzf = zzgaa.zzo(new zzdx(), zzqgVar, zzrnVar);
        this.zzg = zzgaa.zzm(new zzrm());
        this.zzI = 1.0f;
        this.zzP = 0;
        this.zzQ = new zzl(0, 0.0f);
        zzcg zzcgVar = zzcg.zza;
        this.zzx = new zzqv(zzcgVar, 0L, 0L, null);
        this.zzy = zzcgVar;
        this.zzz = false;
        this.zzj = new ArrayDeque();
        this.zzl = new zzqw(100L);
        this.zzm = new zzqw(100L);
    }

    public static /* bridge */ /* synthetic */ AudioTrack zzD(zzrd zzrdVar) {
        return zzrdVar.zzt;
    }

    public static /* bridge */ /* synthetic */ zzpy zzE(zzrd zzrdVar) {
        return zzrdVar.zzp;
    }

    public static /* synthetic */ void zzF(zzrd zzrdVar) {
        if (zzrdVar.zzW >= 1000000) {
            ((zzri) zzrdVar.zzp).zza.zzn = true;
        }
        zzrdVar.zzW = 0L;
    }

    public static /* synthetic */ void zzG(AudioTrack audioTrack, final zzpy zzpyVar, Handler handler, final zzpv zzpvVar, zzeo zzeoVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzpyVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzql
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzpt zzptVar;
                        zzptVar = ((zzri) zzpy.this).zza.zzc;
                        zzptVar.zzd(zzpvVar);
                    }
                });
            }
            zzeoVar.zze();
            synchronized (zza) {
                try {
                    int i = zzc - 1;
                    zzc = i;
                    if (i == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            if (zzpyVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzql
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzpt zzptVar;
                        zzptVar = ((zzri) zzpy.this).zza.zzc;
                        zzptVar.zzd(zzpvVar);
                    }
                });
            }
            zzeoVar.zze();
            synchronized (zza) {
                try {
                    int i2 = zzc - 1;
                    zzc = i2;
                    if (i2 == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzH(zzrd zzrdVar) {
        return zzrdVar.zzO;
    }

    public final long zzI() {
        if (this.zzr.zzc == 0) {
            return this.zzA / r0.zzb;
        }
        return this.zzB;
    }

    public final long zzJ() {
        zzqs zzqsVar = this.zzr;
        if (zzqsVar.zzc == 0) {
            long j = this.zzC;
            long j2 = zzqsVar.zzd;
            int i = zzfy.zza;
            return ((j + j2) - 1) / j2;
        }
        return this.zzD;
    }

    private final AudioTrack zzK(zzqs zzqsVar) {
        try {
            return zzqsVar.zza(this.zzv, this.zzP);
        } catch (zzpx e) {
            zzpy zzpyVar = this.zzp;
            if (zzpyVar != null) {
                zzpyVar.zza(e);
            }
            throw e;
        }
    }

    private final void zzL(long j) {
        zzcg zzcgVar;
        boolean z;
        zzpt zzptVar;
        if (zzW()) {
            zzqt zzqtVar = this.zzY;
            zzcgVar = this.zzy;
            zzqtVar.zzc(zzcgVar);
        } else {
            zzcgVar = zzcg.zza;
        }
        zzcg zzcgVar2 = zzcgVar;
        this.zzy = zzcgVar2;
        if (zzW()) {
            zzqt zzqtVar2 = this.zzY;
            z = this.zzz;
            zzqtVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzz = z;
        this.zzj.add(new zzqv(zzcgVar2, Math.max(0L, j), zzfy.zzr(zzJ(), this.zzr.zze), null));
        zzR();
        zzpy zzpyVar = this.zzp;
        if (zzpyVar != null) {
            boolean z2 = this.zzz;
            zzptVar = ((zzri) zzpyVar).zza.zzc;
            zzptVar.zzw(z2);
        }
    }

    private final void zzM() {
        if (!this.zzr.zzc()) {
            return;
        }
        this.zzT = true;
    }

    private final void zzN() {
        if (!this.zzN) {
            this.zzN = true;
            this.zzi.zzb(zzJ());
            this.zzt.stop();
        }
    }

    private final void zzO(long j) {
        ByteBuffer zzb2;
        if (this.zzs.zzh()) {
            while (!this.zzs.zzg()) {
                do {
                    zzb2 = this.zzs.zzb();
                    if (zzb2.hasRemaining()) {
                        zzS(zzb2, j);
                    } else {
                        ByteBuffer byteBuffer = this.zzJ;
                        if (byteBuffer != null && byteBuffer.hasRemaining()) {
                            this.zzs.zze(this.zzJ);
                        } else {
                            return;
                        }
                    }
                } while (!zzb2.hasRemaining());
                return;
            }
            return;
        }
        ByteBuffer byteBuffer2 = this.zzJ;
        if (byteBuffer2 == null) {
            byteBuffer2 = zzdt.zza;
        }
        zzS(byteBuffer2, j);
    }

    private final void zzP(zzcg zzcgVar) {
        zzqv zzqvVar = new zzqv(zzcgVar, -9223372036854775807L, -9223372036854775807L, null);
        if (zzU()) {
            this.zzw = zzqvVar;
        } else {
            this.zzx = zzqvVar;
        }
    }

    private final void zzQ() {
        if (!zzU()) {
            return;
        }
        int i = zzfy.zza;
        this.zzt.setVolume(this.zzI);
    }

    private final void zzR() {
        zzdq zzdqVar = this.zzr.zzi;
        this.zzs = zzdqVar;
        zzdqVar.zzc();
    }

    private final void zzS(ByteBuffer byteBuffer, long j) {
        zzpy zzpyVar;
        zzme zzmeVar;
        zzme zzmeVar2;
        boolean z;
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.zzL;
            boolean z2 = false;
            if (byteBuffer2 != null) {
                if (byteBuffer2 == byteBuffer) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zzd(z);
            } else {
                this.zzL = byteBuffer;
                int i = zzfy.zza;
            }
            int remaining = byteBuffer.remaining();
            int i2 = zzfy.zza;
            int write = this.zzt.write(byteBuffer, remaining, 1);
            this.zzS = SystemClock.elapsedRealtime();
            if (write < 0) {
                if ((zzfy.zza >= 24 && write == -6) || write == -32) {
                    if (zzJ() <= 0) {
                        if (zzV(this.zzt)) {
                            zzM();
                        }
                    }
                    z2 = true;
                }
                zzqa zzqaVar = new zzqa(write, this.zzr.zza, z2);
                zzpy zzpyVar2 = this.zzp;
                if (zzpyVar2 != null) {
                    zzpyVar2.zza(zzqaVar);
                }
                if (!zzqaVar.zzb) {
                    this.zzm.zzb(zzqaVar);
                    return;
                } else {
                    this.zzu = zzpd.zza;
                    throw zzqaVar;
                }
            }
            this.zzm.zza();
            if (zzV(this.zzt)) {
                if (this.zzD > 0) {
                    this.zzU = false;
                }
                if (this.zzO && (zzpyVar = this.zzp) != null && write < remaining) {
                    zzrj zzrjVar = ((zzri) zzpyVar).zza;
                    zzmeVar = zzrjVar.zzm;
                    if (zzmeVar != null) {
                        zzmeVar2 = zzrjVar.zzm;
                        zzmeVar2.zza();
                    }
                }
            }
            int i3 = this.zzr.zzc;
            if (i3 == 0) {
                this.zzC += write;
            }
            if (write == remaining) {
                if (i3 != 0) {
                    if (byteBuffer == this.zzJ) {
                        z2 = true;
                    }
                    zzek.zzf(z2);
                    this.zzD = (this.zzE * this.zzK) + this.zzD;
                }
                this.zzL = null;
            }
        }
    }

    private final boolean zzT() {
        if (!this.zzs.zzh()) {
            ByteBuffer byteBuffer = this.zzL;
            if (byteBuffer == null) {
                return true;
            }
            zzS(byteBuffer, Long.MIN_VALUE);
            if (this.zzL != null) {
                return false;
            }
            return true;
        }
        this.zzs.zzd();
        zzO(Long.MIN_VALUE);
        if (!this.zzs.zzg()) {
            return false;
        }
        ByteBuffer byteBuffer2 = this.zzL;
        if (byteBuffer2 != null && byteBuffer2.hasRemaining()) {
            return false;
        }
        return true;
    }

    private final boolean zzU() {
        return this.zzt != null;
    }

    private static boolean zzV(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (zzfy.zza >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
            return false;
        }
        return false;
    }

    private final boolean zzW() {
        zzqs zzqsVar = this.zzr;
        if (zzqsVar.zzc == 0) {
            int i = zzqsVar.zza.zzB;
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final int zza(zzam zzamVar) {
        if (new ObfuscatedString(new long[]{6069235050147260691L, -2282286797242913420L, -2038638270689496502L}).toString().equals(zzamVar.zzm)) {
            if (!zzfy.zzH(zzamVar.zzB)) {
                int i = zzamVar.zzB;
                zzff.zzf(new ObfuscatedString(new long[]{4648185996541821995L, 4089807138595114315L, -5478337645788151164L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6890520341516431630L, -4408589227911537698L, 2877362804524866568L, -8108651158412947951L}), new StringBuilder(), i));
                return 0;
            }
            if (zzamVar.zzB == 2) {
                return 2;
            }
            return 1;
        }
        if (this.zzu.zza(zzamVar, this.zzv) == null) {
            return 0;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final long zzb(boolean z) {
        long zzo;
        if (zzU() && !this.zzG) {
            long min = Math.min(this.zzi.zza(z), zzfy.zzr(zzJ(), this.zzr.zze));
            while (!this.zzj.isEmpty() && min >= ((zzqv) this.zzj.getFirst()).zzc) {
                this.zzx = (zzqv) this.zzj.remove();
            }
            zzqv zzqvVar = this.zzx;
            long j = min - zzqvVar.zzc;
            if (zzqvVar.zza.equals(zzcg.zza)) {
                zzo = this.zzx.zzb + j;
            } else if (this.zzj.isEmpty()) {
                zzo = this.zzY.zza(j) + this.zzx.zzb;
            } else {
                zzqv zzqvVar2 = (zzqv) this.zzj.getFirst();
                zzo = zzqvVar2.zzb - zzfy.zzo(zzqvVar2.zzc - min, this.zzx.zza.zzc);
            }
            long zzb2 = this.zzY.zzb();
            long zzr = zzfy.zzr(zzb2, this.zzr.zze) + zzo;
            long j2 = this.zzV;
            if (zzb2 > j2) {
                long zzr2 = zzfy.zzr(zzb2 - j2, this.zzr.zze);
                this.zzV = zzb2;
                this.zzW += zzr2;
                if (this.zzX == null) {
                    this.zzX = new Handler(Looper.myLooper());
                }
                this.zzX.removeCallbacksAndMessages(null);
                this.zzX.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqm
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzrd.zzF(zzrd.this);
                    }
                }, 100L);
            }
            return zzr;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzcg zzc() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final zzpg zzd(zzam zzamVar) {
        if (this.zzT) {
            return zzpg.zza;
        }
        return this.zzZ.zza(zzamVar, this.zzv);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zze(zzam zzamVar, int i, @Nullable int[] iArr) {
        int intValue;
        zzdq zzdqVar;
        int i2;
        int intValue2;
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        int i7;
        int max;
        int zzb2;
        if (new ObfuscatedString(new long[]{-920798246140896315L, 3776508930187008723L, -4158511402076831139L}).toString().equals(zzamVar.zzm)) {
            zzek.zzd(zzfy.zzH(zzamVar.zzB));
            i3 = zzfy.zzl(zzamVar.zzB, zzamVar.zzz);
            zzfzx zzfzxVar = new zzfzx();
            zzfzxVar.zzh(this.zzf);
            zzfzxVar.zzg(this.zzY.zze());
            zzdq zzdqVar2 = new zzdq(zzfzxVar.zzi());
            if (zzdqVar2.equals(this.zzs)) {
                zzdqVar2 = this.zzs;
            }
            this.zze.zzq(zzamVar.zzC, zzamVar.zzD);
            this.zzd.zzo(iArr);
            try {
                zzdr zza2 = zzdqVar2.zza(new zzdr(zzamVar.zzA, zzamVar.zzz, zzamVar.zzB));
                intValue = zza2.zzd;
                i2 = zza2.zzb;
                int i8 = zza2.zzc;
                intValue2 = zzfy.zzg(i8);
                zzdqVar = zzdqVar2;
                i5 = zzfy.zzl(intValue, i8);
                i4 = 0;
            } catch (zzds e) {
                throw new zzpw(e, zzamVar);
            }
        } else {
            zzdq zzdqVar3 = new zzdq(zzgaa.zzl());
            int i9 = zzamVar.zzA;
            zzpg zzpgVar = zzpg.zza;
            Pair zza3 = this.zzu.zza(zzamVar, this.zzv);
            if (zza3 != null) {
                intValue = ((Integer) zza3.first).intValue();
                zzdqVar = zzdqVar3;
                i2 = i9;
                intValue2 = ((Integer) zza3.second).intValue();
                i3 = -1;
                i4 = 2;
                i5 = -1;
            } else {
                throw new zzpw(new ObfuscatedString(new long[]{8285115512421943350L, -7869571131987962707L, 6568630251081875298L, 5943550056379669052L, -4688390194524854168L, 8254691436572268845L}).toString().concat(String.valueOf(zzamVar)), zzamVar);
            }
        }
        if (intValue != 0) {
            if (intValue2 != 0) {
                int minBufferSize = AudioTrack.getMinBufferSize(i2, intValue2, intValue);
                if (minBufferSize != -2) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zzf(z);
                if (i5 != -1) {
                    i6 = i5;
                } else {
                    i6 = 1;
                }
                int i10 = zzamVar.zzi;
                int i11 = 250000;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (intValue == 5) {
                            i11 = 500000;
                        } else if (intValue == 8) {
                            i11 = DurationKt.NANOS_IN_MILLIS;
                            intValue = 8;
                        }
                        if (i10 != -1) {
                            zzb2 = zzgco.zza(i10, 8, RoundingMode.CEILING);
                        } else {
                            zzb2 = zzrf.zzb(intValue);
                        }
                        i7 = i4;
                        max = zzgcu.zza((i11 * zzb2) / 1000000);
                    } else {
                        i7 = i4;
                        max = zzgcu.zza((zzrf.zzb(intValue) * 50000000) / 1000000);
                    }
                } else {
                    i7 = i4;
                    max = Math.max(zzrf.zza(250000, i2, i6), Math.min(minBufferSize * 4, zzrf.zza(750000, i2, i6)));
                }
                this.zzT = false;
                zzqs zzqsVar = new zzqs(zzamVar, i3, i7, i5, i2, intValue2, intValue, (((Math.max(minBufferSize, max) + i6) - 1) / i6) * i6, zzdqVar, false, false, false);
                if (zzU()) {
                    this.zzq = zzqsVar;
                    return;
                } else {
                    this.zzr = zzqsVar;
                    return;
                }
            }
            String valueOf = String.valueOf(zzamVar);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-1486914687338481892L, 5856738444610736486L, -780797366999316199L, 420168400820968150L, -2020891498036289988L, -2534796781348083357L}).toString());
            sb.append(i4);
            throw new zzpw(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-6976311847367522394L, 553517647037320340L}), sb, valueOf), zzamVar);
        }
        String valueOf2 = String.valueOf(zzamVar);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{6304073696733591997L, 14023893432014112L, 5585003608380213398L, -6892226503029629826L, -561480247195205387L}).toString());
        sb2.append(i4);
        throw new zzpw(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2920718608114393997L, 157648376065074196L}), sb2, valueOf2), zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzf() {
        if (zzU()) {
            this.zzA = 0L;
            this.zzB = 0L;
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzU = false;
            this.zzE = 0;
            this.zzx = new zzqv(this.zzy, 0L, 0L, null);
            this.zzH = 0L;
            this.zzw = null;
            this.zzj.clear();
            this.zzJ = null;
            this.zzK = 0;
            this.zzL = null;
            this.zzN = false;
            this.zzM = false;
            this.zze.zzp();
            zzR();
            if (this.zzi.zzh()) {
                this.zzt.pause();
            }
            if (zzV(this.zzt)) {
                zzrb zzrbVar = this.zzk;
                zzrbVar.getClass();
                zzrbVar.zzb(this.zzt);
            }
            int i = zzfy.zza;
            final zzpv zzb2 = this.zzr.zzb();
            zzqs zzqsVar = this.zzq;
            if (zzqsVar != null) {
                this.zzr = zzqsVar;
                this.zzq = null;
            }
            this.zzi.zzc();
            final AudioTrack audioTrack = this.zzt;
            final zzeo zzeoVar = this.zzh;
            final zzpy zzpyVar = this.zzp;
            zzeoVar.zzc();
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                try {
                    if (zzb == null) {
                        zzb = zzfy.zzD(new ObfuscatedString(new long[]{-517899281079927106L, -2850169332594981835L, 8120739286908126482L, -3811834765836457586L, -729353990163078711L, 4889686049119352482L}).toString());
                    }
                    zzc++;
                    zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqk
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzrd.zzG(audioTrack, zzpyVar, handler, zzb2, zzeoVar);
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.zzt = null;
        }
        this.zzm.zza();
        this.zzl.zza();
        this.zzV = 0L;
        this.zzW = 0L;
        Handler handler2 = this.zzX;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzg() {
        this.zzF = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzh() {
        this.zzO = false;
        if (zzU()) {
            if (this.zzi.zzk() || zzV(this.zzt)) {
                this.zzt.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzi() {
        this.zzO = true;
        if (zzU()) {
            this.zzi.zzf();
            this.zzt.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzj() {
        if (!this.zzM && zzU() && zzT()) {
            zzN();
            this.zzM = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzk() {
        zzf();
        zzgaa zzgaaVar = this.zzf;
        int size = zzgaaVar.size();
        for (int i = 0; i < size; i++) {
            ((zzdt) zzgaaVar.get(i)).zzf();
        }
        zzgaa zzgaaVar2 = this.zzg;
        int size2 = zzgaaVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzdt) zzgaaVar2.get(i2)).zzf();
        }
        zzdq zzdqVar = this.zzs;
        if (zzdqVar != null) {
            zzdqVar.zzf();
        }
        this.zzO = false;
        this.zzT = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzl(zzk zzkVar) {
        if (this.zzv.equals(zzkVar)) {
            return;
        }
        this.zzv = zzkVar;
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzm(int i) {
        if (this.zzP != i) {
            this.zzP = i;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzn(zzl zzlVar) {
        if (this.zzQ.equals(zzlVar)) {
            return;
        }
        if (this.zzt != null) {
            int i = this.zzQ.zza;
        }
        this.zzQ = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzo(zzel zzelVar) {
        this.zzi.zze(zzelVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzp(zzpy zzpyVar) {
        this.zzp = zzpyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    @RequiresApi(29)
    public final void zzq(int i, int i2) {
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzV(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzr(zzcg zzcgVar) {
        this.zzy = new zzcg(Math.max(0.1f, Math.min(zzcgVar.zzc, 8.0f)), Math.max(0.1f, Math.min(zzcgVar.zzd, 8.0f)));
        zzP(zzcgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzs(@Nullable zzpb zzpbVar) {
        this.zzo = zzpbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    @RequiresApi(23)
    public final void zzt(@Nullable AudioDeviceInfo audioDeviceInfo) {
        zzqp zzqpVar;
        if (audioDeviceInfo == null) {
            zzqpVar = null;
        } else {
            zzqpVar = new zzqp(audioDeviceInfo);
        }
        this.zzR = zzqpVar;
        AudioTrack audioTrack = this.zzt;
        if (audioTrack != null) {
            zzqn.zza(audioTrack, zzqpVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzu(boolean z) {
        this.zzz = z;
        zzP(this.zzy);
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final void zzv(float f) {
        if (this.zzI != f) {
            this.zzI = f;
            zzQ();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x019a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02d8 A[RETURN] */
    @Override // com.google.android.gms.internal.ads.zzqb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzw(ByteBuffer byteBuffer, long j, int i) {
        boolean z;
        AudioTrack zzK;
        boolean z2;
        zzpt zzptVar;
        zzpb zzpbVar;
        zzqs zzqsVar;
        boolean z3;
        boolean z4;
        int zza2;
        int i2;
        int i3;
        int i4;
        byte b;
        int i5;
        int i6;
        int i7;
        ByteBuffer byteBuffer2 = this.zzJ;
        if (byteBuffer2 == null || byteBuffer == byteBuffer2) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        if (this.zzq != null) {
            if (!zzT()) {
                return false;
            }
            zzqs zzqsVar2 = this.zzq;
            zzqs zzqsVar3 = this.zzr;
            if (zzqsVar3.zzc == zzqsVar2.zzc && zzqsVar3.zzg == zzqsVar2.zzg && zzqsVar3.zze == zzqsVar2.zze && zzqsVar3.zzf == zzqsVar2.zzf && zzqsVar3.zzd == zzqsVar2.zzd) {
                this.zzr = zzqsVar2;
                this.zzq = null;
                AudioTrack audioTrack = this.zzt;
                if (audioTrack != null && zzV(audioTrack)) {
                    boolean z5 = this.zzr.zzk;
                }
            } else {
                zzN();
                if (zzx()) {
                    return false;
                }
                zzf();
            }
            zzL(j);
        }
        if (!zzU()) {
            try {
                if (!this.zzh.zzd()) {
                    return false;
                }
                try {
                    zzqsVar = this.zzr;
                } catch (zzpx e) {
                    zzqs zzqsVar4 = this.zzr;
                    if (zzqsVar4.zzh > 1000000) {
                        zzqs zzqsVar5 = new zzqs(zzqsVar4.zza, zzqsVar4.zzb, zzqsVar4.zzc, zzqsVar4.zzd, zzqsVar4.zze, zzqsVar4.zzf, zzqsVar4.zzg, DurationKt.NANOS_IN_MILLIS, zzqsVar4.zzi, false, false, false);
                        try {
                            zzK = zzK(zzqsVar5);
                            this.zzr = zzqsVar5;
                        } catch (zzpx e2) {
                            e.addSuppressed(e2);
                            zzM();
                            throw e;
                        }
                    }
                    zzM();
                    throw e;
                }
                if (zzqsVar != null) {
                    zzK = zzK(zzqsVar);
                    this.zzt = zzK;
                    if (zzV(zzK)) {
                        AudioTrack audioTrack2 = this.zzt;
                        if (this.zzk == null) {
                            this.zzk = new zzrb(this);
                        }
                        this.zzk.zza(audioTrack2);
                        boolean z6 = this.zzr.zzk;
                    }
                    int i8 = zzfy.zza;
                    if (i8 >= 31 && (zzpbVar = this.zzo) != null) {
                        zzqo.zza(this.zzt, zzpbVar);
                    }
                    this.zzP = this.zzt.getAudioSessionId();
                    zzqf zzqfVar = this.zzi;
                    AudioTrack audioTrack3 = this.zzt;
                    zzqs zzqsVar6 = this.zzr;
                    if (zzqsVar6.zzc == 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zzqfVar.zzd(audioTrack3, z2, zzqsVar6.zzg, zzqsVar6.zzd, zzqsVar6.zzh);
                    zzQ();
                    int i9 = this.zzQ.zza;
                    zzqp zzqpVar = this.zzR;
                    if (zzqpVar != null && i8 >= 23) {
                        zzqn.zza(this.zzt, zzqpVar);
                    }
                    this.zzG = true;
                    zzpy zzpyVar = this.zzp;
                    if (zzpyVar != null) {
                        zzpv zzb2 = this.zzr.zzb();
                        zzptVar = ((zzri) zzpyVar).zza.zzc;
                        zzptVar.zzc(zzb2);
                    }
                } else {
                    throw null;
                }
            } catch (zzpx e3) {
                if (!e3.zzb) {
                    this.zzl.zzb(e3);
                    return false;
                }
                throw e3;
            }
        }
        this.zzl.zza();
        if (this.zzG) {
            this.zzH = Math.max(0L, j);
            this.zzF = false;
            this.zzG = false;
            zzL(j);
            if (this.zzO) {
                zzi();
            }
        }
        if (!this.zzi.zzj(zzJ())) {
            return false;
        }
        if (this.zzJ == null) {
            if (byteBuffer.order() == ByteOrder.LITTLE_ENDIAN) {
                z3 = true;
            } else {
                z3 = false;
            }
            zzek.zzd(z3);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            zzqs zzqsVar7 = this.zzr;
            if (zzqsVar7.zzc != 0 && this.zzE == 0) {
                int i10 = zzqsVar7.zzg;
                switch (i10) {
                    case 5:
                    case 6:
                    case 18:
                        z4 = true;
                        zza2 = zzabv.zza(byteBuffer);
                        this.zzE = zza2;
                        if (zza2 == 0) {
                            return z4;
                        }
                        break;
                    case 7:
                    case 8:
                        if (byteBuffer.getInt(0) != -233094848) {
                            if (byteBuffer.getInt(0) != -398277519) {
                                if (byteBuffer.getInt(0) == 622876772) {
                                    zza2 = 4096;
                                    z4 = true;
                                } else {
                                    int position = byteBuffer.position();
                                    byte b2 = byteBuffer.get(position);
                                    if (b2 != -2) {
                                        if (b2 != -1) {
                                            if (b2 != 31) {
                                                i4 = (byteBuffer.get(position + 4) & 1) << 6;
                                                i5 = byteBuffer.get(position + 5) & 252;
                                                i3 = 2;
                                                i2 = (i5 >> i3) | i4;
                                                z4 = true;
                                            } else {
                                                i3 = 2;
                                                i4 = (byteBuffer.get(position + 5) & 7) << 4;
                                                b = byteBuffer.get(position + 6);
                                            }
                                        } else {
                                            i3 = 2;
                                            i4 = (byteBuffer.get(position + 4) & 7) << 4;
                                            b = byteBuffer.get(position + 7);
                                        }
                                        i5 = b & 60;
                                        i2 = (i5 >> i3) | i4;
                                        z4 = true;
                                    } else {
                                        z4 = true;
                                        i2 = ((byteBuffer.get(position + 5) & 1) << 6) | ((byteBuffer.get(position + 4) & 252) >> 2);
                                    }
                                    zza2 = (i2 + (z4 ? 1 : 0)) * 32;
                                }
                            }
                            zza2 = 1024;
                            z4 = true;
                        } else {
                            z4 = true;
                            zza2 = 1024;
                        }
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 9:
                        zza2 = zzadp.zzc(zzfy.zzh(byteBuffer, byteBuffer.position()));
                        if (zza2 == -1) {
                            throw new IllegalArgumentException();
                        }
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 10:
                    case 16:
                        zza2 = 1024;
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 11:
                    case 12:
                        zza2 = 2048;
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 13:
                    case 19:
                    default:
                        throw new IllegalStateException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8997400434321798756L, 1213009687012681668L, 8207914280806232234L, 6259578397310549703L, -8315762848411091663L}), new StringBuilder(), i10));
                    case 14:
                        int position2 = byteBuffer.position();
                        int limit = byteBuffer.limit() - 10;
                        int i11 = position2;
                        while (true) {
                            if (i11 <= limit) {
                                if ((zzfy.zzh(byteBuffer, i11 + 4) & (-2)) == -126718022) {
                                    i6 = i11 - position2;
                                } else {
                                    i11++;
                                }
                            } else {
                                i6 = -1;
                            }
                        }
                        if (i6 == -1) {
                            zza2 = 0;
                        } else {
                            boolean z7 = byteBuffer.get(byteBuffer.position() + i6 + 7) & 255;
                            int position3 = byteBuffer.position() + i6;
                            if (z7 == 187) {
                                i7 = 9;
                            } else {
                                i7 = 8;
                            }
                            zza2 = (40 << ((byteBuffer.get(position3 + i7) >> 4) & 7)) * 16;
                        }
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 15:
                        zza2 = 512;
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 17:
                        byte[] bArr = new byte[16];
                        int position4 = byteBuffer.position();
                        byteBuffer.get(bArr);
                        byteBuffer.position(position4);
                        zza2 = zzaby.zza(new zzfo(bArr, 16)).zzc;
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                    case 20:
                        zza2 = zzadq.zzb(byteBuffer);
                        z4 = true;
                        this.zzE = zza2;
                        if (zza2 == 0) {
                        }
                        break;
                }
            }
            if (this.zzw != null) {
                if (!zzT()) {
                    return false;
                }
                zzL(j);
                this.zzw = null;
            }
            long zzr = zzfy.zzr(zzI() - this.zze.zzo(), this.zzr.zza.zzA) + this.zzH;
            if (!this.zzF && Math.abs(zzr - j) > 200000) {
                zzpy zzpyVar2 = this.zzp;
                if (zzpyVar2 != null) {
                    zzpyVar2.zza(new zzpz(j, zzr));
                }
                this.zzF = true;
            }
            if (this.zzF) {
                if (!zzT()) {
                    return false;
                }
                long j2 = j - zzr;
                this.zzH += j2;
                this.zzF = false;
                zzL(j);
                zzpy zzpyVar3 = this.zzp;
                if (zzpyVar3 != null && j2 != 0) {
                    ((zzri) zzpyVar3).zza.zzam();
                }
            }
            if (this.zzr.zzc == 0) {
                this.zzA += byteBuffer.remaining();
            } else {
                this.zzB = (this.zzE * i) + this.zzB;
            }
            this.zzJ = byteBuffer;
            this.zzK = i;
        }
        zzO(j);
        if (!this.zzJ.hasRemaining()) {
            this.zzJ = null;
            this.zzK = 0;
            return true;
        }
        if (this.zzi.zzi(zzJ())) {
            zzff.zzf(new ObfuscatedString(new long[]{7138482846793593293L, 682184985089710116L, -429777117825648774L}).toString(), new ObfuscatedString(new long[]{4543011809598246430L, 4078993970636435853L, 424217214532598607L, 8860800584161459154L, -7233547574658970735L}).toString());
            zzf();
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final boolean zzx() {
        if (zzU() && this.zzi.zzg(zzJ())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final boolean zzy() {
        if (!zzU()) {
            return true;
        }
        if (this.zzM && !zzx()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqb
    public final boolean zzz(zzam zzamVar) {
        if (zza(zzamVar) != 0) {
            return true;
        }
        return false;
    }
}
