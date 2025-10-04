package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.UUID;

/* loaded from: classes2.dex */
public abstract class zzsz extends zziq {
    private static final byte[] zzb = {0, 0, 1, 103, 66, -64, 11, -38, 37, -112, 0, 0, 1, 104, -50, Ascii.SI, 19, 32, 0, 0, 1, 101, -120, -124, 13, -50, 113, Ascii.CAN, -96, 0, 47, -65, Ascii.FS, 49, -61, 39, 93, 120};
    private int zzA;
    private boolean zzB;
    private boolean zzC;
    private boolean zzD;
    private boolean zzE;
    private boolean zzF;
    private boolean zzG;
    private long zzH;
    private int zzI;
    private int zzJ;

    @Nullable
    private ByteBuffer zzK;
    private boolean zzL;
    private boolean zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private int zzR;
    private int zzS;
    private int zzT;
    private boolean zzU;
    private boolean zzV;
    private boolean zzW;
    private long zzX;
    private long zzY;
    private boolean zzZ;
    protected zzir zza;
    private boolean zzaa;
    private boolean zzab;
    private zzsy zzac;
    private long zzad;
    private boolean zzae;

    @Nullable
    private zzrz zzaf;

    @Nullable
    private zzrz zzag;
    private final zzsq zzc;
    private final zztb zzd;
    private final float zze;
    private final zzih zzf;
    private final zzih zzg;
    private final zzih zzh;
    private final zzsn zzi;
    private final MediaCodec.BufferInfo zzj;
    private final ArrayDeque zzk;
    private final zzrk zzl;

    @Nullable
    private zzam zzm;

    @Nullable
    private zzam zzn;

    @Nullable
    private MediaCrypto zzo;
    private boolean zzp;
    private long zzq;
    private float zzr;

    @Nullable
    private zzsr zzs;

    @Nullable
    private zzam zzt;

    @Nullable
    private MediaFormat zzu;
    private boolean zzv;
    private float zzw;

    @Nullable
    private ArrayDeque zzx;

    @Nullable
    private zzsx zzy;

    @Nullable
    private zzsv zzz;

    public zzsz(int i, zzsq zzsqVar, zztb zztbVar, boolean z, float f) {
        super(i);
        this.zzc = zzsqVar;
        zztbVar.getClass();
        this.zzd = zztbVar;
        this.zze = f;
        this.zzf = new zzih(0, 0);
        this.zzg = new zzih(0, 0);
        this.zzh = new zzih(2, 0);
        zzsn zzsnVar = new zzsn();
        this.zzi = zzsnVar;
        this.zzj = new MediaCodec.BufferInfo();
        this.zzr = 1.0f;
        this.zzq = -9223372036854775807L;
        this.zzk = new ArrayDeque();
        this.zzac = zzsy.zza;
        zzsnVar.zzi(0);
        zzsnVar.zzc.order(ByteOrder.nativeOrder());
        this.zzl = new zzrk();
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzR = 0;
        this.zzI = -1;
        this.zzJ = -1;
        this.zzH = -9223372036854775807L;
        this.zzX = -9223372036854775807L;
        this.zzY = -9223372036854775807L;
        this.zzad = -9223372036854775807L;
        this.zzS = 0;
        this.zzT = 0;
        this.zza = new zzir();
    }

    public static boolean zzaJ(zzam zzamVar) {
        if (zzamVar.zzG != 0) {
            return false;
        }
        return true;
    }

