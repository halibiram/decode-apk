package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzcif extends zzchw implements zzcgb {
    public static final /* synthetic */ int zzd = 0;
    private zzcgc zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcho zzi;
    private long zzj;
    private long zzk;

    public zzcif(zzcgl zzcglVar, zzcgk zzcgkVar) {
        super(zzcglVar);
        zzcix zzcixVar = new zzcix(zzcglVar.getContext(), zzcgkVar, (zzcgl) this.zzc.get(), null);
        zzcec.zzi(new ObfuscatedString(new long[]{-7350156098378704373L, -5831338027274086929L, 8794512832880094204L, -7422456382274117378L, -5094478713632610554L}).toString());
        this.zze = zzcixVar;
        zzcixVar.zzL(this);
    }

    public static final String zzc(String str) {
        return new ObfuscatedString(new long[]{6161711677670945024L, -2955045657767419685L}).toString().concat(String.valueOf(zzcdv.zze(str)));
    }

    private static String zzd(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{1363770064189472195L, -6508846644829697124L}).toString());
        m3341xc20437a5.append(canonicalName);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{5758788007817296596L, 9112220891926759587L}), m3341xc20437a5, message);
    }

    private final void zzx(long j) {
        com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcie
            @Override // java.lang.Runnable
            public final void run() {
                zzcif.this.zzb();
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzchw, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcgc zzcgcVar = this.zze;
        if (zzcgcVar != null) {
            zzcgcVar.zzL(null);
            this.zze.zzH();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzD(int i, int i2) {
    }

    public final zzcgc zza() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzL(null);
        zzcgc zzcgcVar = this.zze;
        this.zze = null;
        return zzcgcVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ void zzb() {
        String str;
        zzcif zzcifVar;
        int i;
        int i2;
        zzcif zzcifVar2;
        long longValue;
        long intValue;
        boolean booleanValue;
        zzcif zzcifVar3;
        int i3;
        zzcif zzcifVar4;
        zzcif zzcifVar5;
        long j;
        long j2;
        String str2;
        zzcif zzcifVar6;
        long j3;
        boolean z;
        long j4;
        long j5;
        String zzc = zzc(this.zzf);
        String obfuscatedString = new ObfuscatedString(new long[]{1802371278060770870L, 5969409039446251275L}).toString();
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzx)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzw)).intValue();
            zzbfu zzbfuVar = zzbgc.zzbQ;
            zzbga zzc2 = com.google.android.gms.ads.internal.client.zzba.zzc();
            booleanValue = ((Boolean) zzc2.zza(zzbfuVar)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
                zzcifVar = booleanValue;
                i = zzc2;
            }
        } catch (Exception e) {
            e = e;
            str = zzc;
            zzcifVar = this;
            i = 4;
            i2 = 3;
        }
        synchronized (this) {
            try {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - this.zzj;
                if (currentTimeMillis <= longValue) {
                    try {
                        if (!this.zzg) {
                            if (this.zzh) {
                                zzcifVar2 = this;
                            } else {
                                try {
                                    if (this.zze.zzV()) {
                                        long zzz = this.zze.zzz();
                                        if (zzz > 0) {
                                            long zzv = this.zze.zzv();
                                            if (zzv != this.zzk) {
                                                if (zzv > 0) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                try {
                                                    String str3 = this.zzf;
                                                    long j6 = -1;
                                                    if (booleanValue != 0) {
                                                        j4 = this.zze.zzA();
                                                    } else {
                                                        j4 = -1;
                                                    }
                                                    if (booleanValue != 0) {
                                                        j5 = this.zze.zzx();
                                                    } else {
                                                        j5 = -1;
                                                    }
                                                    if (booleanValue != 0) {
                                                        j6 = this.zze.zzB();
                                                    }
                                                    zzcifVar6 = this;
                                                    j2 = intValue;
                                                    str2 = zzc;
                                                    try {
                                                        zzcifVar6.zzo(str3, zzc, zzv, zzz, z, j4, j5, j6, zzcgc.zzs(), zzcgc.zzu());
                                                        j = zzv;
                                                        try {
                                                            zzcifVar6.zzk = j;
                                                            j3 = zzz;
                                                            zzcifVar6 = zzcifVar6;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            str = str2;
                                                            zzcifVar3 = zzcifVar6;
                                                            i3 = 4;
                                                            zzcifVar4 = zzcifVar3;
                                                            i2 = 3;
                                                            zzcifVar = zzcifVar4;
                                                            i = i3;
                                                            try {
                                                                throw th;
                                                            } catch (Exception e2) {
                                                                e = e2;
                                                                String str4 = zzcifVar.zzf;
                                                                String message = e.getMessage();
                                                                StringBuilder sb = new StringBuilder();
                                                                long[] jArr = new long[i];
                                                                // fill-array-data instruction
                                                                jArr[0] = 1007884711710385860L;
                                                                jArr[1] = 5320479113274562254L;
                                                                jArr[2] = 1813152339179031936L;
                                                                jArr[3] = 4895598448907762903L;
                                                                sb.append(new ObfuscatedString(jArr).toString());
                                                                sb.append(str4);
                                                                long[] jArr2 = new long[i2];
                                                                // fill-array-data instruction
                                                                jArr2[0] = -7666530528284822724L;
                                                                jArr2[1] = -4966272039295277365L;
                                                                jArr2[2] = -463536794860989202L;
                                                                sb.append(new ObfuscatedString(jArr2).toString());
                                                                sb.append(message);
                                                                zzcec.zzj(sb.toString());
                                                                com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{-2401477034127662453L, 7858695560661975661L, -1809553749054542380L, 8701485432327053854L, 7666872764469378242L, -7717412021081401972L}).toString());
                                                                release();
                                                                zzcifVar.zzg(zzcifVar.zzf, str, obfuscatedString, zzd(obfuscatedString, e));
                                                                zzcifVar2 = zzcifVar;
                                                                com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcifVar2.zzi);
                                                                return;
                                                            }
                                                        }
                                                    } catch (Throwable th3) {
                                                        th = th3;
                                                        zzcifVar6 = this;
                                                        str = str2;
                                                        zzcifVar3 = zzcifVar6;
                                                        i3 = 4;
                                                        zzcifVar4 = zzcifVar3;
                                                        i2 = 3;
                                                        zzcifVar = zzcifVar4;
                                                        i = i3;
                                                        throw th;
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    str2 = zzc;
                                                    zzcifVar6 = this;
                                                }
                                            } else {
                                                j = zzv;
                                                j2 = intValue;
                                                str2 = zzc;
                                                zzcifVar6 = this;
                                                j3 = zzz;
                                            }
                                            if (j >= j3) {
                                                zzcifVar6.zzj(zzcifVar6.zzf, str2, j3);
                                                zzcifVar2 = zzcifVar6;
                                            } else {
                                                long zzw = zzcifVar6.zze.zzw();
                                                zzcifVar5 = zzcifVar6;
                                                if (zzw >= j2) {
                                                    zzcifVar5 = zzcifVar6;
                                                    if (j > 0) {
                                                        zzcifVar2 = zzcifVar6;
                                                    }
                                                }
                                            }
                                        } else {
                                            zzcifVar5 = this;
                                        }
                                        zzcifVar5.zzx(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzy)).longValue());
                                        return;
                                    }
                                    new ObfuscatedString(new long[]{4076962405296835033L, 6226769797677516869L, -8627470961597820079L, 6979063539753798530L}).toString();
                                    throw new IOException(new ObfuscatedString(new long[]{-8977629942130879818L, -5619755116674783835L, -8742024504113656025L, -2269281091287551271L, -7707046247530451363L, -4762374124685457104L, -2787949408223866948L}).toString());
                                } catch (Throwable th5) {
                                    th = th5;
                                    zzcifVar3 = booleanValue;
                                }
                            }
                            com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcifVar2.zzi);
                            return;
                        }
                        new ObfuscatedString(new long[]{-7784181058992903757L, 5522563401047942447L, 2945445111637102293L}).toString();
                        throw new IOException(new ObfuscatedString(new long[]{-4969904964911956048L, 2964905617388297742L, -5860919762689482018L, -4489108462384358981L, 674511108551664966L, 184831227652543232L, -4995924138489049741L}).toString());
                    } catch (Throwable th6) {
                        th = th6;
                        zzcifVar4 = booleanValue;
                        i3 = currentTimeMillis;
                        i2 = 3;
                        zzcifVar = zzcifVar4;
                        i = i3;
                        throw th;
                    }
                }
                new ObfuscatedString(new long[]{2823370303598741371L, -5287214287852236791L, -277277185500640255L}).toString();
                throw new IOException(new ObfuscatedString(new long[]{4455676867801781126L, 2064807340503663757L, 3632024892678353301L, 6104574935262622770L}).toString() + longValue + new ObfuscatedString(new long[]{6401572258883870205L, -6899469555216510276L}).toString());
            } catch (Throwable th7) {
                th = th7;
                str = zzc;
                zzcifVar3 = this;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzf() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzg(this.zzf, zzc(str), new ObfuscatedString(new long[]{3091901427732032925L, -4823098858901044008L, -251094372845954663L}).toString(), new ObfuscatedString(new long[]{8108877422022056810L, 381172150755289224L, -1226883789715853540L, 15512598714364186L, 4404173622984784079L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzi(final boolean z, final long j) {
        final zzcgl zzcglVar = (zzcgl) this.zzc.get();
        if (zzcglVar != null) {
            zzcep.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcid
                @Override // java.lang.Runnable
                public final void run() {
                    zzcgl.this.zzv(z, j);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzk(String str, Exception exc) {
        zzcec.zzk(new ObfuscatedString(new long[]{5645860587677014586L, -4162268331226768373L, -9165112374943071166L}).toString(), exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, new ObfuscatedString(new long[]{-1885026195449692701L, 6750697360674339975L, 6749388086208115326L, 7750728312854368938L, -3338065020088585211L, -7142198183206979171L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzl(String str, Exception exc) {
        zzcec.zzk(new ObfuscatedString(new long[]{6451580989984808277L, 4640402811024510134L, 470970410248007096L, 7265694878180363688L}).toString(), exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzv(exc, new ObfuscatedString(new long[]{6845565970038959832L, 2051810615232500756L, 8297541488513923141L, -1294730117568972648L, 6776626930605352272L, -8400135609456668535L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzp(int i) {
        this.zze.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzq(int i) {
        this.zze.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzr(int i) {
        this.zze.zzM(i);
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzs(int i) {
        this.zze.zzN(i);
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final boolean zzt(String str) {
        return zzu(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzchw
    public final boolean zzu(String str, String[] strArr) {
        String str2;
        String str3;
        zzcif zzcifVar;
        int i;
        int i2;
        String str4;
        zzcif zzcifVar2;
        String str5;
        char c;
        Clock clock;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        String str6;
        long j6;
        long j7;
        boolean z;
        long j8;
        long j9;
        long j10;
        long j11;
        zzcif zzcifVar3 = this;
        String str7 = str;
        zzcifVar3.zzf = str7;
        String obfuscatedString = new ObfuscatedString(new long[]{4570286201998256646L, 3752621293474854243L}).toString();
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i3 = 0; i3 < strArr.length; i3++) {
                uriArr[i3] = Uri.parse(strArr[i3]);
            }
            zzcifVar3.zze.zzF(uriArr, zzcifVar3.zzb);
            zzcgl zzcglVar = (zzcgl) zzcifVar3.zzc.get();
            if (zzcglVar != null) {
                zzcglVar.zzt(zzc, zzcifVar3);
            }
            Clock zzB = com.google.android.gms.ads.internal.zzt.zzB();
            long currentTimeMillis = zzB.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzy)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzx)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzw)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue();
            long j12 = -1;
            long j13 = longValue2;
            long j14 = longValue;
            while (true) {
                synchronized (this) {
                    try {
                        if (zzB.currentTimeMillis() - currentTimeMillis <= j13) {
                            if (!zzcifVar3.zzg) {
                                if (zzcifVar3.zzh) {
                                    break;
                                }
                                if (zzcifVar3.zze.zzV()) {
                                    try {
                                        long zzz = zzcifVar3.zze.zzz();
                                        if (zzz > 0) {
                                            long zzv = zzcifVar3.zze.zzv();
                                            if (zzv != j12) {
                                                if (zzv > 0) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                if (booleanValue) {
                                                    j8 = zzcifVar3.zze.zzA();
                                                } else {
                                                    j8 = -1;
                                                }
                                                if (booleanValue) {
                                                    j9 = zzcifVar3.zze.zzx();
                                                } else {
                                                    j9 = -1;
                                                }
                                                if (booleanValue) {
                                                    j10 = zzcifVar3.zze.zzB();
                                                } else {
                                                    j10 = -1;
                                                }
                                                try {
                                                    j = intValue;
                                                    j2 = j13;
                                                    j11 = zzv;
                                                    j5 = j14;
                                                    clock = zzB;
                                                    str6 = zzc;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    str6 = zzc;
                                                }
                                                try {
                                                    zzo(str, zzc, j11, zzz, z, j8, j9, j10, zzcgc.zzs(), zzcgc.zzu());
                                                    j12 = zzv;
                                                    j6 = zzz;
                                                    j7 = j11;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    zzcifVar2 = this;
                                                    str5 = str;
                                                    str2 = str6;
                                                    c = 3;
                                                    i2 = 4;
                                                    i = c;
                                                    zzcifVar = zzcifVar2;
                                                    str3 = str5;
                                                    try {
                                                        throw th;
                                                    } catch (Exception e) {
                                                        e = e;
                                                        String str8 = obfuscatedString;
                                                        String message = e.getMessage();
                                                        StringBuilder sb = new StringBuilder();
                                                        long[] jArr = new long[i2];
                                                        // fill-array-data instruction
                                                        jArr[0] = 3119847866908003789L;
                                                        jArr[1] = -1525352137985806967L;
                                                        jArr[2] = 8612104270507906340L;
                                                        jArr[3] = 1541685221714037846L;
                                                        sb.append(new ObfuscatedString(jArr).toString());
                                                        sb.append(str3);
                                                        long[] jArr2 = new long[i];
                                                        // fill-array-data instruction
                                                        jArr2[0] = 729313742738604465L;
                                                        jArr2[1] = -8025087995690891826L;
                                                        jArr2[2] = -8857201130814975813L;
                                                        sb.append(new ObfuscatedString(jArr2).toString());
                                                        sb.append(message);
                                                        zzcec.zzj(sb.toString());
                                                        com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{-434866551854704307L, -3919223029606312983L, -2291197254477438833L, 5970158810839030554L, 2149989551379716369L, -2243479655257438609L}).toString());
                                                        release();
                                                        zzcifVar.zzg(str3, str2, str8, zzd(str8, e));
                                                        return false;
                                                    }
                                                }
                                            } else {
                                                clock = zzB;
                                                j = intValue;
                                                j2 = j13;
                                                j5 = j14;
                                                str6 = zzc;
                                                j6 = zzz;
                                                j7 = j13;
                                            }
                                            int i4 = (zzv > j6 ? 1 : (zzv == j6 ? 0 : -1));
                                            if (i4 >= 0) {
                                                zzj(str, str6, j6);
                                            } else {
                                                try {
                                                    zzcif zzcifVar4 = this;
                                                    str5 = str;
                                                    str2 = str6;
                                                    int i5 = (zzcifVar4.zze.zzw() > j ? 1 : (zzcifVar4.zze.zzw() == j ? 0 : -1));
                                                    if (i5 < 0 || zzv <= 0) {
                                                        j3 = j5;
                                                        zzcifVar2 = zzcifVar4;
                                                        j4 = i5;
                                                    }
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    zzcifVar2 = i4;
                                                    str5 = j7;
                                                    c = 3;
                                                    i2 = 4;
                                                    i = c;
                                                    zzcifVar = zzcifVar2;
                                                    str3 = str5;
                                                    throw th;
                                                }
                                            }
                                        } else {
                                            clock = zzB;
                                            j = intValue;
                                            j2 = j13;
                                            str2 = zzc;
                                            zzcifVar2 = zzcifVar3;
                                            str5 = str;
                                            j3 = j14;
                                            j4 = j14;
                                        }
                                        try {
                                            try {
                                                zzcifVar2.wait(j3);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                i = j3;
                                                zzcifVar = zzcifVar2;
                                                str3 = str5;
                                                i2 = j4;
                                                throw th;
                                            }
                                        } catch (InterruptedException unused) {
                                            c = 3;
                                            try {
                                                obfuscatedString = new ObfuscatedString(new long[]{-5568738741817088501L, 6579293313496434426L, 6586738601221625668L}).toString();
                                                throw new IOException(new ObfuscatedString(new long[]{1805357554540526782L, -1657688204187539072L, -2826978270888595906L, -1351673816975477843L}).toString());
                                            } catch (Throwable th5) {
                                                th = th5;
                                                i2 = 4;
                                                i = c;
                                                zzcifVar = zzcifVar2;
                                                str3 = str5;
                                                throw th;
                                            }
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        str4 = str;
                                        str2 = zzc;
                                        zzcifVar2 = zzcifVar3;
                                        str5 = str4;
                                        c = 3;
                                        i2 = 4;
                                        i = c;
                                        zzcifVar = zzcifVar2;
                                        str3 = str5;
                                        throw th;
                                    }
                                } else {
                                    new ObfuscatedString(new long[]{2397959098968232809L, 1385846006392860462L, 5240216434863153656L, -3069764112352092337L}).toString();
                                    throw new IOException(new ObfuscatedString(new long[]{-3715339468803003139L, -2147701331403607987L, -4515894734777480711L, 3018315462425657267L, -1665784939332681609L, 5589745851440516302L, 26885695954539394L}).toString());
                                }
                            } else {
                                new ObfuscatedString(new long[]{6746203359631716847L, -5235554047058815353L, 7081451518721841532L}).toString();
                                throw new IOException(new ObfuscatedString(new long[]{-2830931917922353846L, -6182530509816348682L, 1089976994047447979L, 8712291951366996784L, 6241957628157185538L, -3380890359825611171L, 6285443720546723008L}).toString());
                            }
                        } else {
                            new ObfuscatedString(new long[]{1524108527886922827L, 944177125103120697L, -7553977906107074143L}).toString();
                            throw new IOException(new ObfuscatedString(new long[]{-1106042340312026697L, 1023411733119056158L, -5458552059816606866L, 6046380730165795836L}).toString() + j13 + new ObfuscatedString(new long[]{1545942119793985435L, -8041380365825921465L}).toString());
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        str2 = zzc;
                        str4 = str7;
                    }
                }
                zzB = clock;
                j14 = j3;
                zzcifVar3 = zzcifVar2;
                str7 = str5;
                zzc = str2;
                intValue = j;
                j13 = j2;
            }
            return true;
        } catch (Exception e2) {
            e = e2;
            str2 = zzc;
            str3 = str7;
            zzcifVar = zzcifVar3;
            i = 3;
            i2 = 4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgb
    public final void zzv() {
        zzcec.zzj(new ObfuscatedString(new long[]{-9150350213930254725L, -2088749020118005803L, 5058161042645765135L, 2041170934532615058L, -1860985479837632068L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final boolean zzw(String str, String[] strArr, zzcho zzchoVar) {
        this.zzf = str;
        this.zzi = zzchoVar;
        String zzc = zzc(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzF(uriArr, this.zzb);
            zzcgl zzcglVar = (zzcgl) this.zzc.get();
            if (zzcglVar != null) {
                zzcglVar.zzt(zzc, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e) {
            zzcec.zzj(new ObfuscatedString(new long[]{-2811136676031168907L, 8270537621380822516L, -3218304724545778914L, -6290425037015507619L}).toString() + str + new ObfuscatedString(new long[]{5236385586639158995L, -7086717369641050748L, -2407187527122151728L}).toString() + e.getMessage());
            com.google.android.gms.ads.internal.zzt.zzo().zzv(e, new ObfuscatedString(new long[]{-5934656960963596015L, -2934944337118090542L, -8543331068199272576L, -7147673558840167925L, 5742783434939563158L, -5664923922921690902L}).toString());
            release();
            zzg(str, zzc, new ObfuscatedString(new long[]{-153321478285189583L, 7367254752272562328L}).toString(), zzd(new ObfuscatedString(new long[]{1225721344863222234L, -4589962348389279544L}).toString(), e));
            return false;
        }
    }
}
