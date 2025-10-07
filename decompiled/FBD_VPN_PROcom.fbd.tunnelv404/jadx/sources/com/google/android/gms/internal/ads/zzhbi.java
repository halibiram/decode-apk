package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzhbi implements zzhby {
    private final zzhbe zza;
    private final zzhcp zzb;
    private final boolean zzc;
    private final zzgzg zzd;

    private zzhbi(zzhcp zzhcpVar, zzgzg zzgzgVar, zzhbe zzhbeVar) {
        this.zzb = zzhcpVar;
        this.zzc = zzgzgVar.zzh(zzhbeVar);
        this.zzd = zzgzgVar;
        this.zza = zzhbeVar;
    }

    public static zzhbi zzc(zzhcp zzhcpVar, zzgzg zzgzgVar, zzhbe zzhbeVar) {
        return new zzhbi(zzhcpVar, zzgzgVar, zzhbeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final int zza(Object obj) {
        zzhcp zzhcpVar = this.zzb;
        int zzb = zzhcpVar.zzb(zzhcpVar.zzd(obj));
        if (!this.zzc) {
            return zzb;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final int zzb(Object obj) {
        int hashCode = this.zzb.zzd(obj).hashCode();
        if (!this.zzc) {
            return hashCode;
        }
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final Object zze() {
        zzhbe zzhbeVar = this.zza;
        if (zzhbeVar instanceof zzgzu) {
            return ((zzgzu) zzhbeVar).zzaD();
        }
        return zzhbeVar.zzaP().zzan();
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzf(Object obj) {
        this.zzb.zzm(obj);
        this.zzd.zze(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzg(Object obj, Object obj2) {
        zzhca.zzq(this.zzb, obj, obj2);
        if (!this.zzc) {
            return;
        }
        this.zzd.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzh(Object obj, zzhbq zzhbqVar, zzgzf zzgzfVar) {
        boolean zzO;
        zzhcp zzhcpVar = this.zzb;
        Object zzc = zzhcpVar.zzc(obj);
        zzgzg zzgzgVar = this.zzd;
        zzgzk zzb = zzgzgVar.zzb(obj);
        while (zzhbqVar.zzc() != Integer.MAX_VALUE) {
            try {
                int zzd = zzhbqVar.zzd();
                if (zzd != 11) {
                    if ((zzd & 7) == 2) {
                        Object zzc2 = zzgzgVar.zzc(zzgzfVar, this.zza, zzd >>> 3);
                        if (zzc2 != null) {
                            zzgzgVar.zzf(zzhbqVar, zzc2, zzgzfVar, zzb);
                        } else {
                            zzO = zzhcpVar.zzp(zzc, zzhbqVar);
                        }
                    } else {
                        zzO = zzhbqVar.zzO();
                    }
                    if (!zzO) {
                        break;
                    }
                } else {
                    Object obj2 = null;
                    zzgyl zzgylVar = null;
                    int i = 0;
                    while (zzhbqVar.zzc() != Integer.MAX_VALUE) {
                        int zzd2 = zzhbqVar.zzd();
                        if (zzd2 == 16) {
                            i = zzhbqVar.zzj();
                            obj2 = zzgzgVar.zzc(zzgzfVar, this.zza, i);
                        } else if (zzd2 == 26) {
                            if (obj2 != null) {
                                zzgzgVar.zzf(zzhbqVar, obj2, zzgzfVar, zzb);
                            } else {
                                zzgylVar = zzhbqVar.zzp();
                            }
                        } else if (!zzhbqVar.zzO()) {
                            break;
                        }
                    }
                    if (zzhbqVar.zzd() == 12) {
                        if (zzgylVar != null) {
                            if (obj2 != null) {
                                zzgzgVar.zzg(zzgylVar, obj2, zzgzfVar, zzb);
                            } else {
                                zzhcpVar.zzk(zzc, i, zzgylVar);
                            }
                        }
                    } else {
                        throw zzhag.zzb();
                    }
                }
            } finally {
                zzhcpVar.zzn(obj, zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzgxx zzgxxVar) {
        zzgzu zzgzuVar = (zzgzu) obj;
        if (zzgzuVar.zzc == zzhcq.zzc()) {
            zzgzuVar.zzc = zzhcq.zzf();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final boolean zzj(Object obj, Object obj2) {
        zzhcp zzhcpVar = this.zzb;
        if (!zzhcpVar.zzd(obj).equals(zzhcpVar.zzd(obj2))) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        this.zzd.zza(obj);
        this.zzd.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final boolean zzk(Object obj) {
        this.zzd.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzhby
    public final void zzm(Object obj, zzgzb zzgzbVar) {
        this.zzd.zza(obj);
        throw null;
    }
}
