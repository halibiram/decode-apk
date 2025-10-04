package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* loaded from: classes2.dex */
final class zzvf implements zzup, zzuo {
    private final zzup[] zza;

    @Nullable
    private zzuo zze;

    @Nullable
    private zzws zzf;
    private final zzuc zzi;
    private final ArrayList zzc = new ArrayList();
    private final HashMap zzd = new HashMap();
    private zzwj zzh = new zzub(new zzwj[0]);
    private final IdentityHashMap zzb = new IdentityHashMap();
    private zzup[] zzg = new zzup[0];

    public zzvf(zzuc zzucVar, long[] jArr, zzup... zzupVarArr) {
        this.zzi = zzucVar;
        this.zza = zzupVarArr;
        for (int i = 0; i < zzupVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zza[i] = new zzwp(zzupVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zza(long j, zzmj zzmjVar) {
        zzup zzupVar;
        zzup[] zzupVarArr = this.zzg;
        if (zzupVarArr.length > 0) {
            zzupVar = zzupVarArr[0];
        } else {
            zzupVar = this.zza[0];
        }
        return zzupVar.zza(j, zzmjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final long zzb() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final long zzc() {
        return this.zzh.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzd() {
        long j = -9223372036854775807L;
        for (zzup zzupVar : this.zzg) {
            long zzd = zzupVar.zzd();
            if (zzd != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (zzup zzupVar2 : this.zzg) {
                        if (zzupVar2 == zzupVar) {
                            break;
                        }
                        if (zzupVar2.zze(zzd) != zzd) {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{-1218004417012696433L, 5970267702937431490L, 3784269314541131262L, 5122701523400214586L, -3030107721715290434L, 991259322434323070L}).toString());
                        }
                    }
                    j = zzd;
                } else if (zzd != j) {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{8141552518053742855L, 8389970639145077309L, 7445917085262858010L, -4985691710002119426L, 5980102227629566361L}).toString());
                }
            } else if (j != -9223372036854775807L && zzupVar.zze(j) != j) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-741434058361838232L, -5406695079900828127L, 4977293608476036982L, -1988256557497080529L, -7087377069551668916L, -8920557339318541542L}).toString());
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zze(long j) {
        long zze = this.zzg[0].zze(j);
        int i = 1;
        while (true) {
            zzup[] zzupVarArr = this.zzg;
            if (i < zzupVarArr.length) {
                if (zzupVarArr[i].zze(zze) == zze) {
                    i++;
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-4348463028046072547L, 4028570839825256597L, 751437773878599457L, 6214534235720343105L, -969593437774614252L, -4567635788225524655L}).toString());
                }
            } else {
                return zze;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final long zzf(zzyi[] zzyiVarArr, boolean[] zArr, zzwh[] zzwhVarArr, boolean[] zArr2, long j) {
        int length;
        boolean z;
        zzwh zzwhVar;
        int intValue;
        int length2 = zzyiVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzyiVarArr.length;
            Integer num = null;
            if (i >= length) {
                break;
            }
            zzwh zzwhVar2 = zzwhVarArr[i];
            if (zzwhVar2 != null) {
                num = (Integer) this.zzb.get(zzwhVar2);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr[i] = intValue;
            zzyi zzyiVar = zzyiVarArr[i];
            if (zzyiVar != null) {
                String str = zzyiVar.zze().zzc;
                iArr2[i] = Integer.parseInt(str.substring(0, str.indexOf(new ObfuscatedString(new long[]{5002996662929077132L, 7311857248011022300L}).toString())));
            } else {
                iArr2[i] = -1;
            }
            i++;
        }
        this.zzb.clear();
        zzwh[] zzwhVarArr2 = new zzwh[length];
        zzwh[] zzwhVarArr3 = new zzwh[length];
        zzyi[] zzyiVarArr2 = new zzyi[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        long j2 = j;
        int i2 = 0;
        while (i2 < this.zza.length) {
            for (int i3 = 0; i3 < zzyiVarArr.length; i3++) {
                if (iArr[i3] == i2) {
                    zzwhVar = zzwhVarArr[i3];
                } else {
                    zzwhVar = null;
                }
                zzwhVarArr3[i3] = zzwhVar;
                if (iArr2[i3] == i2) {
                    zzyi zzyiVar2 = zzyiVarArr[i3];
                    zzyiVar2.getClass();
                    zzcz zzczVar = (zzcz) this.zzd.get(zzyiVar2.zze());
                    zzczVar.getClass();
                    zzyiVarArr2[i3] = new zzve(zzyiVar2, zzczVar);
                } else {
                    zzyiVarArr2[i3] = null;
                }
            }
            ArrayList arrayList2 = arrayList;
            zzyi[] zzyiVarArr3 = zzyiVarArr2;
            zzwh[] zzwhVarArr4 = zzwhVarArr3;
            long zzf = this.zza[i2].zzf(zzyiVarArr2, zArr, zzwhVarArr3, zArr2, j2);
            if (i2 == 0) {
                j2 = zzf;
            } else if (zzf != j2) {
                throw new IllegalStateException(new ObfuscatedString(new long[]{5981809921293590862L, 5866819908263502945L, 5426858333660452739L, -8396868361418635232L, -5696544824097132492L, 6384564601039857820L}).toString());
            }
            boolean z2 = false;
            for (int i4 = 0; i4 < zzyiVarArr.length; i4++) {
                if (iArr2[i4] == i2) {
                    zzwh zzwhVar3 = zzwhVarArr4[i4];
                    zzwhVar3.getClass();
                    zzwhVarArr2[i4] = zzwhVar3;
                    this.zzb.put(zzwhVar3, Integer.valueOf(i2));
                    z2 = true;
                } else if (iArr[i4] == i2) {
                    if (zzwhVarArr4[i4] == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zzek.zzf(z);
                }
            }
            if (z2) {
                arrayList2.add(this.zza[i2]);
            }
            i2++;
            arrayList = arrayList2;
            zzyiVarArr2 = zzyiVarArr3;
            zzwhVarArr3 = zzwhVarArr4;
        }
        System.arraycopy(zzwhVarArr2, 0, zzwhVarArr, 0, length);
        zzup[] zzupVarArr = (zzup[]) arrayList.toArray(new zzup[0]);
        this.zzg = zzupVarArr;
        this.zzh = new zzub(zzupVarArr);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final /* bridge */ /* synthetic */ void zzg(zzwj zzwjVar) {
        zzuo zzuoVar = this.zze;
        zzuoVar.getClass();
        zzuoVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final zzws zzh() {
        zzws zzwsVar = this.zzf;
        zzwsVar.getClass();
        return zzwsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzuo
    public final void zzi(zzup zzupVar) {
        this.zzc.remove(zzupVar);
        if (!this.zzc.isEmpty()) {
            return;
        }
        int i = 0;
        for (zzup zzupVar2 : this.zza) {
            i += zzupVar2.zzh().zzc;
        }
        zzcz[] zzczVarArr = new zzcz[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzup[] zzupVarArr = this.zza;
            if (i2 < zzupVarArr.length) {
                zzws zzh = zzupVarArr[i2].zzh();
                int i4 = zzh.zzc;
                int i5 = 0;
                while (i5 < i4) {
                    zzcz zzb = zzh.zzb(i5);
                    String str = zzb.zzc;
                    StringBuilder m3340x952a0a9e = AbstractC0749x8313616e.m3340x952a0a9e(i2);
                    m3340x952a0a9e.append(new ObfuscatedString(new long[]{6172126804598566211L, -6879694738150672391L}).toString());
                    m3340x952a0a9e.append(str);
                    zzcz zzc = zzb.zzc(m3340x952a0a9e.toString());
                    this.zzd.put(zzc, zzb);
                    zzczVarArr[i3] = zzc;
                    i5++;
                    i3++;
                }
                i2++;
            } else {
                this.zzf = new zzws(zzczVarArr);
                zzuo zzuoVar = this.zze;
                zzuoVar.getClass();
                zzuoVar.zzi(this);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzj(long j, boolean z) {
        for (zzup zzupVar : this.zzg) {
            zzupVar.zzj(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzk() {
        int i = 0;
        while (true) {
            zzup[] zzupVarArr = this.zza;
            if (i < zzupVarArr.length) {
                zzupVarArr[i].zzk();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup
    public final void zzl(zzuo zzuoVar, long j) {
        this.zze = zzuoVar;
        Collections.addAll(this.zzc, this.zza);
        int i = 0;
        while (true) {
            zzup[] zzupVarArr = this.zza;
            if (i < zzupVarArr.length) {
                zzupVarArr[i].zzl(this, j);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final void zzm(long j) {
        this.zzh.zzm(j);
    }

    public final zzup zzn(int i) {
        zzup zzupVar = this.zza[i];
        if (zzupVar instanceof zzwp) {
            return ((zzwp) zzupVar).zzn();
        }
        return zzupVar;
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final boolean zzo(zzlg zzlgVar) {
        if (!this.zzc.isEmpty()) {
            int size = this.zzc.size();
            for (int i = 0; i < size; i++) {
                ((zzup) this.zzc.get(i)).zzo(zzlgVar);
            }
            return false;
        }
        return this.zzh.zzo(zzlgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzup, com.google.android.gms.internal.ads.zzwj
    public final boolean zzp() {
        return this.zzh.zzp();
    }
}