    @TargetApi(23)
    private final void zzaK() {
        int i = this.zzT;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    this.zzaa = true;
                    zzao();
                    return;
                } else {
                    zzaB();
                    zzax();
                    return;
                }
            }
            zzag();
            zzaO();
            return;
        }
        zzag();
    }

    private final void zzaL() {
        this.zzI = -1;
        this.zzg.zzc = null;
    }

    private final void zzaM() {
        this.zzJ = -1;
        this.zzK = null;
    }

    private final void zzaN(zzsy zzsyVar) {
        this.zzac = zzsyVar;
        if (zzsyVar.zzd != -9223372036854775807L) {
            this.zzae = true;
        }
    }

    @RequiresApi(23)
    private final void zzaO() {
        zzrz zzrzVar = this.zzag;
        zzrzVar.getClass();
        this.zzaf = zzrzVar;
        this.zzS = 0;
        this.zzT = 0;
    }

    @TargetApi(23)
    private final boolean zzaP() {
        if (this.zzU) {
            this.zzS = 1;
            if (this.zzC) {
                this.zzT = 3;
                return false;
            }
            this.zzT = 2;
        } else {
            zzaO();
        }
        return true;
    }

    private final boolean zzaQ() {
        zzsr zzsrVar = this.zzs;
        if (zzsrVar == null || this.zzS == 2 || this.zzZ) {
            return false;
        }
        if (this.zzI < 0) {
            int zza = zzsrVar.zza();
            this.zzI = zza;
            if (zza < 0) {
                return false;
            }
            this.zzg.zzc = zzsrVar.zzf(zza);
            this.zzg.zzb();
        }
        if (this.zzS == 1) {
            if (!this.zzG) {
                this.zzV = true;
                zzsrVar.zzj(this.zzI, 0, 0, 0L, 4);
                zzaL();
            }
            this.zzS = 2;
            return false;
        }
        if (this.zzE) {
            this.zzE = false;
            ByteBuffer byteBuffer = this.zzg.zzc;
            byteBuffer.getClass();
            byteBuffer.put(zzb);
            zzsrVar.zzj(this.zzI, 0, 38, 0L, 0);
            zzaL();
            this.zzU = true;
            return true;
        }
        if (this.zzR == 1) {
            int i = 0;
            while (true) {
                zzam zzamVar = this.zzt;
                zzamVar.getClass();
                if (i >= zzamVar.zzo.size()) {
                    break;
                }
                byte[] bArr = (byte[]) this.zzt.zzo.get(i);
                ByteBuffer byteBuffer2 = this.zzg.zzc;
                byteBuffer2.getClass();
                byteBuffer2.put(bArr);
                i++;
            }
            this.zzR = 2;
        }
        ByteBuffer byteBuffer3 = this.zzg.zzc;
        byteBuffer3.getClass();
        int position = byteBuffer3.position();
        zzlb zzbi = zzbi();
        try {
            int zzbg = zzbg(zzbi, this.zzg, 0);
            if (zzbg == -3) {
                if (zzP()) {
                    this.zzY = this.zzX;
                }
                return false;
            }
            if (zzbg == -5) {
                if (this.zzR == 2) {
                    this.zzg.zzb();
                    this.zzR = 1;
                }
                zzab(zzbi);
                return true;
            }
            zzih zzihVar = this.zzg;
            if (zzihVar.zzf()) {
                this.zzY = this.zzX;
                if (this.zzR == 2) {
                    zzihVar.zzb();
                    this.zzR = 1;
                }
                this.zzZ = true;
                if (!this.zzU) {
                    zzaK();
                    return false;
                }
                try {
                    if (!this.zzG) {
                        this.zzV = true;
                        zzsrVar.zzj(this.zzI, 0, 0, 0L, 4);
                        zzaL();
                    }
                    return false;
                } catch (MediaCodec.CryptoException e) {
                    throw zzi(e, this.zzm, false, zzfy.zzi(e.getErrorCode()));
                }
            }
            if (!this.zzU && !zzihVar.zzg()) {
                zzihVar.zzb();
                if (this.zzR == 2) {
                    this.zzR = 1;
                }
                return true;
            }
            boolean zzk = zzihVar.zzk();
            if (zzk) {
                zzihVar.zzb.zzb(position);
            }
            long j = this.zzg.zze;
            if (this.zzab) {
                if (!this.zzk.isEmpty()) {
                    zzfv zzfvVar = ((zzsy) this.zzk.peekLast()).zze;
                    zzam zzamVar2 = this.zzm;
                    zzamVar2.getClass();
                    zzfvVar.zzd(j, zzamVar2);
                } else {
                    zzfv zzfvVar2 = this.zzac.zze;
                    zzam zzamVar3 = this.zzm;
                    zzamVar3.getClass();
                    zzfvVar2.zzd(j, zzamVar3);
                }
                this.zzab = false;
            }
            long max = Math.max(this.zzX, j);
            this.zzX = max;
            if (zzP() || this.zzg.zzh()) {
                this.zzY = max;
            }
            this.zzg.zzj();
            zzih zzihVar2 = this.zzg;
            if (zzihVar2.zze()) {
                zzah(zzihVar2);
            }
            zzaz(this.zzg);
            zzar(this.zzg);
            try {
                if (zzk) {
                    zzsrVar.zzk(this.zzI, 0, this.zzg.zzb, j, 0);
                } else {
                    int i2 = this.zzI;
                    ByteBuffer byteBuffer4 = this.zzg.zzc;
                    if (byteBuffer4 != null) {
                        zzsrVar.zzj(i2, 0, byteBuffer4.limit(), j, 0);
                    } else {
                        throw null;
                    }
                }
                zzaL();
                this.zzU = true;
                this.zzR = 0;
                this.zza.zzc++;
                return true;
            } catch (MediaCodec.CryptoException e2) {
                throw zzi(e2, this.zzm, false, zzfy.zzi(e2.getErrorCode()));
            }
        } catch (zzig e3) {
            zzai(e3);
            zzaT(0);
            zzag();
            return true;
        }
    }

    private final boolean zzaR() {
        return this.zzJ >= 0;
    }

    private final boolean zzaS(long j, long j2) {
        if (j2 >= j) {
            return false;
        }
        zzam zzamVar = this.zzn;
        if (zzamVar != null && Objects.equals(zzamVar.zzm, new ObfuscatedString(new long[]{2414793972313575345L, -18730785477111254L, -4315075735258159472L}).toString()) && zzadq.zzf(j, j2)) {
            return false;
        }
        return true;
    }

    private final boolean zzaT(int i) {
        zzih zzihVar = this.zzf;
        zzlb zzbi = zzbi();
        zzihVar.zzb();
        int zzbg = zzbg(zzbi, this.zzf, i | 4);
        if (zzbg == -5) {
            zzab(zzbi);
            return true;
        }
        if (zzbg == -4 && this.zzf.zzf()) {
            this.zzZ = true;
            zzaK();
            return false;
        }
        return false;
    }

    private final boolean zzaU(long j) {
        if (this.zzq != -9223372036854775807L) {
            zzh();
            if (SystemClock.elapsedRealtime() - j >= this.zzq) {
                return false;
            }
            return true;
        }
        return true;
    }

    private final boolean zzaV(@Nullable zzam zzamVar) {
        if (zzfy.zza >= 23 && this.zzs != null && this.zzT != 3 && zzbf() != 0) {
            float f = this.zzr;
            zzamVar.getClass();
            float zzY = zzY(f, zzamVar, zzS());
            float f2 = this.zzw;
            if (f2 != zzY) {
                if (zzY == -1.0f) {
                    zzad();
                    return false;
                }
                if (f2 != -1.0f || zzY > this.zze) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat(new ObfuscatedString(new long[]{6213969283836251223L, -2689354268574177115L, -480811848901344939L}).toString(), zzY);
                    zzsr zzsrVar = this.zzs;
                    zzsrVar.getClass();
                    zzsrVar.zzp(bundle);
                    this.zzw = zzY;
                }
            }
        }
        return true;
    }

    private final void zzac() {
        this.zzP = false;
        this.zzi.zzb();
        this.zzh.zzb();
        this.zzO = false;
        this.zzN = false;
        this.zzl.zzb();
    }

    private final void zzad() {
        if (this.zzU) {
            this.zzS = 1;
            this.zzT = 3;
        } else {
            zzaB();
            zzax();
        }
    }

    private final void zzag() {
        try {
            zzsr zzsrVar = this.zzs;
            zzek.zzb(zzsrVar);
            zzsrVar.zzi();
        } finally {
            zzaC();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x06c4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x06e2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0700  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0723  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x07fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzam(zzsv zzsvVar, @Nullable MediaCrypto mediaCrypto) {
        MediaCodec mediaCodec;
        MediaCodec createByCodecName;
        zzsr zztpVar;
        zzsp zzspVar;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        zzsp zzspVar2;
        int i7;
        zzam zzamVar = this.zzm;
        zzamVar.getClass();
        String str = zzsvVar.zza;
        int i8 = zzfy.zza;
        float zzY = i8 < 23 ? -1.0f : zzY(this.zzr, zzamVar, zzS());
        if (zzY <= this.zze) {
            zzY = -1.0f;
        }
        zzaA(zzamVar);
        zzh();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        zzsp zzae = zzae(zzsvVar, zzamVar, null, zzY);
        if (i8 >= 31) {
            zzsw.zza(zzae, zzn());
        }
        try {
            Trace.beginSection(new ObfuscatedString(new long[]{8968777646479043725L, -1886385811640310640L, 7291850258662054822L}).toString() + str);
            if (i8 >= 23 && i8 >= 31) {
                int zzb2 = zzcb.zzb(zzae.zzc.zzm);
                zzff.zze(new ObfuscatedString(new long[]{-1518392364930875390L, -2965429526489719965L, 1575335855584321696L, 2066443655051371339L}).toString(), new ObfuscatedString(new long[]{561766466559167025L, 3867181064097996035L, 6375964321918630534L, -339235571118883032L, -8608519091351486662L, -8954711131936972692L, -7754235882226989750L, 5083959142970070063L, 8810117133594038581L}).toString().concat(zzfy.zzB(zzb2)));
                zzse zzseVar = new zzse(zzb2);
                zzseVar.zzd(true);
                zztpVar = zzseVar.zzc(zzae);
            } else {
                try {
                    String str2 = zzae.zza.zza;
                    Trace.beginSection(new ObfuscatedString(new long[]{-5862406033908969048L, -4804807191383491778L, 8887121079031436733L}).toString().concat(str2));
                    createByCodecName = MediaCodec.createByCodecName(str2);
                    Trace.endSection();
                } catch (IOException | RuntimeException e) {
                    e = e;
                    mediaCodec = null;
                }
                try {
                    Trace.beginSection(new ObfuscatedString(new long[]{8449824553457692903L, -4250183089761944584L, 4817822501552679769L}).toString());
                    createByCodecName.configure(zzae.zzb, zzae.zzd, (MediaCrypto) null, 0);
                    Trace.endSection();
                    Trace.beginSection(new ObfuscatedString(new long[]{-4836373457237303786L, 4798133514281456889L, -8164487898285600955L}).toString());
                    createByCodecName.start();
                    Trace.endSection();
                    zztpVar = new zztp(createByCodecName, null);
                } catch (IOException | RuntimeException e2) {
                    e = e2;
                    mediaCodec = createByCodecName;
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            }
            this.zzs = zztpVar;
            Trace.endSection();
            zzh();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            if (zzsvVar.zze(zzamVar)) {
                zzspVar = zzae;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-2214150641467432742L, 8031439028268714548L}).toString());
                sb.append(zzamVar.zzb);
                sb.append(new ObfuscatedString(new long[]{-7422576218198757128L, 8915011328833762239L, 2060586899273128140L}).toString());
                sb.append(zzamVar.zzm);
                if (zzamVar.zzl != null) {
                    sb.append(new ObfuscatedString(new long[]{-2853477708272010031L, 4116976871192441987L, 5157010209629040887L}).toString());
                    sb.append(zzamVar.zzl);
                }
                if (zzamVar.zzi != -1) {
                    sb.append(new ObfuscatedString(new long[]{-1972929646783203145L, -6483077893513211759L, -4874017177524295103L}).toString());
                    sb.append(zzamVar.zzi);
                }
                if (zzamVar.zzj != null) {
                    sb.append(new ObfuscatedString(new long[]{-6412646890722302745L, 3682968882759137755L, -794456076823841976L}).toString());
                    sb.append(zzamVar.zzj);
                }
                if (zzamVar.zzp != null) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    int i9 = 0;
                    while (true) {
                        zzae zzaeVar = zzamVar.zzp;
                        if (i9 >= zzaeVar.zzb) {
                            break;
                        }
                        UUID uuid = zzaeVar.zza(i9).zza;
                        if (uuid.equals(zzo.zzb)) {
                            linkedHashSet.add(new ObfuscatedString(new long[]{2321475382095532895L, -170648901430029715L}).toString());
                        } else if (uuid.equals(zzo.zzc)) {
                            linkedHashSet.add(new ObfuscatedString(new long[]{-6289369941814043741L, 8913659269878783661L}).toString());
                        } else if (uuid.equals(zzo.zze)) {
                            linkedHashSet.add(new ObfuscatedString(new long[]{9065888463168993789L, -1761177055114523727L, -5172377450744281735L}).toString());
                        } else if (uuid.equals(zzo.zzd)) {
                            linkedHashSet.add(new ObfuscatedString(new long[]{-2128273226865282475L, 7494377609687950303L}).toString());
                        } else if (uuid.equals(zzo.zza)) {
                            linkedHashSet.add(new ObfuscatedString(new long[]{-4419494822975478033L, 5753275579303967708L, 3678350702742686795L}).toString());
                        } else {
                            String obj = uuid.toString();
                            StringBuilder sb2 = new StringBuilder();
                            zzspVar2 = zzae;
                            sb2.append(new ObfuscatedString(new long[]{-5218566217624665036L, -7874001619646402710L, -4243776335275903242L}).toString());
                            sb2.append(obj);
                            sb2.append(new ObfuscatedString(new long[]{-1126387046794970595L, -3460923194173243594L}).toString());
                            linkedHashSet.add(sb2.toString());
                            i7 = 1;
                            i9 += i7;
                            zzae = zzspVar2;
                        }
                        zzspVar2 = zzae;
                        i7 = 1;
                        i9 += i7;
                        zzae = zzspVar2;
                    }
                    zzspVar = zzae;
                    sb.append(new ObfuscatedString(new long[]{9202535618801544316L, -7425074193623069981L}).toString());
                    zzfwt.zzb(sb, linkedHashSet, new ObfuscatedString(new long[]{6342863896771148709L, 2905157532681613839L}).toString());
                    sb.append(']');
                } else {
                    zzspVar = zzae;
                }
                if (zzamVar.zzr != -1 && zzamVar.zzs != -1) {
                    sb.append(new ObfuscatedString(new long[]{6485129970034379591L, 1515191274774593385L}).toString());
                    sb.append(zzamVar.zzr);
                    sb.append(new ObfuscatedString(new long[]{-1063342239732709355L, -9018406619132223526L}).toString());
                    sb.append(zzamVar.zzs);
                }
                zzt zztVar = zzamVar.zzy;
                if (zztVar != null && (zztVar.zze() || zztVar.zzf())) {
                    sb.append(new ObfuscatedString(new long[]{1294400739896912149L, 3697267456796504620L}).toString());
                    sb.append(zzamVar.zzy.zzd());
                }
                if (zzamVar.zzt != -1.0f) {
                    sb.append(new ObfuscatedString(new long[]{-6222473062318139304L, 3117410104172368251L}).toString());
                    sb.append(zzamVar.zzt);
                }
                if (zzamVar.zzz != -1) {
                    sb.append(new ObfuscatedString(new long[]{-5914369300626894551L, 7948624221185569095L, 7137039572945939502L}).toString());
                    sb.append(zzamVar.zzz);
                }
                if (zzamVar.zzA != -1) {
                    sb.append(new ObfuscatedString(new long[]{-3352103958628447449L, -6174341862254216474L, 4964870264987477968L}).toString());
                    sb.append(zzamVar.zzA);
                }
                if (zzamVar.zzd != null) {
                    sb.append(new ObfuscatedString(new long[]{6612020605459040112L, -8478579488756151360L, 2084604040373870095L}).toString());
                    sb.append(zzamVar.zzd);
                }
                if (zzamVar.zzc != null) {
                    sb.append(new ObfuscatedString(new long[]{-5928026656843404636L, -5845911515972553220L}).toString());
                    sb.append(zzamVar.zzc);
                }
                if (zzamVar.zze != 0) {
                    sb.append(new ObfuscatedString(new long[]{-7298795102113524840L, 8237548281655754634L, 6647347822115535786L, -5010864274540425094L}).toString());
                    int i10 = zzamVar.zze;
                    ArrayList arrayList = new ArrayList();
                    if ((i10 & 1) != 0) {
                        i6 = 2;
                        arrayList.add(new ObfuscatedString(new long[]{1289531760596128157L, -6403369126628897056L}).toString());
                    } else {
                        i6 = 2;
                    }
                    if ((i10 & i6) != 0) {
                        long[] jArr = new long[i6];
                        // fill-array-data instruction
                        jArr[0] = -190229733216223867L;
                        jArr[1] = -5404306297511074081L;
                        arrayList.add(new ObfuscatedString(jArr).toString());
                    }
                    long[] jArr2 = new long[i6];
                    // fill-array-data instruction
                    jArr2[0] = 8259143177877038592L;
                    jArr2[1] = -2186341300065388849L;
                    zzfwt.zzb(sb, arrayList, new ObfuscatedString(jArr2).toString());
                    long[] jArr3 = new long[i6];
                    // fill-array-data instruction
                    jArr3[0] = -7750574409919662740L;
                    jArr3[1] = 3840352934818206304L;
                    sb.append(new ObfuscatedString(jArr3).toString());
                }
                if (zzamVar.zzf != 0) {
                    sb.append(new ObfuscatedString(new long[]{-7241680272809470295L, 6758891799526641877L, -4365390849307424255L}).toString());
                    int i11 = zzamVar.zzf;
                    ArrayList arrayList2 = new ArrayList();
                    if ((i11 & 1) != 0) {
                        i3 = 2;
                        arrayList2.add(new ObfuscatedString(new long[]{1030792862597221993L, -5879115149358425684L}).toString());
                    } else {
                        i3 = 2;
                    }
                    if ((i11 & 2) != 0) {
                        long[] jArr4 = new long[i3];
                        // fill-array-data instruction
                        jArr4[0] = 5395043719627463451L;
                        jArr4[1] = 2662808244808966496L;
                        arrayList2.add(new ObfuscatedString(jArr4).toString());
                    }
                    if ((i11 & 4) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{5386800347018925964L, 2465677653896038981L, -7836774715111650569L}).toString());
                    }
                    if ((i11 & 8) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-3104858128384601764L, -2725052440334202043L, -744658604059063573L}).toString());
                    }
                    if ((i11 & 16) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{6516674793490755588L, 6035376963236305479L}).toString());
                    }
                    if ((i11 & 32) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-4386863741170605609L, -7160689420718041736L, -7235584923774546943L}).toString());
                    }
                    if ((i11 & 64) != 0) {
                        i4 = 2;
                        arrayList2.add(new ObfuscatedString(new long[]{7228480889196488508L, 7320931561924714313L}).toString());
                    } else {
                        i4 = 2;
                    }
                    if ((i11 & 128) != 0) {
                        long[] jArr5 = new long[i4];
                        // fill-array-data instruction
                        jArr5[0] = 3825843429282879292L;
                        jArr5[1] = -1208582688149689330L;
                        arrayList2.add(new ObfuscatedString(jArr5).toString());
                    }
                    if ((i11 & 256) != 0) {
                        long[] jArr6 = new long[i4];
                        // fill-array-data instruction
                        jArr6[0] = -3503041087089512160L;
                        jArr6[1] = 1817915506055756277L;
                        arrayList2.add(new ObfuscatedString(jArr6).toString());
                    }
                    if ((i11 & 512) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-1559406432883666494L, 2137933934442398125L, 1791222894792129771L}).toString());
                    }
                    if ((i11 & 1024) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-8003262904343207771L, -2238144071275078805L, -4159278625585268401L}).toString());
                    }
                    if ((i11 & 2048) != 0) {
                        i5 = 4;
                        arrayList2.add(new ObfuscatedString(new long[]{3255639803359960347L, 8337916899172582366L, -6638818172444714944L, 7366967033992737983L}).toString());
                    } else {
                        i5 = 4;
                    }
                    if ((i11 & 4096) != 0) {
                        long[] jArr7 = new long[i5];
                        // fill-array-data instruction
                        jArr7[0] = -5420167728802237528L;
                        jArr7[1] = -742121038991638404L;
                        jArr7[2] = -295437031316412180L;
                        jArr7[3] = -1644051798576089318L;
                        arrayList2.add(new ObfuscatedString(jArr7).toString());
                    }
                    if ((i11 & 8192) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-8243624056659822420L, -4715401894868796576L, 5000740191425104862L}).toString());
                    }
                    if ((i11 & 16384) != 0) {
                        arrayList2.add(new ObfuscatedString(new long[]{-4889957564479112673L, 5106736084192222546L, 696318981075360797L}).toString());
                    }
                    i2 = 2;
                    zzfwt.zzb(sb, arrayList2, new ObfuscatedString(new long[]{-3911965028540271539L, -1496910533810016732L}).toString());
                    sb.append(new ObfuscatedString(new long[]{310110736264514401L, 8212053555626089063L}).toString());
                } else {
                    i2 = 2;
                }
                String sb3 = sb.toString();
                Object[] objArr = new Object[i2];
                objArr[0] = sb3;
                objArr[1] = str;
                zzff.zzf(new ObfuscatedString(new long[]{-8285874341740373416L, 7135059669630347581L, -4393136076673002717L, 1819057654746954207L}).toString(), String.format(Locale.US, new ObfuscatedString(new long[]{1168544654183617288L, -3784937217580293250L, 1029788013503367923L, -233896663301266871L, -2196847190003969272L, -5205725918459670236L, -1789532161173941846L, 7468337030408713403L}).toString(), objArr));
            }
            this.zzz = zzsvVar;
            this.zzw = zzY;
            this.zzt = zzamVar;
            int i12 = zzfy.zza;
            if (i12 <= 25 && new ObfuscatedString(new long[]{-7214336968916884076L, -7292211312790699067L, -2616764013471788736L, 1970125070419610798L, 99515787939071276L}).toString().equals(str)) {
                String str3 = zzfy.zzd;
                if (str3.startsWith(new ObfuscatedString(new long[]{4947243777672442778L, 4748202109123683715L}).toString()) || str3.startsWith(new ObfuscatedString(new long[]{2329089925396218625L, 4214955754651965846L}).toString()) || str3.startsWith(new ObfuscatedString(new long[]{6610479919029237839L, 8539965717751477562L}).toString()) || str3.startsWith(new ObfuscatedString(new long[]{-4509612643561752604L, 1583784348893803272L}).toString())) {
                    i = 2;
                    this.zzA = i;
                    this.zzt.getClass();
                    this.zzB = i12 != 29 && new ObfuscatedString(new long[]{4528279060787142976L, 3212381188208438983L, 7154760661617952152L, 6487425199528739751L}).toString().equals(str);
                    this.zzC = i12 > 23 && new ObfuscatedString(new long[]{3761534635615705657L, 7642929450526069463L, 3286240088823343366L, -6937349157722170197L, -8366907743102995569L}).toString().equals(str);
                    this.zzD = i12 != 21 && new ObfuscatedString(new long[]{-9032465251847255012L, -5545004794862715993L, 3394075303778834064L, 261530032708041038L}).toString().equals(str);
                    this.zzt.getClass();
                    String str4 = zzsvVar.zza;
                    this.zzG = (i12 > 25 && new ObfuscatedString(new long[]{-40527829602258277L, 1241458675803907875L, 2884680304781062913L, 4599088373996039568L}).toString().equals(str4)) || (i12 <= 29 && (new ObfuscatedString(new long[]{-396310741898410589L, 3675727479499460731L, 8919616151729958786L, -6337494957363263000L, 8385460949055936258L, 7168122474209502144L}).toString().equals(str4) || new ObfuscatedString(new long[]{-3123943532652189385L, -955125289580035892L, -7257899818164868001L, 3441625433074068947L, -8365410975697544438L, 5495756459156489373L}).toString().equals(str4) || new ObfuscatedString(new long[]{7162340025053750248L, 2333831827283732753L, 2789924731059689204L, -1527007050457230439L}).toString().equals(str4) || new ObfuscatedString(new long[]{-1643963551573737599L, 3482403395263385983L, -999627114512871036L, -6546004017824252075L, -3126377240379473965L}).toString().equals(str4) || new ObfuscatedString(new long[]{-4446413755102398041L, 5913945221125308150L, -603865383505743547L, -798736547289399283L}).toString().equals(str4) || new ObfuscatedString(new long[]{5564360059898719889L, 4075038255243211634L, 2586927248033768279L, 7864944466590620000L, -1052110504695483627L}).toString().equals(str4))) || (new ObfuscatedString(new long[]{4156819711516945745L, -9207567880434354035L}).toString().equals(zzfy.zzc) && new ObfuscatedString(new long[]{571502336274340911L, 2581438920186432470L}).toString().equals(zzfy.zzd) && zzsvVar.zzf);
                    this.zzs.getClass();
                    if (zzbf() == 2) {
                        zzh();
                        this.zzH = SystemClock.elapsedRealtime() + 1000;
                    }
                    this.zza.zza++;
                    zzaj(str, zzspVar, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                }
            }
            if (i12 < 24 && (new ObfuscatedString(new long[]{5673561935754136526L, 242149507381292803L, -396283724349932839L, -1854862865304529784L}).toString().equals(str) || new ObfuscatedString(new long[]{-5625497976904884068L, 5136366747561502998L, -4380431365412337130L, -8617967127883625722L, 8784129725580494158L}).toString().equals(str))) {
                String obfuscatedString = new ObfuscatedString(new long[]{7991290171006185632L, -5286470018278280667L}).toString();
                String str5 = zzfy.zzb;
                if (obfuscatedString.equals(str5) || new ObfuscatedString(new long[]{-5275518802640055312L, -2444458949415339336L, 7826196893451179332L}).toString().equals(str5) || new ObfuscatedString(new long[]{-6479306906674173430L, 4089345390577128285L}).toString().equals(str5) || new ObfuscatedString(new long[]{-723974468704673304L, 9065070944837832747L}).toString().equals(str5)) {
                    i = 1;
                    this.zzA = i;
                    this.zzt.getClass();
                    this.zzB = i12 != 29 && new ObfuscatedString(new long[]{4528279060787142976L, 3212381188208438983L, 7154760661617952152L, 6487425199528739751L}).toString().equals(str);
                    this.zzC = i12 > 23 && new ObfuscatedString(new long[]{3761534635615705657L, 7642929450526069463L, 3286240088823343366L, -6937349157722170197L, -8366907743102995569L}).toString().equals(str);
                    this.zzD = i12 != 21 && new ObfuscatedString(new long[]{-9032465251847255012L, -5545004794862715993L, 3394075303778834064L, 261530032708041038L}).toString().equals(str);
                    this.zzt.getClass();
                    String str42 = zzsvVar.zza;
                    this.zzG = (i12 > 25 && new ObfuscatedString(new long[]{-40527829602258277L, 1241458675803907875L, 2884680304781062913L, 4599088373996039568L}).toString().equals(str42)) || (i12 <= 29 && (new ObfuscatedString(new long[]{-396310741898410589L, 3675727479499460731L, 8919616151729958786L, -6337494957363263000L, 8385460949055936258L, 7168122474209502144L}).toString().equals(str42) || new ObfuscatedString(new long[]{-3123943532652189385L, -955125289580035892L, -7257899818164868001L, 3441625433074068947L, -8365410975697544438L, 5495756459156489373L}).toString().equals(str42) || new ObfuscatedString(new long[]{7162340025053750248L, 2333831827283732753L, 2789924731059689204L, -1527007050457230439L}).toString().equals(str42) || new ObfuscatedString(new long[]{-1643963551573737599L, 3482403395263385983L, -999627114512871036L, -6546004017824252075L, -3126377240379473965L}).toString().equals(str42) || new ObfuscatedString(new long[]{-4446413755102398041L, 5913945221125308150L, -603865383505743547L, -798736547289399283L}).toString().equals(str42) || new ObfuscatedString(new long[]{5564360059898719889L, 4075038255243211634L, 2586927248033768279L, 7864944466590620000L, -1052110504695483627L}).toString().equals(str42))) || (new ObfuscatedString(new long[]{4156819711516945745L, -9207567880434354035L}).toString().equals(zzfy.zzc) && new ObfuscatedString(new long[]{571502336274340911L, 2581438920186432470L}).toString().equals(zzfy.zzd) && zzsvVar.zzf);
                    this.zzs.getClass();
                    if (zzbf() == 2) {
                    }
                    this.zza.zza++;
                    zzaj(str, zzspVar, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
                }
            }
            i = 0;
            this.zzA = i;
            this.zzt.getClass();
            this.zzB = i12 != 29 && new ObfuscatedString(new long[]{4528279060787142976L, 3212381188208438983L, 7154760661617952152L, 6487425199528739751L}).toString().equals(str);
            this.zzC = i12 > 23 && new ObfuscatedString(new long[]{3761534635615705657L, 7642929450526069463L, 3286240088823343366L, -6937349157722170197L, -8366907743102995569L}).toString().equals(str);
            this.zzD = i12 != 21 && new ObfuscatedString(new long[]{-9032465251847255012L, -5545004794862715993L, 3394075303778834064L, 261530032708041038L}).toString().equals(str);
            this.zzt.getClass();
            String str422 = zzsvVar.zza;
            this.zzG = (i12 > 25 && new ObfuscatedString(new long[]{-40527829602258277L, 1241458675803907875L, 2884680304781062913L, 4599088373996039568L}).toString().equals(str422)) || (i12 <= 29 && (new ObfuscatedString(new long[]{-396310741898410589L, 3675727479499460731L, 8919616151729958786L, -6337494957363263000L, 8385460949055936258L, 7168122474209502144L}).toString().equals(str422) || new ObfuscatedString(new long[]{-3123943532652189385L, -955125289580035892L, -7257899818164868001L, 3441625433074068947L, -8365410975697544438L, 5495756459156489373L}).toString().equals(str422) || new ObfuscatedString(new long[]{7162340025053750248L, 2333831827283732753L, 2789924731059689204L, -1527007050457230439L}).toString().equals(str422) || new ObfuscatedString(new long[]{-1643963551573737599L, 3482403395263385983L, -999627114512871036L, -6546004017824252075L, -3126377240379473965L}).toString().equals(str422) || new ObfuscatedString(new long[]{-4446413755102398041L, 5913945221125308150L, -603865383505743547L, -798736547289399283L}).toString().equals(str422) || new ObfuscatedString(new long[]{5564360059898719889L, 4075038255243211634L, 2586927248033768279L, 7864944466590620000L, -1052110504695483627L}).toString().equals(str422))) || (new ObfuscatedString(new long[]{4156819711516945745L, -9207567880434354035L}).toString().equals(zzfy.zzc) && new ObfuscatedString(new long[]{571502336274340911L, 2581438920186432470L}).toString().equals(zzfy.zzd) && zzsvVar.zzf);
            this.zzs.getClass();
            if (zzbf() == 2) {
            }
            this.zza.zza++;
            zzaj(str, zzspVar, elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public void zzB() {
        try {
            zzac();
            zzaB();
        } finally {
            this.zzag = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
    
        if (r5 >= r1) goto L14;
     */
    @Override // com.google.android.gms.internal.ads.zziq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzE(zzam[] zzamVarArr, long j, long j2, zzur zzurVar) {
        if (this.zzac.zzd == -9223372036854775807L) {
            zzaN(new zzsy(-9223372036854775807L, j, j2));
            return;
        }
        if (this.zzk.isEmpty()) {
            long j3 = this.zzX;
            if (j3 != -9223372036854775807L) {
                long j4 = this.zzad;
                if (j4 != -9223372036854775807L) {
                }
            }
            zzaN(new zzsy(-9223372036854775807L, j, j2));
            if (this.zzac.zzd != -9223372036854775807L) {
                zzan();
                return;
            }
            return;
        }
        this.zzk.add(new zzsy(this.zzX, j, j2));
    }

    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzmf
    public void zzL(float f, float f2) {
        this.zzr = f2;
        zzaV(this.zzt);
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    @Override // com.google.android.gms.internal.ads.zzmf
    public void zzU(long r26, long r28) {
        /*
            Method dump skipped, instructions count: 1318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsz.zzU(long, long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public boolean zzV() {
        return this.zzaa;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public boolean zzW() {
        if (this.zzm == null) {
            return false;
        }
        if (!zzR() && !zzaR()) {
            if (this.zzH == -9223372036854775807L) {
                return false;
            }
            zzh();
            if (SystemClock.elapsedRealtime() >= this.zzH) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzmh
    public final int zzX(zzam zzamVar) {
        try {
            return zzZ(this.zzd, zzamVar);
        } catch (zzth e) {
            throw zzi(e, zzamVar, false, 4002);
        }
    }

    public float zzY(float f, zzam zzamVar, zzam[] zzamVarArr) {
        throw null;
    }

    public abstract int zzZ(zztb zztbVar, zzam zzamVar);

    public void zzaA(zzam zzamVar) {
    }

    public final void zzaB() {
        try {
            zzsr zzsrVar = this.zzs;
            if (zzsrVar != null) {
                zzsrVar.zzl();
                this.zza.zzb++;
                zzsv zzsvVar = this.zzz;
                if (zzsvVar != null) {
                    zzak(zzsvVar.zza);
                } else {
                    throw null;
                }
            }
            this.zzs = null;
            this.zzo = null;
            this.zzaf = null;
            zzaD();
        } catch (Throwable th) {
            this.zzs = null;
            this.zzo = null;
            this.zzaf = null;
            zzaD();
            throw th;
        }
    }

    @CallSuper
    public void zzaC() {
        zzaL();
        zzaM();
        this.zzH = -9223372036854775807L;
        this.zzV = false;
        this.zzU = false;
        this.zzE = false;
        this.zzF = false;
        this.zzL = false;
        this.zzM = false;
        this.zzX = -9223372036854775807L;
        this.zzY = -9223372036854775807L;
        this.zzad = -9223372036854775807L;
        this.zzS = 0;
        this.zzT = 0;
        this.zzR = this.zzQ ? 1 : 0;
    }

    @CallSuper
    public final void zzaD() {
        zzaC();
        this.zzx = null;
        this.zzz = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = false;
        this.zzW = false;
        this.zzw = -1.0f;
        this.zzA = 0;
        this.zzB = false;
        this.zzC = false;
        this.zzD = false;
        this.zzG = false;
        this.zzQ = false;
        this.zzR = 0;
        this.zzp = false;
    }

    public final boolean zzaE() {
        boolean zzaF = zzaF();
        if (zzaF) {
            zzax();
        }
        return zzaF;
    }

    public final boolean zzaF() {
        boolean z;
        if (this.zzs == null) {
            return false;
        }
        int i = this.zzT;
        if (i != 3 && ((!this.zzB || this.zzW) && (!this.zzC || !this.zzV))) {
            if (i == 2) {
                int i2 = zzfy.zza;
                if (i2 >= 23) {
                    z = true;
                } else {
                    z = false;
                }
                zzek.zzf(z);
                if (i2 >= 23) {
                    try {
                        zzaO();
                    } catch (zziz e) {
                        zzff.zzg(new ObfuscatedString(new long[]{-3652593019055316964L, 5883562365459379715L, 7740197092195793702L, 9078210671548256092L}).toString(), new ObfuscatedString(new long[]{-720253227220177849L, -3033037446114209104L, -2747186590150611542L, 4937306496075088691L, 3501951486142600328L, 4916462482569550642L, -1317423862763154368L, 8486988042879965786L, 5453046299548992233L}).toString(), e);
                        zzaB();
                        return true;
                    }
                }
            }
            zzag();
            return false;
        }
        zzaB();
        return true;
    }

    public final boolean zzaG() {
        return this.zzN;
    }

    public final boolean zzaH(zzam zzamVar) {
        if (this.zzag == null && zzaq(zzamVar)) {
            return true;
        }
        return false;
    }

    public boolean zzaI(zzsv zzsvVar) {
        return true;
    }

    public zzis zzaa(zzsv zzsvVar, zzam zzamVar, zzam zzamVar2) {
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x006a, code lost:
    
        if (zzaP() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0098, code lost:
    
        if (zzaP() == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00aa, code lost:
    
        if (zzaP() == false) goto L68;
     */
    @Nullable
    @CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzis zzab(zzlb zzlbVar) {
        boolean z;
        boolean z2;
        int i;
        boolean z3 = true;
        this.zzab = true;
        zzam zzamVar = zzlbVar.zza;
        zzamVar.getClass();
        if (zzamVar.zzm != null) {
            this.zzag = zzlbVar.zzb;
            this.zzm = zzamVar;
            if (this.zzN) {
                this.zzP = true;
                return null;
            }
            zzsr zzsrVar = this.zzs;
            if (zzsrVar == null) {
                this.zzx = null;
                zzax();
                return null;
            }
            zzsv zzsvVar = this.zzz;
            zzsvVar.getClass();
            zzam zzamVar2 = this.zzt;
            zzamVar2.getClass();
            zzrz zzrzVar = this.zzaf;
            zzrz zzrzVar2 = this.zzag;
            if (zzrzVar == zzrzVar2) {
                if (zzrzVar2 != zzrzVar) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z || zzfy.zza >= 23) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzek.zzf(z2);
                zzis zzaa = zzaa(zzsvVar, zzamVar2, zzamVar);
                int i2 = zzaa.zzd;
                if (i2 != 0) {
                    i = 2;
                    if (i2 != 1) {
                        if (i2 != 2) {
                            if (zzaV(zzamVar)) {
                                this.zzt = zzamVar;
                                if (z) {
                                }
                            }
                            i = 16;
                        } else {
                            if (zzaV(zzamVar)) {
                                this.zzQ = true;
                                this.zzR = 1;
                                int i3 = this.zzA;
                                if (i3 != 2 && (i3 != 1 || zzamVar.zzr != zzamVar2.zzr || zzamVar.zzs != zzamVar2.zzs)) {
                                    z3 = false;
                                }
                                this.zzE = z3;
                                this.zzt = zzamVar;
                                if (z) {
                                }
                            }
                            i = 16;
                        }
                    } else {
                        if (zzaV(zzamVar)) {
                            this.zzt = zzamVar;
                            if (!z) {
                                if (this.zzU) {
                                    this.zzS = 1;
                                    if (this.zzC) {
                                        this.zzT = 3;
                                    } else {
                                        this.zzT = 1;
                                    }
                                }
                            }
                        }
                        i = 16;
                    }
                    if (zzaa.zzd == 0 && (this.zzs != zzsrVar || this.zzT == 3)) {
                        return new zzis(zzsvVar.zza, zzamVar2, zzamVar, 0, i);
                    }
                    return zzaa;
                }
                zzad();
                i = 0;
                if (zzaa.zzd == 0) {
                }
                return zzaa;
            }
            zzad();
            return new zzis(zzsvVar.zza, zzamVar2, zzamVar, 0, 128);
        }
        throw zzi(new IllegalArgumentException(new ObfuscatedString(new long[]{-3735139912258452658L, 4833143683286067442L, -7085063017395263057L, 541709461591788870L, -818618620212962008L}).toString()), zzamVar, false, 4005);
    }

    public abstract zzsp zzae(zzsv zzsvVar, zzam zzamVar, @Nullable MediaCrypto mediaCrypto, float f);

    public abstract List zzaf(zztb zztbVar, zzam zzamVar, boolean z);

    public void zzah(zzih zzihVar) {
        throw null;
    }

    public void zzai(Exception exc) {
        throw null;
    }

    public void zzaj(String str, zzsp zzspVar, long j, long j2) {
        throw null;
    }

    public void zzak(String str) {
        throw null;
    }

    public void zzal(zzam zzamVar, @Nullable MediaFormat mediaFormat) {
        throw null;
    }

    public void zzan() {
    }

    public void zzao() {
    }

    public abstract boolean zzap(long j, long j2, @Nullable zzsr zzsrVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzam zzamVar);

    public boolean zzaq(zzam zzamVar) {
        return false;
    }

    public int zzar(zzih zzihVar) {
        return 0;
    }

    public final long zzas() {
        return this.zzac.zzd;
    }

    public final long zzat() {
        return this.zzac.zzc;
    }

    @Nullable
    public final zzsr zzau() {
        return this.zzs;
    }

    public zzst zzav(Throwable th, @Nullable zzsv zzsvVar) {
        return new zzst(th, zzsvVar);
    }

    @Nullable
    public final zzsv zzaw() {
        return this.zzz;
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x0149 A[Catch: zzsx -> 0x00ab, TryCatch #0 {zzsx -> 0x00ab, blocks: (B:25:0x0080, B:27:0x0085, B:78:0x0089, B:80:0x009f, B:81:0x00b0, B:29:0x00bc, B:31:0x00c4, B:33:0x00c8, B:34:0x00ce, B:36:0x00d2, B:38:0x00da, B:52:0x0114, B:54:0x0149, B:55:0x0152, B:60:0x015a, B:61:0x015c, B:62:0x014c, B:70:0x015d, B:72:0x015e, B:74:0x0161, B:75:0x0162, B:76:0x016a, B:85:0x00b3, B:86:0x00bb, B:87:0x016b, B:41:0x00e0, B:48:0x00e7, B:64:0x0113), top: B:24:0x0080, inners: #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x015a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014c A[Catch: zzsx -> 0x00ab, TryCatch #0 {zzsx -> 0x00ab, blocks: (B:25:0x0080, B:27:0x0085, B:78:0x0089, B:80:0x009f, B:81:0x00b0, B:29:0x00bc, B:31:0x00c4, B:33:0x00c8, B:34:0x00ce, B:36:0x00d2, B:38:0x00da, B:52:0x0114, B:54:0x0149, B:55:0x0152, B:60:0x015a, B:61:0x015c, B:62:0x014c, B:70:0x015d, B:72:0x015e, B:74:0x0161, B:75:0x0162, B:76:0x016a, B:85:0x00b3, B:86:0x00bb, B:87:0x016b, B:41:0x00e0, B:48:0x00e7, B:64:0x0113), top: B:24:0x0080, inners: #1, #2, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzax() {
        zzam zzamVar;
        zzsx zzsxVar;
        if (this.zzs == null && !this.zzN && (zzamVar = this.zzm) != null) {
            if (zzaH(zzamVar)) {
                zzam zzamVar2 = this.zzm;
                zzac();
                String str = zzamVar2.zzm;
                if (!new ObfuscatedString(new long[]{3698363150504760716L, -2841539277375728698L, -4080871359122622340L}).toString().equals(str) && !new ObfuscatedString(new long[]{-8788699779900306313L, 1927635213502921354L, 6463062080650006441L}).toString().equals(str) && !new ObfuscatedString(new long[]{1568321494678693722L, 5524708155712993229L, -6512967239959991621L}).toString().equals(str)) {
                    this.zzi.zzn(1);
                } else {
                    this.zzi.zzn(32);
                }
                this.zzN = true;
                return;
            }
            zzrz zzrzVar = this.zzag;
            this.zzaf = zzrzVar;
            if (zzrzVar != null) {
                zzek.zzf(true);
                zzrz zzrzVar2 = this.zzaf;
                this.zzm.getClass();
                boolean z = zzsa.zza;
                zzrzVar2.zza();
            }
            try {
                zzam zzamVar3 = this.zzm;
                if (zzamVar3 != null) {
                    if (this.zzx == null) {
                        try {
                            List zzaf = zzaf(this.zzd, zzamVar3, false);
                            zzaf.isEmpty();
                            this.zzx = new ArrayDeque();
                            if (!zzaf.isEmpty()) {
                                this.zzx.add((zzsv) zzaf.get(0));
                            }
                            this.zzy = null;
                        } catch (zzth e) {
                            throw new zzsx(zzamVar3, (Throwable) e, false, -49998);
                        }
                    }
                    if (!this.zzx.isEmpty()) {
                        ArrayDeque arrayDeque = this.zzx;
                        if (arrayDeque != null) {
                            zzsv zzsvVar = (zzsv) arrayDeque.peekFirst();
                            while (this.zzs == null) {
                                zzsv zzsvVar2 = (zzsv) arrayDeque.peekFirst();
                                if (zzsvVar2 != null) {
                                    if (zzaI(zzsvVar2)) {
                                        try {
                                            zzam(zzsvVar2, null);
                                        } catch (Exception e2) {
                                            if (zzsvVar2 == zzsvVar) {
                                                try {
                                                    zzff.zzf(new ObfuscatedString(new long[]{4588875651140212258L, 2176246535082587475L, -2942146066306685354L, 8513333180724625150L}).toString(), new ObfuscatedString(new long[]{6061951256753544031L, 4691490668601363276L, -7761913184125270502L, -7979972148939725907L, 3722360767140620406L, 3345199839988589709L, 8667230131047131493L, -8360272040103824942L, -5919106156995258755L, -487522770776735098L}).toString());
                                                    Thread.sleep(50L);
                                                    zzam(zzsvVar2, null);
                                                } catch (Exception e3) {
                                                    zzff.zzg(new ObfuscatedString(new long[]{7911088626431556878L, 1697632275964734657L, 8688843556233541912L, 3333166048602499497L}).toString(), new ObfuscatedString(new long[]{1456587380457902087L, 6288469046029318810L, 6660504287356085035L, -5486922803222750914L, 8997182440233029594L}).toString().concat(zzsvVar2.zza), e3);
                                                    arrayDeque.removeFirst();
                                                    zzsx zzsxVar2 = new zzsx(zzamVar3, (Throwable) e3, false, zzsvVar2);
                                                    zzai(zzsxVar2);
                                                    zzsxVar = this.zzy;
                                                    if (zzsxVar != null) {
                                                    }
                                                    if (!arrayDeque.isEmpty()) {
                                                    }
                                                }
                                            } else {
                                                throw e2;
                                                break;
                                            }
                                            zzff.zzg(new ObfuscatedString(new long[]{7911088626431556878L, 1697632275964734657L, 8688843556233541912L, 3333166048602499497L}).toString(), new ObfuscatedString(new long[]{1456587380457902087L, 6288469046029318810L, 6660504287356085035L, -5486922803222750914L, 8997182440233029594L}).toString().concat(zzsvVar2.zza), e3);
                                            arrayDeque.removeFirst();
                                            zzsx zzsxVar22 = new zzsx(zzamVar3, (Throwable) e3, false, zzsvVar2);
                                            zzai(zzsxVar22);
                                            zzsxVar = this.zzy;
                                            if (zzsxVar != null) {
                                                this.zzy = zzsxVar22;
                                            } else {
                                                this.zzy = zzsx.zza(zzsxVar, zzsxVar22);
                                            }
                                            if (!arrayDeque.isEmpty()) {
                                                throw this.zzy;
                                            }
                                        }
                                    } else {
                                        return;
                                    }
                                } else {
                                    throw null;
                                }
                            }
                            this.zzx = null;
                            return;
                        }
                        throw null;
                    }
                    throw new zzsx(zzamVar3, (Throwable) null, false, -49999);
                }
                throw null;
            } catch (zzsx e4) {
                throw zzi(e4, this.zzm, false, 4001);
            }
        }
    }

    @CallSuper
    public void zzay(long j) {
        this.zzad = j;
        while (!this.zzk.isEmpty() && j >= ((zzsy) this.zzk.peek()).zzb) {
            zzsy zzsyVar = (zzsy) this.zzk.poll();
            zzsyVar.getClass();
            zzaN(zzsyVar);
            zzan();
        }
    }

    public void zzaz(zzih zzihVar) {
    }

    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzmh
    public final int zze() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public void zzw() {
        this.zzm = null;
        zzaN(zzsy.zza);
        this.zzk.clear();
        zzaF();
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public void zzx(boolean z, boolean z2) {
        this.zza = new zzir();
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public void zzz(long j, boolean z) {
        this.zzZ = false;
        this.zzaa = false;
        if (this.zzN) {
            this.zzi.zzb();
            this.zzh.zzb();
            this.zzO = false;
            this.zzl.zzb();
        } else {
            zzaE();
        }
        zzfv zzfvVar = this.zzac.zze;
        if (zzfvVar.zza() > 0) {
            this.zzab = true;
        }
        zzfvVar.zze();
        this.zzk.clear();
    }
}
