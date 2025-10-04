package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.lang.reflect.Method;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzqf {
    private long zzA;
    private long zzB;
    private long zzC;
    private boolean zzD;
    private long zzE;
    private long zzF;
    private boolean zzG;
    private long zzH;
    private zzel zzI;
    private final zzqe zza;
    private final long[] zzb;

    @Nullable
    private AudioTrack zzc;
    private int zzd;

    @Nullable
    private zzqd zze;
    private int zzf;
    private boolean zzg;
    private long zzh;
    private float zzi;
    private boolean zzj;
    private long zzk;
    private long zzl;

    @Nullable
    private Method zzm;
    private long zzn;
    private boolean zzo;
    private boolean zzp;
    private long zzq;
    private long zzr;
    private long zzs;
    private long zzt;
    private long zzu;
    private int zzv;
    private int zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    public zzqf(zzqe zzqeVar) {
        this.zza = zzqeVar;
        int i = zzfy.zza;
        try {
            this.zzm = AudioTrack.class.getMethod(new ObfuscatedString(new long[]{-2883114461534670393L, 8793524552640969226L, 6520803546636101285L}).toString(), null);
        } catch (NoSuchMethodException unused) {
        }
        this.zzb = new long[10];
        this.zzI = zzel.zza;
    }

    private final long zzl() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = 2;
        if (this.zzx != -9223372036854775807L) {
            AudioTrack audioTrack = this.zzc;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 2) {
                return this.zzz;
            }
            return Math.min(this.zzA, this.zzz + zzfy.zzn(zzfy.zzo(zzfy.zzq(elapsedRealtime) - this.zzx, this.zzi), this.zzf));
        }
        if (elapsedRealtime - this.zzr >= 5) {
            AudioTrack audioTrack2 = this.zzc;
            audioTrack2.getClass();
            int playState = audioTrack2.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack2.getPlaybackHeadPosition() & 4294967295L;
                long j = 0;
                if (this.zzg) {
                    if (playState == 2) {
                        if (playbackHeadPosition == 0) {
                            this.zzu = this.zzs;
                        }
                    } else {
                        i = playState;
                    }
                    playbackHeadPosition += this.zzu;
                    playState = i;
                }
                if (zzfy.zza <= 29) {
                    if (playbackHeadPosition == 0) {
                        if (this.zzs > 0 && playState == 3) {
                            if (this.zzy == -9223372036854775807L) {
                                this.zzy = elapsedRealtime;
                            }
                        }
                    } else {
                        j = playbackHeadPosition;
                    }
                    this.zzy = -9223372036854775807L;
                    playbackHeadPosition = j;
                }
                if (this.zzs > playbackHeadPosition) {
                    this.zzt++;
                }
                this.zzs = playbackHeadPosition;
            }
            this.zzr = elapsedRealtime;
        }
        return this.zzs + this.zzH + (this.zzt << 32);
    }

    private final long zzm() {
        return zzfy.zzr(zzl(), this.zzf);
    }

    private final void zzn() {
        this.zzk = 0L;
        this.zzw = 0;
        this.zzv = 0;
        this.zzl = 0L;
        this.zzC = 0L;
        this.zzF = 0L;
        this.zzj = false;
    }

    public final long zza(boolean z) {
        long zzo;
        long j;
        zzpy zzpyVar;
        zzpy zzpyVar2;
        zzpt zzptVar;
        Method method;
        AudioTrack audioTrack;
        long zzI;
        long zzJ;
        long zzI2;
        long zzJ2;
        zzqf zzqfVar = this;
        AudioTrack audioTrack2 = zzqfVar.zzc;
        audioTrack2.getClass();
        if (audioTrack2.getPlayState() == 3) {
            long nanoTime = System.nanoTime() / 1000;
            if (nanoTime - zzqfVar.zzl >= WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS) {
                long zzm = zzm();
                if (zzm != 0) {
                    zzqfVar.zzb[zzqfVar.zzv] = zzfy.zzp(zzm, zzqfVar.zzi) - nanoTime;
                    zzqfVar.zzv = (zzqfVar.zzv + 1) % 10;
                    int i = zzqfVar.zzw;
                    if (i < 10) {
                        zzqfVar.zzw = i + 1;
                    }
                    zzqfVar.zzl = nanoTime;
                    zzqfVar.zzk = 0L;
                    int i2 = 0;
                    while (true) {
                        int i3 = zzqfVar.zzw;
                        if (i2 >= i3) {
                            break;
                        }
                        zzqfVar.zzk = (zzqfVar.zzb[i2] / i3) + zzqfVar.zzk;
                        i2++;
                    }
                }
            }
            if (!zzqfVar.zzg) {
                zzqd zzqdVar = zzqfVar.zze;
                zzqdVar.getClass();
                if (zzqdVar.zzg(nanoTime)) {
                    long zzb = zzqdVar.zzb();
                    long zza = zzqdVar.zza();
                    long zzm2 = zzm();
                    if (Math.abs(zzb - nanoTime) > 5000000) {
                        zzrd zzrdVar = ((zzqy) zzqfVar.zza).zza;
                        zzI2 = zzrdVar.zzI();
                        zzJ2 = zzrdVar.zzJ();
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{5490322928607456922L, -303174135929398268L, -2290731719351440915L, 5442568713333813572L, -3838745108109156216L, -5239133418957385246L, 7406935231780187756L, 2170098874237360118L}).toString());
                        sb.append(zza);
                        sb.append(new ObfuscatedString(new long[]{6912687156950335856L, 882313123401346281L}).toString());
                        sb.append(zzb);
                        sb.append(new ObfuscatedString(new long[]{7575307350420921563L, 3113710984905643937L}).toString());
                        sb.append(nanoTime);
                        sb.append(new ObfuscatedString(new long[]{6283879367965291032L, 3548953556406775195L}).toString());
                        sb.append(zzm2);
                        sb.append(new ObfuscatedString(new long[]{3373340242138113343L, -7722404360733646157L}).toString());
                        sb.append(zzI2);
                        zzff.zzf(new ObfuscatedString(new long[]{6633048648921203233L, -7519645499045620743L, 6009739807889735381L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{4606393506905708041L, 994591887995307876L}), sb, zzJ2));
                        zzqdVar.zzd();
                    } else if (Math.abs(zzfy.zzr(zza, zzqfVar.zzf) - zzm2) > 5000000) {
                        zzrd zzrdVar2 = ((zzqy) zzqfVar.zza).zza;
                        zzI = zzrdVar2.zzI();
                        zzJ = zzrdVar2.zzJ();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(new ObfuscatedString(new long[]{5959050791166775573L, 351780466226540909L, 8171474975225244255L, 5737324105360318433L, 3636925319393275106L, -1072812817461591274L, -2441710632035856504L, -2023238384950018278L}).toString());
                        sb2.append(zza);
                        sb2.append(new ObfuscatedString(new long[]{-6030689299073547805L, -2899436325003257327L}).toString());
                        sb2.append(zzb);
                        sb2.append(new ObfuscatedString(new long[]{7864158995615641108L, 7846072764581480890L}).toString());
                        sb2.append(nanoTime);
                        sb2.append(new ObfuscatedString(new long[]{6934855083109951560L, 1307390288331677023L}).toString());
                        sb2.append(zzm2);
                        sb2.append(new ObfuscatedString(new long[]{-8528668990441146672L, -7407230868315723965L}).toString());
                        sb2.append(zzI);
                        zzff.zzf(new ObfuscatedString(new long[]{8750473890039574908L, 1084694987239700411L, -1380355022463888719L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{-1416006955330863542L, -8738564252949942110L}), sb2, zzJ));
                        zzqdVar.zzd();
                    } else {
                        zzqdVar.zzc();
                    }
                    zzqfVar = this;
                }
                if (zzqfVar.zzp && (method = zzqfVar.zzm) != null && nanoTime - zzqfVar.zzq >= 500000) {
                    try {
                        audioTrack = zzqfVar.zzc;
                    } catch (Exception unused) {
                        zzqfVar.zzm = null;
                    }
                    if (audioTrack != null) {
                        Integer num = (Integer) method.invoke(audioTrack, null);
                        int i4 = zzfy.zza;
                        long intValue = (num.intValue() * 1000) - zzqfVar.zzh;
                        zzqfVar.zzn = intValue;
                        long max = Math.max(intValue, 0L);
                        zzqfVar.zzn = max;
                        if (max > 5000000) {
                            zzff.zzf(new ObfuscatedString(new long[]{404402361443791529L, -8840033397311089569L, -5403490915920254825L}).toString(), new ObfuscatedString(new long[]{1308584536878048464L, -3440439494530196464L, 7051506085585943520L, 8545887369916176802L, -7128450634098182858L, -3248049818340928025L, 5589676126619618240L}).toString() + max);
                            zzqfVar.zzn = 0L;
                        }
                        zzqfVar.zzq = nanoTime;
                    } else {
                        throw null;
                    }
                }
            }
        }
        long nanoTime2 = System.nanoTime() / 1000;
        zzqd zzqdVar2 = zzqfVar.zze;
        zzqdVar2.getClass();
        boolean zzf = zzqdVar2.zzf();
        if (zzf) {
            j = zzfy.zzo(nanoTime2 - zzqdVar2.zzb(), zzqfVar.zzi) + zzfy.zzr(zzqdVar2.zza(), zzqfVar.zzf);
        } else {
            if (zzqfVar.zzw == 0) {
                zzo = zzm();
            } else {
                zzo = zzfy.zzo(zzqfVar.zzk + nanoTime2, zzqfVar.zzi);
            }
            j = zzo;
            if (!z) {
                j = Math.max(0L, j - zzqfVar.zzn);
            }
        }
        if (zzqfVar.zzD != zzf) {
            zzqfVar.zzF = zzqfVar.zzC;
            zzqfVar.zzE = zzqfVar.zzB;
        }
        long j2 = nanoTime2 - zzqfVar.zzF;
        if (j2 < 1000000) {
            long zzo2 = zzfy.zzo(j2, zzqfVar.zzi) + zzqfVar.zzE;
            long j3 = (j2 * 1000) / 1000000;
            j = (((1000 - j3) * zzo2) + (j * j3)) / 1000;
        }
        if (!zzqfVar.zzj) {
            long j4 = zzqfVar.zzB;
            if (j > j4) {
                zzqfVar.zzj = true;
                int i5 = zzfy.zza;
                long currentTimeMillis = System.currentTimeMillis() - zzfy.zzt(zzfy.zzp(zzfy.zzt(j - j4), zzqfVar.zzi));
                zzrd zzrdVar3 = ((zzqy) zzqfVar.zza).zza;
                zzpyVar = zzrdVar3.zzp;
                if (zzpyVar != null) {
                    zzpyVar2 = zzrdVar3.zzp;
                    zzptVar = ((zzri) zzpyVar2).zza.zzc;
                    zzptVar.zzv(currentTimeMillis);
                }
            }
        }
        zzqfVar.zzC = nanoTime2;
        zzqfVar.zzB = j;
        zzqfVar.zzD = zzf;
        return j;
    }

    public final void zzb(long j) {
        this.zzz = zzl();
        this.zzx = zzfy.zzq(SystemClock.elapsedRealtime());
        this.zzA = j;
    }

    public final void zzc() {
        zzn();
        this.zzc = null;
        this.zze = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzd(AudioTrack audioTrack, boolean z, int i, int i2, int i3) {
        boolean z2;
        boolean zzH;
        long j;
        this.zzc = audioTrack;
        this.zzd = i3;
        this.zze = new zzqd(audioTrack);
        this.zzf = audioTrack.getSampleRate();
        if (z && zzfy.zza < 23) {
            z2 = true;
            if (i != 5) {
                if (i == 6) {
                    i = 6;
                }
            }
            this.zzg = z2;
            zzH = zzfy.zzH(i);
            this.zzp = zzH;
            if (!zzH) {
                j = zzfy.zzr(i3 / i2, this.zzf);
            } else {
                j = -9223372036854775807L;
            }
            this.zzh = j;
            this.zzs = 0L;
            this.zzt = 0L;
            this.zzG = false;
            this.zzH = 0L;
            this.zzu = 0L;
            this.zzo = false;
            this.zzx = -9223372036854775807L;
            this.zzy = -9223372036854775807L;
            this.zzq = 0L;
            this.zzn = 0L;
            this.zzi = 1.0f;
        }
        z2 = false;
        this.zzg = z2;
        zzH = zzfy.zzH(i);
        this.zzp = zzH;
        if (!zzH) {
        }
        this.zzh = j;
        this.zzs = 0L;
        this.zzt = 0L;
        this.zzG = false;
        this.zzH = 0L;
        this.zzu = 0L;
        this.zzo = false;
        this.zzx = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzq = 0L;
        this.zzn = 0L;
        this.zzi = 1.0f;
    }

    public final void zze(zzel zzelVar) {
        this.zzI = zzelVar;
    }

    public final void zzf() {
        if (this.zzx != -9223372036854775807L) {
            this.zzx = zzfy.zzq(SystemClock.elapsedRealtime());
        }
        zzqd zzqdVar = this.zze;
        zzqdVar.getClass();
        zzqdVar.zze();
    }

    public final boolean zzg(long j) {
        if (j <= zzfy.zzn(zza(false), this.zzf)) {
            if (this.zzg) {
                AudioTrack audioTrack = this.zzc;
                audioTrack.getClass();
                if (audioTrack.getPlayState() == 2 && zzl() == 0) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean zzh() {
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 3) {
            return true;
        }
        return false;
    }

    public final boolean zzi(long j) {
        if (this.zzy != -9223372036854775807L && j > 0 && SystemClock.elapsedRealtime() - this.zzy >= 200) {
            return true;
        }
        return false;
    }

    public final boolean zzj(long j) {
        zzpy zzpyVar;
        long j2;
        zzpy zzpyVar2;
        zzpt zzptVar;
        AudioTrack audioTrack = this.zzc;
        audioTrack.getClass();
        int playState = audioTrack.getPlayState();
        if (this.zzg) {
            if (playState == 2) {
                this.zzo = false;
                return false;
            }
            if (playState == 1) {
                if (zzl() == 0) {
                    return false;
                }
                playState = 1;
            }
        }
        boolean z = this.zzo;
        boolean zzg = zzg(j);
        this.zzo = zzg;
        if (z && !zzg && playState != 1) {
            zzqe zzqeVar = this.zza;
            int i = this.zzd;
            long zzt = zzfy.zzt(this.zzh);
            zzqy zzqyVar = (zzqy) zzqeVar;
            zzrd zzrdVar = zzqyVar.zza;
            zzpyVar = zzrdVar.zzp;
            if (zzpyVar != null) {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                j2 = zzrdVar.zzS;
                zzpyVar2 = zzqyVar.zza.zzp;
                zzptVar = ((zzri) zzpyVar2).zza.zzc;
                zzptVar.zzx(i, zzt, elapsedRealtime - j2);
            }
        }
        return true;
    }

    public final boolean zzk() {
        zzn();
        if (this.zzx == -9223372036854775807L) {
            zzqd zzqdVar = this.zze;
            zzqdVar.getClass();
            zzqdVar.zze();
            return true;
        }
        this.zzz = zzl();
        return false;
    }
}
