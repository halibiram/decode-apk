package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.EOFException;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzaig implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaie
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzaig(0)};
        }
    };
    private static final zzago zzb = new zzago() { // from class: com.google.android.gms.internal.ads.zzaif
    };
    private final zzfp zzc;
    private final zzado zzd;
    private final zzadk zze;
    private final zzadm zzf;
    private final zzaea zzg;
    private zzacx zzh;
    private zzaea zzi;
    private zzaea zzj;
    private int zzk;

    @Nullable
    private zzby zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private int zzp;
    private zzaii zzq;
    private boolean zzr;

    public zzaig() {
        this(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00d4 A[ADDED_TO_REGION] */
    @RequiresNonNull({"extractorOutput", "realTrackOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zzf(zzacv zzacvVar) {
        int i;
        zzadk zzadkVar;
        zzail zzb2;
        zzaii zzaiiVar;
        int i2;
        int i3;
        zzby zzbyVar;
        zzaid zzaidVar;
        long j;
        if (this.zzk == 0) {
            try {
                zzk(zzacvVar, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.zzq == null) {
            zzfp zzfpVar = new zzfp(this.zzd.zzc);
            ((zzack) zzacvVar).zzm(zzfpVar.zzM(), 0, this.zzd.zzc, false);
            zzado zzadoVar = this.zzd;
            int i4 = 21;
            if ((zzadoVar.zza & 1) != 0) {
                if (zzadoVar.zze != 1) {
                    i4 = 36;
                }
            } else if (zzadoVar.zze == 1) {
                i4 = 13;
            }
            if (zzfpVar.zze() >= i4 + 4) {
                zzfpVar.zzK(i4);
                i = zzfpVar.zzg();
                if (i != 1483304551) {
                    if (i == 1231971951) {
                        i = 1231971951;
                    }
                }
                if (i != 1231971951) {
                    if (i != 1447187017) {
                        if (i != 1483304551) {
                            zzacvVar.zzj();
                            zzaiiVar = null;
                        }
                    } else {
                        zzaiiVar = zzaij.zzb(zzacvVar.zzd(), zzacvVar.zzf(), this.zzd, zzfpVar);
                        ((zzack) zzacvVar).zzo(this.zzd.zzc, false);
                    }
                    zzbyVar = this.zzl;
                    long zzf = zzacvVar.zzf();
                    if (zzbyVar != null) {
                        int zza2 = zzbyVar.zza();
                        for (int i5 = 0; i5 < zza2; i5++) {
                            zzbx zzb3 = zzbyVar.zzb(i5);
                            if (zzb3 instanceof zzagv) {
                                zzagv zzagvVar = (zzagv) zzb3;
                                int zza3 = zzbyVar.zza();
                                int i6 = 0;
                                while (true) {
                                    if (i6 < zza3) {
                                        zzbx zzb4 = zzbyVar.zzb(i6);
                                        if (zzb4 instanceof zzagz) {
                                            zzagz zzagzVar = (zzagz) zzb4;
                                            if (zzagzVar.zzf.equals(new ObfuscatedString(new long[]{-3832322138526449867L, 8913453182327667112L}).toString())) {
                                                j = zzfy.zzq(Long.parseLong((String) zzagzVar.zzc.get(0)));
                                                break;
                                            }
                                        }
                                        i6++;
                                    } else {
                                        j = -9223372036854775807L;
                                        break;
                                    }
                                }
                                zzaidVar = zzaid.zzb(zzf, zzagvVar, j);
                                if (this.zzr) {
                                    zzaiiVar = new zzaih();
                                } else {
                                    if (zzaidVar != null) {
                                        zzaiiVar = zzaidVar;
                                    } else if (zzaiiVar == null) {
                                        zzaiiVar = null;
                                    }
                                    if (zzaiiVar != null) {
                                        zzaiiVar.zzh();
                                    } else {
                                        zzaiiVar = zzh(zzacvVar, false);
                                    }
                                }
                                this.zzq = zzaiiVar;
                                this.zzh.zzO(zzaiiVar);
                                zzaea zzaeaVar = this.zzj;
                                zzak zzakVar = new zzak();
                                zzakVar.zzW(this.zzd.zzb);
                                zzakVar.zzO(4096);
                                zzakVar.zzy(this.zzd.zze);
                                zzakVar.zzX(this.zzd.zzd);
                                zzakVar.zzF(this.zze.zza);
                                zzakVar.zzG(this.zze.zzb);
                                zzakVar.zzP(this.zzl);
                                zzaeaVar.zzl(zzakVar.zzac());
                                this.zzo = zzacvVar.zzf();
                            }
                        }
                    }
                    zzaidVar = null;
                    if (this.zzr) {
                    }
                    this.zzq = zzaiiVar;
                    this.zzh.zzO(zzaiiVar);
                    zzaea zzaeaVar2 = this.zzj;
                    zzak zzakVar2 = new zzak();
                    zzakVar2.zzW(this.zzd.zzb);
                    zzakVar2.zzO(4096);
                    zzakVar2.zzy(this.zzd.zze);
                    zzakVar2.zzX(this.zzd.zzd);
                    zzakVar2.zzF(this.zze.zza);
                    zzakVar2.zzG(this.zze.zzb);
                    zzakVar2.zzP(this.zzl);
                    zzaeaVar2.zzl(zzakVar2.zzac());
                    this.zzo = zzacvVar.zzf();
                }
                zzaik zza4 = zzaik.zza(this.zzd, zzfpVar);
                zzadkVar = this.zze;
                if (!zzadkVar.zza() && (i2 = zza4.zzd) != -1 && (i3 = zza4.zze) != -1) {
                    zzadkVar.zza = i2;
                    zzadkVar.zzb = i3;
                }
                zzb2 = zzail.zzb(zzacvVar.zzd(), zza4, zzacvVar.zzf());
                ((zzack) zzacvVar).zzo(this.zzd.zzc, false);
                if (zzb2.zzh() && i == 1231971951) {
                    zzaiiVar = zzh(zzacvVar, false);
                } else {
                    zzaiiVar = zzb2;
                }
                zzbyVar = this.zzl;
                long zzf2 = zzacvVar.zzf();
                if (zzbyVar != null) {
                }
                zzaidVar = null;
                if (this.zzr) {
                }
                this.zzq = zzaiiVar;
                this.zzh.zzO(zzaiiVar);
                zzaea zzaeaVar22 = this.zzj;
                zzak zzakVar22 = new zzak();
                zzakVar22.zzW(this.zzd.zzb);
                zzakVar22.zzO(4096);
                zzakVar22.zzy(this.zzd.zze);
                zzakVar22.zzX(this.zzd.zzd);
                zzakVar22.zzF(this.zze.zza);
                zzakVar22.zzG(this.zze.zzb);
                zzakVar22.zzP(this.zzl);
                zzaeaVar22.zzl(zzakVar22.zzac());
                this.zzo = zzacvVar.zzf();
            }
            if (zzfpVar.zze() >= 40) {
                zzfpVar.zzK(36);
                if (zzfpVar.zzg() == 1447187017) {
                    i = 1447187017;
                    if (i != 1231971951) {
                    }
                    zzaik zza42 = zzaik.zza(this.zzd, zzfpVar);
                    zzadkVar = this.zze;
                    if (!zzadkVar.zza()) {
                        zzadkVar.zza = i2;
                        zzadkVar.zzb = i3;
                    }
                    zzb2 = zzail.zzb(zzacvVar.zzd(), zza42, zzacvVar.zzf());
                    ((zzack) zzacvVar).zzo(this.zzd.zzc, false);
                    if (zzb2.zzh()) {
                    }
                    zzaiiVar = zzb2;
                    zzbyVar = this.zzl;
                    long zzf22 = zzacvVar.zzf();
                    if (zzbyVar != null) {
                    }
                    zzaidVar = null;
                    if (this.zzr) {
                    }
                    this.zzq = zzaiiVar;
                    this.zzh.zzO(zzaiiVar);
                    zzaea zzaeaVar222 = this.zzj;
                    zzak zzakVar222 = new zzak();
                    zzakVar222.zzW(this.zzd.zzb);
                    zzakVar222.zzO(4096);
                    zzakVar222.zzy(this.zzd.zze);
                    zzakVar222.zzX(this.zzd.zzd);
                    zzakVar222.zzF(this.zze.zza);
                    zzakVar222.zzG(this.zze.zzb);
                    zzakVar222.zzP(this.zzl);
                    zzaeaVar222.zzl(zzakVar222.zzac());
                    this.zzo = zzacvVar.zzf();
                }
            }
            i = 0;
            if (i != 1231971951) {
            }
            zzaik zza422 = zzaik.zza(this.zzd, zzfpVar);
            zzadkVar = this.zze;
            if (!zzadkVar.zza()) {
            }
            zzb2 = zzail.zzb(zzacvVar.zzd(), zza422, zzacvVar.zzf());
            ((zzack) zzacvVar).zzo(this.zzd.zzc, false);
            if (zzb2.zzh()) {
            }
            zzaiiVar = zzb2;
            zzbyVar = this.zzl;
            long zzf222 = zzacvVar.zzf();
            if (zzbyVar != null) {
            }
            zzaidVar = null;
            if (this.zzr) {
            }
            this.zzq = zzaiiVar;
            this.zzh.zzO(zzaiiVar);
            zzaea zzaeaVar2222 = this.zzj;
            zzak zzakVar2222 = new zzak();
            zzakVar2222.zzW(this.zzd.zzb);
            zzakVar2222.zzO(4096);
            zzakVar2222.zzy(this.zzd.zze);
            zzakVar2222.zzX(this.zzd.zzd);
            zzakVar2222.zzF(this.zze.zza);
            zzakVar2222.zzG(this.zze.zzb);
            zzakVar2222.zzP(this.zzl);
            zzaeaVar2222.zzl(zzakVar2222.zzac());
            this.zzo = zzacvVar.zzf();
        } else {
            long j2 = this.zzo;
            if (j2 != 0) {
                long zzf3 = zzacvVar.zzf();
                if (zzf3 < j2) {
                    ((zzack) zzacvVar).zzo((int) (j2 - zzf3), false);
                }
            }
        }
        int i7 = this.zzp;
        if (i7 == 0) {
            zzacvVar.zzj();
            if (zzj(zzacvVar)) {
                return -1;
            }
            this.zzc.zzK(0);
            int zzg = this.zzc.zzg();
            if (zzi(zzg, this.zzk) && zzadp.zzb(zzg) != -1) {
                this.zzd.zza(zzg);
                if (this.zzm == -9223372036854775807L) {
                    this.zzm = this.zzq.zzd(zzacvVar.zzf());
                }
                int i8 = this.zzd.zzc;
                this.zzp = i8;
                if (!(this.zzq instanceof zzaic)) {
                    i7 = i8;
                } else {
                    zzg(this.zzn + r3.zzg);
                    throw null;
                }
            } else {
                ((zzack) zzacvVar).zzo(1, false);
                this.zzk = 0;
                return 0;
            }
        }
        int zzf4 = this.zzj.zzf(zzacvVar, i7, true);
        if (zzf4 == -1) {
            return -1;
        }
        int i9 = this.zzp - zzf4;
        this.zzp = i9;
        if (i9 <= 0) {
            this.zzj.zzt(zzg(this.zzn), 1, this.zzd.zzc, 0, null);
            this.zzn += this.zzd.zzg;
            this.zzp = 0;
            return 0;
        }
        return 0;
    }

    private final long zzg(long j) {
        zzado zzadoVar = this.zzd;
        return ((j * 1000000) / zzadoVar.zzd) + this.zzm;
    }

    private final zzaii zzh(zzacv zzacvVar, boolean z) {
        ((zzack) zzacvVar).zzm(this.zzc.zzM(), 0, 4, false);
        this.zzc.zzK(0);
        this.zzd.zza(this.zzc.zzg());
        return new zzaib(zzacvVar.zzd(), zzacvVar.zzf(), this.zzd, false);
    }

    private static boolean zzi(int i, long j) {
        return ((long) (i & (-128000))) == (j & (-128000));
    }

    private final boolean zzj(zzacv zzacvVar) {
        zzaii zzaiiVar = this.zzq;
        if (zzaiiVar != null) {
            long zzc = zzaiiVar.zzc();
            if (zzc != -1 && zzacvVar.zze() > zzc - 4) {
                return true;
            }
        }
        try {
            if (!zzacvVar.zzm(this.zzc.zzM(), 0, 4, true)) {
                return true;
            }
            return false;
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzk(zzacv zzacvVar, boolean z) {
        int i;
        int i2;
        int zzb2;
        int i3;
        zzacvVar.zzj();
        if (zzacvVar.zzf() == 0) {
            zzby zza2 = this.zzf.zza(zzacvVar, null);
            this.zzl = zza2;
            if (zza2 != null) {
                this.zze.zzb(zza2);
            }
            i2 = (int) zzacvVar.zze();
            if (!z) {
                ((zzack) zzacvVar).zzo(i2, false);
            }
            i = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (zzj(zzacvVar)) {
                if (i4 <= 0) {
                    throw new EOFException();
                }
            } else {
                this.zzc.zzK(0);
                int zzg = this.zzc.zzg();
                if ((i != 0 && !zzi(zzg, i)) || (zzb2 = zzadp.zzb(zzg)) == -1) {
                    if (true != z) {
                        i3 = 131072;
                    } else {
                        i3 = 32768;
                    }
                    int i6 = i5 + 1;
                    if (i5 == i3) {
                        if (z) {
                            return false;
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{-5956405436848843942L, -5464283446549318440L, -8983925872446549157L, -6813809764815343052L}).toString(), null);
                    }
                    if (z) {
                        zzacvVar.zzj();
                        ((zzack) zzacvVar).zzl(i2 + i6, false);
                    } else {
                        ((zzack) zzacvVar).zzo(1, false);
                    }
                    i5 = i6;
                    i = 0;
                    i4 = 0;
                } else {
                    i4++;
                    if (i4 == 1) {
                        this.zzd.zza(zzg);
                        i = zzg;
                    } else if (i4 == 4) {
                        break;
                    }
                    ((zzack) zzacvVar).zzl(zzb2 - 4, false);
                }
            }
        }
        if (z) {
            ((zzack) zzacvVar).zzo(i2 + i5, false);
        } else {
            zzacvVar.zzj();
        }
        this.zzk = i;
        return true;
    }

    public final void zza() {
        this.zzr = true;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        zzek.zzb(this.zzi);
        int i = zzfy.zza;
        int zzf = zzf(zzacvVar);
        if (zzf == -1 && (this.zzq instanceof zzaic)) {
            if (this.zzq.zza() != zzg(this.zzn)) {
                throw null;
            }
        }
        return zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzh = zzacxVar;
        zzaea zzw = zzacxVar.zzw(0, 1);
        this.zzi = zzw;
        this.zzj = zzw;
        this.zzh.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        this.zzk = 0;
        this.zzm = -9223372036854775807L;
        this.zzn = 0L;
        this.zzp = 0;
        if (!(this.zzq instanceof zzaic)) {
        } else {
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        return zzk(zzacvVar, true);
    }

    public zzaig(int i) {
        this.zzc = new zzfp(10);
        this.zzd = new zzado();
        this.zze = new zzadk();
        this.zzm = -9223372036854775807L;
        this.zzf = new zzadm();
        zzact zzactVar = new zzact();
        this.zzg = zzactVar;
        this.zzj = zzactVar;
    }
}
