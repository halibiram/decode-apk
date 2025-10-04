package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgyu implements zzhbq {
    private final zzgyt zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzgyu(zzgyt zzgytVar) {
        byte[] bArr = zzhae.zzd;
        this.zza = zzgytVar;
        zzgytVar.zzc = this;
    }

    private final void zzP(Object obj, zzhby zzhbyVar, zzgzf zzgzfVar) {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzhbyVar.zzh(obj, this, zzgzfVar);
            if (this.zzb == this.zzc) {
            } else {
                throw zzhag.zzg();
            }
        } finally {
            this.zzc = i;
        }
    }

    private final void zzQ(Object obj, zzhby zzhbyVar, zzgzf zzgzfVar) {
        zzgyt zzgytVar = this.zza;
        int zzn = zzgytVar.zzn();
        if (zzgytVar.zza < zzgytVar.zzb) {
            int zze = this.zza.zze(zzn);
            this.zza.zza++;
            zzhbyVar.zzh(obj, this, zzgzfVar);
            this.zza.zzz(0);
            r4.zza--;
            this.zza.zzA(zze);
            return;
        }
        throw new zzhag(new ObfuscatedString(new long[]{7856934553187171979L, 5044233555026896165L, -3893778831989242902L, -6310394967320844932L, -2393051290535049195L, -5066920515502466774L, 7176591471932012374L, 5134162065492802325L, 5908814172496910203L, 8620388243288981450L, 8964969245460366291L, 4019559111671484821L, 3672663222713118890L, 1860516131981757313L, -3070945766591793253L, 658634839260917557L, -3817149043658283406L, 2184917375623866728L, 8891716715851491798L}).toString());
    }

    private final void zzR(int i) {
        if (this.zza.zzd() == i) {
        } else {
            throw zzhag.zzj();
        }
    }

    private final void zzS(int i) {
        if ((this.zzb & 7) == i) {
        } else {
            throw zzhag.zza();
        }
    }

    private static final void zzT(int i) {
        if ((i & 3) == 0) {
        } else {
            throw zzhag.zzg();
        }
    }

    private static final void zzU(int i) {
        if ((i & 7) == 0) {
        } else {
            throw zzhag.zzg();
        }
    }

    public static zzgyu zzq(zzgyt zzgytVar) {
        zzgyu zzgyuVar = zzgytVar.zzc;
        if (zzgyuVar != null) {
            return zzgyuVar;
        }
        return new zzgyu(zzgytVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzA(List list) {
        int zzm;
        int i;
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int zzn = this.zza.zzn();
                    zzU(zzn);
                    int zzd = this.zza.zzd() + zzn;
                    do {
                        zzhatVar.zzg(this.zza.zzo());
                    } while (this.zza.zzd() < zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzhatVar.zzg(this.zza.zzo());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int zzn2 = this.zza.zzn();
                    zzU(zzn2);
                    int zzd2 = this.zza.zzd() + zzn2;
                    do {
                        list.add(Long.valueOf(this.zza.zzo()));
                    } while (this.zza.zzd() < zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Long.valueOf(this.zza.zzo()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzB(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzm) {
            zzgzm zzgzmVar = (zzgzm) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw zzhag.zza();
                }
                do {
                    zzgzmVar.zze(this.zza.zzc());
                    if (!this.zza.zzC()) {
                        i = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (i == this.zzb);
            } else {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    zzgzmVar.zze(this.zza.zzc());
                } while (this.zza.zzd() < zzd);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw zzhag.zza();
                }
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                    if (!this.zza.zzC()) {
                        zzm = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (zzm == this.zzb);
                i = zzm;
            } else {
                int zzn2 = this.zza.zzn();
                zzT(zzn2);
                int zzd2 = this.zza.zzd() + zzn2;
                do {
                    list.add(Float.valueOf(this.zza.zzc()));
                } while (this.zza.zzd() < zzd2);
                return;
            }
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    @Deprecated
    public final void zzC(List list, zzhby zzhbyVar, zzgzf zzgzfVar) {
        int zzm;
        int i = this.zzb;
        if ((i & 7) != 3) {
            throw zzhag.zza();
        }
        do {
            Object zze = zzhbyVar.zze();
            zzP(zze, zzhbyVar, zzgzfVar);
            zzhbyVar.zzf(zze);
            list.add(zze);
            if (!this.zza.zzC() && this.zzd == 0) {
                zzm = this.zza.zzm();
            } else {
                return;
            }
        } while (zzm == i);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzD(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzgzvVar.zzh(this.zza.zzh());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgzvVar.zzh(this.zza.zzh());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Integer.valueOf(this.zza.zzh()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzh()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzE(List list) {
        int zzm;
        int i;
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzhatVar.zzg(this.zza.zzp());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzhatVar.zzg(this.zza.zzp());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Long.valueOf(this.zza.zzp()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Long.valueOf(this.zza.zzp()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzF(List list, zzhby zzhbyVar, zzgzf zzgzfVar) {
        int zzm;
        int i = this.zzb;
        if ((i & 7) != 2) {
            throw zzhag.zza();
        }
        do {
            Object zze = zzhbyVar.zze();
            zzQ(zze, zzhbyVar, zzgzfVar);
            zzhbyVar.zzf(zze);
            list.add(zze);
            if (!this.zza.zzC() && this.zzd == 0) {
                zzm = this.zza.zzm();
            } else {
                return;
            }
        } while (zzm == i);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzG(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw zzhag.zza();
                }
                do {
                    zzgzvVar.zzh(this.zza.zzk());
                    if (!this.zza.zzC()) {
                        i = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (i == this.zzb);
            } else {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    zzgzvVar.zzh(this.zza.zzk());
                } while (this.zza.zzd() < zzd);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw zzhag.zza();
                }
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                    if (!this.zza.zzC()) {
                        zzm = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (zzm == this.zzb);
                i = zzm;
            } else {
                int zzn2 = this.zza.zzn();
                zzT(zzn2);
                int zzd2 = this.zza.zzd() + zzn2;
                do {
                    list.add(Integer.valueOf(this.zza.zzk()));
                } while (this.zza.zzd() < zzd2);
                return;
            }
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzH(List list) {
        int zzm;
        int i;
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int zzn = this.zza.zzn();
                    zzU(zzn);
                    int zzd = this.zza.zzd() + zzn;
                    do {
                        zzhatVar.zzg(this.zza.zzt());
                    } while (this.zza.zzd() < zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzhatVar.zzg(this.zza.zzt());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int zzn2 = this.zza.zzn();
                    zzU(zzn2);
                    int zzd2 = this.zza.zzd() + zzn2;
                    do {
                        list.add(Long.valueOf(this.zza.zzt()));
                    } while (this.zza.zzd() < zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Long.valueOf(this.zza.zzt()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzI(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzgzvVar.zzh(this.zza.zzl());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgzvVar.zzh(this.zza.zzl());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Integer.valueOf(this.zza.zzl()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzl()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzJ(List list) {
        int zzm;
        int i;
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzhatVar.zzg(this.zza.zzu());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzhatVar.zzg(this.zza.zzu());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Long.valueOf(this.zza.zzu()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Long.valueOf(this.zza.zzu()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    public final void zzK(List list, boolean z) {
        String zzr;
        int zzm;
        int i;
        if ((this.zzb & 7) == 2) {
            if ((list instanceof zzham) && !z) {
                zzham zzhamVar = (zzham) list;
                do {
                    zzhamVar.zzi(zzp());
                    if (!this.zza.zzC()) {
                        i = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (i == this.zzb);
            } else {
                do {
                    if (z) {
                        zzr = zzs();
                    } else {
                        zzr = zzr();
                    }
                    list.add(zzr);
                    if (this.zza.zzC()) {
                        return;
                    } else {
                        zzm = this.zza.zzm();
                    }
                } while (zzm == this.zzb);
                i = zzm;
            }
            this.zzd = i;
            return;
        }
        throw zzhag.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzL(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzgzvVar.zzh(this.zza.zzn());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgzvVar.zzh(this.zza.zzn());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Integer.valueOf(this.zza.zzn()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzn()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzM(List list) {
        int zzm;
        int i;
        if (list instanceof zzhat) {
            zzhat zzhatVar = (zzhat) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzhatVar.zzg(this.zza.zzv());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzhatVar.zzg(this.zza.zzv());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Long.valueOf(this.zza.zzv()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Long.valueOf(this.zza.zzv()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final boolean zzN() {
        zzS(0);
        return this.zza.zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final boolean zzO() {
        int i;
        if (!this.zza.zzC() && (i = this.zzb) != this.zzc) {
            return this.zza.zzE(i);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final double zza() {
        zzS(1);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final float zzb() {
        zzS(5);
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzc() {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzm();
            this.zzb = i;
        }
        if (i != 0 && i != this.zzc) {
            return i >>> 3;
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zze() {
        zzS(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzf() {
        zzS(5);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzg() {
        zzS(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzh() {
        zzS(5);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzi() {
        zzS(0);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final int zzj() {
        zzS(0);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final long zzk() {
        zzS(1);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final long zzl() {
        zzS(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final long zzm() {
        zzS(1);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final long zzn() {
        zzS(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final long zzo() {
        zzS(0);
        return this.zza.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final zzgyl zzp() {
        zzS(2);
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final String zzr() {
        zzS(2);
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final String zzs() {
        zzS(2);
        return this.zza.zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzt(Object obj, zzhby zzhbyVar, zzgzf zzgzfVar) {
        zzS(3);
        zzP(obj, zzhbyVar, zzgzfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzu(Object obj, zzhby zzhbyVar, zzgzf zzgzfVar) {
        zzS(2);
        zzQ(obj, zzhbyVar, zzgzfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzv(List list) {
        int zzm;
        int i;
        if (list instanceof zzgxz) {
            zzgxz zzgxzVar = (zzgxz) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzgxzVar.zze(this.zza.zzD());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgxzVar.zze(this.zza.zzD());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Boolean.valueOf(this.zza.zzD()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Boolean.valueOf(this.zza.zzD()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzw(List list) {
        int zzm;
        if ((this.zzb & 7) != 2) {
            throw zzhag.zza();
        }
        do {
            list.add(zzp());
            if (this.zza.zzC()) {
                return;
            } else {
                zzm = this.zza.zzm();
            }
        } while (zzm == this.zzb);
        this.zzd = zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzx(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzc) {
            zzgzc zzgzcVar = (zzgzc) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    int zzn = this.zza.zzn();
                    zzU(zzn);
                    int zzd = this.zza.zzd() + zzn;
                    do {
                        zzgzcVar.zze(this.zza.zzb());
                    } while (this.zza.zzd() < zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgzcVar.zze(this.zza.zzb());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    int zzn2 = this.zza.zzn();
                    zzU(zzn2);
                    int zzd2 = this.zza.zzd() + zzn2;
                    do {
                        list.add(Double.valueOf(this.zza.zzb()));
                    } while (this.zza.zzd() < zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Double.valueOf(this.zza.zzb()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzy(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgyt zzgytVar = this.zza;
                    int zzd = zzgytVar.zzd() + zzgytVar.zzn();
                    do {
                        zzgzvVar.zzh(this.zza.zzf());
                    } while (this.zza.zzd() < zzd);
                    zzR(zzd);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                zzgzvVar.zzh(this.zza.zzf());
                if (!this.zza.zzC()) {
                    i = this.zza.zzm();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgyt zzgytVar2 = this.zza;
                    int zzd2 = zzgytVar2.zzd() + zzgytVar2.zzn();
                    do {
                        list.add(Integer.valueOf(this.zza.zzf()));
                    } while (this.zza.zzd() < zzd2);
                    zzR(zzd2);
                    return;
                }
                throw zzhag.zza();
            }
            do {
                list.add(Integer.valueOf(this.zza.zzf()));
                if (!this.zza.zzC()) {
                    zzm = this.zza.zzm();
                } else {
                    return;
                }
            } while (zzm == this.zzb);
            i = zzm;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhbq
    public final void zzz(List list) {
        int zzm;
        int i;
        if (list instanceof zzgzv) {
            zzgzv zzgzvVar = (zzgzv) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 != 5) {
                    throw zzhag.zza();
                }
                do {
                    zzgzvVar.zzh(this.zza.zzg());
                    if (!this.zza.zzC()) {
                        i = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (i == this.zzb);
            } else {
                int zzn = this.zza.zzn();
                zzT(zzn);
                int zzd = this.zza.zzd() + zzn;
                do {
                    zzgzvVar.zzh(this.zza.zzg());
                } while (this.zza.zzd() < zzd);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 != 5) {
                    throw zzhag.zza();
                }
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                    if (!this.zza.zzC()) {
                        zzm = this.zza.zzm();
                    } else {
                        return;
                    }
                } while (zzm == this.zzb);
                i = zzm;
            } else {
                int zzn2 = this.zza.zzn();
                zzT(zzn2);
                int zzd2 = this.zza.zzd() + zzn2;
                do {
                    list.add(Integer.valueOf(this.zza.zzg()));
                } while (this.zza.zzd() < zzd2);
                return;
            }
        }
        this.zzd = i;
    }
}
