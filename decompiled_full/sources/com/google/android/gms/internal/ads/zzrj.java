package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzrj extends zzsz implements zzlh {
    private final Context zzb;
    private final zzpt zzc;
    private final zzqb zzd;
    private int zze;
    private boolean zzf;
    private boolean zzg;

    @Nullable
    private zzam zzh;

    @Nullable
    private zzam zzi;
    private long zzj;
    private boolean zzk;
    private boolean zzl;

    @Nullable
    private zzme zzm;
    private boolean zzn;

    public zzrj(Context context, zzsq zzsqVar, zztb zztbVar, boolean z, @Nullable Handler handler, @Nullable zzpu zzpuVar, zzqb zzqbVar) {
        super(1, zzsqVar, zztbVar, false, 44100.0f);
        this.zzb = context.getApplicationContext();
        this.zzd = zzqbVar;
        this.zzc = new zzpt(handler, zzpuVar);
        zzqbVar.zzp(new zzri(this, null));
    }

    private final int zzaK(zzsv zzsvVar, zzam zzamVar) {
        int i;
        if (new ObfuscatedString(new long[]{1711539225425741861L, -5799295753869363593L, 382535377335301863L, 1516562023841580327L}).toString().equals(zzsvVar.zza) && (i = zzfy.zza) < 24 && (i != 23 || !zzfy.zzJ(this.zzb))) {
            return -1;
        }
        return zzamVar.zzn;
    }

    private static List zzaL(zztb zztbVar, zzam zzamVar, boolean z, zzqb zzqbVar) {
        zzsv zzb;
        if (zzamVar.zzm == null) {
            return zzgaa.zzl();
        }
        if (zzqbVar.zzz(zzamVar) && (zzb = zztn.zzb()) != null) {
            return zzgaa.zzm(zzb);
        }
        return zztn.zzf(zztbVar, zzamVar, false, false);
    }

    private final void zzaM() {
        long zzb = this.zzd.zzb(zzV());
        if (zzb != Long.MIN_VALUE) {
            if (!this.zzk) {
                zzb = Math.max(this.zzj, zzb);
            }
            this.zzj = zzb;
            this.zzk = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzA() {
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzB() {
        this.zzn = false;
        try {
            super.zzB();
            if (this.zzl) {
                this.zzl = false;
                this.zzd.zzk();
            }
        } catch (Throwable th) {
            if (this.zzl) {
                this.zzl = false;
                this.zzd.zzk();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzC() {
        this.zzd.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final void zzD() {
        zzaM();
        this.zzd.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzmf, com.google.android.gms.internal.ads.zzmh
    public final String zzT() {
        return new ObfuscatedString(new long[]{6396864366540693245L, -7039401785561545955L, 4691807994363150548L, -9149122958540071069L}).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzmf
    public final boolean zzV() {
        if (super.zzV() && this.zzd.zzy()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zzmf
    public final boolean zzW() {
        if (!this.zzd.zzx() && !super.zzW()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final float zzY(float f, zzam zzamVar, zzam[] zzamVarArr) {
        int i = -1;
        for (zzam zzamVar2 : zzamVarArr) {
            int i2 = zzamVar2.zzA;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final int zzZ(zztb zztbVar, zzam zzamVar) {
        int i;
        boolean z;
        int i2;
        int i3 = 3;
        int i4 = 1;
        int i5 = 128;
        if (!zzcb.zzg(zzamVar.zzm)) {
            return 128;
        }
        int i6 = zzfy.zza;
        int i7 = zzamVar.zzG;
        boolean zzaJ = zzsz.zzaJ(zzamVar);
        if (!zzaJ || (i7 != 0 && zztn.zzb() == null)) {
            i = 0;
        } else {
            zzpg zzd = this.zzd.zzd(zzamVar);
            if (!zzd.zzb) {
                i = 0;
            } else {
                if (true != zzd.zzc) {
                    i = 512;
                } else {
                    i = 1536;
                }
                if (zzd.zzd) {
                    i |= 2048;
                }
            }
            if (this.zzd.zzz(zzamVar)) {
                return i | 172;
            }
        }
        if ((!new ObfuscatedString(new long[]{-1806531664354387705L, 2050217604434116450L, 7215884047481345745L}).toString().equals(zzamVar.zzm) || this.zzd.zzz(zzamVar)) && this.zzd.zzz(zzfy.zzy(2, zzamVar.zzz, zzamVar.zzA))) {
            List zzaL = zzaL(zztbVar, zzamVar, false, this.zzd);
            if (!zzaL.isEmpty()) {
                if (!zzaJ) {
                    i4 = 2;
                } else {
                    zzsv zzsvVar = (zzsv) zzaL.get(0);
                    boolean zze = zzsvVar.zze(zzamVar);
                    if (!zze) {
                        for (int i8 = 1; i8 < zzaL.size(); i8++) {
                            zzsv zzsvVar2 = (zzsv) zzaL.get(i8);
                            if (zzsvVar2.zze(zzamVar)) {
                                zzsvVar = zzsvVar2;
                                z = false;
                                zze = true;
                                break;
                            }
                        }
                    }
                    z = true;
                    if (true == zze) {
                        i3 = 4;
                    }
                    int i9 = 8;
                    if (zze && zzsvVar.zzf(zzamVar)) {
                        i9 = 16;
                    }
                    if (true != zzsvVar.zzg) {
                        i2 = 0;
                    } else {
                        i2 = 64;
                    }
                    if (true != z) {
                        i5 = 0;
                    }
                    return i3 | i9 | 32 | i2 | i5 | i;
                }
            }
        }
        return i4 | 128;
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final long zza() {
        if (zzbf() == 2) {
            zzaM();
        }
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final zzis zzaa(zzsv zzsvVar, zzam zzamVar, zzam zzamVar2) {
        int i;
        int i2;
        zzis zzb = zzsvVar.zzb(zzamVar, zzamVar2);
        int i3 = zzb.zze;
        if (zzaH(zzamVar2)) {
            i3 |= 32768;
        }
        if (zzaK(zzsvVar, zzamVar2) > this.zze) {
            i3 |= 64;
        }
        String str = zzsvVar.zza;
        if (i3 != 0) {
            i2 = i3;
            i = 0;
        } else {
            i = zzb.zzd;
            i2 = 0;
        }
        return new zzis(str, zzamVar, zzamVar2, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    @Nullable
    public final zzis zzab(zzlb zzlbVar) {
        zzam zzamVar = zzlbVar.zza;
        zzamVar.getClass();
        this.zzh = zzamVar;
        zzis zzab = super.zzab(zzlbVar);
        this.zzc.zzi(zzamVar, zzab);
        return zzab;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0192, code lost:
    
        if (new com.panda912.muddy.ObfuscatedString(new long[]{-2392671151901048872L, 6287465500584057672L, -8249203287230778187L}).toString().equals(r3) == false) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0221  */
    @Override // com.google.android.gms.internal.ads.zzsz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzsp zzae(zzsv zzsvVar, zzam zzamVar, @Nullable MediaCrypto mediaCrypto, float f) {
        boolean z;
        String str;
        boolean z2;
        MediaFormat mediaFormat;
        zzam zzamVar2;
        zzam[] zzS = zzS();
        int length = zzS.length;
        int zzaK = zzaK(zzsvVar, zzamVar);
        if (length != 1) {
            for (zzam zzamVar3 : zzS) {
                if (zzsvVar.zzb(zzamVar, zzamVar3).zzd != 0) {
                    zzaK = Math.max(zzaK, zzaK(zzsvVar, zzamVar3));
                }
            }
        }
        this.zze = zzaK;
        String str2 = zzsvVar.zza;
        int i = zzfy.zza;
        if (i < 24 && new ObfuscatedString(new long[]{5497788704271487520L, -5236845357552290964L, 453862685405067912L}).toString().equals(str2) && new ObfuscatedString(new long[]{5775767403261753341L, 7340326151471307220L}).toString().equals(zzfy.zzc)) {
            String str3 = zzfy.zzb;
            if (str3.startsWith(new ObfuscatedString(new long[]{-7992305695800755501L, -1875483223662199879L}).toString()) || str3.startsWith(new ObfuscatedString(new long[]{-419215531420258935L, -2357847093434215928L}).toString()) || str3.startsWith(new ObfuscatedString(new long[]{3858632628407168011L, 7745077823941612350L}).toString())) {
                z = true;
                this.zzf = z;
                str = zzsvVar.zza;
                if (!str.equals(new ObfuscatedString(new long[]{-3684163874067960972L, 8984380831297697861L, -3901831975757752132L, -5653026079135604795L}).toString()) || str.equals(new ObfuscatedString(new long[]{7595969431783268800L, 8150891763176036592L, 4433092909659486953L, -7579563090764454600L}).toString()) || str.equals(new ObfuscatedString(new long[]{9123802740591943832L, -2529872105502753818L, -7984040050360428307L, 6678652984838170411L, -2701478161283916445L}).toString()) || str.equals(new ObfuscatedString(new long[]{4773935116176716389L, 6962024861447400312L, 1091710822914686739L, -7095643741153948494L, -6934531151503159783L}).toString())) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                this.zzg = z2;
                String str4 = zzsvVar.zzc;
                int i2 = this.zze;
                mediaFormat = new MediaFormat();
                mediaFormat.setString(new ObfuscatedString(new long[]{962441305411741779L, -6634416780138242395L}).toString(), str4);
                mediaFormat.setInteger(new ObfuscatedString(new long[]{-6828290312080312789L, 6290388208019236659L, -5931436144168441347L}).toString(), zzamVar.zzz);
                mediaFormat.setInteger(new ObfuscatedString(new long[]{8635354410987676143L, 1746378653066154302L, 550586376228966078L}).toString(), zzamVar.zzA);
                zzfi.zzb(mediaFormat, zzamVar.zzo);
                zzfi.zza(mediaFormat, new ObfuscatedString(new long[]{-3197950839107542806L, 2041296116181459500L, -6832957792315901425L}).toString(), i2);
                if (i >= 23) {
                    mediaFormat.setInteger(new ObfuscatedString(new long[]{-5798515186920611653L, 9123250641603796230L}).toString(), 0);
                    if (f != -1.0f) {
                        if (i == 23) {
                            String obfuscatedString = new ObfuscatedString(new long[]{-3704013825366996593L, 7920288881146846071L, -2680521475100232167L}).toString();
                            String str5 = zzfy.zzd;
                            if (!obfuscatedString.equals(str5)) {
                            }
                        }
                        mediaFormat.setFloat(new ObfuscatedString(new long[]{7703788705486246165L, -8536669260729315930L, 4389966190813471717L}).toString(), f);
                    }
                }
                if (i <= 28) {
                    if (new ObfuscatedString(new long[]{-7171706387484378842L, -833173886174888601L, -3789927252651838394L}).toString().equals(zzamVar.zzm)) {
                        mediaFormat.setInteger(new ObfuscatedString(new long[]{-8089554759721880135L, -7053757596994402571L, -6666658915559584752L}).toString(), 1);
                    }
                }
                if (i >= 24 && this.zzd.zza(zzfy.zzy(4, zzamVar.zzz, zzamVar.zzA)) == 2) {
                    mediaFormat.setInteger(new ObfuscatedString(new long[]{-529290737847678187L, 1366842679215551942L, -8522810888390352346L}).toString(), 4);
                }
                if (i >= 32) {
                    mediaFormat.setInteger(new ObfuscatedString(new long[]{-3037155423984209472L, 1376627585883169481L, 7092020072294120740L, 9001008750397281348L}).toString(), 99);
                }
                if (new ObfuscatedString(new long[]{3408850970434719489L, -4861392056664953357L, -8328628047575050492L}).toString().equals(zzsvVar.zzb)) {
                    if (!new ObfuscatedString(new long[]{9026859164375512578L, 2034637310301356369L, -2936123084288560612L}).toString().equals(zzamVar.zzm)) {
                        zzamVar2 = zzamVar;
                        this.zzi = zzamVar2;
                        return zzsp.zza(zzsvVar, mediaFormat, zzamVar, null);
                    }
                }
                zzamVar2 = null;
                this.zzi = zzamVar2;
                return zzsp.zza(zzsvVar, mediaFormat, zzamVar, null);
            }
        }
        z = false;
        this.zzf = z;
        str = zzsvVar.zza;
        if (!str.equals(new ObfuscatedString(new long[]{-3684163874067960972L, 8984380831297697861L, -3901831975757752132L, -5653026079135604795L}).toString())) {
        }
        z2 = true;
        this.zzg = z2;
        String str42 = zzsvVar.zzc;
        int i22 = this.zze;
        mediaFormat = new MediaFormat();
        mediaFormat.setString(new ObfuscatedString(new long[]{962441305411741779L, -6634416780138242395L}).toString(), str42);
        mediaFormat.setInteger(new ObfuscatedString(new long[]{-6828290312080312789L, 6290388208019236659L, -5931436144168441347L}).toString(), zzamVar.zzz);
        mediaFormat.setInteger(new ObfuscatedString(new long[]{8635354410987676143L, 1746378653066154302L, 550586376228966078L}).toString(), zzamVar.zzA);
        zzfi.zzb(mediaFormat, zzamVar.zzo);
        zzfi.zza(mediaFormat, new ObfuscatedString(new long[]{-3197950839107542806L, 2041296116181459500L, -6832957792315901425L}).toString(), i22);
        if (i >= 23) {
        }
        if (i <= 28) {
        }
        if (i >= 24) {
            mediaFormat.setInteger(new ObfuscatedString(new long[]{-529290737847678187L, 1366842679215551942L, -8522810888390352346L}).toString(), 4);
        }
        if (i >= 32) {
        }
        if (new ObfuscatedString(new long[]{3408850970434719489L, -4861392056664953357L, -8328628047575050492L}).toString().equals(zzsvVar.zzb)) {
        }
        zzamVar2 = null;
        this.zzi = zzamVar2;
        return zzsp.zza(zzsvVar, mediaFormat, zzamVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final List zzaf(zztb zztbVar, zzam zzamVar, boolean z) {
        return zztn.zzg(zzaL(zztbVar, zzamVar, false, this.zzd), zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzah(zzih zzihVar) {
        zzam zzamVar;
        if (zzfy.zza >= 29 && (zzamVar = zzihVar.zza) != null && Objects.equals(zzamVar.zzm, new ObfuscatedString(new long[]{-2088001513157009439L, -2808768566955147976L, -6095318664331503959L}).toString()) && zzaG()) {
            ByteBuffer byteBuffer = zzihVar.zzf;
            byteBuffer.getClass();
            zzam zzamVar2 = zzihVar.zza;
            zzamVar2.getClass();
            if (byteBuffer.remaining() == 8) {
                this.zzd.zzq(zzamVar2.zzC, (int) ((byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong() * 48000) / 1000000000));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzai(Exception exc) {
        zzff.zzd(new ObfuscatedString(new long[]{6346132644675330271L, -4170690564111887603L, -1103379498894389775L, 1163728239309689282L}).toString(), new ObfuscatedString(new long[]{-550524465727344809L, 2151396082123004400L, -2151827433795216567L, 9097732731436870609L}).toString(), exc);
        this.zzc.zza(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzaj(String str, zzsp zzspVar, long j, long j2) {
        this.zzc.zze(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzak(String str) {
        this.zzc.zzf(str);
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzal(zzam zzamVar, @Nullable MediaFormat mediaFormat) {
        int i;
        int i2;
        zzam zzamVar2 = this.zzi;
        int[] iArr = null;
        boolean z = true;
        if (zzamVar2 != null) {
            zzamVar = zzamVar2;
        } else if (zzau() != null) {
            mediaFormat.getClass();
            if (new ObfuscatedString(new long[]{-5694808053691614764L, 3159984958369584340L, 5354718620421969477L}).toString().equals(zzamVar.zzm)) {
                i = zzamVar.zzB;
            } else if (zzfy.zza >= 24 && mediaFormat.containsKey(new ObfuscatedString(new long[]{-5511631539077833397L, 723929891578013437L, 1617403568614864453L}).toString())) {
                i = mediaFormat.getInteger(new ObfuscatedString(new long[]{8907203909830641759L, -721904083454433290L, 4427332543211552262L}).toString());
            } else if (mediaFormat.containsKey(new ObfuscatedString(new long[]{-4694804673719418284L, -5072705777451512611L, 6679426526539918873L, -5689324376365960001L}).toString())) {
                i = zzfy.zzk(mediaFormat.getInteger(new ObfuscatedString(new long[]{4108792687714347893L, 3147147246211306237L, -7812278635494266915L, -5485549685485961307L}).toString()));
            } else {
                i = 2;
            }
            zzak zzakVar = new zzak();
            zzakVar.zzW(new ObfuscatedString(new long[]{-7131785888008958489L, 7540463188056949699L, -72678016114112246L}).toString());
            zzakVar.zzQ(i);
            zzakVar.zzF(zzamVar.zzC);
            zzakVar.zzG(zzamVar.zzD);
            zzakVar.zzP(zzamVar.zzk);
            zzakVar.zzK(zzamVar.zzb);
            zzakVar.zzM(zzamVar.zzc);
            zzakVar.zzN(zzamVar.zzd);
            zzakVar.zzY(zzamVar.zze);
            zzakVar.zzU(zzamVar.zzf);
            zzakVar.zzy(mediaFormat.getInteger(new ObfuscatedString(new long[]{-6341237903572277271L, 4960324708354734166L, -5941464228141584033L}).toString()));
            zzakVar.zzX(mediaFormat.getInteger(new ObfuscatedString(new long[]{-2105107648835549899L, -8232596749550387312L, 2123404449684295233L}).toString()));
            zzam zzac = zzakVar.zzac();
            if (this.zzf && zzac.zzz == 6 && (i2 = zzamVar.zzz) < 6) {
                iArr = new int[i2];
                for (int i3 = 0; i3 < zzamVar.zzz; i3++) {
                    iArr[i3] = i3;
                }
            } else if (this.zzg) {
                int i4 = zzac.zzz;
                if (i4 != 3) {
                    if (i4 != 5) {
                        if (i4 != 6) {
                            if (i4 != 7) {
                                if (i4 == 8) {
                                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                                }
                            } else {
                                iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                            }
                        } else {
                            iArr = new int[]{0, 2, 1, 5, 3, 4};
                        }
                    } else {
                        iArr = new int[]{0, 2, 1, 3, 4};
                    }
                } else {
                    iArr = new int[]{0, 2, 1};
                }
            }
            zzamVar = zzac;
        }
        try {
            int i5 = zzfy.zza;
            if (i5 >= 29) {
                if (zzaG()) {
                    zzm();
                }
                if (i5 < 29) {
                    z = false;
                }
                zzek.zzf(z);
            }
            this.zzd.zze(zzamVar, 0, iArr);
        } catch (zzpw e) {
            throw zzi(e, e.zza, false, 5001);
        }
    }

    @CallSuper
    public final void zzam() {
        this.zzk = true;
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzan() {
        this.zzd.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final void zzao() {
        int i;
        try {
            this.zzd.zzj();
        } catch (zzqa e) {
            if (true != zzaG()) {
                i = 5002;
            } else {
                i = 5003;
            }
            throw zzi(e, e.zzc, e.zzb, i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final boolean zzap(long j, long j2, @Nullable zzsr zzsrVar, @Nullable ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, zzam zzamVar) {
        byteBuffer.getClass();
        if (this.zzi != null && (i2 & 2) != 0) {
            zzsrVar.getClass();
            zzsrVar.zzn(i, false);
            return true;
        }
        if (z) {
            if (zzsrVar != null) {
                zzsrVar.zzn(i, false);
            }
            ((zzsz) this).zza.zzf += i3;
            this.zzd.zzg();
            return true;
        }
        try {
            if (!this.zzd.zzw(byteBuffer, j3, i3)) {
                return false;
            }
            if (zzsrVar != null) {
                zzsrVar.zzn(i, false);
            }
            ((zzsz) this).zza.zze += i3;
            return true;
        } catch (zzpx e) {
            throw zzi(e, this.zzh, e.zzb, 5001);
        } catch (zzqa e2) {
            if (zzaG()) {
                zzm();
            }
            throw zzi(e2, zzamVar, e2.zzb, 5002);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz
    public final boolean zzaq(zzam zzamVar) {
        zzm();
        return this.zzd.zzz(zzamVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final zzcg zzc() {
        return this.zzd.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final void zzg(zzcg zzcgVar) {
        this.zzd.zzr(zzcgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlh
    public final boolean zzj() {
        boolean z = this.zzn;
        this.zzn = false;
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzmf
    @Nullable
    public final zzlh zzk() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zziq, com.google.android.gms.internal.ads.zzma
    public final void zzt(int i, @Nullable Object obj) {
        if (i != 2) {
            if (i != 3) {
                if (i != 6) {
                    switch (i) {
                        case 9:
                            zzqb zzqbVar = this.zzd;
                            obj.getClass();
                            zzqbVar.zzu(((Boolean) obj).booleanValue());
                            return;
                        case 10:
                            zzqb zzqbVar2 = this.zzd;
                            obj.getClass();
                            zzqbVar2.zzm(((Integer) obj).intValue());
                            return;
                        case 11:
                            this.zzm = (zzme) obj;
                            return;
                        case 12:
                            if (zzfy.zza >= 23) {
                                zzrg.zza(this.zzd, obj);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                }
                zzl zzlVar = (zzl) obj;
                zzqb zzqbVar3 = this.zzd;
                zzlVar.getClass();
                zzqbVar3.zzn(zzlVar);
                return;
            }
            zzk zzkVar = (zzk) obj;
            zzqb zzqbVar4 = this.zzd;
            zzkVar.getClass();
            zzqbVar4.zzl(zzkVar);
            return;
        }
        zzqb zzqbVar5 = this.zzd;
        obj.getClass();
        zzqbVar5.zzv(((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzw() {
        this.zzl = true;
        this.zzh = null;
        try {
            this.zzd.zzf();
            super.zzw();
        } catch (Throwable th) {
            super.zzw();
            throw th;
        } finally {
            this.zzc.zzg(((zzsz) this).zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzx(boolean z, boolean z2) {
        super.zzx(z, z2);
        this.zzc.zzh(((zzsz) this).zza);
        zzm();
        this.zzd.zzs(zzn());
        this.zzd.zzo(zzh());
    }

    @Override // com.google.android.gms.internal.ads.zzsz, com.google.android.gms.internal.ads.zziq
    public final void zzz(long j, boolean z) {
        super.zzz(j, z);
        this.zzd.zzf();
        this.zzj = j;
        this.zzn = false;
        this.zzk = true;
    }
}
