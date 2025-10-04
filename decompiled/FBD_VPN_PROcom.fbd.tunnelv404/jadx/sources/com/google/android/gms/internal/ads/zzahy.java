package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzahy implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzahu
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzahy(0)};
        }
    };
    private static final byte[] zzb = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    private static final byte[] zzc;
    private static final byte[] zzd;
    private static final byte[] zze;
    private static final UUID zzf;
    private static final Map zzg;
    private long zzA;

    @Nullable
    private zzahx zzB;
    private boolean zzC;
    private int zzD;
    private long zzE;
    private boolean zzF;
    private long zzG;
    private long zzH;
    private long zzI;

    @Nullable
    private zzfg zzJ;

    @Nullable
    private zzfg zzK;
    private boolean zzL;
    private boolean zzM;
    private int zzN;
    private long zzO;
    private long zzP;
    private int zzQ;
    private int zzR;
    private int[] zzS;
    private int zzT;
    private int zzU;
    private int zzV;
    private int zzW;
    private boolean zzX;
    private long zzY;
    private int zzZ;
    private int zzaa;
    private int zzab;
    private boolean zzac;
    private boolean zzad;
    private boolean zzae;
    private int zzaf;
    private byte zzag;
    private boolean zzah;
    private zzacx zzai;
    private final zzaht zzh;
    private final zzaia zzi;
    private final SparseArray zzj;
    private final boolean zzk;
    private final zzfp zzl;
    private final zzfp zzm;
    private final zzfp zzn;
    private final zzfp zzo;
    private final zzfp zzp;
    private final zzfp zzq;
    private final zzfp zzr;
    private final zzfp zzs;
    private final zzfp zzt;
    private final zzfp zzu;
    private ByteBuffer zzv;
    private long zzw;
    private long zzx;
    private long zzy;
    private long zzz;

    static {
        int i = zzfy.zza;
        zzc = new ObfuscatedString(new long[]{398145107897508182L, 8548020833438419365L, 2770333446220283253L, 8204351774507620610L, 7957914492599192025L, 385228339304579740L, 7478694596068576243L, 8533319346340185754L, -2860177056263495814L, 4351824712271638242L, 4749384095883200286L, -8826987107425851609L, -4252399843429316514L}).toString().getBytes(zzfwq.zzc);
        zzd = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        zze = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        zzf = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-6992342229675969557L, 6408468781905685393L, -6355624242928833203L, -6724505989686449008L}).toString(), 0);
        hashMap.put(new ObfuscatedString(new long[]{-227246801047172182L, 7082852337780849407L, -8062008394381817331L, -774422841332944564L}).toString(), 90);
        hashMap.put(new ObfuscatedString(new long[]{7810556166367098637L, -1480843551891967879L, -414168733309305078L, 7357009485761345713L}).toString(), 180);
        hashMap.put(new ObfuscatedString(new long[]{-5291913414182111672L, 7758752120299945341L, -3719912285272616176L, -5269549487353626149L}).toString(), 270);
        zzg = DesugarCollections.unmodifiableMap(hashMap);
    }

    public zzahy() {
        this(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:85:0x032b  */
    @RequiresNonNull({"#2.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final int zzn(zzacv zzacvVar, zzahx zzahxVar, int i, boolean z) {
        int i2;
        boolean z2 = true;
        if (new ObfuscatedString(new long[]{6110850474443884455L, -2947945324615726172L, -6768450284773614886L}).toString().equals(zzahxVar.zzb)) {
            zzv(zzacvVar, zzb, i);
            int i3 = this.zzaa;
            zzu();
            return i3;
        }
        if (new ObfuscatedString(new long[]{47009828801354548L, -5611057075828155156L, -9158266075702002694L}).toString().equals(zzahxVar.zzb)) {
            zzv(zzacvVar, zzd, i);
            int i4 = this.zzaa;
            zzu();
            return i4;
        }
        if (new ObfuscatedString(new long[]{-5954008300429332751L, -2736507846451295904L, 2901369357890335528L}).toString().equals(zzahxVar.zzb)) {
            zzv(zzacvVar, zze, i);
            int i5 = this.zzaa;
            zzu();
            return i5;
        }
        zzaea zzaeaVar = zzahxVar.zzW;
        if (!this.zzac) {
            if (zzahxVar.zzg) {
                this.zzV &= -1073741825;
                int i6 = 128;
                if (!this.zzad) {
                    ((zzack) zzacvVar).zzn(this.zzn.zzM(), 0, 1, false);
                    this.zzZ++;
                    if ((this.zzn.zzM()[0] & 128) != 128) {
                        this.zzag = this.zzn.zzM()[0];
                        this.zzad = true;
                    } else {
                        throw zzcc.zza(new ObfuscatedString(new long[]{6633089087211875858L, 4478324905244125633L, 9028192365965808518L, 6525971051631169044L, 8848725870199971033L, 102159828503540392L}).toString(), null);
                    }
                }
                byte b = this.zzag;
                if ((b & 1) == 1) {
                    int i7 = b & 2;
                    this.zzV |= 1073741824;
                    if (!this.zzah) {
                        ((zzack) zzacvVar).zzn(this.zzs.zzM(), 0, 8, false);
                        this.zzZ += 8;
                        this.zzah = true;
                        zzfp zzfpVar = this.zzn;
                        if (i7 != 2) {
                            i6 = 0;
                        }
                        zzfpVar.zzM()[0] = (byte) (i6 | 8);
                        this.zzn.zzK(0);
                        zzaeaVar.zzs(this.zzn, 1, 1);
                        this.zzaa++;
                        this.zzs.zzK(0);
                        zzaeaVar.zzs(this.zzs, 8, 1);
                        this.zzaa += 8;
                    }
                    if (i7 == 2) {
                        if (!this.zzae) {
                            ((zzack) zzacvVar).zzn(this.zzn.zzM(), 0, 1, false);
                            this.zzZ++;
                            this.zzn.zzK(0);
                            this.zzaf = this.zzn.zzm();
                            this.zzae = true;
                        }
                        int i8 = this.zzaf * 4;
                        this.zzn.zzH(i8);
                        ((zzack) zzacvVar).zzn(this.zzn.zzM(), 0, i8, false);
                        this.zzZ += i8;
                        int i9 = (this.zzaf >> 1) + 1;
                        int i10 = (i9 * 6) + 2;
                        ByteBuffer byteBuffer = this.zzv;
                        if (byteBuffer == null || byteBuffer.capacity() < i10) {
                            this.zzv = ByteBuffer.allocate(i10);
                        }
                        this.zzv.position(0);
                        this.zzv.putShort((short) i9);
                        int i11 = 0;
                        int i12 = 0;
                        while (true) {
                            i2 = this.zzaf;
                            if (i11 >= i2) {
                                break;
                            }
                            int zzp = this.zzn.zzp();
                            int i13 = zzp - i12;
                            if (i11 % 2 == 0) {
                                this.zzv.putShort((short) i13);
                            } else {
                                this.zzv.putInt(i13);
                            }
                            i11++;
                            i12 = zzp;
                        }
                        int i14 = (i - this.zzZ) - i12;
                        if ((i2 & 1) == 1) {
                            this.zzv.putInt(i14);
                        } else {
                            this.zzv.putShort((short) i14);
                            this.zzv.putInt(0);
                        }
                        this.zzt.zzI(this.zzv.array(), i10);
                        zzaeaVar.zzs(this.zzt, i10, 1);
                        this.zzaa += i10;
                    }
                }
            } else {
                byte[] bArr = zzahxVar.zzh;
                if (bArr != null) {
                    this.zzq.zzI(bArr, bArr.length);
                }
            }
            if (!new ObfuscatedString(new long[]{2325408802510817432L, 3371419662567420617L}).toString().equals(zzahxVar.zzb) ? zzahxVar.zzf > 0 : z) {
                this.zzV |= 268435456;
                this.zzu.zzH(0);
                int zze2 = (this.zzq.zze() + i) - this.zzZ;
                this.zzn.zzH(4);
                this.zzn.zzM()[0] = (byte) ((zze2 >> 24) & 255);
                this.zzn.zzM()[1] = (byte) ((zze2 >> 16) & 255);
                this.zzn.zzM()[2] = (byte) ((zze2 >> 8) & 255);
                this.zzn.zzM()[3] = (byte) (zze2 & 255);
                zzaeaVar.zzs(this.zzn, 4, 2);
                this.zzaa += 4;
            }
            this.zzac = true;
        }
        int zze3 = this.zzq.zze() + i;
        if (!new ObfuscatedString(new long[]{8244052549829050959L, -4526957738553124730L, 1358050543884520136L}).toString().equals(zzahxVar.zzb)) {
            if (!new ObfuscatedString(new long[]{4049774855052971301L, 5151042191416656511L, 5742052060646628049L}).toString().equals(zzahxVar.zzb)) {
                if (zzahxVar.zzT != null) {
                    if (this.zzq.zze() != 0) {
                        z2 = false;
                    }
                    zzek.zzf(z2);
                    zzahxVar.zzT.zzd(zzacvVar);
                }
                while (true) {
                    int i15 = this.zzZ;
                    if (i15 >= zze3) {
                        break;
                    }
                    int zzo = zzo(zzacvVar, zzaeaVar, zze3 - i15);
                    this.zzZ += zzo;
                    this.zzaa += zzo;
                }
                if (new ObfuscatedString(new long[]{-4817293265460665618L, -8239273096769719012L}).toString().equals(zzahxVar.zzb)) {
                    this.zzo.zzK(0);
                    zzady.zzb(zzaeaVar, this.zzo, 4);
                    this.zzaa += 4;
                }
                int i16 = this.zzaa;
                zzu();
                return i16;
            }
        }
        byte[] zzM = this.zzm.zzM();
        zzM[0] = 0;
        zzM[1] = 0;
        zzM[2] = 0;
        int i17 = zzahxVar.zzX;
        int i18 = 4 - i17;
        while (this.zzZ < zze3) {
            int i19 = this.zzab;
            if (i19 == 0) {
                int min = Math.min(i17, this.zzq.zzb());
                ((zzack) zzacvVar).zzn(zzM, i18 + min, i17 - min, false);
                if (min > 0) {
                    this.zzq.zzG(zzM, i18, min);
                }
                this.zzZ += i17;
                this.zzm.zzK(0);
                this.zzab = this.zzm.zzp();
                this.zzl.zzK(0);
                zzady.zzb(zzaeaVar, this.zzl, 4);
                this.zzaa += 4;
            } else {
                int zzo2 = zzo(zzacvVar, zzaeaVar, i19);
                this.zzZ += zzo2;
                this.zzaa += zzo2;
                this.zzab -= zzo2;
            }
        }
        if (new ObfuscatedString(new long[]{-4817293265460665618L, -8239273096769719012L}).toString().equals(zzahxVar.zzb)) {
        }
        int i162 = this.zzaa;
        zzu();
        return i162;
    }

    private final int zzo(zzacv zzacvVar, zzaea zzaeaVar, int i) {
        int zzb2 = this.zzq.zzb();
        if (zzb2 > 0) {
            int min = Math.min(i, zzb2);
            zzady.zzb(zzaeaVar, this.zzq, min);
            return min;
        }
        return zzady.zza(zzaeaVar, zzacvVar, i, false);
    }

    private final long zzp(long j) {
        long j2 = this.zzy;
        if (j2 != -9223372036854775807L) {
            return zzfy.zzs(j, j2, 1000L, RoundingMode.FLOOR);
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{-4673246004363748251L, -2240168798344704607L, 2656976667730481154L, -4258471975021171965L, -1953869661166586876L, 7061283754298608929L, 2236716179938833647L, 7586668063155726468L}).toString(), null);
    }

    @EnsuresNonNull({"cueTimesUs", "cueClusterPositions"})
    private final void zzq(int i) {
        if (this.zzJ != null && this.zzK != null) {
            return;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{-3855811413977489088L, -5159372440891235126L}).toString() + i + new ObfuscatedString(new long[]{-5570763181513203403L, -2627992654324584212L, -8281262605610743557L, 8458841947515607778L}).toString(), null);
    }

    @EnsuresNonNull({"currentTrack"})
    private final void zzr(int i) {
        if (this.zzB != null) {
            return;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{4560001159285149717L, -8996134809118417697L}).toString() + i + new ObfuscatedString(new long[]{-8178671604420227351L, 8152618646540779753L, 1949071275400170385L, -3807559292839645554L}).toString(), null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x005e, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{-6521113356131416205L, 4434850328171529209L, 1845609009520172237L}).toString().equals(r21.zzb) != false) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0185 A[EDGE_INSN: B:50:0x0185->B:49:0x0185 BREAK  A[LOOP:0: B:42:0x016b->B:46:0x0183], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014d  */
    @RequiresNonNull({"#1.output"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzs(zzahx zzahxVar, long j, int i, int i2, int i3) {
        char c;
        byte[] zzw;
        int i4;
        int zzd2;
        int zze2;
        zzaeb zzaebVar = zzahxVar.zzT;
        if (zzaebVar != null) {
            zzaebVar.zzc(zzahxVar.zzW, j, i, i2, i3, zzahxVar.zzi);
        } else {
            if (!new ObfuscatedString(new long[]{2609525696794671563L, -7871263480603159506L, 2125603151213387261L}).toString().equals(zzahxVar.zzb)) {
                if (!new ObfuscatedString(new long[]{-8464607609194785011L, 9064999595931178755L, -3138975040806092356L}).toString().equals(zzahxVar.zzb)) {
                }
            }
            if (this.zzR > 1) {
                zzff.zzf(new ObfuscatedString(new long[]{5379278013142935361L, 8621311671478341805L, 7374316230880382061L, -4602557052378567431L}).toString(), new ObfuscatedString(new long[]{5063762517861359411L, 7796161677339461376L, -9212799264819924386L, 2112307202892990359L, 7658484667131865030L, -9204986283299566344L}).toString());
            } else {
                long j2 = this.zzP;
                if (j2 == -9223372036854775807L) {
                    zzff.zzf(new ObfuscatedString(new long[]{-3335381225083798908L, -4358484631539895785L, 9145166975418260413L, 3744157913239830170L}).toString(), new ObfuscatedString(new long[]{6006304789456507518L, 2595546854263607479L, -3908995652625287957L, 4534321192518058779L, 1682804231541951564L, 3623846984496313147L, 5801528641230800782L}).toString());
                } else {
                    String str = zzahxVar.zzb;
                    byte[] zzM = this.zzr.zzM();
                    int hashCode = str.hashCode();
                    if (hashCode != 738597099) {
                        if (hashCode != 1045209816) {
                            if (hashCode == 1422270023 && str.equals(new ObfuscatedString(new long[]{-4894025503443058955L, 1788987541404881800L, -3050070294269295056L}).toString())) {
                                c = 0;
                                if (c == 0) {
                                    if (c != 1) {
                                        if (c == 2) {
                                            zzw = zzw(j2, new ObfuscatedString(new long[]{-7454544897088168298L, -6688325737415727861L, -3447092145446801444L, 122039965775524589L}).toString(), 1000L);
                                            i4 = 25;
                                        } else {
                                            throw new IllegalArgumentException();
                                        }
                                    } else {
                                        zzw = zzw(j2, new ObfuscatedString(new long[]{4541373203906634668L, 1807278899924300636L, -7461252189216519219L, 1182389491835892755L}).toString(), WorkRequest.MIN_BACKOFF_MILLIS);
                                        i4 = 21;
                                    }
                                } else {
                                    zzw = zzw(j2, new ObfuscatedString(new long[]{-2233536235648326266L, 2452976712658548588L, -4997188642704385204L, 7821750208929168176L}).toString(), 1000L);
                                    i4 = 19;
                                }
                                System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                                zzd2 = this.zzr.zzd();
                                while (true) {
                                    if (zzd2 >= this.zzr.zze()) {
                                        break;
                                    }
                                    if (this.zzr.zzM()[zzd2] == 0) {
                                        this.zzr.zzJ(zzd2);
                                        break;
                                    }
                                    zzd2++;
                                }
                                zzaea zzaeaVar = zzahxVar.zzW;
                                zzfp zzfpVar = this.zzr;
                                zzady.zzb(zzaeaVar, zzfpVar, zzfpVar.zze());
                                zze2 = this.zzr.zze() + i2;
                                if ((i & 268435456) != 0) {
                                    if (this.zzR > 1) {
                                        this.zzu.zzH(0);
                                    } else {
                                        int zze3 = this.zzu.zze();
                                        zzahxVar.zzW.zzs(this.zzu, zze3, 2);
                                        zze2 += zze3;
                                    }
                                }
                                zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                            }
                            c = 65535;
                            if (c == 0) {
                            }
                            System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                            zzd2 = this.zzr.zzd();
                            while (true) {
                                if (zzd2 >= this.zzr.zze()) {
                                }
                                zzd2++;
                            }
                            zzaea zzaeaVar2 = zzahxVar.zzW;
                            zzfp zzfpVar2 = this.zzr;
                            zzady.zzb(zzaeaVar2, zzfpVar2, zzfpVar2.zze());
                            zze2 = this.zzr.zze() + i2;
                            if ((i & 268435456) != 0) {
                            }
                            zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                        } else {
                            if (str.equals(new ObfuscatedString(new long[]{2148189507238213020L, -4305903651694261911L, -2530205043119549806L}).toString())) {
                                c = 2;
                                if (c == 0) {
                                }
                                System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                                zzd2 = this.zzr.zzd();
                                while (true) {
                                    if (zzd2 >= this.zzr.zze()) {
                                    }
                                    zzd2++;
                                }
                                zzaea zzaeaVar22 = zzahxVar.zzW;
                                zzfp zzfpVar22 = this.zzr;
                                zzady.zzb(zzaeaVar22, zzfpVar22, zzfpVar22.zze());
                                zze2 = this.zzr.zze() + i2;
                                if ((i & 268435456) != 0) {
                                }
                                zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                            }
                            c = 65535;
                            if (c == 0) {
                            }
                            System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                            zzd2 = this.zzr.zzd();
                            while (true) {
                                if (zzd2 >= this.zzr.zze()) {
                                }
                                zzd2++;
                            }
                            zzaea zzaeaVar222 = zzahxVar.zzW;
                            zzfp zzfpVar222 = this.zzr;
                            zzady.zzb(zzaeaVar222, zzfpVar222, zzfpVar222.zze());
                            zze2 = this.zzr.zze() + i2;
                            if ((i & 268435456) != 0) {
                            }
                            zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                        }
                    } else {
                        if (str.equals(new ObfuscatedString(new long[]{5599385679205157077L, 3886138494612218933L, 2190986159912991027L}).toString())) {
                            c = 1;
                            if (c == 0) {
                            }
                            System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                            zzd2 = this.zzr.zzd();
                            while (true) {
                                if (zzd2 >= this.zzr.zze()) {
                                }
                                zzd2++;
                            }
                            zzaea zzaeaVar2222 = zzahxVar.zzW;
                            zzfp zzfpVar2222 = this.zzr;
                            zzady.zzb(zzaeaVar2222, zzfpVar2222, zzfpVar2222.zze());
                            zze2 = this.zzr.zze() + i2;
                            if ((i & 268435456) != 0) {
                            }
                            zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                        }
                        c = 65535;
                        if (c == 0) {
                        }
                        System.arraycopy(zzw, 0, zzM, i4, zzw.length);
                        zzd2 = this.zzr.zzd();
                        while (true) {
                            if (zzd2 >= this.zzr.zze()) {
                            }
                            zzd2++;
                        }
                        zzaea zzaeaVar22222 = zzahxVar.zzW;
                        zzfp zzfpVar22222 = this.zzr;
                        zzady.zzb(zzaeaVar22222, zzfpVar22222, zzfpVar22222.zze());
                        zze2 = this.zzr.zze() + i2;
                        if ((i & 268435456) != 0) {
                        }
                        zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
                    }
                }
            }
            zze2 = i2;
            if ((i & 268435456) != 0) {
            }
            zzahxVar.zzW.zzt(j, i, zze2, i3, zzahxVar.zzi);
        }
        this.zzM = true;
    }

    private final void zzt(zzacv zzacvVar, int i) {
        if (this.zzn.zze() >= i) {
            return;
        }
        if (this.zzn.zzc() < i) {
            zzfp zzfpVar = this.zzn;
            int zzc2 = zzfpVar.zzc();
            zzfpVar.zzE(Math.max(zzc2 + zzc2, i));
        }
        zzfp zzfpVar2 = this.zzn;
        ((zzack) zzacvVar).zzn(zzfpVar2.zzM(), zzfpVar2.zze(), i - zzfpVar2.zze(), false);
        this.zzn.zzJ(i);
    }

    private final void zzu() {
        this.zzZ = 0;
        this.zzaa = 0;
        this.zzab = 0;
        this.zzac = false;
        this.zzad = false;
        this.zzae = false;
        this.zzaf = 0;
        this.zzag = (byte) 0;
        this.zzah = false;
        this.zzq.zzH(0);
    }

    private final void zzv(zzacv zzacvVar, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = length + i;
        if (this.zzr.zzc() < i2) {
            zzfp zzfpVar = this.zzr;
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzfpVar.zzI(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, this.zzr.zzM(), 0, length);
        }
        ((zzack) zzacvVar).zzn(this.zzr.zzM(), length, i, false);
        this.zzr.zzK(0);
        this.zzr.zzJ(i2);
    }

    private static byte[] zzw(long j, String str, long j2) {
        boolean z;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        Locale locale = Locale.US;
        int i = (int) (j / 3600000000L);
        Integer valueOf = Integer.valueOf(i);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        Integer valueOf2 = Integer.valueOf(i2);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / 1000000);
        String format = String.format(locale, str, valueOf, valueOf2, Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2)));
        int i4 = zzfy.zza;
        return format.getBytes(zzfwq.zzc);
    }

    private static int[] zzx(@Nullable int[] iArr, int i) {
        if (iArr == null) {
            return new int[i];
        }
        int length = iArr.length;
        if (length >= i) {
            return iArr;
        }
        return new int[Math.max(length + length, i)];
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        this.zzM = false;
        while (!this.zzM) {
            if (this.zzh.zzc(zzacvVar)) {
                long zzf2 = zzacvVar.zzf();
                if (this.zzF) {
                    this.zzH = zzf2;
                    zzadrVar.zza = this.zzG;
                    this.zzF = false;
                    return 1;
                }
                if (this.zzC) {
                    long j = this.zzH;
                    if (j != -1) {
                        zzadrVar.zza = j;
                        this.zzH = -1L;
                        return 1;
                    }
                }
            } else {
                for (int i = 0; i < this.zzj.size(); i++) {
                    zzahx zzahxVar = (zzahx) this.zzj.valueAt(i);
                    zzahx.zzd(zzahxVar);
                    zzaeb zzaebVar = zzahxVar.zzT;
                    if (zzaebVar != null) {
                        zzaebVar.zza(zzahxVar.zzW, zzahxVar.zzi);
                    }
                }
                return -1;
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzai = zzacxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    @CallSuper
    public final void zzd(long j, long j2) {
        this.zzI = -9223372036854775807L;
        this.zzN = 0;
        this.zzh.zzb();
        this.zzi.zze();
        zzu();
        for (int i = 0; i < this.zzj.size(); i++) {
            zzaeb zzaebVar = ((zzahx) this.zzj.valueAt(i)).zzT;
            if (zzaebVar != null) {
                zzaebVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        return new zzahz().zza(zzacvVar);
    }

    @CallSuper
    public final void zzg(int i, int i2, zzacv zzacvVar) {
        zzahx zzahxVar;
        zzahx zzahxVar2;
        int i3;
        zzahx zzahxVar3;
        long j;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = i;
        Throwable th = null;
        int i9 = 0;
        if (i8 != 161 && i8 != 163) {
            if (i8 != 165) {
                if (i8 != 16877) {
                    if (i8 != 16981) {
                        if (i8 != 18402) {
                            if (i8 != 21419) {
                                if (i8 != 25506) {
                                    if (i8 == 30322) {
                                        zzr(i);
                                        byte[] bArr = new byte[i2];
                                        this.zzB.zzv = bArr;
                                        ((zzack) zzacvVar).zzn(bArr, 0, i2, false);
                                        return;
                                    }
                                    throw zzcc.zza(new ObfuscatedString(new long[]{284098456775560489L, 2935906493518998086L, -6730816128889760349L}).toString() + i8, null);
                                }
                                zzr(i);
                                byte[] bArr2 = new byte[i2];
                                this.zzB.zzj = bArr2;
                                ((zzack) zzacvVar).zzn(bArr2, 0, i2, false);
                                return;
                            }
                            Arrays.fill(this.zzp.zzM(), (byte) 0);
                            ((zzack) zzacvVar).zzn(this.zzp.zzM(), 4 - i2, i2, false);
                            this.zzp.zzK(0);
                            this.zzD = (int) this.zzp.zzu();
                            return;
                        }
                        byte[] bArr3 = new byte[i2];
                        ((zzack) zzacvVar).zzn(bArr3, 0, i2, false);
                        zzr(i);
                        this.zzB.zzi = new zzadz(1, bArr3, 0, 0);
                        return;
                    }
                    zzr(i);
                    byte[] bArr4 = new byte[i2];
                    this.zzB.zzh = bArr4;
                    ((zzack) zzacvVar).zzn(bArr4, 0, i2, false);
                    return;
                }
                zzr(i);
                zzahx zzahxVar4 = this.zzB;
                if (zzahx.zza(zzahxVar4) != 1685485123 && zzahx.zza(zzahxVar4) != 1685480259) {
                    ((zzack) zzacvVar).zzo(i2, false);
                    return;
                }
                byte[] bArr5 = new byte[i2];
                zzahxVar4.zzN = bArr5;
                ((zzack) zzacvVar).zzn(bArr5, 0, i2, false);
                return;
            }
            if (this.zzN == 2) {
                zzahx zzahxVar5 = (zzahx) this.zzj.get(this.zzT);
                if (this.zzW == 4) {
                    if (new ObfuscatedString(new long[]{4813481907832564660L, -5380231839941951401L}).toString().equals(zzahxVar5.zzb)) {
                        this.zzu.zzH(i2);
                        ((zzack) zzacvVar).zzn(this.zzu.zzM(), 0, i2, false);
                        return;
                    }
                }
                ((zzack) zzacvVar).zzo(i2, false);
                return;
            }
            return;
        }
        int i10 = 8;
        if (this.zzN == 0) {
            this.zzT = (int) this.zzi.zzd(zzacvVar, false, true, 8);
            this.zzU = this.zzi.zza();
            this.zzP = -9223372036854775807L;
            this.zzN = 1;
            this.zzn.zzH(0);
        }
        zzahx zzahxVar6 = (zzahx) this.zzj.get(this.zzT);
        if (zzahxVar6 == null) {
            ((zzack) zzacvVar).zzo(i2 - this.zzU, false);
            this.zzN = 0;
            return;
        }
        zzahx.zzd(zzahxVar6);
        if (this.zzN == 1) {
            zzt(zzacvVar, 3);
            int i11 = (this.zzn.zzM()[2] & 6) >> 1;
            if (i11 == 0) {
                this.zzR = 1;
                int[] zzx = zzx(this.zzS, 1);
                this.zzS = zzx;
                zzx[0] = (i2 - this.zzU) - 3;
            } else {
                zzt(zzacvVar, 4);
                int i12 = (this.zzn.zzM()[3] & 255) + 1;
                this.zzR = i12;
                int[] zzx2 = zzx(this.zzS, i12);
                this.zzS = zzx2;
                if (i11 == 2) {
                    int i13 = (i2 - this.zzU) - 4;
                    int i14 = this.zzR;
                    Arrays.fill(zzx2, 0, i14, i13 / i14);
                } else if (i11 == 1) {
                    int i15 = 0;
                    int i16 = 4;
                    int i17 = 0;
                    while (true) {
                        i4 = this.zzR - 1;
                        if (i15 >= i4) {
                            break;
                        }
                        this.zzS[i15] = 0;
                        while (true) {
                            i5 = i16 + 1;
                            zzt(zzacvVar, i5);
                            int i18 = this.zzn.zzM()[i16] & 255;
                            int[] iArr = this.zzS;
                            i6 = iArr[i15] + i18;
                            iArr[i15] = i6;
                            if (i18 != 255) {
                                break;
                            } else {
                                i16 = i5;
                            }
                        }
                        i17 += i6;
                        i15++;
                        i16 = i5;
                    }
                    this.zzS[i4] = ((i2 - this.zzU) - i16) - i17;
                } else {
                    if (i11 == 3) {
                        int i19 = 0;
                        int i20 = 4;
                        int i21 = 0;
                        while (true) {
                            int i22 = this.zzR - 1;
                            if (i19 < i22) {
                                this.zzS[i19] = i9;
                                int i23 = i20 + 1;
                                zzt(zzacvVar, i23);
                                if (this.zzn.zzM()[i20] != 0) {
                                    int i24 = 0;
                                    while (true) {
                                        if (i24 < i10) {
                                            int i25 = 1 << (7 - i24);
                                            if ((this.zzn.zzM()[i20] & i25) != 0) {
                                                i23 += i24;
                                                zzt(zzacvVar, i23);
                                                int i26 = i20 + 1;
                                                int i27 = this.zzn.zzM()[i20] & 255 & (~i25);
                                                i3 = i21;
                                                j = i27;
                                                int i28 = i26;
                                                while (i28 < i23) {
                                                    j = (j << i10) | (this.zzn.zzM()[i28] & 255);
                                                    i28++;
                                                    zzahxVar6 = zzahxVar6;
                                                    i10 = 8;
                                                }
                                                zzahxVar3 = zzahxVar6;
                                                if (i19 > 0) {
                                                    j -= (1 << ((i24 * 7) + 6)) - 1;
                                                }
                                            } else {
                                                i24++;
                                                i10 = 8;
                                            }
                                        } else {
                                            i3 = i21;
                                            zzahxVar3 = zzahxVar6;
                                            j = 0;
                                            break;
                                        }
                                    }
                                    i20 = i23;
                                    if (j < -2147483648L || j > 2147483647L) {
                                        break;
                                    }
                                    int[] iArr2 = this.zzS;
                                    int i29 = (int) j;
                                    if (i19 != 0) {
                                        i29 += iArr2[i19 - 1];
                                    }
                                    iArr2[i19] = i29;
                                    i21 = i29 + i3;
                                    i19++;
                                    zzahxVar6 = zzahxVar3;
                                    th = null;
                                    i9 = 0;
                                    i10 = 8;
                                } else {
                                    throw zzcc.zza(new ObfuscatedString(new long[]{-3973434996509056110L, 6188898736277012238L, 3262005170973057542L, -8889898391331432722L, 1805472722949088933L, -5833821512359459618L}).toString(), th);
                                }
                            } else {
                                zzahxVar2 = zzahxVar6;
                                this.zzS[i22] = ((i2 - this.zzU) - i20) - i21;
                                break;
                            }
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{-2206292636598422497L, -4111123825787291900L, 6745259111935006834L, 1586575409735691495L, -2408483509964701974L, 2456806760227128974L}).toString(), null);
                    }
                    throw zzcc.zza(new ObfuscatedString(new long[]{3773549562827092233L, 6467849714858156535L, -1391570125830941758L, -7673071572704037763L, -7110761276152205904L}).toString(), null);
                }
            }
            zzahxVar2 = zzahxVar6;
            this.zzO = this.zzI + zzp((this.zzn.zzM()[0] << 8) | (this.zzn.zzM()[1] & 255));
            zzahxVar = zzahxVar2;
            if (zzahxVar.zzd != 2) {
                if (i8 == 163) {
                    if ((this.zzn.zzM()[2] & 128) == 128) {
                        i8 = 163;
                    } else {
                        i8 = 163;
                    }
                }
                i7 = 0;
                this.zzV = i7;
                this.zzN = 2;
                this.zzQ = 0;
            }
            i7 = 1;
            this.zzV = i7;
            this.zzN = 2;
            this.zzQ = 0;
        } else {
            zzahxVar = zzahxVar6;
        }
        if (i8 == 163) {
            while (true) {
                int i30 = this.zzQ;
                if (i30 < this.zzR) {
                    zzs(zzahxVar, ((this.zzQ * zzahxVar.zze) / 1000) + this.zzO, this.zzV, zzn(zzacvVar, zzahxVar, this.zzS[i30], false), 0);
                    this.zzQ++;
                } else {
                    this.zzN = 0;
                    return;
                }
            }
        } else {
            while (true) {
                int i31 = this.zzQ;
                if (i31 < this.zzR) {
                    int[] iArr3 = this.zzS;
                    iArr3[i31] = zzn(zzacvVar, zzahxVar, iArr3[i31], true);
                    this.zzQ++;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x04f3, code lost:
    
        if (r3.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3252506556717102712L, -5643784462206965389L, -5865571099301306632L}).toString()) != false) goto L188;
     */
    @CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzh(int i) {
        int i2;
        int i3;
        zzadu zzadtVar;
        int i4;
        char c = 6;
        zzek.zzb(this.zzai);
        if (i != 160) {
            if (i != 174) {
                if (i != 19899) {
                    if (i != 25152) {
                        if (i != 28032) {
                            if (i != 357149030) {
                                if (i != 374648427) {
                                    if (i == 475249515) {
                                        if (!this.zzC) {
                                            zzacx zzacxVar = this.zzai;
                                            zzfg zzfgVar = this.zzJ;
                                            zzfg zzfgVar2 = this.zzK;
                                            if (this.zzx != -1 && this.zzA != -9223372036854775807L && zzfgVar != null && zzfgVar.zza() != 0 && zzfgVar2 != null && zzfgVar2.zza() == zzfgVar.zza()) {
                                                int zza2 = zzfgVar.zza();
                                                int[] iArr = new int[zza2];
                                                long[] jArr = new long[zza2];
                                                long[] jArr2 = new long[zza2];
                                                long[] jArr3 = new long[zza2];
                                                for (int i5 = 0; i5 < zza2; i5++) {
                                                    jArr3[i5] = zzfgVar.zzb(i5);
                                                    jArr[i5] = zzfgVar2.zzb(i5) + this.zzx;
                                                }
                                                int i6 = 0;
                                                while (true) {
                                                    i4 = zza2 - 1;
                                                    if (i6 >= i4) {
                                                        break;
                                                    }
                                                    int i7 = i6 + 1;
                                                    iArr[i6] = (int) (jArr[i7] - jArr[i6]);
                                                    jArr2[i6] = jArr3[i7] - jArr3[i6];
                                                    i6 = i7;
                                                }
                                                iArr[i4] = (int) ((this.zzx + this.zzw) - jArr[i4]);
                                                long j = this.zzA - jArr3[i4];
                                                jArr2[i4] = j;
                                                if (j <= 0) {
                                                    zzff.zzf(new ObfuscatedString(new long[]{2738605475749497969L, 1756755330041676129L, 8327110834327499488L, -2767305005073727493L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{7012446580780545988L, -4731654288908706574L, -2756269695930694340L, 6997274489368925463L, 6774025399061432221L, 524115841979526750L, 2942279829596647478L, -5030537419365409307L}), new StringBuilder(), j));
                                                    iArr = Arrays.copyOf(iArr, i4);
                                                    jArr = Arrays.copyOf(jArr, i4);
                                                    jArr2 = Arrays.copyOf(jArr2, i4);
                                                    jArr3 = Arrays.copyOf(jArr3, i4);
                                                }
                                                zzadtVar = new zzaci(iArr, jArr, jArr2, jArr3);
                                            } else {
                                                zzadtVar = new zzadt(this.zzA, 0L);
                                            }
                                            zzacxVar.zzO(zzadtVar);
                                            this.zzC = true;
                                        }
                                        this.zzJ = null;
                                        this.zzK = null;
                                        return;
                                    }
                                    return;
                                }
                                if (this.zzj.size() != 0) {
                                    this.zzai.zzD();
                                    return;
                                }
                                throw zzcc.zza(new ObfuscatedString(new long[]{-3480590137415381979L, -3484721049104610468L, -6332801917127532348L, 824254047404919021L, -8064878356295734919L}).toString(), null);
                            }
                            if (this.zzy == -9223372036854775807L) {
                                this.zzy = 1000000L;
                            }
                            long j2 = this.zzz;
                            if (j2 != -9223372036854775807L) {
                                this.zzA = zzp(j2);
                                return;
                            }
                            return;
                        }
                        zzr(i);
                        zzahx zzahxVar = this.zzB;
                        if (zzahxVar.zzg && zzahxVar.zzh != null) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{-2198773992244890249L, -1816761003309037524L, 3979702546748109066L, 3998718698850068853L, -3832321677928169215L, 4571710516510551135L, -6127124919142875422L, 6645956531710989828L}).toString(), null);
                        }
                        return;
                    }
                    zzr(i);
                    zzahx zzahxVar2 = this.zzB;
                    if (zzahxVar2.zzg) {
                        if (zzahxVar2.zzi != null) {
                            zzahxVar2.zzk = new zzae(null, new zzad(zzo.zza, null, new ObfuscatedString(new long[]{-8054759831419791829L, -1892656181292024311L, 7765909826217208931L}).toString(), this.zzB.zzi.zzb));
                            return;
                        }
                        throw zzcc.zza(new ObfuscatedString(new long[]{-7803678209906572975L, -6177278680654251980L, -1466431716368045109L, 8725166635477358143L, 7506491686310822666L, -6708783224946405624L, -4891136167798671857L, 6306528087606446601L}).toString(), null);
                    }
                    return;
                }
                int i8 = this.zzD;
                if (i8 != -1) {
                    long j3 = this.zzE;
                    if (j3 != -1) {
                        if (i8 == 475249515) {
                            this.zzG = j3;
                            return;
                        }
                        return;
                    }
                }
                throw zzcc.zza(new ObfuscatedString(new long[]{1844295471622268473L, 8287810931379221609L, 7802503221565559197L, 926526175341835014L, 5609096680087486447L, 3815938134076612034L, 649729490465675087L, 7769723405148197281L}).toString(), null);
            }
            zzahx zzahxVar3 = this.zzB;
            zzek.zzb(zzahxVar3);
            String str = zzahxVar3.zzb;
            if (str != null) {
                switch (str.hashCode()) {
                    case -2095576542:
                        break;
                    case -2095575984:
                        if (str.equals(new ObfuscatedString(new long[]{3894270712944839355L, 1286809258292064466L, -9157235022583422114L}).toString())) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1985379776:
                        if (str.equals(new ObfuscatedString(new long[]{9181991718992025707L, 6359181985332915582L}).toString())) {
                            c = 23;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1784763192:
                        if (str.equals(new ObfuscatedString(new long[]{7881284124612932658L, -5630709258181528340L}).toString())) {
                            c = 18;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1730367663:
                        if (str.equals(new ObfuscatedString(new long[]{55311874360234582L, 1477565543464401097L}).toString())) {
                            c = '\f';
                            break;
                        }
                        c = 65535;
                        break;
                    case -1482641358:
                        if (str.equals(new ObfuscatedString(new long[]{-284040690359685281L, 596963563559644364L, -7441166846262048109L}).toString())) {
                            c = 14;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1482641357:
                        if (str.equals(new ObfuscatedString(new long[]{5696372091783694345L, 6994268489720774361L, -3799707619219419535L}).toString())) {
                            c = 15;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1373388978:
                        if (str.equals(new ObfuscatedString(new long[]{5842386876153725371L, 6438696097590711149L, -8167969517203456981L}).toString())) {
                            c = '\t';
                            break;
                        }
                        c = 65535;
                        break;
                    case -933872740:
                        if (str.equals(new ObfuscatedString(new long[]{-1340070221671542497L, -1074491537101023540L}).toString())) {
                            c = ' ';
                            break;
                        }
                        c = 65535;
                        break;
                    case -538363189:
                        if (str.equals(new ObfuscatedString(new long[]{-3198606204557632210L, 317962677564459276L, 7977147434868370707L}).toString())) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case -538363109:
                        if (str.equals(new ObfuscatedString(new long[]{4673080683257538806L, -6982995523174327184L, 5349949692202709421L}).toString())) {
                            c = 7;
                            break;
                        }
                        c = 65535;
                        break;
                    case -425012669:
                        if (str.equals(new ObfuscatedString(new long[]{6354792359182412715L, 246451992097519060L}).toString())) {
                            c = 30;
                            break;
                        }
                        c = 65535;
                        break;
                    case -356037306:
                        if (str.equals(new ObfuscatedString(new long[]{-1216463465645212537L, 4640212508803258338L, -4214933114120633805L}).toString())) {
                            c = 21;
                            break;
                        }
                        c = 65535;
                        break;
                    case 62923557:
                        if (str.equals(new ObfuscatedString(new long[]{-8646585574177874621L, 3682187820035877691L}).toString())) {
                            c = '\r';
                            break;
                        }
                        c = 65535;
                        break;
                    case 62923603:
                        if (str.equals(new ObfuscatedString(new long[]{5733070795374975944L, -2179182122451449527L}).toString())) {
                            c = 16;
                            break;
                        }
                        c = 65535;
                        break;
                    case 62927045:
                        if (str.equals(new ObfuscatedString(new long[]{-3483988506337550999L, 4153770852293511149L}).toString())) {
                            c = 19;
                            break;
                        }
                        c = 65535;
                        break;
                    case 82318131:
                        if (str.equals(new ObfuscatedString(new long[]{-1259049208027135304L, -7347659060749123099L}).toString())) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 82338133:
                        if (str.equals(new ObfuscatedString(new long[]{-1781332171739859385L, -4781770266463543512L}).toString())) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case 82338134:
                        if (str.equals(new ObfuscatedString(new long[]{-4251987276883360909L, 6673529245295328944L}).toString())) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    case 99146302:
                        if (str.equals(new ObfuscatedString(new long[]{-2542739464545280277L, 717026107862326312L, 5483247289384937824L}).toString())) {
                            c = 31;
                            break;
                        }
                        c = 65535;
                        break;
                    case 444813526:
                        if (str.equals(new ObfuscatedString(new long[]{-8574958055414232764L, -7290770670097819070L}).toString())) {
                            c = '\n';
                            break;
                        }
                        c = 65535;
                        break;
                    case 542569478:
                        if (str.equals(new ObfuscatedString(new long[]{181528615126622200L, 2837325555749581024L, -1949007814279138034L}).toString())) {
                            c = 20;
                            break;
                        }
                        c = 65535;
                        break;
                    case 635596514:
                        if (str.equals(new ObfuscatedString(new long[]{8611350703216751027L, -7766671444999657576L, -4726127349985291674L}).toString())) {
                            c = 26;
                            break;
                        }
                        c = 65535;
                        break;
                    case 725948237:
                        if (str.equals(new ObfuscatedString(new long[]{5920140916694958284L, 2390229249741815022L, -4357195881689785052L}).toString())) {
                            c = 25;
                            break;
                        }
                        c = 65535;
                        break;
                    case 725957860:
                        if (str.equals(new ObfuscatedString(new long[]{7944399337259591241L, 3205526118210347014L, -876579195948689906L}).toString())) {
                            c = 24;
                            break;
                        }
                        c = 65535;
                        break;
                    case 738597099:
                        if (str.equals(new ObfuscatedString(new long[]{-6161723500778863500L, 7654558526278476396L, 1404739251159668159L}).toString())) {
                            c = 28;
                            break;
                        }
                        c = 65535;
                        break;
                    case 855502857:
                        if (str.equals(new ObfuscatedString(new long[]{-6901242794171944508L, -1701510077293709984L, 3231698843075787043L}).toString())) {
                            c = '\b';
                            break;
                        }
                        c = 65535;
                        break;
                    case 1045209816:
                        if (str.equals(new ObfuscatedString(new long[]{-5707313570056719148L, 3327812839276667364L, -2558735492844672079L}).toString())) {
                            c = 29;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1422270023:
                        if (str.equals(new ObfuscatedString(new long[]{7788967870778299103L, 5414340060345527650L, 161771084796389873L}).toString())) {
                            c = 27;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1809237540:
                        if (str.equals(new ObfuscatedString(new long[]{-4385391370512453822L, -5594481301862882101L}).toString())) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1950749482:
                        if (str.equals(new ObfuscatedString(new long[]{-3805880301869604941L, -2743888793269754742L}).toString())) {
                            c = 17;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1950789798:
                        if (str.equals(new ObfuscatedString(new long[]{-6512220572209405820L, -4284326363273265342L}).toString())) {
                            c = 22;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1951062397:
                        if (str.equals(new ObfuscatedString(new long[]{6690984620054225800L, -7498615598688467692L}).toString())) {
                            c = 11;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case '\b':
                    case '\t':
                    case '\n':
                    case 11:
                    case '\f':
                    case '\r':
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case ' ':
                        zzahxVar3.zze(this.zzai, zzahxVar3.zzc);
                        this.zzj.put(zzahxVar3.zzc, zzahxVar3);
                        break;
                }
                this.zzB = null;
                return;
            }
            throw zzcc.zza(new ObfuscatedString(new long[]{-182560045683962595L, -2386417002952699397L, -2334148531126624957L, -2149342022321886683L, -650709952237638086L, 7182220212988906707L}).toString(), null);
        }
        if (this.zzN == 2) {
            zzahx zzahxVar4 = (zzahx) this.zzj.get(this.zzT);
            zzahx.zzd(zzahxVar4);
            if (this.zzY > 0 && new ObfuscatedString(new long[]{-3352309717685950340L, -6313233651656585239L}).toString().equals(zzahxVar4.zzb)) {
                zzfp zzfpVar = this.zzu;
                byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(this.zzY).array();
                zzfpVar.zzI(array, array.length);
            }
            int i9 = 0;
            for (int i10 = 0; i10 < this.zzR; i10++) {
                i9 += this.zzS[i10];
            }
            int i11 = 0;
            while (i11 < this.zzR) {
                long j4 = this.zzO + ((zzahxVar4.zze * i11) / 1000);
                int i12 = this.zzV;
                if (i11 == 0) {
                    if (!this.zzX) {
                        i12 |= 1;
                    }
                    i3 = i12;
                    i2 = 0;
                } else {
                    i2 = i11;
                    i3 = i12;
                }
                int i13 = this.zzS[i2];
                int i14 = i9 - i13;
                zzs(zzahxVar4, j4, i3, i13, i14);
                i11 = i2 + 1;
                i9 = i14;
            }
            this.zzN = 0;
        }
    }

    @CallSuper
    public final void zzi(int i, double d) {
        if (i != 181) {
            if (i != 17545) {
                switch (i) {
                    case 21969:
                        zzr(i);
                        this.zzB.zzD = (float) d;
                        return;
                    case 21970:
                        zzr(i);
                        this.zzB.zzE = (float) d;
                        return;
                    case 21971:
                        zzr(i);
                        this.zzB.zzF = (float) d;
                        return;
                    case 21972:
                        zzr(i);
                        this.zzB.zzG = (float) d;
                        return;
                    case 21973:
                        zzr(i);
                        this.zzB.zzH = (float) d;
                        return;
                    case 21974:
                        zzr(i);
                        this.zzB.zzI = (float) d;
                        return;
                    case 21975:
                        zzr(i);
                        this.zzB.zzJ = (float) d;
                        return;
                    case 21976:
                        zzr(i);
                        this.zzB.zzK = (float) d;
                        return;
                    case 21977:
                        zzr(i);
                        this.zzB.zzL = (float) d;
                        return;
                    case 21978:
                        zzr(i);
                        this.zzB.zzM = (float) d;
                        return;
                    default:
                        switch (i) {
                            case 30323:
                                zzr(i);
                                this.zzB.zzs = (float) d;
                                return;
                            case 30324:
                                zzr(i);
                                this.zzB.zzt = (float) d;
                                return;
                            case 30325:
                                zzr(i);
                                this.zzB.zzu = (float) d;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.zzz = (long) d;
            return;
        }
        zzr(i);
        this.zzB.zzQ = (int) d;
    }

    @CallSuper
    public final void zzj(int i, long j) {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                switch (i) {
                    case 131:
                        zzr(i);
                        this.zzB.zzd = (int) j;
                        return;
                    case 136:
                        if (j == 1) {
                            z = true;
                        }
                        zzr(i);
                        this.zzB.zzV = z;
                        return;
                    case 155:
                        this.zzP = zzp(j);
                        return;
                    case 159:
                        zzr(i);
                        this.zzB.zzO = (int) j;
                        return;
                    case 176:
                        zzr(i);
                        this.zzB.zzl = (int) j;
                        return;
                    case 179:
                        zzq(i);
                        this.zzJ.zzc(zzp(j));
                        return;
                    case 186:
                        zzr(i);
                        this.zzB.zzm = (int) j;
                        return;
                    case 215:
                        zzr(i);
                        this.zzB.zzc = (int) j;
                        return;
                    case 231:
                        this.zzI = zzp(j);
                        return;
                    case 238:
                        this.zzW = (int) j;
                        return;
                    case 241:
                        if (!this.zzL) {
                            zzq(i);
                            this.zzK.zzc(j);
                            this.zzL = true;
                            return;
                        }
                        return;
                    case 251:
                        this.zzX = true;
                        return;
                    case 16871:
                        zzr(i);
                        zzahx.zzb(this.zzB, (int) j);
                        return;
                    case 16980:
                        if (j != 3) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{2838450398012963355L, -5766983410177912319L, -7042545218059887803L}).toString() + j + new ObfuscatedString(new long[]{3337262491008304371L, -204262585309301774L, 4161054092100491769L}).toString(), null);
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{5417543223113733224L, -2477422821258660486L, -2752837832822627842L, 6223092192341430048L}).toString() + j + new ObfuscatedString(new long[]{4245229792383022151L, 3197732308569936394L, -6304654997425072175L}).toString(), null);
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{-4092563309731129378L, 1197803817324213177L, -8033591500033899496L}).toString() + j + new ObfuscatedString(new long[]{-8966222911602733450L, 6419490143327008762L, 8470286936526087060L}).toString(), null);
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{5356488941291578032L, -27515290852557006L, 9123902008633797731L}).toString() + j + new ObfuscatedString(new long[]{8261114972773547652L, 2234978565957916744L, 36337156351647823L}).toString(), null);
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            throw zzcc.zza(new ObfuscatedString(new long[]{-4772541128220758875L, 7085240520638401976L, 6954709742208341628L, 2358146451606581792L}).toString() + j + new ObfuscatedString(new long[]{-8050245741813930831L, 379233179496800536L, -5793594848509429931L}).toString(), null);
                        }
                        return;
                    case 21420:
                        this.zzE = j + this.zzx;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        zzr(i);
                        if (i2 != 0) {
                            if (i2 != 1) {
                                if (i2 != 3) {
                                    if (i2 == 15) {
                                        this.zzB.zzw = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzB.zzw = 1;
                                return;
                            }
                            this.zzB.zzw = 2;
                            return;
                        }
                        this.zzB.zzw = 0;
                        return;
                    case 21680:
                        zzr(i);
                        this.zzB.zzo = (int) j;
                        return;
                    case 21682:
                        zzr(i);
                        this.zzB.zzq = (int) j;
                        return;
                    case 21690:
                        zzr(i);
                        this.zzB.zzp = (int) j;
                        return;
                    case 21930:
                        if (j == 1) {
                            z = true;
                        }
                        zzr(i);
                        this.zzB.zzU = z;
                        return;
                    case 21938:
                        zzr(i);
                        zzahx zzahxVar = this.zzB;
                        zzahxVar.zzx = true;
                        zzahxVar.zzn = (int) j;
                        return;
                    case 21998:
                        zzr(i);
                        this.zzB.zzf = (int) j;
                        return;
                    case 22186:
                        zzr(i);
                        this.zzB.zzR = j;
                        return;
                    case 22203:
                        zzr(i);
                        this.zzB.zzS = j;
                        return;
                    case 25188:
                        zzr(i);
                        this.zzB.zzP = (int) j;
                        return;
                    case 30114:
                        this.zzY = j;
                        return;
                    case 30321:
                        int i3 = (int) j;
                        zzr(i);
                        if (i3 != 0) {
                            if (i3 != 1) {
                                if (i3 != 2) {
                                    if (i3 == 3) {
                                        this.zzB.zzr = 3;
                                        return;
                                    }
                                    return;
                                }
                                this.zzB.zzr = 2;
                                return;
                            }
                            this.zzB.zzr = 1;
                            return;
                        }
                        this.zzB.zzr = 0;
                        return;
                    case 2352003:
                        zzr(i);
                        this.zzB.zze = (int) j;
                        return;
                    case 2807729:
                        this.zzy = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i4 = (int) j;
                                zzr(i);
                                if (i4 != 1) {
                                    if (i4 == 2) {
                                        this.zzB.zzA = 1;
                                        return;
                                    }
                                    return;
                                }
                                this.zzB.zzA = 2;
                                return;
                            case 21946:
                                zzr(i);
                                int zzb2 = zzt.zzb((int) j);
                                if (zzb2 != -1) {
                                    this.zzB.zzz = zzb2;
                                    return;
                                }
                                return;
                            case 21947:
                                zzr(i);
                                this.zzB.zzx = true;
                                int zza2 = zzt.zza((int) j);
                                if (zza2 != -1) {
                                    this.zzB.zzy = zza2;
                                    return;
                                }
                                return;
                            case 21948:
                                zzr(i);
                                this.zzB.zzB = (int) j;
                                return;
                            case 21949:
                                zzr(i);
                                this.zzB.zzC = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            }
            if (j != 1) {
                throw zzcc.zza(new ObfuscatedString(new long[]{2487121364305059044L, 2881086173545936441L, 7083841555130858520L, -2556041432621676997L}).toString() + j + new ObfuscatedString(new long[]{4199196802736055282L, 6752113018849244373L, 8875795364518488084L}).toString(), null);
            }
            return;
        }
        if (j == 0) {
            return;
        }
        throw zzcc.zza(new ObfuscatedString(new long[]{8987814962250154198L, -2535889230080496536L, -7807335119736513455L, 4688216444776273057L}).toString() + j + new ObfuscatedString(new long[]{1500403403108103918L, -7500080292072636557L, -2815820720257879307L}).toString(), null);
    }

    @CallSuper
    public final void zzk(int i, long j, long j2) {
        zzek.zzb(this.zzai);
        if (i != 160) {
            if (i != 174) {
                if (i != 187) {
                    if (i != 19899) {
                        if (i != 20533) {
                            if (i != 21968) {
                                if (i != 408125543) {
                                    if (i != 475249515) {
                                        if (i == 524531317 && !this.zzC) {
                                            if (this.zzk && this.zzG != -1) {
                                                this.zzF = true;
                                                return;
                                            } else {
                                                this.zzai.zzO(new zzadt(this.zzA, 0L));
                                                this.zzC = true;
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                    this.zzJ = new zzfg(32);
                                    this.zzK = new zzfg(32);
                                    return;
                                }
                                long j3 = this.zzx;
                                if (j3 != -1 && j3 != j) {
                                    throw zzcc.zza(new ObfuscatedString(new long[]{5387719660297851880L, 1458455014956657699L, -2410087409852281318L, -776751380537296382L, 1673069817570547421L, 48056879572454518L}).toString(), null);
                                }
                                this.zzx = j;
                                this.zzw = j2;
                                return;
                            }
                            zzr(i);
                            this.zzB.zzx = true;
                            return;
                        }
                        zzr(i);
                        this.zzB.zzg = true;
                        return;
                    }
                    this.zzD = -1;
                    this.zzE = -1L;
                    return;
                }
                this.zzL = false;
                return;
            }
            this.zzB = new zzahx();
            return;
        }
        this.zzX = false;
        this.zzY = 0L;
    }

    @CallSuper
    public final void zzl(int i, String str) {
        if (i != 134) {
            if (i != 17026) {
                if (i != 21358) {
                    if (i == 2274716) {
                        zzr(i);
                        zzahx.zzc(this.zzB, str);
                        return;
                    }
                    return;
                }
                zzr(i);
                this.zzB.zza = str;
                return;
            }
            if (!new ObfuscatedString(new long[]{-7977472754379084229L, 4048622264654463549L}).toString().equals(str) && !new ObfuscatedString(new long[]{-1152999804303880974L, -4038288622503100L}).toString().equals(str)) {
                throw zzcc.zza(new ObfuscatedString(new long[]{-3373847159377063632L, -8359718781611470034L}).toString() + str + new ObfuscatedString(new long[]{4994752083407719157L, 227014066246084290L, 7099765318626472840L}).toString(), null);
            }
            return;
        }
        zzr(i);
        this.zzB.zzb = str;
    }

    public zzahy(int i) {
        zzahr zzahrVar = new zzahr();
        this.zzx = -1L;
        this.zzy = -9223372036854775807L;
        this.zzz = -9223372036854775807L;
        this.zzA = -9223372036854775807L;
        this.zzG = -1L;
        this.zzH = -1L;
        this.zzI = -9223372036854775807L;
        this.zzh = zzahrVar;
        zzahrVar.zza(new zzahw(this, null));
        this.zzk = true;
        this.zzi = new zzaia();
        this.zzj = new SparseArray();
        this.zzn = new zzfp(4);
        this.zzo = new zzfp(ByteBuffer.allocate(4).putInt(-1).array());
        this.zzp = new zzfp(4);
        this.zzl = new zzfp(zzgm.zza);
        this.zzm = new zzfp(4);
        this.zzq = new zzfp();
        this.zzr = new zzfp();
        this.zzs = new zzfp(8);
        this.zzt = new zzfp();
        this.zzu = new zzfp();
        this.zzS = new int[1];
    }
}
