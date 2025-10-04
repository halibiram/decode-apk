package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
final class zzaof implements zzanx {
    final /* synthetic */ zzaog zza;
    private final zzfo zzb = new zzfo(new byte[5], 5);
    private final SparseArray zzc = new SparseArray();
    private final SparseIntArray zzd = new SparseIntArray();
    private final int zze;

    public zzaof(zzaog zzaogVar, int i) {
        this.zza = zzaogVar;
        this.zze = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x011e, code lost:
    
        if (r28.zzm() == 21) goto L25;
     */
    @Override // com.google.android.gms.internal.ads.zzanx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(zzfp zzfpVar) {
        List list;
        SparseArray sparseArray;
        int i;
        zzacx zzacxVar;
        SparseBooleanArray sparseBooleanArray;
        SparseBooleanArray sparseBooleanArray2;
        zzfw zzfwVar;
        int i2;
        zzacx zzacxVar2;
        SparseArray sparseArray2;
        SparseBooleanArray sparseBooleanArray3;
        zzaoj zzaojVar;
        zzfw zzfwVar2;
        int i3;
        if (zzfpVar.zzm() == 2) {
            list = this.zza.zzb;
            zzfw zzfwVar3 = (zzfw) list.get(0);
            if ((zzfpVar.zzm() & 128) != 0) {
                zzfpVar.zzL(1);
                int zzq = zzfpVar.zzq();
                int i4 = 3;
                zzfpVar.zzL(3);
                zzfpVar.zzF(this.zzb, 2);
                this.zzb.zzm(3);
                int i5 = 13;
                this.zza.zzr = this.zzb.zzd(13);
                zzfpVar.zzF(this.zzb, 2);
                int i6 = 4;
                this.zzb.zzm(4);
                int i7 = 12;
                zzfpVar.zzL(this.zzb.zzd(12));
                this.zzc.clear();
                this.zzd.clear();
                int zzb = zzfpVar.zzb();
                while (zzb > 0) {
                    int i8 = 5;
                    zzfpVar.zzF(this.zzb, 5);
                    zzfo zzfoVar = this.zzb;
                    int zzd = zzfoVar.zzd(8);
                    zzfoVar.zzm(i4);
                    int zzd2 = this.zzb.zzd(i5);
                    this.zzb.zzm(i6);
                    int zzd3 = this.zzb.zzd(i7);
                    int zzd4 = zzfpVar.zzd();
                    int i9 = zzd4 + zzd3;
                    ArrayList arrayList = null;
                    String str = null;
                    int i10 = -1;
                    while (zzfpVar.zzd() < i9) {
                        int zzm = zzfpVar.zzm();
                        int zzd5 = zzfpVar.zzd() + zzfpVar.zzm();
                        if (zzd5 > i9) {
                            break;
                        }
                        if (zzm == i8) {
                            long zzu = zzfpVar.zzu();
                            if (zzu != 1094921523) {
                                if (zzu != 1161904947) {
                                    if (zzu != 1094921524) {
                                        if (zzu == 1212503619) {
                                            zzfwVar2 = zzfwVar3;
                                            i3 = zzq;
                                            i10 = 36;
                                        }
                                        zzfwVar2 = zzfwVar3;
                                        i3 = zzq;
                                    }
                                    zzfwVar2 = zzfwVar3;
                                    i3 = zzq;
                                    i10 = 172;
                                }
                                zzfwVar2 = zzfwVar3;
                                i3 = zzq;
                                i10 = 135;
                            }
                            zzfwVar2 = zzfwVar3;
                            i3 = zzq;
                            i10 = 129;
                        } else {
                            if (zzm != 106) {
                                if (zzm != 122) {
                                    if (zzm != 127) {
                                        if (zzm == 123) {
                                            zzfwVar2 = zzfwVar3;
                                            i3 = zzq;
                                            i10 = 138;
                                        } else if (zzm == 10) {
                                            zzfwVar2 = zzfwVar3;
                                            str = zzfpVar.zzA(i4, zzfwq.zzc).trim();
                                            i3 = zzq;
                                        } else if (zzm == 89) {
                                            ArrayList arrayList2 = new ArrayList();
                                            while (zzfpVar.zzd() < zzd5) {
                                                String trim = zzfpVar.zzA(i4, zzfwq.zzc).trim();
                                                int zzm2 = zzfpVar.zzm();
                                                zzfw zzfwVar4 = zzfwVar3;
                                                byte[] bArr = new byte[4];
                                                zzfpVar.zzG(bArr, 0, 4);
                                                arrayList2.add(new zzaoh(trim, zzm2, bArr));
                                                zzfwVar3 = zzfwVar4;
                                                zzq = zzq;
                                                i4 = 3;
                                            }
                                            zzfwVar2 = zzfwVar3;
                                            i3 = zzq;
                                            arrayList = arrayList2;
                                            i10 = 89;
                                        } else {
                                            zzfwVar2 = zzfwVar3;
                                            i3 = zzq;
                                            if (zzm == 111) {
                                                i10 = 257;
                                            }
                                        }
                                    }
                                }
                                zzfwVar2 = zzfwVar3;
                                i3 = zzq;
                                i10 = 135;
                            }
                            zzfwVar2 = zzfwVar3;
                            i3 = zzq;
                            i10 = 129;
                        }
                        zzfpVar.zzL(zzd5 - zzfpVar.zzd());
                        zzfwVar3 = zzfwVar2;
                        zzq = i3;
                        i4 = 3;
                        i8 = 5;
                    }
                    zzfw zzfwVar5 = zzfwVar3;
                    int i11 = zzq;
                    zzfpVar.zzK(i9);
                    zzaoi zzaoiVar = new zzaoi(i10, str, arrayList, Arrays.copyOfRange(zzfpVar.zzM(), zzd4, i9));
                    if (zzd == 6 || zzd == 5) {
                        zzd = zzaoiVar.zza;
                    }
                    zzb -= zzd3 + 5;
                    sparseBooleanArray3 = this.zza.zzh;
                    if (!sparseBooleanArray3.get(zzd2)) {
                        zzaojVar = this.zza.zze;
                        zzaol zza = zzaojVar.zza(zzd, zzaoiVar);
                        this.zzd.put(zzd2, zzd2);
                        this.zzc.put(zzd2, zza);
                    }
                    zzfwVar3 = zzfwVar5;
                    zzq = i11;
                    i4 = 3;
                    i6 = 4;
                    i7 = 12;
                    i5 = 13;
                }
                zzfw zzfwVar6 = zzfwVar3;
                int i12 = zzq;
                int size = this.zzd.size();
                int i13 = 0;
                while (i13 < size) {
                    SparseIntArray sparseIntArray = this.zzd;
                    zzaog zzaogVar = this.zza;
                    int keyAt = sparseIntArray.keyAt(i13);
                    int valueAt = sparseIntArray.valueAt(i13);
                    sparseBooleanArray = zzaogVar.zzh;
                    sparseBooleanArray.put(keyAt, true);
                    sparseBooleanArray2 = this.zza.zzi;
                    sparseBooleanArray2.put(valueAt, true);
                    zzaol zzaolVar = (zzaol) this.zzc.valueAt(i13);
                    if (zzaolVar != null) {
                        zzacxVar2 = this.zza.zzl;
                        i2 = i12;
                        zzaok zzaokVar = new zzaok(i2, keyAt, 8192);
                        zzfwVar = zzfwVar6;
                        zzaolVar.zzb(zzfwVar, zzacxVar2, zzaokVar);
                        sparseArray2 = this.zza.zzg;
                        sparseArray2.put(valueAt, zzaolVar);
                    } else {
                        zzfwVar = zzfwVar6;
                        i2 = i12;
                    }
                    i13++;
                    zzfwVar6 = zzfwVar;
                    i12 = i2;
                }
                zzaog zzaogVar2 = this.zza;
                int i14 = this.zze;
                sparseArray = zzaogVar2.zzg;
                sparseArray.remove(i14);
                this.zza.zzm = 0;
                zzaog zzaogVar3 = this.zza;
                i = zzaogVar3.zzm;
                if (i == 0) {
                    zzacxVar = zzaogVar3.zzl;
                    zzacxVar.zzD();
                    this.zza.zzn = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzanx
    public final void zzb(zzfw zzfwVar, zzacx zzacxVar, zzaok zzaokVar) {
    }
}
