package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzyg extends zzyl implements zzmg {
    public static final /* synthetic */ int zzb = 0;
    private static final zzgbj zzc = zzgbj.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxc
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            Integer num = (Integer) obj;
            Integer num2 = (Integer) obj2;
            int i = zzyg.zzb;
            if (num.intValue() == -1) {
                if (num2.intValue() != -1) {
                    return -1;
                }
                return 0;
            }
            if (num2.intValue() == -1) {
                return 1;
            }
            return num.intValue() - num2.intValue();
        }
    });
    private static final zzgbj zzd = zzgbj.zzb(new Comparator() { // from class: com.google.android.gms.internal.ads.zzxe
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int i = zzyg.zzb;
            return 0;
        }
    });

    @Nullable
    public final Context zza;
    private final Object zze;
    private final boolean zzf;

    @GuardedBy("lock")
    private zzxu zzg;

    @Nullable
    @GuardedBy("lock")
    private zzxz zzh;

    @GuardedBy("lock")
    private zzk zzi;
    private final zzwy zzj;

    public zzyg(Context context) {
        Context context2;
        zzwy zzwyVar = new zzwy();
        zzxu zzd2 = zzxu.zzd(context);
        this.zze = new Object();
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zza = context2;
        this.zzj = zzwyVar;
        this.zzg = zzd2;
        this.zzi = zzk.zza;
        boolean z = false;
        if (context != null && zzfy.zzJ(context)) {
            z = true;
        }
        this.zzf = z;
        if (!z && context != null && zzfy.zza >= 32) {
            this.zzh = zzxz.zza(context);
        }
        if (this.zzg.zzS && context == null) {
            zzff.zzf(new ObfuscatedString(new long[]{3960670131508146160L, -3066040788342102653L, -3487383554563478294L, 5502947287261030738L}).toString(), new ObfuscatedString(new long[]{8953323597639283483L, -6541342534537538481L, -2941519440425358077L, 5180515325212025865L, -6529012170559829567L, -4831676864790458876L, -3764050764980586287L, 5032581962284666294L, 3068926307711771387L, -1646392176046931574L, 5507999801835003835L, 8881844896525313449L, 872419510749417329L, 4728948613741937879L, -5802971341395181081L, -109177546316814116L, 6822617964016576002L, 1126123597676735215L, -575882227906595452L, -6650481479737243632L, -6472417928992350205L, 5960513526348381663L, -7121392654339730743L, 3905003776502893501L, -5810214833952584271L}).toString());
        }
    }

    public static /* bridge */ /* synthetic */ int zza(int i, int i2) {
        if (i != 0 && i == i2) {
            return Integer.MAX_VALUE;
        }
        return Integer.bitCount(i & i2);
    }

    public static int zzb(zzam zzamVar, @Nullable String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzamVar.zzd)) {
            return 4;
        }
        String zzh = zzh(str);
        String zzh2 = zzh(zzamVar.zzd);
        if (zzh2 != null && zzh != null) {
            if (!zzh2.startsWith(zzh) && !zzh.startsWith(zzh2)) {
                int i = zzfy.zza;
                if (zzh2.split(new ObfuscatedString(new long[]{-615236411064101793L, -8892277065763136578L}).toString(), 2)[0].equals(zzh.split(new ObfuscatedString(new long[]{-7082047306741044935L, -1106945730998356107L}).toString(), 2)[0])) {
                    return 2;
                }
                return 0;
            }
            return 3;
        }
        if (!z || zzh2 != null) {
            return 0;
        }
        return 1;
    }

    @Nullable
    public static String zzh(@Nullable String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, new ObfuscatedString(new long[]{-7499005300932501634L, 4893634967930615262L}).toString())) {
            return str;
        }
        return null;
    }

    public static /* bridge */ /* synthetic */ void zzi(zzyg zzygVar) {
        zzygVar.zzv();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
    
        if (r2 != 3) goto L104;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ boolean zzm(zzyg zzygVar, zzam zzamVar) {
        boolean z;
        char c;
        zzxz zzxzVar;
        synchronized (zzygVar.zze) {
            try {
                z = true;
                if (zzygVar.zzg.zzS && !zzygVar.zzf && zzamVar.zzz > 2) {
                    String str = zzamVar.zzm;
                    if (str != null) {
                        switch (str.hashCode()) {
                            case -2123537834:
                                if (str.equals(new ObfuscatedString(new long[]{-3759054381803476219L, -5849346702336368942L, -6986479136467130818L}).toString())) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187078296:
                                if (str.equals(new ObfuscatedString(new long[]{-2990997174898550259L, -2222151434579098696L, -1879191298429213206L}).toString())) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 187078297:
                                if (str.equals(new ObfuscatedString(new long[]{6085183572330334670L, 601491398570457266L, -2673284248075009589L}).toString())) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1504578661:
                                if (str.equals(new ObfuscatedString(new long[]{-8005685838495243989L, -2858119846429905843L, 3633128585753796902L}).toString())) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        if (c != 0) {
                            if (c != 1) {
                                if (c != 2) {
                                }
                            }
                        }
                        if (zzfy.zza >= 32) {
                            zzxz zzxzVar2 = zzygVar.zzh;
                            if (zzxzVar2 != null) {
                                if (!zzxzVar2.zzg()) {
                                }
                            }
                        }
                    }
                    if (zzfy.zza < 32 || (zzxzVar = zzygVar.zzh) == null || !zzxzVar.zzg() || !zzxzVar.zze() || !zzygVar.zzh.zzf() || !zzygVar.zzh.zzd(zzygVar.zzi, zzamVar)) {
                        z = false;
                    }
                }
            } finally {
            }
        }
        return z;
    }

    public static boolean zzo(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            return z && i2 == 3;
        }
        return true;
    }

    private static void zzu(zzws zzwsVar, zzdg zzdgVar, Map map) {
        for (int i = 0; i < zzwsVar.zzc; i++) {
            if (((zzdb) zzdgVar.zzD.get(zzwsVar.zzb(i))) != null) {
                throw null;
            }
        }
    }

    public final void zzv() {
        boolean z;
        zzxz zzxzVar;
        synchronized (this.zze) {
            try {
                z = false;
                if (this.zzg.zzS && !this.zzf && zzfy.zza >= 32 && (zzxzVar = this.zzh) != null && zzxzVar.zzg()) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            zzt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v6, types: [com.google.android.gms.internal.ads.zzgaa] */
    @Nullable
    private static final Pair zzw(int i, zzyk zzykVar, int[][][] iArr, zzyb zzybVar, Comparator comparator) {
        ?? arrayList;
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < 2; i2++) {
            if (i == zzykVar.zzc(i2)) {
                zzws zzd2 = zzykVar.zzd(i2);
                for (int i3 = 0; i3 < zzd2.zzc; i3++) {
                    zzcz zzb2 = zzd2.zzb(i3);
                    List zza = zzybVar.zza(i2, zzb2, iArr[i2][i3]);
                    int i4 = zzb2.zzb;
                    int i5 = 1;
                    boolean[] zArr = new boolean[1];
                    int i6 = 0;
                    while (i6 <= 0) {
                        int i7 = i6 + 1;
                        zzyc zzycVar = (zzyc) zza.get(i6);
                        int zzb3 = zzycVar.zzb();
                        if (!zArr[i6] && zzb3 != 0) {
                            if (zzb3 == i5) {
                                arrayList = zzgaa.zzm(zzycVar);
                            } else {
                                arrayList = new ArrayList();
                                arrayList.add(zzycVar);
                                for (int i8 = i7; i8 <= 0; i8++) {
                                    zzyc zzycVar2 = (zzyc) zza.get(i8);
                                    if (zzycVar2.zzb() == 2 && zzycVar.zzc(zzycVar2)) {
                                        arrayList.add(zzycVar2);
                                        zArr[i8] = true;
                                    }
                                }
                            }
                            arrayList2.add(arrayList);
                        }
                        i6 = i7;
                        i5 = 1;
                    }
                }
            }
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList2, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            iArr2[i9] = ((zzyc) list.get(i9)).zzc;
        }
        zzyc zzycVar3 = (zzyc) list.get(0);
        return Pair.create(new zzyh(zzycVar3.zzb, iArr2, 0), Integer.valueOf(zzycVar3.zza));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzyl
    public final Pair zzc(zzyk zzykVar, int[][][] iArr, final int[] iArr2, zzur zzurVar, zzcx zzcxVar) {
        final zzxu zzxuVar;
        Pair pair;
        int i;
        final boolean z;
        final String str;
        zzmi zzmiVar;
        int[] iArr3;
        int length;
        zzyi zza;
        zzyh zzyhVar;
        zzxz zzxzVar;
        synchronized (this.zze) {
            try {
                zzxuVar = this.zzg;
                if (zzxuVar.zzS && zzfy.zza >= 32 && (zzxzVar = this.zzh) != null) {
                    Looper myLooper = Looper.myLooper();
                    zzek.zzb(myLooper);
                    zzxzVar.zzb(this, myLooper);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int i2 = 2;
        zzyh[] zzyhVarArr = new zzyh[2];
        Pair zzw = zzw(2, zzykVar, iArr, new zzyb() { // from class: com.google.android.gms.internal.ads.zzxk
            /* JADX WARN: Removed duplicated region for block: B:20:0x004a  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0055  */
            @Override // com.google.android.gms.internal.ads.zzyb
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final List zza(int i3, zzcz zzczVar, int[] iArr4) {
                boolean z2;
                int i4;
                int i5;
                int i6;
                Point point;
                int i7;
                int i8;
                boolean z3;
                boolean z4;
                int i9 = zzyg.zzb;
                zzxu zzxuVar2 = zzxu.this;
                int i10 = iArr2[i3];
                int i11 = zzxuVar2.zzl;
                int i12 = zzxuVar2.zzm;
                boolean z5 = zzxuVar2.zzn;
                int i13 = -1;
                int i14 = 0;
                int i15 = Integer.MAX_VALUE;
                if (i11 != Integer.MAX_VALUE) {
                    if (i12 != Integer.MAX_VALUE) {
                        char c = 0;
                        int i16 = Integer.MAX_VALUE;
                        while (true) {
                            int i17 = zzczVar.zzb;
                            if (c > 0) {
                                break;
                            }
                            zzam zzb2 = zzczVar.zzb(i14);
                            int i18 = zzb2.zzr;
                            if (i18 > 0 && (i4 = zzb2.zzs) > 0) {
                                if (z5) {
                                    if (i18 <= i4) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                    if (i11 <= i12) {
                                        z4 = false;
                                    } else {
                                        z4 = true;
                                    }
                                    if (z3 != z4) {
                                        i6 = i11;
                                        i5 = i12;
                                        if (i18 * i6 < i4 * i5) {
                                            int i19 = zzfy.zza;
                                            point = new Point(i5, ((r14 + i18) - 1) / i18);
                                        } else {
                                            int i20 = zzfy.zza;
                                            point = new Point(((r15 + i4) - 1) / i4, i6);
                                        }
                                        i7 = zzb2.zzr;
                                        int i21 = zzb2.zzs;
                                        i8 = i7 * i21;
                                        if (i7 >= ((int) (point.x * 0.98f)) && i21 >= ((int) (point.y * 0.98f)) && i8 < i16) {
                                            i16 = i8;
                                        }
                                    }
                                }
                                i5 = i11;
                                i6 = i12;
                                if (i18 * i6 < i4 * i5) {
                                }
                                i7 = zzb2.zzr;
                                int i212 = zzb2.zzs;
                                i8 = i7 * i212;
                                if (i7 >= ((int) (point.x * 0.98f))) {
                                    i16 = i8;
                                }
                            }
                            c = 1;
                            i14 = 0;
                        }
                        i15 = i16;
                    }
                } else {
                    i15 = Integer.MAX_VALUE;
                }
                zzfzx zzfzxVar = new zzfzx();
                char c2 = 0;
                while (true) {
                    int i22 = zzczVar.zzb;
                    if (c2 <= 0) {
                        int zza2 = zzczVar.zzb(0).zza();
                        if (i15 == Integer.MAX_VALUE || (zza2 != i13 && zza2 <= i15)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zzfzxVar.zzf(new zzyf(i3, zzczVar, 0, zzxuVar2, iArr4[0], i10, z2));
                        c2 = 1;
                        i13 = -1;
                    } else {
                        return zzfzxVar.zzi();
                    }
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxl
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                List list = (List) obj;
                List list2 = (List) obj2;
                zzfzp zzk = zzfzp.zzk();
                zzyd zzydVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzyd
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyf.zzd((zzyf) obj3, (zzyf) obj4);
                    }
                };
                zzfzp zzb2 = zzk.zzd((zzyf) Collections.max(list, zzydVar), (zzyf) Collections.max(list2, zzydVar), zzydVar).zzb(list.size(), list2.size());
                zzye zzyeVar = new Comparator() { // from class: com.google.android.gms.internal.ads.zzye
                    @Override // java.util.Comparator
                    public final int compare(Object obj3, Object obj4) {
                        return zzyf.zza((zzyf) obj3, (zzyf) obj4);
                    }
                };
                return zzb2.zzd((zzyf) Collections.max(list, zzyeVar), (zzyf) Collections.max(list2, zzyeVar), zzyeVar).zza();
            }
        });
        int i3 = 4;
        if (zzw == null) {
            pair = zzw(4, zzykVar, iArr, new zzyb() { // from class: com.google.android.gms.internal.ads.zzxf
                @Override // com.google.android.gms.internal.ads.zzyb
                public final List zza(int i4, zzcz zzczVar, int[] iArr4) {
                    int i5 = zzyg.zzb;
                    zzfzx zzfzxVar = new zzfzx();
                    int i6 = 0;
                    while (true) {
                        int i7 = zzczVar.zzb;
                        if (i6 <= 0) {
                            zzfzxVar.zzf(new zzxo(i4, zzczVar, i6, zzxu.this, iArr4[i6]));
                            i6++;
                        } else {
                            return zzfzxVar.zzi();
                        }
                    }
                }
            }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxg
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return ((zzxo) ((List) obj).get(0)).zza((zzxo) ((List) obj2).get(0));
                }
            });
        } else {
            pair = null;
        }
        if (pair != null) {
            zzyhVarArr[((Integer) pair.second).intValue()] = (zzyh) pair.first;
        } else if (zzw != null) {
            zzyhVarArr[((Integer) zzw.second).intValue()] = (zzyh) zzw.first;
        }
        int i4 = 0;
        while (true) {
            i = 1;
            if (i4 < 2) {
                if (zzykVar.zzc(i4) == 2 && zzykVar.zzd(i4).zzc > 0) {
                    z = true;
                    break;
                }
                i4++;
            } else {
                z = false;
                break;
            }
        }
        Pair zzw2 = zzw(1, zzykVar, iArr, new zzyb() { // from class: com.google.android.gms.internal.ads.zzxi
            @Override // com.google.android.gms.internal.ads.zzyb
            public final List zza(int i5, zzcz zzczVar, int[] iArr4) {
                final zzyg zzygVar = zzyg.this;
                zzfxf zzfxfVar = new zzfxf() { // from class: com.google.android.gms.internal.ads.zzxh
                    @Override // com.google.android.gms.internal.ads.zzfxf
                    public final boolean zza(Object obj) {
                        return zzyg.zzm(zzyg.this, (zzam) obj);
                    }
                };
                int i6 = iArr2[i5];
                zzfzx zzfzxVar = new zzfzx();
                int i7 = 0;
                while (true) {
                    int i8 = zzczVar.zzb;
                    if (i7 <= 0) {
                        int i9 = i7;
                        zzfzxVar.zzf(new zzxn(i5, zzczVar, i9, zzxuVar, iArr4[i7], z, zzfxfVar, i6));
                        i7++;
                    } else {
                        return zzfzxVar.zzi();
                    }
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxj
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((zzxn) Collections.max((List) obj)).zza((zzxn) Collections.max((List) obj2));
            }
        });
        if (zzw2 != null) {
            zzyhVarArr[((Integer) zzw2.second).intValue()] = (zzyh) zzw2.first;
        }
        if (zzw2 == null) {
            str = null;
        } else {
            Object obj = zzw2.first;
            str = ((zzyh) obj).zza.zzb(((zzyh) obj).zzb[0]).zzd;
        }
        int i5 = 3;
        Pair zzw3 = zzw(3, zzykVar, iArr, new zzyb() { // from class: com.google.android.gms.internal.ads.zzxm
            @Override // com.google.android.gms.internal.ads.zzyb
            public final List zza(int i6, zzcz zzczVar, int[] iArr4) {
                int i7 = zzyg.zzb;
                zzfzx zzfzxVar = new zzfzx();
                int i8 = 0;
                while (true) {
                    int i9 = zzczVar.zzb;
                    if (i8 <= 0) {
                        int i10 = i8;
                        zzfzxVar.zzf(new zzya(i6, zzczVar, i10, zzxu.this, iArr4[i8], str));
                        i8++;
                    } else {
                        return zzfzxVar.zzi();
                    }
                }
            }
        }, new Comparator() { // from class: com.google.android.gms.internal.ads.zzxd
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return ((zzya) ((List) obj2).get(0)).zza((zzya) ((List) obj3).get(0));
            }
        });
        if (zzw3 != null) {
            zzyhVarArr[((Integer) zzw3.second).intValue()] = (zzyh) zzw3.first;
        }
        int i6 = 0;
        while (i6 < i2) {
            int zzc2 = zzykVar.zzc(i6);
            if (zzc2 != i2 && zzc2 != i && zzc2 != i5 && zzc2 != i3) {
                zzws zzd2 = zzykVar.zzd(i6);
                int[][] iArr4 = iArr[i6];
                int i7 = 0;
                zzcz zzczVar = null;
                zzxp zzxpVar = null;
                while (i7 < zzd2.zzc) {
                    zzcz zzb2 = zzd2.zzb(i7);
                    int[] iArr5 = iArr4[i7];
                    zzxp zzxpVar2 = zzxpVar;
                    char c = 0;
                    while (true) {
                        int i8 = zzb2.zzb;
                        if (c <= 0) {
                            if (zzo(iArr5[0], zzxuVar.zzT)) {
                                zzxp zzxpVar3 = new zzxp(zzb2.zzb(0), iArr5[0]);
                                if (zzxpVar2 == null || zzxpVar3.compareTo(zzxpVar2) > 0) {
                                    zzczVar = zzb2;
                                    zzxpVar2 = zzxpVar3;
                                }
                            }
                            c = 1;
                        }
                    }
                    i7++;
                    zzxpVar = zzxpVar2;
                }
                if (zzczVar == null) {
                    zzyhVar = null;
                } else {
                    zzyhVar = new zzyh(zzczVar, new int[]{0}, 0);
                }
                zzyhVarArr[i6] = zzyhVar;
            }
            i6++;
            i2 = 2;
            i3 = 4;
            i = 1;
            i5 = 3;
        }
        HashMap hashMap = new HashMap();
        for (int i9 = 0; i9 < 2; i9++) {
            zzu(zzykVar.zzd(i9), zzxuVar, hashMap);
        }
        zzu(zzykVar.zze(), zzxuVar, hashMap);
        for (int i10 = 0; i10 < 2; i10++) {
            if (((zzdb) hashMap.get(Integer.valueOf(zzykVar.zzc(i10)))) != null) {
                throw null;
            }
        }
        int i11 = 0;
        for (int i12 = 2; i11 < i12; i12 = 2) {
            zzws zzd3 = zzykVar.zzd(i11);
            if (zzxuVar.zzg(i11, zzd3)) {
                if (zzxuVar.zze(i11, zzd3) == null) {
                    zzyhVarArr[i11] = null;
                } else {
                    throw null;
                }
            }
            i11++;
        }
        int i13 = 0;
        for (int i14 = 2; i13 < i14; i14 = 2) {
            int zzc3 = zzykVar.zzc(i13);
            if (zzxuVar.zzf(i13) || zzxuVar.zzE.contains(Integer.valueOf(zzc3))) {
                zzyhVarArr[i13] = null;
            }
            i13++;
        }
        zzwy zzwyVar = this.zzj;
        zzyw zzr = zzr();
        zzgaa zzf = zzwz.zzf(zzyhVarArr);
        int i15 = 2;
        zzyi[] zzyiVarArr = new zzyi[2];
        int i16 = 0;
        while (i16 < i15) {
            zzyh zzyhVar2 = zzyhVarArr[i16];
            if (zzyhVar2 != null && (length = (iArr3 = zzyhVar2.zzb).length) != 0) {
                if (length == 1) {
                    zza = new zzyj(zzyhVar2.zza, iArr3[0], 0, 0, null);
                } else {
                    zza = zzwyVar.zza(zzyhVar2.zza, iArr3, 0, zzr, (zzgaa) zzf.get(i16));
                }
                zzyiVarArr[i16] = zza;
            }
            i16++;
            i15 = 2;
        }
        zzmi[] zzmiVarArr = new zzmi[i15];
        for (int i17 = 0; i17 < i15; i17++) {
            int zzc4 = zzykVar.zzc(i17);
            if (zzxuVar.zzf(i17) || zzxuVar.zzE.contains(Integer.valueOf(zzc4)) || (zzykVar.zzc(i17) != -2 && zzyiVarArr[i17] == null)) {
                zzmiVar = null;
            } else {
                zzmiVar = zzmi.zza;
            }
            zzmiVarArr[i17] = zzmiVar;
        }
        return Pair.create(zzmiVarArr, zzyiVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    @Nullable
    public final zzmg zzd() {
        return this;
    }

    public final zzxu zze() {
        zzxu zzxuVar;
        synchronized (this.zze) {
            zzxuVar = this.zzg;
        }
        return zzxuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void zzj() {
        zzxz zzxzVar;
        synchronized (this.zze) {
            try {
                if (zzfy.zza >= 32 && (zzxzVar = this.zzh) != null) {
                    zzxzVar.zzc();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void zzk(zzk zzkVar) {
        boolean equals;
        synchronized (this.zze) {
            equals = this.zzi.equals(zzkVar);
            this.zzi = zzkVar;
        }
        if (!equals) {
            zzv();
        }
    }

    public final void zzl(zzxs zzxsVar) {
        boolean equals;
        zzxu zzxuVar = new zzxu(zzxsVar);
        synchronized (this.zze) {
            equals = this.zzg.equals(zzxuVar);
            this.zzg = zzxuVar;
        }
        if (!equals) {
            if (zzxuVar.zzS && this.zza == null) {
                zzff.zzf(new ObfuscatedString(new long[]{-5365536039877739039L, 8051006902477965291L, -7797500324324675496L, -1590449035150364135L}).toString(), new ObfuscatedString(new long[]{5106447338153898563L, 353295884741085976L, 7234235382827027892L, 6083636941071984392L, 4226199753079861090L, 6439409585506093650L, 916186232661814819L, 1093043652454321475L, -2220177752019761692L, 8872148367987101890L, -3352063147810653225L, -2291837374306363789L, -5777019074577202851L, 154303096019812212L, -8282470119763305845L, -2983189073118780916L, -5022494569706092544L, -6967818360824749862L, -7926491041015040012L, 652953517203579137L, -6864987023041424935L, 808992027298356088L, -2860133530176649878L, 5619197543848371928L, 1183229826954604587L}).toString());
            }
            zzt();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final boolean zzn() {
        return true;
    }
}
