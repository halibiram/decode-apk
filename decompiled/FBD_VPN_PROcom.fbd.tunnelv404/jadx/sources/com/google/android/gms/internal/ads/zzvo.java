package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzvo implements zzzg, zzug {
    final /* synthetic */ zzvt zza;
    private final Uri zzc;
    private final zzhx zzd;
    private final zzvi zze;
    private final zzacx zzf;
    private final zzeo zzg;
    private volatile boolean zzi;
    private long zzk;

    @Nullable
    private zzaea zzm;
    private boolean zzn;
    private final zzadr zzh = new zzadr();
    private boolean zzj = true;
    private final long zzb = zzui.zza();
    private zzhb zzl = zzi(0);

    public zzvo(zzvt zzvtVar, Uri uri, zzgw zzgwVar, zzvi zzviVar, zzacx zzacxVar, zzeo zzeoVar) {
        this.zza = zzvtVar;
        this.zzc = uri;
        this.zzd = new zzhx(zzgwVar);
        this.zze = zzviVar;
        this.zzf = zzacxVar;
        this.zzg = zzeoVar;
    }

    public static /* bridge */ /* synthetic */ void zzf(zzvo zzvoVar, long j, long j2) {
        zzvoVar.zzh.zza = j;
        zzvoVar.zzk = j2;
        zzvoVar.zzj = true;
        zzvoVar.zzn = false;
    }

    private final zzhb zzi(long j) {
        Map map;
        zzgz zzgzVar = new zzgz();
        zzgzVar.zzd(this.zzc);
        zzgzVar.zzc(j);
        zzgzVar.zza(6);
        map = zzvt.zzb;
        zzgzVar.zzb(map);
        return zzgzVar.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzug
    public final void zza(zzfp zzfpVar) {
        long zzR;
        long max;
        if (!this.zzn) {
            max = this.zzk;
        } else {
            zzR = this.zza.zzR(true);
            max = Math.max(zzR, this.zzk);
        }
        long j = max;
        int zzb = zzfpVar.zzb();
        zzaea zzaeaVar = this.zzm;
        zzaeaVar.getClass();
        zzady.zzb(zzaeaVar, zzfpVar, zzb);
        zzaeaVar.zzt(j, 1, zzb, 0, null);
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzzg
    public final void zzg() {
        this.zzi = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ed A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010f A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0131 A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0153 A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0187 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01f4 A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0208 A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0248 A[Catch: all -> 0x0046, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0251 A[Catch: all -> 0x0046, TRY_LEAVE, TryCatch #2 {all -> 0x0046, blocks: (B:6:0x000d, B:11:0x003e, B:13:0x0049, B:15:0x0067, B:17:0x006d, B:21:0x00d6, B:23:0x00ed, B:24:0x00f9, B:26:0x010f, B:27:0x011b, B:29:0x0131, B:30:0x013d, B:32:0x0153, B:33:0x0171, B:35:0x0187, B:37:0x018d, B:41:0x01f4, B:42:0x01fb, B:44:0x0208, B:46:0x0211, B:47:0x022e, B:49:0x0248, B:50:0x024d, B:52:0x0251, B:97:0x0197, B:100:0x01c9, B:109:0x0079, B:112:0x00ac), top: B:5:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x025e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02c0 A[LOOP:0: B:2:0x0006->B:81:0x02c0, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02df A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x029f A[EDGE_INSN: B:94:0x029f->B:73:0x029f BREAK  A[LOOP:1: B:54:0x025c->B:65:0x025c], SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzzg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh() {
        boolean z;
        int i;
        List list;
        String str;
        List list2;
        String str2;
        List list3;
        String str3;
        List list4;
        boolean z2;
        List list5;
        int i2;
        zzaga zzagaVar;
        zzgw zzgwVar;
        zzaga zzagaVar2;
        int i3;
        long j;
        Handler handler;
        Runnable runnable;
        zzaga zzagaVar3;
        zzaga zzagaVar4;
        zzam zzamVar;
        int i4;
        int i5;
        int i6 = 4;
        while (!this.zzi) {
            int i7 = 0;
            try {
                long j2 = this.zzh.zza;
                zzhb zzi = zzi(j2);
                this.zzl = zzi;
                long zzb = this.zzd.zzb(zzi);
                if (this.zzi) {
                    zzvi zzviVar = this.zze;
                    if (zzviVar.zzb() != -1) {
                        this.zzh.zza = zzviVar.zzb();
                    }
                    zzgy.zza(this.zzd);
                    return;
                }
                if (zzb != -1) {
                    zzb += j2;
                    r11.zzp.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzvj
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzvt.this.zzF();
                        }
                    });
                }
                long j3 = zzb;
                zzvt zzvtVar = this.zza;
                Map zze = this.zzd.zze();
                List list6 = (List) zze.get(new ObfuscatedString(new long[]{-3954042893691143310L, -38619744603337339L}).toString());
                if (list6 != null) {
                    String str4 = (String) list6.get(0);
                    try {
                        i5 = Integer.parseInt(str4) * 1000;
                    } catch (NumberFormatException unused) {
                        i5 = -1;
                    }
                    if (i5 > 0) {
                        i = i5;
                        z = true;
                        list = (List) zze.get(new ObfuscatedString(new long[]{-7666333285715898971L, -3963228136242880512L, 1182107772067409648L}).toString());
                        zzaga zzagaVar5 = null;
                        if (list != null) {
                            str = (String) list.get(0);
                            z = true;
                        } else {
                            str = null;
                        }
                        list2 = (List) zze.get(new ObfuscatedString(new long[]{-5364907715067703449L, -3121522361994810201L}).toString());
                        if (list2 != null) {
                            str2 = (String) list2.get(0);
                            z = true;
                        } else {
                            str2 = null;
                        }
                        list3 = (List) zze.get(new ObfuscatedString(new long[]{7234275751209766120L, 1582426371562889075L}).toString());
                        if (list3 != null) {
                            str3 = (String) list3.get(0);
                            z = true;
                        } else {
                            str3 = null;
                        }
                        list4 = (List) zze.get(new ObfuscatedString(new long[]{-7470730971984451701L, -6871844101253719741L}).toString());
                        if (list4 != null) {
                            z2 = ((String) list4.get(0)).equals(new ObfuscatedString(new long[]{-5435244543118202279L, 7469638224637922599L}).toString());
                            z = true;
                        } else {
                            z2 = false;
                        }
                        list5 = (List) zze.get(new ObfuscatedString(new long[]{6831954423582390155L, -8533342770883286944L, 1137606466142874630L}).toString());
                        if (list5 != null) {
                            String str5 = (String) list5.get(0);
                            try {
                                i4 = Integer.parseInt(str5);
                            } catch (NumberFormatException unused2) {
                                i4 = -1;
                            }
                            if (i4 > 0) {
                                i2 = i4;
                                z = true;
                                if (z) {
                                    zzagaVar5 = new zzaga(i, str, str2, str3, z2, i2);
                                }
                                zzvtVar.zzs = zzagaVar5;
                                zzgw zzgwVar2 = this.zzd;
                                zzvt zzvtVar2 = this.zza;
                                zzagaVar = zzvtVar2.zzs;
                                if (zzagaVar != null) {
                                    zzagaVar3 = zzvtVar2.zzs;
                                    if (zzagaVar3.zzf != -1) {
                                        zzagaVar4 = zzvtVar2.zzs;
                                        zzgw zzuhVar = new zzuh(zzgwVar2, zzagaVar4.zzf, this);
                                        zzaea zzv = this.zza.zzv();
                                        this.zzm = zzv;
                                        zzamVar = zzvt.zzc;
                                        zzv.zzl(zzamVar);
                                        zzgwVar = zzuhVar;
                                        this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                                        zzagaVar2 = this.zza.zzs;
                                        if (zzagaVar2 != null) {
                                            this.zze.zzc();
                                        }
                                        if (this.zzj) {
                                            this.zze.zzf(j2, this.zzk);
                                            this.zzj = false;
                                        }
                                        long j4 = j2;
                                        i3 = 0;
                                        while (true) {
                                            if (i3 == 0) {
                                                break;
                                            }
                                            try {
                                                if (!this.zzi) {
                                                    try {
                                                        this.zzg.zza();
                                                        i3 = this.zze.zza(this.zzh);
                                                        long zzb2 = this.zze.zzb();
                                                        j = this.zza.zzj;
                                                        if (zzb2 > j + j4) {
                                                            this.zzg.zzc();
                                                            zzvt zzvtVar3 = this.zza;
                                                            handler = zzvtVar3.zzp;
                                                            runnable = zzvtVar3.zzo;
                                                            handler.post(runnable);
                                                            j4 = zzb2;
                                                        }
                                                    } catch (InterruptedException unused3) {
                                                        throw new InterruptedIOException();
                                                    }
                                                } else {
                                                    i3 = 0;
                                                    break;
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                i7 = i3;
                                                if (i7 != 1) {
                                                    zzvi zzviVar2 = this.zze;
                                                    if (zzviVar2.zzb() != -1) {
                                                        this.zzh.zza = zzviVar2.zzb();
                                                    }
                                                }
                                                zzgy.zza(this.zzd);
                                                throw th;
                                            }
                                        }
                                        if (i3 != 1) {
                                            zzvi zzviVar3 = this.zze;
                                            if (zzviVar3.zzb() != -1) {
                                                this.zzh.zza = zzviVar3.zzb();
                                            }
                                            i7 = i3;
                                        }
                                        zzgy.zza(this.zzd);
                                        if (i7 != 0) {
                                            i6 = 4;
                                        } else {
                                            return;
                                        }
                                    }
                                }
                                zzgwVar = zzgwVar2;
                                this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                                zzagaVar2 = this.zza.zzs;
                                if (zzagaVar2 != null) {
                                }
                                if (this.zzj) {
                                }
                                long j42 = j2;
                                i3 = 0;
                                while (true) {
                                    if (i3 == 0) {
                                    }
                                }
                                if (i3 != 1) {
                                }
                                zzgy.zza(this.zzd);
                                if (i7 != 0) {
                                }
                            } else {
                                try {
                                    zzff.zzf(new ObfuscatedString(new long[]{-6650500925977436181L, 2775973346036377907L, -6146567943533552664L}).toString(), new ObfuscatedString(new long[]{3030567554431587262L, -2465956196271982455L, -8424786060681546357L, -8604339425476495182L, -2367028667029476905L}).toString() + str5);
                                } catch (NumberFormatException unused4) {
                                    zzff.zzf(new ObfuscatedString(new long[]{456922875547947619L, 6060282905542379470L, -5659506812705432783L}).toString(), new ObfuscatedString(new long[]{-8047517093872636405L, -1517573354841765238L, 1121621146952524192L, -4701356396229550009L, 5372219114284841719L}).toString().concat(String.valueOf(str5)));
                                    i2 = i4;
                                    if (z) {
                                    }
                                    zzvtVar.zzs = zzagaVar5;
                                    zzgw zzgwVar22 = this.zzd;
                                    zzvt zzvtVar22 = this.zza;
                                    zzagaVar = zzvtVar22.zzs;
                                    if (zzagaVar != null) {
                                    }
                                    zzgwVar = zzgwVar22;
                                    this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                                    zzagaVar2 = this.zza.zzs;
                                    if (zzagaVar2 != null) {
                                    }
                                    if (this.zzj) {
                                    }
                                    long j422 = j2;
                                    i3 = 0;
                                    while (true) {
                                        if (i3 == 0) {
                                        }
                                    }
                                    if (i3 != 1) {
                                    }
                                    zzgy.zza(this.zzd);
                                    if (i7 != 0) {
                                    }
                                }
                            }
                        }
                        i2 = -1;
                        if (z) {
                        }
                        zzvtVar.zzs = zzagaVar5;
                        zzgw zzgwVar222 = this.zzd;
                        zzvt zzvtVar222 = this.zza;
                        zzagaVar = zzvtVar222.zzs;
                        if (zzagaVar != null) {
                        }
                        zzgwVar = zzgwVar222;
                        this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                        zzagaVar2 = this.zza.zzs;
                        if (zzagaVar2 != null) {
                        }
                        if (this.zzj) {
                        }
                        long j4222 = j2;
                        i3 = 0;
                        while (true) {
                            if (i3 == 0) {
                            }
                        }
                        if (i3 != 1) {
                        }
                        zzgy.zza(this.zzd);
                        if (i7 != 0) {
                        }
                    } else {
                        try {
                            String obfuscatedString = new ObfuscatedString(new long[]{5758002394501367705L, -7618106953203529120L, 727305177968651613L}).toString();
                            StringBuilder sb = new StringBuilder();
                            long[] jArr = new long[i6];
                            // fill-array-data instruction
                            jArr[0] = 1851559838038898276L;
                            jArr[1] = 7715437830185761782L;
                            jArr[2] = 3070129961615455951L;
                            jArr[3] = 6944952575943212245L;
                            sb.append(new ObfuscatedString(jArr).toString());
                            sb.append(str4);
                            zzff.zzf(obfuscatedString, sb.toString());
                        } catch (NumberFormatException unused5) {
                            long[] jArr2 = new long[i6];
                            // fill-array-data instruction
                            jArr2[0] = 2333811845311918190L;
                            jArr2[1] = -2040469605877771756L;
                            jArr2[2] = -9207452141483060095L;
                            jArr2[3] = 5989163323953953647L;
                            zzff.zzf(new ObfuscatedString(new long[]{-8680431385552912261L, 3488399442215953134L, -2881339825737726670L}).toString(), new ObfuscatedString(jArr2).toString().concat(String.valueOf(str4)));
                            i = i5;
                            z = false;
                            list = (List) zze.get(new ObfuscatedString(new long[]{-7666333285715898971L, -3963228136242880512L, 1182107772067409648L}).toString());
                            zzaga zzagaVar52 = null;
                            if (list != null) {
                            }
                            list2 = (List) zze.get(new ObfuscatedString(new long[]{-5364907715067703449L, -3121522361994810201L}).toString());
                            if (list2 != null) {
                            }
                            list3 = (List) zze.get(new ObfuscatedString(new long[]{7234275751209766120L, 1582426371562889075L}).toString());
                            if (list3 != null) {
                            }
                            list4 = (List) zze.get(new ObfuscatedString(new long[]{-7470730971984451701L, -6871844101253719741L}).toString());
                            if (list4 != null) {
                            }
                            list5 = (List) zze.get(new ObfuscatedString(new long[]{6831954423582390155L, -8533342770883286944L, 1137606466142874630L}).toString());
                            if (list5 != null) {
                            }
                            i2 = -1;
                            if (z) {
                            }
                            zzvtVar.zzs = zzagaVar52;
                            zzgw zzgwVar2222 = this.zzd;
                            zzvt zzvtVar2222 = this.zza;
                            zzagaVar = zzvtVar2222.zzs;
                            if (zzagaVar != null) {
                            }
                            zzgwVar = zzgwVar2222;
                            this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                            zzagaVar2 = this.zza.zzs;
                            if (zzagaVar2 != null) {
                            }
                            if (this.zzj) {
                            }
                            long j42222 = j2;
                            i3 = 0;
                            while (true) {
                                if (i3 == 0) {
                                }
                            }
                            if (i3 != 1) {
                            }
                            zzgy.zza(this.zzd);
                            if (i7 != 0) {
                            }
                        }
                    }
                }
                z = false;
                i = -1;
                list = (List) zze.get(new ObfuscatedString(new long[]{-7666333285715898971L, -3963228136242880512L, 1182107772067409648L}).toString());
                zzaga zzagaVar522 = null;
                if (list != null) {
                }
                list2 = (List) zze.get(new ObfuscatedString(new long[]{-5364907715067703449L, -3121522361994810201L}).toString());
                if (list2 != null) {
                }
                list3 = (List) zze.get(new ObfuscatedString(new long[]{7234275751209766120L, 1582426371562889075L}).toString());
                if (list3 != null) {
                }
                list4 = (List) zze.get(new ObfuscatedString(new long[]{-7470730971984451701L, -6871844101253719741L}).toString());
                if (list4 != null) {
                }
                list5 = (List) zze.get(new ObfuscatedString(new long[]{6831954423582390155L, -8533342770883286944L, 1137606466142874630L}).toString());
                if (list5 != null) {
                }
                i2 = -1;
                if (z) {
                }
                zzvtVar.zzs = zzagaVar522;
                zzgw zzgwVar22222 = this.zzd;
                zzvt zzvtVar22222 = this.zza;
                zzagaVar = zzvtVar22222.zzs;
                if (zzagaVar != null) {
                }
                zzgwVar = zzgwVar22222;
                this.zze.zzd(zzgwVar, this.zzc, this.zzd.zze(), j2, j3, this.zzf);
                zzagaVar2 = this.zza.zzs;
                if (zzagaVar2 != null) {
                }
                if (this.zzj) {
                }
                long j422222 = j2;
                i3 = 0;
                while (true) {
                    if (i3 == 0) {
                    }
                }
                if (i3 != 1) {
                }
                zzgy.zza(this.zzd);
                if (i7 != 0) {
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }
}
