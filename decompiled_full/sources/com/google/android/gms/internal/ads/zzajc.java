package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzajc implements zzacu {

    @Deprecated
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzaiy
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzajc()};
        }
    };
    private static final byte[] zzb = {-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final zzam zzc;
    private int zzA;
    private int zzB;
    private int zzC;
    private boolean zzD;
    private zzacx zzE;
    private zzaea[] zzF;
    private zzaea[] zzG;
    private boolean zzH;
    private final zzakp zzd;
    private final List zze;
    private final SparseArray zzf;
    private final zzfp zzg;
    private final zzfp zzh;
    private final zzfp zzi;
    private final byte[] zzj;
    private final zzfp zzk;
    private final zzafu zzl;
    private final zzfp zzm;
    private final ArrayDeque zzn;
    private final ArrayDeque zzo;
    private int zzp;
    private int zzq;
    private long zzr;
    private int zzs;

    @Nullable
    private zzfp zzt;
    private long zzu;
    private int zzv;
    private long zzw;
    private long zzx;
    private long zzy;

    @Nullable
    private zzajb zzz;

    static {
        zzak zzakVar = new zzak();
        zzakVar.zzW(new ObfuscatedString(new long[]{2551207142312260357L, -1844226869599047196L, -1830081293976872713L, -8440336935420872429L}).toString());
        zzc = zzakVar.zzac();
    }

    @Deprecated
    public zzajc() {
        this(zzakp.zza, 32, null, null, zzgaa.zzl(), null);
    }

    private static int zza(int i) {
        if (i >= 0) {
            return i;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{2768359810244126187L, -3568256663344860508L, 4528489444800283592L, -2271344224806548888L, 6228116546583440107L}).toString() + i, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static zzae zzf(List list) {
        int i;
        zzaji zzajiVar;
        UUID uuid;
        int size = list.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2 = i + 1) {
            zzain zzainVar = (zzain) list.get(i2);
            if (zzainVar.zzd == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] zzM = zzainVar.zza.zzM();
                zzfp zzfpVar = new zzfp(zzM);
                if (zzfpVar.zze() >= 32) {
                    zzfpVar.zzK(0);
                    if (zzfpVar.zzg() == zzfpVar.zzb() + 4 && zzfpVar.zzg() == 1886614376) {
                        int zze = zzaio.zze(zzfpVar.zzg());
                        if (zze > 1) {
                            zzff.zzf(new ObfuscatedString(new long[]{8555526066151898953L, 4393442825350811626L, -843320576347111462L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7503892087399715208L, -7033399961529945556L, 5194522514906574506L, -3606277872169190397L, -7726097455215491248L}), new StringBuilder(), zze));
                        } else {
                            i = i2;
                            UUID uuid2 = new UUID(zzfpVar.zzt(), zzfpVar.zzt());
                            if (zze == 1) {
                                zzfpVar.zzL(zzfpVar.zzp() * 16);
                            }
                            int zzp = zzfpVar.zzp();
                            if (zzp == zzfpVar.zzb()) {
                                byte[] bArr = new byte[zzp];
                                zzfpVar.zzG(bArr, 0, zzp);
                                zzajiVar = new zzaji(uuid2, zze, bArr);
                                if (zzajiVar == null) {
                                    uuid = null;
                                } else {
                                    uuid = zzajiVar.zza;
                                }
                                if (uuid == null) {
                                    zzff.zzf(new ObfuscatedString(new long[]{-5122147683532507784L, 3825369840997795495L, 3769233784955207666L, -7320872588324263092L}).toString(), new ObfuscatedString(new long[]{-6318039275089625605L, -132124637093948166L, -5717072988418756553L, 8994360762988469070L, 5149831564791317966L, 8377509973593236969L, -8157866600296557703L}).toString());
                                } else {
                                    arrayList.add(new zzad(uuid, null, new ObfuscatedString(new long[]{4480888161392546803L, 43419944723878644L, 7365093830080538964L}).toString(), zzM));
                                }
                            }
                            zzajiVar = null;
                            if (zzajiVar == null) {
                            }
                            if (uuid == null) {
                            }
                        }
                    }
                }
                i = i2;
                zzajiVar = null;
                if (zzajiVar == null) {
                }
                if (uuid == null) {
                }
            } else {
                i = i2;
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new zzae(arrayList);
    }

    private final void zzg() {
        this.zzp = 0;
        this.zzs = 0;
    }

    private static void zzh(zzfp zzfpVar, int i, zzajo zzajoVar) {
        zzfpVar.zzK(i + 8);
        int zzg = zzfpVar.zzg();
        boolean z = true;
        if ((zzg & 1) == 0) {
            if ((zzg & 2) == 0) {
                z = false;
            }
            int zzp = zzfpVar.zzp();
            if (zzp == 0) {
                Arrays.fill(zzajoVar.zzl, 0, zzajoVar.zze, false);
                return;
            }
            int i2 = zzajoVar.zze;
            if (zzp == i2) {
                Arrays.fill(zzajoVar.zzl, 0, zzp, z);
                zzajoVar.zza(zzfpVar.zzb());
                zzfp zzfpVar2 = zzajoVar.zzn;
                zzfpVar.zzG(zzfpVar2.zzM(), 0, zzfpVar2.zze());
                zzajoVar.zzn.zzK(0);
                zzajoVar.zzo = false;
                return;
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{-8533529855874883968L, -9109345753409539961L, 5187205093408453632L, 3002506979988470044L}).toString() + zzp + new ObfuscatedString(new long[]{6316757797061231646L, 3236567508440124021L, -4735183059230746734L, -3363795183590950355L, 1714212535163800414L, -4518544351124109113L}).toString() + i2, null);
        }
        throw zzcc.zzc(new ObfuscatedString(new long[]{-4995475789300299017L, -5431871140740869634L, 8597598933948477992L, 4463177403402980928L, -3504720547190747005L, -8191364053227933366L, 7775169790335120618L, 3034927397494625516L}).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:143:0x0333, code lost:
    
        if (com.google.android.gms.internal.ads.zzfy.zzs(r36, 1000000, r5.zzd, java.math.RoundingMode.FLOOR) < r5.zze) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:337:0x0779, code lost:
    
        zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:338:0x077d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzi(long j) {
        zzajc zzajcVar;
        String str;
        SparseArray sparseArray;
        byte[] bArr;
        int i;
        zzaim zzaimVar;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        String str2;
        byte[] bArr2;
        byte[] bArr3;
        long zzv;
        boolean z;
        int i7;
        boolean z2;
        boolean z3;
        int i8;
        byte[] bArr4;
        int i9;
        zzajo zzajoVar;
        zzaim zzaimVar2;
        zzaim zzaimVar3;
        List list;
        int i10;
        zzajb zzajbVar;
        int i11;
        boolean z4;
        zzajb zzajbVar2;
        int i12;
        boolean z5;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        zzaix zzaixVar;
        int i20;
        int i21;
        zzajb zzajbVar3;
        long j2;
        boolean z6;
        long[] jArr;
        int i22;
        long zzu;
        boolean z7;
        long zzv2;
        final zzajc zzajcVar2 = this;
        loop0: while (true) {
            int i23 = 8;
            while (!zzajcVar2.zzn.isEmpty() && ((zzaim) zzajcVar2.zzn.peek()).zza == j) {
                zzaim zzaimVar4 = (zzaim) zzajcVar2.zzn.pop();
                int i24 = zzaimVar4.zzd;
                int i25 = 12;
                if (i24 == 1836019574) {
                    zzae zzf = zzf(zzaimVar4.zzb);
                    zzaim zza2 = zzaimVar4.zza(1836475768);
                    zza2.getClass();
                    SparseArray sparseArray2 = new SparseArray();
                    int size = zza2.zzb.size();
                    long j3 = -9223372036854775807L;
                    int i26 = 0;
                    while (i26 < size) {
                        zzain zzainVar = (zzain) zza2.zzb.get(i26);
                        int i27 = zzainVar.zzd;
                        if (i27 == 1953654136) {
                            zzfp zzfpVar = zzainVar.zza;
                            zzfpVar.zzK(i25);
                            Pair create = Pair.create(Integer.valueOf(zzfpVar.zzg()), new zzaix(zzfpVar.zzg() - 1, zzfpVar.zzg(), zzfpVar.zzg(), zzfpVar.zzg()));
                            sparseArray2.put(((Integer) create.first).intValue(), (zzaix) create.second);
                        } else if (i27 == 1835362404) {
                            zzfp zzfpVar2 = zzainVar.zza;
                            zzfpVar2.zzK(8);
                            if (zzaio.zze(zzfpVar2.zzg()) == 0) {
                                zzv2 = zzfpVar2.zzu();
                            } else {
                                zzv2 = zzfpVar2.zzv();
                            }
                            j3 = zzv2;
                        }
                        i26++;
                        i25 = 12;
                    }
                    List zzd = zzaiw.zzd(zzaimVar4, new zzadk(), j3, zzf, false, false, new zzfws() { // from class: com.google.android.gms.internal.ads.zzaiz
                        @Override // com.google.android.gms.internal.ads.zzfws
                        public final Object apply(Object obj) {
                            return (zzajm) obj;
                        }
                    });
                    int size2 = zzd.size();
                    if (zzajcVar2.zzf.size() == 0) {
                        for (int i28 = 0; i28 < size2; i28++) {
                            zzajp zzajpVar = (zzajp) zzd.get(i28);
                            zzajm zzajmVar = zzajpVar.zza;
                            zzajcVar2.zzf.put(zzajmVar.zza, new zzajb(zzajcVar2.zzE.zzw(i28, zzajmVar.zzb), zzajpVar, zzj(sparseArray2, zzajmVar.zza)));
                            zzajcVar2.zzx = Math.max(zzajcVar2.zzx, zzajmVar.zze);
                        }
                        zzajcVar2.zzE.zzD();
                    } else {
                        if (zzajcVar2.zzf.size() == size2) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        zzek.zzf(z7);
                        for (int i29 = 0; i29 < size2; i29++) {
                            zzajp zzajpVar2 = (zzajp) zzd.get(i29);
                            zzajm zzajmVar2 = zzajpVar2.zza;
                            ((zzajb) zzajcVar2.zzf.get(zzajmVar2.zza)).zzh(zzajpVar2, zzj(sparseArray2, zzajmVar2.zza));
                        }
                    }
                } else {
                    int i30 = 0;
                    if (i24 == 1836019558) {
                        SparseArray sparseArray3 = zzajcVar2.zzf;
                        byte[] bArr5 = zzajcVar2.zzj;
                        int size3 = zzaimVar4.zzc.size();
                        int i31 = 0;
                        while (i31 < size3) {
                            zzaim zzaimVar5 = (zzaim) zzaimVar4.zzc.get(i31);
                            if (zzaimVar5.zzd == 1953653094) {
                                zzain zzb2 = zzaimVar5.zzb(1952868452);
                                zzb2.getClass();
                                zzfp zzfpVar3 = zzb2.zza;
                                zzfpVar3.zzK(i23);
                                int zzg = zzfpVar3.zzg();
                                zzajb zzajbVar4 = (zzajb) sparseArray3.get(zzfpVar3.zzg());
                                if (zzajbVar4 == null) {
                                    zzajbVar4 = null;
                                } else {
                                    if ((zzg & 1) != 0) {
                                        long zzv3 = zzfpVar3.zzv();
                                        zzajo zzajoVar2 = zzajbVar4.zzb;
                                        zzajoVar2.zzb = zzv3;
                                        zzajoVar2.zzc = zzv3;
                                    }
                                    zzaix zzaixVar2 = zzajbVar4.zze;
                                    int zzg2 = (zzg & 2) != 0 ? zzfpVar3.zzg() - 1 : zzaixVar2.zza;
                                    if ((zzg & 8) != 0) {
                                        i3 = zzfpVar3.zzg();
                                    } else {
                                        i3 = zzaixVar2.zzb;
                                    }
                                    if ((zzg & 16) != 0) {
                                        i4 = zzfpVar3.zzg();
                                    } else {
                                        i4 = zzaixVar2.zzc;
                                    }
                                    if ((zzg & 32) != 0) {
                                        i5 = zzfpVar3.zzg();
                                    } else {
                                        i5 = zzaixVar2.zzd;
                                    }
                                    zzajbVar4.zzb.zza = new zzaix(zzg2, i3, i4, i5);
                                }
                                if (zzajbVar4 != null) {
                                    zzajo zzajoVar3 = zzajbVar4.zzb;
                                    long j4 = zzajoVar3.zzp;
                                    boolean z8 = zzajoVar3.zzq;
                                    zzajbVar4.zzi();
                                    zzajbVar4.zzl = true;
                                    zzain zzb3 = zzaimVar5.zzb(1952867444);
                                    if (zzb3 != null) {
                                        zzfp zzfpVar4 = zzb3.zza;
                                        zzfpVar4.zzK(i23);
                                        if (zzaio.zze(zzfpVar4.zzg()) == 1) {
                                            zzu = zzfpVar4.zzv();
                                        } else {
                                            zzu = zzfpVar4.zzu();
                                        }
                                        zzajoVar3.zzp = zzu;
                                        zzajoVar3.zzq = true;
                                    } else {
                                        zzajoVar3.zzp = j4;
                                        zzajoVar3.zzq = z8;
                                    }
                                    List list2 = zzaimVar5.zzb;
                                    int size4 = list2.size();
                                    int i32 = 0;
                                    int i33 = 0;
                                    int i34 = 0;
                                    while (true) {
                                        i6 = 1953658222;
                                        if (i32 >= size4) {
                                            break;
                                        }
                                        zzain zzainVar2 = (zzain) list2.get(i32);
                                        SparseArray sparseArray4 = sparseArray3;
                                        if (zzainVar2.zzd == 1953658222) {
                                            zzfp zzfpVar5 = zzainVar2.zza;
                                            zzfpVar5.zzK(12);
                                            int zzp = zzfpVar5.zzp();
                                            if (zzp > 0) {
                                                i34 += zzp;
                                                i22 = 1;
                                                i33++;
                                                i32 += i22;
                                                sparseArray3 = sparseArray4;
                                                i30 = 0;
                                            }
                                        }
                                        i22 = 1;
                                        i32 += i22;
                                        sparseArray3 = sparseArray4;
                                        i30 = 0;
                                    }
                                    sparseArray = sparseArray3;
                                    zzajbVar4.zzh = i30;
                                    zzajbVar4.zzg = i30;
                                    zzajbVar4.zzf = i30;
                                    zzajo zzajoVar4 = zzajbVar4.zzb;
                                    zzajoVar4.zzd = i33;
                                    zzajoVar4.zze = i34;
                                    if (zzajoVar4.zzg.length < i33) {
                                        zzajoVar4.zzf = new long[i33];
                                        zzajoVar4.zzg = new int[i33];
                                    }
                                    if (zzajoVar4.zzh.length < i34) {
                                        int i35 = (i34 * 125) / 100;
                                        zzajoVar4.zzh = new int[i35];
                                        zzajoVar4.zzi = new long[i35];
                                        zzajoVar4.zzj = new boolean[i35];
                                        zzajoVar4.zzl = new boolean[i35];
                                    }
                                    int i36 = 0;
                                    int i37 = 0;
                                    int i38 = 0;
                                    while (true) {
                                        long j5 = 0;
                                        if (i36 >= size4) {
                                            break;
                                        }
                                        zzain zzainVar3 = (zzain) list2.get(i36);
                                        if (zzainVar3.zzd == i6) {
                                            int i39 = i37 + 1;
                                            zzfp zzfpVar6 = zzainVar3.zza;
                                            zzfpVar6.zzK(8);
                                            int zzg3 = zzfpVar6.zzg();
                                            zzajm zzajmVar3 = zzajbVar4.zzd.zza;
                                            i9 = size3;
                                            zzajo zzajoVar5 = zzajbVar4.zzb;
                                            list = list2;
                                            zzaix zzaixVar3 = zzajoVar5.zza;
                                            int i40 = zzfy.zza;
                                            i10 = size4;
                                            zzajoVar5.zzg[i37] = zzfpVar6.zzp();
                                            long[] jArr2 = zzajoVar5.zzf;
                                            zzaimVar2 = zzaimVar5;
                                            zzaimVar3 = zzaimVar4;
                                            long j6 = zzajoVar5.zzb;
                                            jArr2[i37] = j6;
                                            if ((zzg3 & 1) != 0) {
                                                i8 = i36;
                                                jArr2[i37] = j6 + zzfpVar6.zzg();
                                            } else {
                                                i8 = i36;
                                            }
                                            if ((zzg3 & 4) != 0) {
                                                z4 = true;
                                            } else {
                                                z4 = false;
                                            }
                                            int i41 = zzaixVar3.zzd;
                                            if (z4) {
                                                i41 = zzfpVar6.zzg();
                                            }
                                            int i42 = zzg3 & 256;
                                            int i43 = zzg3 & 512;
                                            int i44 = zzg3 & 1024;
                                            int i45 = zzg3 & 2048;
                                            int i46 = i41;
                                            long[] jArr3 = zzajmVar3.zzh;
                                            if (jArr3 != null) {
                                                i11 = i31;
                                                bArr4 = bArr5;
                                                if (jArr3.length != 1 || (jArr = zzajmVar3.zzi) == null) {
                                                    z5 = z4;
                                                    zzajbVar2 = zzajbVar4;
                                                    i12 = i45;
                                                } else {
                                                    long j7 = jArr3[0];
                                                    if (j7 == 0) {
                                                        z5 = z4;
                                                        zzajbVar2 = zzajbVar4;
                                                        i12 = i45;
                                                    } else {
                                                        long j8 = j7 + jArr[0];
                                                        i12 = i45;
                                                        z5 = z4;
                                                        zzajbVar2 = zzajbVar4;
                                                    }
                                                    j5 = zzajmVar3.zzi[0];
                                                }
                                            } else {
                                                bArr4 = bArr5;
                                                zzajbVar2 = zzajbVar4;
                                                i12 = i45;
                                                i11 = i31;
                                                z5 = z4;
                                            }
                                            int[] iArr = zzajoVar5.zzh;
                                            long[] jArr4 = zzajoVar5.zzi;
                                            boolean[] zArr = zzajoVar5.zzj;
                                            int i47 = zzajoVar5.zzg[i37] + i38;
                                            long j9 = zzajmVar3.zzc;
                                            zzajoVar = zzajoVar3;
                                            long j10 = zzajoVar5.zzp;
                                            while (i38 < i47) {
                                                if (i42 != 0) {
                                                    i13 = i47;
                                                    i14 = zzfpVar6.zzg();
                                                } else {
                                                    i13 = i47;
                                                    i14 = zzaixVar3.zzb;
                                                }
                                                zza(i14);
                                                if (i43 != 0) {
                                                    i15 = i42;
                                                    i16 = zzfpVar6.zzg();
                                                } else {
                                                    i15 = i42;
                                                    i16 = zzaixVar3.zzc;
                                                }
                                                zza(i16);
                                                if (i44 != 0) {
                                                    i17 = i43;
                                                    i18 = zzfpVar6.zzg();
                                                } else {
                                                    i17 = i43;
                                                    if (i38 == 0) {
                                                        if (z5) {
                                                            i18 = i46;
                                                            i38 = 0;
                                                        } else {
                                                            i38 = 0;
                                                        }
                                                    }
                                                    i18 = zzaixVar3.zzd;
                                                }
                                                if (i12 != 0) {
                                                    i19 = i12;
                                                    zzaixVar = zzaixVar3;
                                                    i20 = i44;
                                                    i21 = zzfpVar6.zzg();
                                                } else {
                                                    i19 = i12;
                                                    zzaixVar = zzaixVar3;
                                                    i20 = i44;
                                                    i21 = 0;
                                                }
                                                long zzs = zzfy.zzs((i21 + j10) - j5, 1000000L, j9, RoundingMode.FLOOR);
                                                jArr4[i38] = zzs;
                                                if (!zzajoVar5.zzq) {
                                                    zzajbVar3 = zzajbVar2;
                                                    j2 = j9;
                                                    jArr4[i38] = zzs + zzajbVar3.zzd.zzh;
                                                } else {
                                                    zzajbVar3 = zzajbVar2;
                                                    j2 = j9;
                                                }
                                                iArr[i38] = i16;
                                                if (1 != (((i18 >> 16) & 1) ^ 1)) {
                                                    z6 = false;
                                                } else {
                                                    z6 = true;
                                                }
                                                zArr[i38] = z6;
                                                j10 += i14;
                                                i38++;
                                                j9 = j2;
                                                i47 = i13;
                                                i42 = i15;
                                                i43 = i17;
                                                zzaixVar3 = zzaixVar;
                                                i44 = i20;
                                                zzajbVar2 = zzajbVar3;
                                                i12 = i19;
                                            }
                                            int i48 = i47;
                                            zzajbVar = zzajbVar2;
                                            zzajoVar5.zzp = j10;
                                            i37 = i39;
                                            i38 = i48;
                                        } else {
                                            i8 = i36;
                                            bArr4 = bArr5;
                                            i9 = size3;
                                            zzajoVar = zzajoVar3;
                                            zzaimVar2 = zzaimVar5;
                                            zzaimVar3 = zzaimVar4;
                                            list = list2;
                                            i10 = size4;
                                            zzajbVar = zzajbVar4;
                                            i11 = i31;
                                        }
                                        i36 = i8 + 1;
                                        zzajbVar4 = zzajbVar;
                                        size3 = i9;
                                        list2 = list;
                                        size4 = i10;
                                        zzaimVar4 = zzaimVar3;
                                        zzaimVar5 = zzaimVar2;
                                        i31 = i11;
                                        bArr5 = bArr4;
                                        zzajoVar3 = zzajoVar;
                                        i6 = 1953658222;
                                    }
                                    byte[] bArr6 = bArr5;
                                    i = size3;
                                    zzajo zzajoVar6 = zzajoVar3;
                                    zzaim zzaimVar6 = zzaimVar5;
                                    zzaimVar = zzaimVar4;
                                    i2 = i31;
                                    zzajm zzajmVar4 = zzajbVar4.zzd.zza;
                                    zzaix zzaixVar4 = zzajoVar6.zza;
                                    zzaixVar4.getClass();
                                    zzajn zza3 = zzajmVar4.zza(zzaixVar4.zza);
                                    zzain zzb4 = zzaimVar6.zzb(1935763834);
                                    if (zzb4 != null) {
                                        zza3.getClass();
                                        zzfp zzfpVar7 = zzb4.zza;
                                        zzfpVar7.zzK(8);
                                        if ((zzfpVar7.zzg() & 1) == 1) {
                                            zzfpVar7.zzL(8);
                                        }
                                        int zzm = zzfpVar7.zzm();
                                        int zzp2 = zzfpVar7.zzp();
                                        int i49 = zzajoVar6.zze;
                                        if (zzp2 <= i49) {
                                            int i50 = zza3.zzd;
                                            if (zzm == 0) {
                                                boolean[] zArr2 = zzajoVar6.zzl;
                                                i7 = 0;
                                                for (int i51 = 0; i51 < zzp2; i51++) {
                                                    int zzm2 = zzfpVar7.zzm();
                                                    i7 += zzm2;
                                                    if (zzm2 > i50) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    zArr2[i51] = z3;
                                                }
                                                z2 = false;
                                            } else {
                                                if (zzm > i50) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                i7 = zzm * zzp2;
                                                z2 = false;
                                                Arrays.fill(zzajoVar6.zzl, 0, zzp2, z);
                                            }
                                            Arrays.fill(zzajoVar6.zzl, zzp2, zzajoVar6.zze, z2);
                                            if (i7 > 0) {
                                                zzajoVar6.zza(i7);
                                            }
                                        } else {
                                            throw zzcc.zza(new ObfuscatedString(new long[]{2970155362360154775L, -3438223712374016219L, -6774735996155454609L, 5545140082027446230L}).toString() + zzp2 + new ObfuscatedString(new long[]{7992412315775272167L, -8997095915731659674L, 6526072418686527227L, 6362157361002688392L, -8758635447759521765L, -6337341700960565814L}).toString() + i49, null);
                                        }
                                    }
                                    zzain zzb5 = zzaimVar6.zzb(1935763823);
                                    if (zzb5 != null) {
                                        zzfp zzfpVar8 = zzb5.zza;
                                        zzfpVar8.zzK(8);
                                        int zzg4 = zzfpVar8.zzg();
                                        if ((zzg4 & 1) == 1) {
                                            zzfpVar8.zzL(8);
                                        }
                                        int zzp3 = zzfpVar8.zzp();
                                        if (zzp3 == 1) {
                                            int zze = zzaio.zze(zzg4);
                                            long j11 = zzajoVar6.zzc;
                                            if (zze == 0) {
                                                zzv = zzfpVar8.zzu();
                                            } else {
                                                zzv = zzfpVar8.zzv();
                                            }
                                            zzajoVar6.zzc = j11 + zzv;
                                        } else {
                                            throw zzcc.zza(new ObfuscatedString(new long[]{-2485607780703972480L, 741074296414304589L, -5010861540681003303L, 6380467135751591477L, 6959868051673795355L}).toString() + zzp3, null);
                                        }
                                    }
                                    zzain zzb6 = zzaimVar6.zzb(1936027235);
                                    if (zzb6 != null) {
                                        zzh(zzb6.zza, 0, zzajoVar6);
                                    }
                                    if (zza3 != null) {
                                        str2 = zza3.zzb;
                                    } else {
                                        str2 = null;
                                    }
                                    zzfp zzfpVar9 = null;
                                    zzfp zzfpVar10 = null;
                                    for (int i52 = 0; i52 < zzaimVar6.zzb.size(); i52++) {
                                        zzain zzainVar4 = (zzain) zzaimVar6.zzb.get(i52);
                                        zzfp zzfpVar11 = zzainVar4.zza;
                                        int i53 = zzainVar4.zzd;
                                        if (i53 == 1935828848) {
                                            zzfpVar11.zzK(12);
                                            if (zzfpVar11.zzg() == 1936025959) {
                                                zzfpVar9 = zzfpVar11;
                                            }
                                        } else if (i53 == 1936158820) {
                                            zzfpVar11.zzK(12);
                                            if (zzfpVar11.zzg() == 1936025959) {
                                                zzfpVar10 = zzfpVar11;
                                            }
                                        }
                                    }
                                    if (zzfpVar9 != null && zzfpVar10 != null) {
                                        zzfpVar9.zzK(8);
                                        int zze2 = zzaio.zze(zzfpVar9.zzg());
                                        zzfpVar9.zzL(4);
                                        if (zze2 == 1) {
                                            zzfpVar9.zzL(4);
                                        }
                                        if (zzfpVar9.zzg() == 1) {
                                            zzfpVar10.zzK(8);
                                            int zze3 = zzaio.zze(zzfpVar10.zzg());
                                            zzfpVar10.zzL(4);
                                            if (zze3 == 1) {
                                                if (zzfpVar10.zzu() == 0) {
                                                    throw zzcc.zzc(new ObfuscatedString(new long[]{4420818397975741296L, 5879052395830402232L, -3266833515207867812L, 6981603594192189156L, -624167289342525660L, 7016915411688513570L, -2939239898658598287L, 2625521503452301306L}).toString());
                                                }
                                            } else if (zze3 >= 2) {
                                                zzfpVar10.zzL(4);
                                            }
                                            if (zzfpVar10.zzu() == 1) {
                                                zzfpVar10.zzL(1);
                                                int zzm3 = zzfpVar10.zzm();
                                                int i54 = (zzm3 & 240) >> 4;
                                                int i55 = zzm3 & 15;
                                                if (zzfpVar10.zzm() == 1) {
                                                    int zzm4 = zzfpVar10.zzm();
                                                    byte[] bArr7 = new byte[16];
                                                    zzfpVar10.zzG(bArr7, 0, 16);
                                                    if (zzm4 == 0) {
                                                        int zzm5 = zzfpVar10.zzm();
                                                        byte[] bArr8 = new byte[zzm5];
                                                        zzfpVar10.zzG(bArr8, 0, zzm5);
                                                        bArr3 = bArr8;
                                                    } else {
                                                        bArr3 = null;
                                                    }
                                                    zzajoVar6.zzk = true;
                                                    zzajoVar6.zzm = new zzajn(true, str2, zzm4, bArr7, i54, i55, bArr3);
                                                }
                                            } else {
                                                throw zzcc.zzc(new ObfuscatedString(new long[]{2987758237471202460L, 6602383768637497219L, 6741516671801515242L, -2661959810864175945L, -7645616476530568338L, 6333974898580527105L}).toString());
                                            }
                                        } else {
                                            throw zzcc.zzc(new ObfuscatedString(new long[]{-2946724615094072269L, 812694603350314001L, -6936594646778184551L, -19596161262791378L, -5510368366742124954L, 5029231053656808488L}).toString());
                                        }
                                    }
                                    int size5 = zzaimVar6.zzb.size();
                                    int i56 = 0;
                                    while (i56 < size5) {
                                        zzain zzainVar5 = (zzain) zzaimVar6.zzb.get(i56);
                                        if (zzainVar5.zzd == 1970628964) {
                                            zzfp zzfpVar12 = zzainVar5.zza;
                                            zzfpVar12.zzK(8);
                                            bArr2 = bArr6;
                                            zzfpVar12.zzG(bArr2, 0, 16);
                                            if (Arrays.equals(bArr2, zzb)) {
                                                zzh(zzfpVar12, 16, zzajoVar6);
                                            }
                                        } else {
                                            bArr2 = bArr6;
                                        }
                                        i56++;
                                        bArr6 = bArr2;
                                    }
                                    bArr = bArr6;
                                    i31 = i2 + 1;
                                    bArr5 = bArr;
                                    sparseArray3 = sparseArray;
                                    size3 = i;
                                    zzaimVar4 = zzaimVar;
                                    i30 = 0;
                                    i23 = 8;
                                }
                            }
                            sparseArray = sparseArray3;
                            bArr = bArr5;
                            i = size3;
                            zzaimVar = zzaimVar4;
                            i2 = i31;
                            i31 = i2 + 1;
                            bArr5 = bArr;
                            sparseArray3 = sparseArray;
                            size3 = i;
                            zzaimVar4 = zzaimVar;
                            i30 = 0;
                            i23 = 8;
                        }
                        zzae zzf2 = zzf(zzaimVar4.zzb);
                        zzajcVar = this;
                        if (zzf2 != null) {
                            int size6 = zzajcVar.zzf.size();
                            for (int i57 = 0; i57 < size6; i57++) {
                                zzajb zzajbVar5 = (zzajb) zzajcVar.zzf.valueAt(i57);
                                zzajm zzajmVar5 = zzajbVar5.zzd.zza;
                                zzaix zzaixVar5 = zzajbVar5.zzb.zza;
                                int i58 = zzfy.zza;
                                zzajn zza4 = zzajmVar5.zza(zzaixVar5.zza);
                                if (zza4 != null) {
                                    str = zza4.zzb;
                                } else {
                                    str = null;
                                }
                                zzae zzb7 = zzf2.zzb(str);
                                zzak zzb8 = zzajbVar5.zzd.zza.zzf.zzb();
                                zzb8.zzE(zzb7);
                                zzajbVar5.zza.zzl(zzb8.zzac());
                            }
                        }
                        if (zzajcVar.zzw != -9223372036854775807L) {
                            int size7 = zzajcVar.zzf.size();
                            for (int i59 = 0; i59 < size7; i59++) {
                                zzajb zzajbVar6 = (zzajb) zzajcVar.zzf.valueAt(i59);
                                long j12 = zzajcVar.zzw;
                                int i60 = zzajbVar6.zzf;
                                while (true) {
                                    zzajo zzajoVar7 = zzajbVar6.zzb;
                                    if (i60 < zzajoVar7.zze && zzajoVar7.zzi[i60] <= j12) {
                                        if (zzajoVar7.zzj[i60]) {
                                            zzajbVar6.zzi = i60;
                                        }
                                        i60++;
                                    }
                                }
                            }
                            zzajcVar.zzw = -9223372036854775807L;
                        }
                    } else {
                        zzajcVar = zzajcVar2;
                        if (!zzajcVar.zzn.isEmpty()) {
                            ((zzaim) zzajcVar.zzn.peek()).zzc(zzaimVar4);
                        }
                    }
                    zzajcVar2 = zzajcVar;
                }
            }
        }
    }

    private static final zzaix zzj(SparseArray sparseArray, int i) {
        if (sparseArray.size() == 1) {
            return (zzaix) sparseArray.valueAt(0);
        }
        zzaix zzaixVar = (zzaix) sparseArray.get(i);
        zzaixVar.getClass();
        return zzaixVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ac, code lost:
    
        r39.zzC = r7 - 1;
        r39.zzg.zzK(r15);
        r3.zzr(r39.zzg, r5);
        r3.zzr(r39.zzh, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01c2, code lost:
    
        if (r39.zzG.length <= 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c4, code lost:
    
        r7 = r2.zzf.zzm;
        r14 = r6[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01dc, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{846183324318285259L, -999854669051683182L, -5096402769862647623L}).toString().equals(r7) == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01e1, code lost:
    
        if ((r14 & com.google.common.base.Ascii.US) == 6) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01e4, code lost:
    
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0203, code lost:
    
        r39.zzD = r5;
        r39.zzB += 5;
        r39.zzA += r4;
        r5 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0212, code lost:
    
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01f8, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{3034329110128611311L, -3528151127929456729L, 1366496132080653575L}).toString().equals(r7) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01ff, code lost:
    
        if (((r14 & 126) >> r9) != 39) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0202, code lost:
    
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0229, code lost:
    
        throw com.google.android.gms.internal.ads.zzcc.zza(new com.panda912.muddy.ObfuscatedString(new long[]{-4496480287838573966L, -6058953735703990044L, -2920806129229944020L, 3101234683173570256L}).toString(), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x022c, code lost:
    
        if (r39.zzD == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x022e, code lost:
    
        r39.zzi.zzH(r7);
        ((com.google.android.gms.internal.ads.zzack) r40).zzn(r39.zzi.zzM(), 0, r39.zzC, false);
        r3.zzr(r39.zzi, r39.zzC);
        r5 = r39.zzC;
        r7 = r39.zzi;
        r7 = com.google.android.gms.internal.ads.zzgm.zzb(r7.zzM(), r7.zze());
        r16 = r2;
        r39.zzi.zzK(new com.panda912.muddy.ObfuscatedString(new long[]{7541690543129942912L, 1871314630847193938L, -5535433774984154345L}).toString().equals(r2.zzf.zzm) ? 1 : 0);
        r39.zzi.zzJ(r7);
        com.google.android.gms.internal.ads.zzach.zza(r11, r39.zzi, r39.zzG);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x028a, code lost:
    
        r39.zzB += r5;
        r39.zzC -= r5;
        r2 = r16;
        r5 = 4;
        r9 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0283, code lost:
    
        r16 = r2;
        r5 = r3.zzf(r40, r7, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x02ff, code lost:
    
        r2 = r39.zzf.size();
        r3 = null;
        r4 = 0;
        r11 = Long.MAX_VALUE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x030c, code lost:
    
        if (r4 >= r2) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x030e, code lost:
    
        r5 = ((com.google.android.gms.internal.ads.zzajb) r39.zzf.valueAt(r4)).zzb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x031a, code lost:
    
        if (r5.zzo == false) goto L390;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x031c, code lost:
    
        r9 = r5.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0320, code lost:
    
        if (r9 >= r11) goto L391;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0322, code lost:
    
        r3 = (com.google.android.gms.internal.ads.zzajb) r39.zzf.valueAt(r4);
        r11 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x032b, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x032e, code lost:
    
        if (r3 != null) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0330, code lost:
    
        r39.zzp = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0336, code lost:
    
        r2 = (int) (r11 - r40.zzf());
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x033c, code lost:
    
        if (r2 < 0) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x033e, code lost:
    
        r4 = (com.google.android.gms.internal.ads.zzack) r40;
        r4.zzo(r2, false);
        r2 = r3.zzb;
        r3 = r2.zzn;
        r4.zzn(r3.zzM(), 0, r3.zze(), false);
        r2.zzn.zzK(0);
        r2.zzo = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0370, code lost:
    
        throw com.google.android.gms.internal.ads.zzcc.zza(new com.panda912.muddy.ObfuscatedString(new long[]{5905464568484863447L, -3157774343007713929L, 7128656801347365786L, 2501011426910152703L, -5538032295907411982L, -7412762166691674582L}).toString(), null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c1, code lost:
    
        if (r39.zzp != 3) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c3, code lost:
    
        r2 = r10.zzb();
        r39.zzA = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cd, code lost:
    
        if (r10.zzf >= r10.zzi) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cf, code lost:
    
        ((com.google.android.gms.internal.ads.zzack) r40).zzo(r2, false);
        r1 = r10.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d8, code lost:
    
        if (r1 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00db, code lost:
    
        r2 = r10.zzb.zzn;
        r1 = r1.zzd;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e1, code lost:
    
        if (r1 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e3, code lost:
    
        r2.zzL(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ee, code lost:
    
        if (r10.zzb.zzb(r10.zzf) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
    
        r2.zzL(r2.zzq() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00fd, code lost:
    
        if (r10.zzk() != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ff, code lost:
    
        r39.zzz = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x02fb, code lost:
    
        r39.zzp = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x02fe, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0109, code lost:
    
        if (r10.zzd.zza.zzg != 1) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010b, code lost:
    
        r39.zzA = r2 - 8;
        ((com.google.android.gms.internal.ads.zzack) r40).zzo(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x012f, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{3449748555816696635L, 6526228884661397568L, -5766871908099132425L}).toString().equals(r10.zzd.zza.zzf.zzm) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0131, code lost:
    
        r39.zzB = r10.zzc(r39.zzA, 7);
        com.google.android.gms.internal.ads.zzaby.zzb(r39.zzA, r39.zzk);
        r10.zza.zzr(r39.zzk, 7);
        r2 = r39.zzB + 7;
        r39.zzB = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0156, code lost:
    
        r39.zzA += r2;
        r39.zzp = r5;
        r39.zzC = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x014e, code lost:
    
        r2 = r10.zzc(r39.zzA, 0);
        r39.zzB = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x015f, code lost:
    
        r2 = r10.zzd.zza;
        r3 = r10.zza;
        r11 = r10.zze();
        r4 = r2.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x016b, code lost:
    
        if (r4 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016d, code lost:
    
        r2 = r39.zzB;
        r4 = r39.zzA;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0171, code lost:
    
        if (r2 >= r4) goto L379;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0173, code lost:
    
        r39.zzB += r3.zzf(r40, r4 - r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x029b, code lost:
    
        r23 = r10.zza();
        r1 = r10.zzf();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x02a3, code lost:
    
        if (r1 == null) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x02a5, code lost:
    
        r26 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x02ac, code lost:
    
        r3.zzt(r11, r23, r39.zzA, 0, r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02bf, code lost:
    
        if (r39.zzo.isEmpty() != false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x02c1, code lost:
    
        r1 = (com.google.android.gms.internal.ads.zzaja) r39.zzo.removeFirst();
        r39.zzv -= r1.zzc;
        r2 = r1.zza;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02d4, code lost:
    
        if (r1.zzb == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02d6, code lost:
    
        r2 = r2 + r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x02d7, code lost:
    
        r4 = r39.zzF;
        r5 = r4.length;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x02db, code lost:
    
        if (r6 >= r5) goto L383;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02dd, code lost:
    
        r4[r6].zzt(r2, 1, r1.zzc, r39.zzv, null);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02f6, code lost:
    
        if (r10.zzk() != false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f8, code lost:
    
        r39.zzz = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02aa, code lost:
    
        r26 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x017e, code lost:
    
        r6 = r39.zzh.zzM();
        r6[0] = 0;
        r6[1] = 0;
        r6[2] = 0;
        r13 = r4 + 1;
        r4 = 4 - r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0193, code lost:
    
        if (r39.zzB >= r39.zzA) goto L384;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0195, code lost:
    
        r7 = r39.zzC;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0197, code lost:
    
        if (r7 != 0) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0199, code lost:
    
        ((com.google.android.gms.internal.ads.zzack) r40).zzn(r6, r4, r13, r15);
        r39.zzh.zzK(r15);
        r7 = r39.zzh.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01aa, code lost:
    
        if (r7 <= 0) goto L385;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v7, types: [int, boolean] */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        long zzs;
        long j;
        long zzs2;
        String str;
        String str2;
        long zzu;
        long zzv;
        long zzv2;
        boolean z;
        boolean z2;
        loop0: while (true) {
            int i = 4;
            int i2 = 6;
            while (true) {
                int i3 = 1;
                while (true) {
                    int i4 = this.zzp;
                    ?? r15 = 0;
                    if (i4 == 0) {
                        if (this.zzs == 0) {
                            if (!zzacvVar.zzn(this.zzm.zzM(), 0, 8, true)) {
                                return -1;
                            }
                            this.zzs = 8;
                            this.zzm.zzK(0);
                            this.zzr = this.zzm.zzu();
                            this.zzq = this.zzm.zzg();
                        }
                        long j2 = this.zzr;
                        if (j2 == 1) {
                            ((zzack) zzacvVar).zzn(this.zzm.zzM(), 8, 8, false);
                            this.zzs += 8;
                            this.zzr = this.zzm.zzv();
                        } else if (j2 == 0) {
                            long zzd = zzacvVar.zzd();
                            if (zzd == -1) {
                                zzd = !this.zzn.isEmpty() ? ((zzaim) this.zzn.peek()).zza : -1L;
                            }
                            if (zzd != -1) {
                                this.zzr = (zzd - zzacvVar.zzf()) + this.zzs;
                            }
                        }
                        long j3 = this.zzr;
                        long j4 = this.zzs;
                        if (j3 >= j4) {
                            long zzf = zzacvVar.zzf() - j4;
                            int i5 = this.zzq;
                            if ((i5 == 1836019558 || i5 == 1835295092) && !this.zzH) {
                                this.zzE.zzO(new zzadt(this.zzx, zzf));
                                this.zzH = true;
                            }
                            if (this.zzq == 1836019558) {
                                int size = this.zzf.size();
                                for (int i6 = 0; i6 < size; i6++) {
                                    zzajo zzajoVar = ((zzajb) this.zzf.valueAt(i6)).zzb;
                                    zzajoVar.zzc = zzf;
                                    zzajoVar.zzb = zzf;
                                }
                            }
                            int i7 = this.zzq;
                            if (i7 == 1835295092) {
                                this.zzz = null;
                                this.zzu = zzf + this.zzr;
                                this.zzp = 2;
                            } else if (i7 == 1836019574 || i7 == 1953653099 || i7 == 1835297121 || i7 == 1835626086 || i7 == 1937007212 || i7 == 1836019558 || i7 == 1953653094 || i7 == 1836475768 || i7 == 1701082227) {
                                long zzf2 = (zzacvVar.zzf() + this.zzr) - 8;
                                this.zzn.push(new zzaim(i7, zzf2));
                                if (this.zzr == this.zzs) {
                                    zzi(zzf2);
                                } else {
                                    zzg();
                                }
                            } else if (i7 == 1751411826 || i7 == 1835296868 || i7 == 1836476516 || i7 == 1936286840 || i7 == 1937011556 || i7 == 1937011827 || i7 == 1668576371 || i7 == 1937011555 || i7 == 1937011578 || i7 == 1937013298 || i7 == 1937007471 || i7 == 1668232756 || i7 == 1937011571 || i7 == 1952867444 || i7 == 1952868452 || i7 == 1953196132 || i7 == 1953654136 || i7 == 1953658222 || i7 == 1886614376 || i7 == 1935763834 || i7 == 1935763823 || i7 == 1936027235 || i7 == 1970628964 || i7 == 1935828848 || i7 == 1936158820 || i7 == 1701606260 || i7 == 1835362404 || i7 == 1701671783) {
                                if (this.zzs != 8) {
                                    throw zzcc.zzc(new ObfuscatedString(new long[]{-2745586218552429188L, 6010711057110778473L, -4440546243409912609L, -3675253054504769442L, -677251191578774966L, -5158652075981332390L, 6062405289467290698L, -1241067679485975016L}).toString());
                                }
                                if (this.zzr <= 2147483647L) {
                                    zzfp zzfpVar = new zzfp((int) this.zzr);
                                    System.arraycopy(this.zzm.zzM(), 0, zzfpVar.zzM(), 0, 8);
                                    this.zzt = zzfpVar;
                                    this.zzp = 1;
                                } else {
                                    throw zzcc.zzc(new ObfuscatedString(new long[]{6422330777421726379L, 7442316375777101123L, 4065658949997834658L, 8458683651305961783L, 9126000365333107757L, 1375984170770167995L, -5835910911923701851L, 5717081052558929654L}).toString());
                                }
                            } else if (this.zzr <= 2147483647L) {
                                this.zzt = null;
                                this.zzp = 1;
                            } else {
                                throw zzcc.zzc(new ObfuscatedString(new long[]{-8598262901106864660L, 5633855115922880035L, 6889543719211746540L, -1230656167194115198L, -8867263653015316462L, -4502943441554273860L, 3373956229325847186L, -2318950238224743827L}).toString());
                            }
                        } else {
                            throw zzcc.zzc(new ObfuscatedString(new long[]{-6012329492059267126L, -5130685284911424036L, -8067385394506165803L, 1446263376115777706L, 1212821050359226678L, 8107929543885822208L, 8607317640371046796L}).toString());
                        }
                    } else if (i4 == 1) {
                        int i8 = ((int) this.zzr) - this.zzs;
                        zzfp zzfpVar2 = this.zzt;
                        if (zzfpVar2 != null) {
                            ((zzack) zzacvVar).zzn(zzfpVar2.zzM(), 8, i8, false);
                            zzain zzainVar = new zzain(this.zzq, zzfpVar2);
                            long zzf3 = zzacvVar.zzf();
                            if (!this.zzn.isEmpty()) {
                                ((zzaim) this.zzn.peek()).zzd(zzainVar);
                            } else {
                                int i9 = zzainVar.zzd;
                                if (i9 == 1936286840) {
                                    zzfp zzfpVar3 = zzainVar.zza;
                                    zzfpVar3.zzK(8);
                                    int zze = zzaio.zze(zzfpVar3.zzg());
                                    zzfpVar3.zzL(4);
                                    long zzu2 = zzfpVar3.zzu();
                                    if (zze == 0) {
                                        zzv = zzfpVar3.zzu();
                                        zzv2 = zzfpVar3.zzu();
                                    } else {
                                        zzv = zzfpVar3.zzv();
                                        zzv2 = zzfpVar3.zzv();
                                    }
                                    long j5 = zzv;
                                    long j6 = zzv2 + zzf3;
                                    long zzs3 = zzfy.zzs(j5, 1000000L, zzu2, RoundingMode.FLOOR);
                                    zzfpVar3.zzL(2);
                                    int zzq = zzfpVar3.zzq();
                                    int[] iArr = new int[zzq];
                                    long[] jArr = new long[zzq];
                                    long[] jArr2 = new long[zzq];
                                    long[] jArr3 = new long[zzq];
                                    long j7 = zzs3;
                                    int i10 = 0;
                                    while (i10 < zzq) {
                                        int zzg = zzfpVar3.zzg();
                                        if ((zzg & Integer.MIN_VALUE) == 0) {
                                            long zzu3 = zzfpVar3.zzu();
                                            iArr[i10] = zzg & Integer.MAX_VALUE;
                                            jArr[i10] = j6;
                                            jArr3[i10] = j7;
                                            long j8 = j5 + zzu3;
                                            int i11 = i10;
                                            long[] jArr4 = jArr2;
                                            long[] jArr5 = jArr3;
                                            j7 = zzfy.zzs(j8, 1000000L, zzu2, RoundingMode.FLOOR);
                                            jArr4[i11] = j7 - jArr5[i11];
                                            zzfpVar3.zzL(4);
                                            j6 += iArr[i11];
                                            i10 = i11 + 1;
                                            jArr = jArr;
                                            jArr3 = jArr5;
                                            jArr2 = jArr4;
                                            j5 = j8;
                                        } else {
                                            throw zzcc.zza(new ObfuscatedString(new long[]{-5980027923209009109L, -7326986069215327995L, 8490419312045032448L, 3717661378744642984L, -60014752927099888L}).toString(), null);
                                        }
                                    }
                                    Pair create = Pair.create(Long.valueOf(zzs3), new zzaci(iArr, jArr, jArr2, jArr3));
                                    this.zzy = ((Long) create.first).longValue();
                                    this.zzE.zzO((zzadu) create.second);
                                    this.zzH = true;
                                } else if (i9 == 1701671783) {
                                    zzfp zzfpVar4 = zzainVar.zza;
                                    if (this.zzF.length != 0) {
                                        zzfpVar4.zzK(8);
                                        int zze2 = zzaio.zze(zzfpVar4.zzg());
                                        if (zze2 == 0) {
                                            String zzx = zzfpVar4.zzx((char) 0);
                                            zzx.getClass();
                                            String zzx2 = zzfpVar4.zzx((char) 0);
                                            zzx2.getClass();
                                            long zzu4 = zzfpVar4.zzu();
                                            long zzu5 = zzfpVar4.zzu();
                                            RoundingMode roundingMode = RoundingMode.FLOOR;
                                            zzs = zzfy.zzs(zzu5, 1000000L, zzu4, roundingMode);
                                            long j9 = this.zzy;
                                            j = j9 != -9223372036854775807L ? j9 + zzs : -9223372036854775807L;
                                            zzs2 = zzfy.zzs(zzfpVar4.zzu(), 1000L, zzu4, roundingMode);
                                            str = zzx;
                                            str2 = zzx2;
                                            zzu = zzfpVar4.zzu();
                                        } else if (zze2 != 1) {
                                            zzff.zzf(new ObfuscatedString(new long[]{-5657345520031092156L, -2979066934840834546L, -4349819958969512159L, 4919015109203527290L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8437602880282315303L, 7660714538746500374L, 2422023200460716445L, 64522594633792561L, -3569698597476785812L, 4597732464986651972L}), new StringBuilder(), zze2));
                                        } else {
                                            long zzu6 = zzfpVar4.zzu();
                                            long zzv3 = zzfpVar4.zzv();
                                            RoundingMode roundingMode2 = RoundingMode.FLOOR;
                                            long zzs4 = zzfy.zzs(zzv3, 1000000L, zzu6, roundingMode2);
                                            long zzs5 = zzfy.zzs(zzfpVar4.zzu(), 1000L, zzu6, roundingMode2);
                                            long zzu7 = zzfpVar4.zzu();
                                            String zzx3 = zzfpVar4.zzx((char) 0);
                                            zzx3.getClass();
                                            String zzx4 = zzfpVar4.zzx((char) 0);
                                            zzx4.getClass();
                                            zzs2 = zzs5;
                                            zzu = zzu7;
                                            str = zzx3;
                                            str2 = zzx4;
                                            j = zzs4;
                                            zzs = -9223372036854775807L;
                                        }
                                        byte[] bArr = new byte[zzfpVar4.zzb()];
                                        zzfpVar4.zzG(bArr, 0, zzfpVar4.zzb());
                                        zzfp zzfpVar5 = new zzfp(this.zzl.zza(new zzaft(str, str2, zzs2, zzu, bArr)));
                                        int zzb2 = zzfpVar5.zzb();
                                        for (zzaea zzaeaVar : this.zzF) {
                                            zzfpVar5.zzK(0);
                                            zzaeaVar.zzr(zzfpVar5, zzb2);
                                        }
                                        if (j == -9223372036854775807L) {
                                            this.zzo.addLast(new zzaja(zzs, true, zzb2));
                                            this.zzv += zzb2;
                                        } else if (this.zzo.isEmpty()) {
                                            for (zzaea zzaeaVar2 : this.zzF) {
                                                zzaeaVar2.zzt(j, 1, zzb2, 0, null);
                                            }
                                        } else {
                                            this.zzo.addLast(new zzaja(j, false, zzb2));
                                            this.zzv += zzb2;
                                        }
                                    }
                                }
                            }
                        } else {
                            ((zzack) zzacvVar).zzo(i8, false);
                        }
                        zzi(zzacvVar.zzf());
                    } else {
                        if (i4 == 2) {
                            break;
                        }
                        zzajb zzajbVar = this.zzz;
                        if (zzajbVar != null) {
                            break loop0;
                        }
                        SparseArray sparseArray = this.zzf;
                        int size2 = sparseArray.size();
                        zzajb zzajbVar2 = null;
                        long j10 = Long.MAX_VALUE;
                        for (int i12 = 0; i12 < size2; i12++) {
                            zzajb zzajbVar3 = (zzajb) sparseArray.valueAt(i12);
                            z = zzajbVar3.zzl;
                            if (z || zzajbVar3.zzf != zzajbVar3.zzd.zzb) {
                                z2 = zzajbVar3.zzl;
                                if (!z2 || zzajbVar3.zzh != zzajbVar3.zzb.zzd) {
                                    long zzd2 = zzajbVar3.zzd();
                                    if (zzd2 < j10) {
                                        zzajbVar2 = zzajbVar3;
                                        j10 = zzd2;
                                    }
                                }
                            }
                        }
                        if (zzajbVar2 == null) {
                            int zzf4 = (int) (this.zzu - zzacvVar.zzf());
                            if (zzf4 >= 0) {
                                ((zzack) zzacvVar).zzo(zzf4, false);
                                zzg();
                            } else {
                                long[] jArr6 = new long[i2];
                                // fill-array-data instruction
                                jArr6[0] = -5106094293962431348L;
                                jArr6[1] = -7493041347018918373L;
                                jArr6[2] = -315865051527876623L;
                                jArr6[3] = -7274081248524763387L;
                                jArr6[4] = -3174340008196097475L;
                                jArr6[5] = 6228196341343337371L;
                                throw zzcc.zza(new ObfuscatedString(jArr6).toString(), null);
                            }
                        } else {
                            int zzd3 = (int) (zzajbVar2.zzd() - zzacvVar.zzf());
                            if (zzd3 < 0) {
                                long[] jArr7 = new long[i];
                                // fill-array-data instruction
                                jArr7[0] = 3818007788409886413L;
                                jArr7[1] = 5908625335321895760L;
                                jArr7[2] = 1258577873644518382L;
                                jArr7[3] = -7079139455693862928L;
                                long[] jArr8 = new long[i2];
                                // fill-array-data instruction
                                jArr8[0] = -6145340591796114752L;
                                jArr8[1] = 6833074302487583409L;
                                jArr8[2] = -7104302596506694406L;
                                jArr8[3] = 3124573991194709572L;
                                jArr8[4] = -8416913692227233907L;
                                jArr8[5] = -7506833472644137265L;
                                zzff.zzf(new ObfuscatedString(jArr7).toString(), new ObfuscatedString(jArr8).toString());
                                zzd3 = 0;
                            }
                            ((zzack) zzacvVar).zzo(zzd3, false);
                            this.zzz = zzajbVar2;
                            zzajbVar = zzajbVar2;
                        }
                    }
                }
                i = 4;
                i2 = 6;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzE = zzacxVar;
        zzg();
        zzaea[] zzaeaVarArr = new zzaea[2];
        this.zzF = zzaeaVarArr;
        int i = 0;
        zzaea[] zzaeaVarArr2 = (zzaea[]) zzfy.zzL(zzaeaVarArr, 0);
        this.zzF = zzaeaVarArr2;
        for (zzaea zzaeaVar : zzaeaVarArr2) {
            zzaeaVar.zzl(zzc);
        }
        this.zzG = new zzaea[this.zze.size()];
        int i2 = 100;
        while (i < this.zzG.length) {
            int i3 = i2 + 1;
            zzaea zzw = this.zzE.zzw(i2, 3);
            zzw.zzl((zzam) this.zze.get(i));
            this.zzG[i] = zzw;
            i++;
            i2 = i3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        int size = this.zzf.size();
        for (int i = 0; i < size; i++) {
            ((zzajb) this.zzf.valueAt(i)).zzi();
        }
        this.zzo.clear();
        this.zzv = 0;
        this.zzw = j2;
        this.zzn.clear();
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        return zzajl.zza(zzacvVar);
    }

    public zzajc(zzakp zzakpVar, int i, @Nullable zzfw zzfwVar, @Nullable zzajm zzajmVar, List list, @Nullable zzaea zzaeaVar) {
        this.zzd = zzakpVar;
        this.zze = DesugarCollections.unmodifiableList(list);
        this.zzl = new zzafu();
        this.zzm = new zzfp(16);
        this.zzg = new zzfp(zzgm.zza);
        this.zzh = new zzfp(5);
        this.zzi = new zzfp();
        byte[] bArr = new byte[16];
        this.zzj = bArr;
        this.zzk = new zzfp(bArr);
        this.zzn = new ArrayDeque();
        this.zzo = new ArrayDeque();
        this.zzf = new SparseArray();
        this.zzx = -9223372036854775807L;
        this.zzw = -9223372036854775807L;
        this.zzy = -9223372036854775807L;
        this.zzE = zzacx.zza;
        this.zzF = new zzaea[0];
        this.zzG = new zzaea[0];
    }
}
