package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.core.view.PointerIconCompat;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzko extends zzm implements zzjj {
    public static final /* synthetic */ int zzd = 0;
    private final zzmo zzA;
    private final long zzB;
    private int zzC;
    private int zzD;
    private boolean zzE;
    private int zzF;
    private zzmj zzG;
    private zzck zzH;
    private zzbv zzI;
    private zzbv zzJ;

    @Nullable
    private zzam zzK;

    @Nullable
    private zzam zzL;

    @Nullable
    private Object zzM;

    @Nullable
    private Surface zzN;
    private int zzO;
    private zzfq zzP;

    @Nullable
    private zzir zzQ;

    @Nullable
    private zzir zzR;
    private int zzS;
    private zzk zzT;
    private float zzU;
    private boolean zzV;
    private zzee zzW;
    private boolean zzX;
    private boolean zzY;
    private zzaa zzZ;
    private zzdp zzaa;
    private zzbv zzab;
    private zzly zzac;
    private int zzad;
    private long zzae;
    private final zzjk zzaf;
    private zzwk zzag;
    final zzyp zzb;
    final zzck zzc;
    private final zzeo zze;
    private final Context zzf;
    private final zzco zzg;
    private final zzmf[] zzh;
    private final zzyo zzi;
    private final zzew zzj;
    private final zzkz zzk;
    private final zzfc zzl;
    private final CopyOnWriteArraySet zzm;
    private final zzcu zzn;
    private final List zzo;
    private final boolean zzp;
    private final zzuq zzq;
    private final zzmp zzr;
    private final Looper zzs;
    private final zzyw zzt;
    private final zzel zzu;
    private final zzkk zzv;
    private final zzkm zzw;
    private final zzil zzx;
    private final zzip zzy;
    private final zzmn zzz;

    static {
        zzbq.zzb(new ObfuscatedString(new long[]{1106952457473678361L, -2911636533451075115L, -9060233909553843621L}).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v9, types: [com.google.android.gms.internal.ads.zzyv, java.lang.Object, com.google.android.gms.internal.ads.zzmp] */
    @SuppressLint({"HandlerLeak"})
    public zzko(zzji zzjiVar, @Nullable zzco zzcoVar) {
        zzpb zza;
        zzeo zzeoVar = new zzeo(zzel.zza);
        this.zze = zzeoVar;
        try {
            zzff.zze(new ObfuscatedString(new long[]{-8528266718046416203L, 6843438338035978725L, -7869581698847483592L}).toString(), new ObfuscatedString(new long[]{-4722088616917471972L, -3428386007940278255L}).toString() + Integer.toHexString(System.identityHashCode(this)) + new ObfuscatedString(new long[]{1507853118249001879L, -1578087873915020594L, 102098579125682911L, 3385498515429097511L, -2176752239543551623L}).toString() + zzfy.zze + new ObfuscatedString(new long[]{7955594978464247184L, 6223739674727807782L}).toString());
            Context applicationContext = zzjiVar.zza.getApplicationContext();
            this.zzf = applicationContext;
            ?? apply = zzjiVar.zzh.apply(zzjiVar.zzb);
            this.zzr = apply;
            this.zzT = zzjiVar.zzj;
            this.zzO = zzjiVar.zzk;
            this.zzV = false;
            this.zzB = zzjiVar.zzo;
            zzkk zzkkVar = new zzkk(this, null);
            this.zzv = zzkkVar;
            zzkm zzkmVar = new zzkm(null);
            this.zzw = zzkmVar;
            Handler handler = new Handler(zzjiVar.zzi);
            zzmf[] zza2 = ((zzjb) zzjiVar.zzc).zza.zza(handler, zzkkVar, zzkkVar, zzkkVar, zzkkVar);
            this.zzh = zza2;
            int length = zza2.length;
            zzyo zzyoVar = (zzyo) zzjiVar.zze.zza();
            this.zzi = zzyoVar;
            this.zzq = zzji.zza(((zzjc) zzjiVar.zzd).zza);
            zzza zzg = zzza.zzg(((zzjf) zzjiVar.zzg).zza);
            this.zzt = zzg;
            this.zzp = zzjiVar.zzl;
            this.zzG = zzjiVar.zzm;
            Looper looper = zzjiVar.zzi;
            this.zzs = looper;
            zzel zzelVar = zzjiVar.zzb;
            this.zzu = zzelVar;
            this.zzg = zzcoVar;
            zzfc zzfcVar = new zzfc(looper, zzelVar, new zzfa() { // from class: com.google.android.gms.internal.ads.zzke
                @Override // com.google.android.gms.internal.ads.zzfa
                public final void zza(Object obj, zzah zzahVar) {
                }
            });
            this.zzl = zzfcVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzm = copyOnWriteArraySet;
            this.zzo = new ArrayList();
            this.zzag = new zzwk(0);
            int length2 = zza2.length;
            zzyp zzypVar = new zzyp(new zzmi[2], new zzyi[2], zzdk.zza, null);
            this.zzb = zzypVar;
            this.zzn = new zzcu();
            zzci zzciVar = new zzci();
            zzciVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32);
            zzyoVar.zzn();
            zzciVar.zzd(29, true);
            zzciVar.zzd(23, false);
            zzciVar.zzd(25, false);
            zzciVar.zzd(33, false);
            zzciVar.zzd(26, false);
            zzciVar.zzd(34, false);
            zzck zze = zzciVar.zze();
            this.zzc = zze;
            zzci zzciVar2 = new zzci();
            zzciVar2.zzb(zze);
            zzciVar2.zza(4);
            zzciVar2.zza(10);
            this.zzH = zzciVar2.zze();
            this.zzj = zzelVar.zzb(looper, null);
            zzjk zzjkVar = new zzjk(this);
            this.zzaf = zzjkVar;
            this.zzac = zzly.zzg(zzypVar);
            apply.zzR(zzcoVar, looper);
            if (zzfy.zza < 31) {
                zza = new zzpb();
            } else {
                zza = zzkf.zza(applicationContext, this, zzjiVar.zzp);
            }
            this.zzk = new zzkz(zza2, zzyoVar, zzypVar, (zzlc) zzjiVar.zzf.zza(), zzg, 0, false, apply, this.zzG, zzjiVar.zzr, zzjiVar.zzn, false, looper, zzelVar, zzjkVar, zza, null);
            this.zzU = 1.0f;
            zzbv zzbvVar = zzbv.zza;
            this.zzI = zzbvVar;
            this.zzJ = zzbvVar;
            this.zzab = zzbvVar;
            int i = -1;
            this.zzad = -1;
            AudioManager audioManager = (AudioManager) applicationContext.getSystemService(new ObfuscatedString(new long[]{1779503977179634084L, -1069591904051299519L}).toString());
            if (audioManager != null) {
                i = audioManager.generateAudioSessionId();
            }
            this.zzS = i;
            this.zzW = zzee.zza;
            this.zzX = true;
            if (apply != 0) {
                zzfcVar.zzb(apply);
                zzg.zze(new Handler(looper), apply);
                copyOnWriteArraySet.add(zzkkVar);
                this.zzx = new zzil(zzjiVar.zza, handler, zzkkVar);
                this.zzy = new zzip(zzjiVar.zza, handler, zzkkVar);
                zzfy.zzF(null, null);
                this.zzz = new zzmn(zzjiVar.zza);
                this.zzA = new zzmo(zzjiVar.zza);
                this.zzZ = new zzy(0).zza();
                this.zzaa = zzdp.zza;
                this.zzP = zzfq.zza;
                zzyoVar.zzk(this.zzT);
                zzag(1, 10, Integer.valueOf(this.zzS));
                zzag(2, 10, Integer.valueOf(this.zzS));
                zzag(1, 3, this.zzT);
                zzag(2, 4, Integer.valueOf(this.zzO));
                zzag(2, 5, 0);
                zzag(1, 9, Boolean.valueOf(this.zzV));
                zzag(2, 7, zzkmVar);
                zzag(6, 8, zzkmVar);
                zzeoVar.zze();
                return;
            }
            throw null;
        } catch (Throwable th) {
            this.zze.zze();
            throw th;
        }
    }

    public static /* bridge */ /* synthetic */ void zzP(zzko zzkoVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzkoVar.zzai(surface);
        zzkoVar.zzN = surface;
    }

    private final int zzW(zzly zzlyVar) {
        if (zzlyVar.zza.zzo()) {
            return this.zzad;
        }
        return zzlyVar.zza.zzn(zzlyVar.zzb.zza, this.zzn).zzd;
    }

    public static int zzX(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    private final long zzY(zzly zzlyVar) {
        if (zzlyVar.zzb.zzb()) {
            zzlyVar.zza.zzn(zzlyVar.zzb.zza, this.zzn);
            long j = zzlyVar.zzc;
            if (j == -9223372036854775807L) {
                long j2 = zzlyVar.zza.zze(zzW(zzlyVar), this.zza, 0L).zzn;
                return zzfy.zzt(0L);
            }
            return zzfy.zzt(j) + zzfy.zzt(0L);
        }
        return zzfy.zzt(zzZ(zzlyVar));
    }

    private final long zzZ(zzly zzlyVar) {
        if (zzlyVar.zza.zzo()) {
            return zzfy.zzq(this.zzae);
        }
        long j = zzlyVar.zzr;
        if (zzlyVar.zzb.zzb()) {
            return j;
        }
        zzab(zzlyVar.zza, zzlyVar.zzb, j);
        return j;
    }

    private static long zzaa(zzly zzlyVar) {
        zzcw zzcwVar = new zzcw();
        zzcu zzcuVar = new zzcu();
        zzlyVar.zza.zzn(zzlyVar.zzb.zza, zzcuVar);
        long j = zzlyVar.zzc;
        if (j == -9223372036854775807L) {
            long j2 = zzlyVar.zza.zze(zzcuVar.zzd, zzcwVar, 0L).zzn;
            return 0L;
        }
        return j;
    }

    private final long zzab(zzcx zzcxVar, zzur zzurVar, long j) {
        zzcxVar.zzn(zzurVar.zza, this.zzn);
        return j;
    }

    @Nullable
    private final Pair zzac(zzcx zzcxVar, int i, long j) {
        if (zzcxVar.zzo()) {
            this.zzad = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.zzae = j;
            return null;
        }
        if (i == -1 || i >= zzcxVar.zzc()) {
            i = zzcxVar.zzg(false);
            long j2 = zzcxVar.zze(i, this.zza, 0L).zzn;
            j = zzfy.zzt(0L);
        }
        return zzcxVar.zzl(this.zza, this.zzn, i, zzfy.zzq(j));
    }

    private final zzly zzad(zzly zzlyVar, zzcx zzcxVar, @Nullable Pair pair) {
        boolean z;
        zzur zzurVar;
        zzws zzwsVar;
        zzyp zzypVar;
        List list;
        long j;
        if (zzcxVar.zzo() || pair != null) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzd(z);
        zzcx zzcxVar2 = zzlyVar.zza;
        long zzY = zzY(zzlyVar);
        zzly zzf = zzlyVar.zzf(zzcxVar);
        if (zzcxVar.zzo()) {
            zzur zzh = zzly.zzh();
            long zzq = zzfy.zzq(this.zzae);
            zzly zza = zzf.zzb(zzh, zzq, zzq, zzq, 0L, zzws.zza, this.zzb, zzgaa.zzl()).zza(zzh);
            zza.zzp = zza.zzr;
            return zza;
        }
        Object obj = zzf.zzb.zza;
        int i = zzfy.zza;
        boolean equals = obj.equals(pair.first);
        if (!equals) {
            zzurVar = new zzur(pair.first, -1L);
        } else {
            zzurVar = zzf.zzb;
        }
        zzur zzurVar2 = zzurVar;
        long longValue = ((Long) pair.second).longValue();
        long zzq2 = zzfy.zzq(zzY);
        if (!zzcxVar2.zzo()) {
            zzcxVar2.zzn(obj, this.zzn);
        }
        if (equals && longValue >= zzq2) {
            if (longValue == zzq2) {
                int zza2 = zzcxVar.zza(zzf.zzk.zza);
                if (zza2 == -1 || zzcxVar.zzd(zza2, this.zzn, false).zzd != zzcxVar.zzn(zzurVar2.zza, this.zzn).zzd) {
                    zzcxVar.zzn(zzurVar2.zza, this.zzn);
                    if (zzurVar2.zzb()) {
                        j = this.zzn.zzh(zzurVar2.zzb, zzurVar2.zzc);
                    } else {
                        j = this.zzn.zze;
                    }
                    zzly zza3 = zzf.zzb(zzurVar2, zzf.zzr, zzf.zzr, zzf.zzd, j - zzf.zzr, zzf.zzh, zzf.zzi, zzf.zzj).zza(zzurVar2);
                    zza3.zzp = j;
                    return zza3;
                }
                return zzf;
            }
            zzek.zzf(!zzurVar2.zzb());
            long max = Math.max(0L, zzf.zzq - (longValue - zzq2));
            long j2 = zzf.zzp;
            if (zzf.zzk.equals(zzf.zzb)) {
                j2 = longValue + max;
            }
            zzly zzb = zzf.zzb(zzurVar2, longValue, longValue, longValue, max, zzf.zzh, zzf.zzi, zzf.zzj);
            zzb.zzp = j2;
            return zzb;
        }
        zzek.zzf(!zzurVar2.zzb());
        if (!equals) {
            zzwsVar = zzws.zza;
        } else {
            zzwsVar = zzf.zzh;
        }
        zzws zzwsVar2 = zzwsVar;
        if (!equals) {
            zzypVar = this.zzb;
        } else {
            zzypVar = zzf.zzi;
        }
        zzyp zzypVar2 = zzypVar;
        if (!equals) {
            list = zzgaa.zzl();
        } else {
            list = zzf.zzj;
        }
        zzly zza4 = zzf.zzb(zzurVar2, longValue, longValue, longValue, 0L, zzwsVar2, zzypVar2, list).zza(zzurVar2);
        zza4.zzp = longValue;
        return zza4;
    }

    private final zzmb zzae(zzma zzmaVar) {
        int i;
        int zzW = zzW(this.zzac);
        zzcx zzcxVar = this.zzac.zza;
        if (zzW == -1) {
            i = 0;
        } else {
            i = zzW;
        }
        zzel zzelVar = this.zzu;
        zzkz zzkzVar = this.zzk;
        return new zzmb(zzkzVar, zzmaVar, zzcxVar, i, zzelVar, zzkzVar.zzb());
    }

    public final void zzaf(final int i, final int i2) {
        if (i == this.zzP.zzb() && i2 == this.zzP.zza()) {
            return;
        }
        this.zzP = new zzfq(i, i2);
        zzfc zzfcVar = this.zzl;
        zzfcVar.zzd(24, new zzez() { // from class: com.google.android.gms.internal.ads.zzkb
            @Override // com.google.android.gms.internal.ads.zzez
            public final void zza(Object obj) {
                int i3 = zzko.zzd;
                ((zzcl) obj).zzo(i, i2);
            }
        });
        zzfcVar.zzc();
        zzag(2, 14, new zzfq(i, i2));
    }

    private final void zzag(int i, int i2, @Nullable Object obj) {
        zzmf[] zzmfVarArr = this.zzh;
        int length = zzmfVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzmf zzmfVar = zzmfVarArr[i3];
            if (zzmfVar.zzbj() == i) {
                zzmb zzae = zzae(zzmfVar);
                zzae.zzf(i2);
                zzae.zze(obj);
                zzae.zzd();
            }
        }
    }

    public final void zzah() {
        zzag(1, 2, Float.valueOf(this.zzU * this.zzy.zza()));
    }

    public final void zzai(@Nullable Object obj) {
        ArrayList arrayList = new ArrayList();
        zzmf[] zzmfVarArr = this.zzh;
        int length = zzmfVarArr.length;
        boolean z = false;
        for (int i = 0; i < 2; i++) {
            zzmf zzmfVar = zzmfVarArr[i];
            if (zzmfVar.zzbj() == 2) {
                zzmb zzae = zzae(zzmfVar);
                zzae.zzf(1);
                zzae.zze(obj);
                zzae.zzd();
                arrayList.add(zzae);
            }
        }
        Object obj2 = this.zzM;
        if (obj2 != null && obj2 != obj) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((zzmb) it.next()).zzi(this.zzB);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
                z = true;
            }
            Object obj3 = this.zzM;
            Surface surface = this.zzN;
            if (obj3 == surface) {
                surface.release();
                this.zzN = null;
            }
        }
        this.zzM = obj;
        if (z) {
            zzaj(zziz.zzd(new zzla(3), PointerIconCompat.TYPE_HELP));
        }
    }

    private final void zzaj(@Nullable zziz zzizVar) {
        zzly zzlyVar = this.zzac;
        zzly zza = zzlyVar.zza(zzlyVar.zzb);
        zza.zzp = zza.zzr;
        zza.zzq = 0L;
        zzly zze = zza.zze(1);
        if (zzizVar != null) {
            zze = zze.zzd(zzizVar);
        }
        this.zzC++;
        this.zzk.zzo();
        zzal(zze, 0, 1, false, 5, -9223372036854775807L, -1, false);
    }

    public final void zzak(boolean z, int i, int i2) {
        boolean z2;
        int i3 = 0;
        if (z && i != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 && i != 1) {
            i3 = 1;
        }
        zzly zzlyVar = this.zzac;
        if (zzlyVar.zzl == z2 && zzlyVar.zzm == i3) {
            return;
        }
        this.zzC++;
        zzly zzc = zzlyVar.zzc(z2, i3);
        this.zzk.zzn(z2, i3);
        zzal(zzc, 0, i2, false, 5, -9223372036854775807L, -1, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0443  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x046c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0476 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0482 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0495 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x04a1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04b9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x04c6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02e3  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0328  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x03a0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00ea  */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v8, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzal(final zzly zzlyVar, final int i, final int i2, boolean z, int i3, long j, int i4, boolean z2) {
        int i5;
        boolean z3;
        boolean z4;
        Pair pair;
        boolean z5;
        int i6;
        boolean booleanValue;
        final zzbp zzbpVar;
        zzcx zzn;
        zzbv zzu;
        boolean equals;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        zzyp zzypVar;
        zzyp zzypVar2;
        zzck zzckVar;
        zzm zzmVar;
        boolean z10;
        zzcx zzn2;
        boolean z11;
        int i7;
        boolean z12;
        ?? r12;
        zzcx zzn3;
        boolean z13;
        zzcx zzn4;
        long j2;
        boolean z14;
        int i8;
        boolean z15;
        zzck zze;
        int i9;
        Object obj;
        zzbp zzbpVar2;
        Object obj2;
        int i10;
        long j3;
        long zzaa;
        Object obj3;
        zzbp zzbpVar3;
        Object obj4;
        int i11;
        final int i12 = i3;
        zzly zzlyVar2 = this.zzac;
        this.zzac = zzlyVar;
        boolean equals2 = zzlyVar2.zza.equals(zzlyVar.zza);
        zzcx zzcxVar = zzlyVar2.zza;
        zzcx zzcxVar2 = zzlyVar.zza;
        if (zzcxVar2.zzo() && zzcxVar.zzo()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (zzcxVar2.zzo() != zzcxVar.zzo()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else {
            if (zzcxVar.zze(zzcxVar.zzn(zzlyVar2.zzb.zza, this.zzn).zzd, this.zza, 0L).zzc.equals(zzcxVar2.zze(zzcxVar2.zzn(zzlyVar.zzb.zza, this.zzn).zzd, this.zza, 0L).zzc)) {
                if (!z) {
                    i5 = i12;
                    z3 = false;
                } else if (i12 != 0) {
                    i5 = i12;
                    z3 = true;
                } else if (zzlyVar2.zzb.zzd < zzlyVar.zzb.zzd) {
                    pair = new Pair(Boolean.TRUE, 0);
                    i12 = 0;
                    z4 = true;
                } else {
                    z3 = true;
                    i5 = 0;
                }
                z4 = z3;
                i12 = i5;
                pair = new Pair(Boolean.FALSE, -1);
            } else {
                if (!z) {
                    z5 = false;
                    z4 = false;
                } else if (i12 == 0) {
                    i12 = 0;
                    i6 = 1;
                    z4 = true;
                    pair = new Pair(Boolean.TRUE, Integer.valueOf(i6));
                } else {
                    z5 = true;
                    z4 = true;
                }
                if (z5 && i12 == 1) {
                    i6 = 2;
                } else {
                    if (equals2) {
                        throw new IllegalStateException();
                    }
                    z4 = z5;
                    i6 = 3;
                }
                pair = new Pair(Boolean.TRUE, Integer.valueOf(i6));
            }
            booleanValue = ((Boolean) pair.first).booleanValue();
            final int intValue = ((Integer) pair.second).intValue();
            if (booleanValue) {
                zzbpVar = null;
            } else {
                zzbpVar = !zzlyVar.zza.zzo() ? zzlyVar.zza.zze(zzlyVar.zza.zzn(zzlyVar.zzb.zza, this.zzn).zzd, this.zza, 0L).zze : null;
                this.zzab = zzbv.zza;
            }
            if (!zzlyVar2.zzj.equals(zzlyVar.zzj)) {
                zzbt zza = this.zzab.zza();
                List list = zzlyVar.zzj;
                for (int i13 = 0; i13 < list.size(); i13++) {
                    zzby zzbyVar = (zzby) list.get(i13);
                    for (int i14 = 0; i14 < zzbyVar.zza(); i14++) {
                        zzbyVar.zzb(i14).zza(zza);
                    }
                }
                this.zzab = zza.zzu();
            }
            zzn = zzn();
            if (zzn.zzo()) {
                zzbp zzbpVar4 = zzn.zze(zzd(), this.zza, 0L).zze;
                zzbt zza2 = this.zzab.zza();
                zza2.zzb(zzbpVar4.zzg);
                zzu = zza2.zzu();
            } else {
                zzu = this.zzab;
            }
            equals = zzu.equals(this.zzI);
            this.zzI = zzu;
            z6 = zzlyVar2.zzl == zzlyVar.zzl;
            z7 = zzlyVar2.zze == zzlyVar.zze;
            if (!z7 || z6) {
                zzam();
            }
            boolean z16 = zzlyVar2.zzg == zzlyVar.zzg;
            if (!equals2) {
                this.zzl.zzd(0, new zzez() { // from class: com.google.android.gms.internal.ads.zzjm
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj5) {
                        int i15 = zzko.zzd;
                        ((zzcl) obj5).zzp(zzly.this.zza, i);
                    }
                });
            }
            if (z4) {
                z8 = z7;
                z9 = z16;
            } else {
                zzcu zzcuVar = new zzcu();
                if (zzlyVar2.zza.zzo()) {
                    z8 = z7;
                    z9 = z16;
                    i9 = i4;
                    obj = null;
                    zzbpVar2 = null;
                    obj2 = null;
                    i10 = -1;
                } else {
                    Object obj5 = zzlyVar2.zzb.zza;
                    zzlyVar2.zza.zzn(obj5, zzcuVar);
                    int i15 = zzcuVar.zzd;
                    int zza3 = zzlyVar2.zza.zza(obj5);
                    z8 = z7;
                    z9 = z16;
                    obj2 = obj5;
                    obj = zzlyVar2.zza.zze(i15, this.zza, 0L).zzc;
                    zzbpVar2 = this.zza.zze;
                    i10 = zza3;
                    i9 = i15;
                }
                if (i12 == 0) {
                    if (zzlyVar2.zzb.zzb()) {
                        zzur zzurVar = zzlyVar2.zzb;
                        j3 = zzcuVar.zzh(zzurVar.zzb, zzurVar.zzc);
                        zzaa = zzaa(zzlyVar2);
                        int i16 = zzfy.zza;
                        zzur zzurVar2 = zzlyVar2.zzb;
                        final zzcn zzcnVar = new zzcn(obj, i9, zzbpVar2, obj2, i10, zzfy.zzt(j3), zzfy.zzt(zzaa), zzurVar2.zzb, zzurVar2.zzc);
                        int zzd2 = zzd();
                        if (this.zzac.zza.zzo()) {
                            zzly zzlyVar3 = this.zzac;
                            Object obj6 = zzlyVar3.zzb.zza;
                            zzlyVar3.zza.zzn(obj6, this.zzn);
                            i11 = this.zzac.zza.zza(obj6);
                            obj3 = this.zzac.zza.zze(zzd2, this.zza, 0L).zzc;
                            zzbpVar3 = this.zza.zze;
                            obj4 = obj6;
                        } else {
                            obj3 = null;
                            zzbpVar3 = null;
                            obj4 = null;
                            i11 = -1;
                        }
                        long zzt = zzfy.zzt(j);
                        long zzt2 = !this.zzac.zzb.zzb() ? zzfy.zzt(zzaa(this.zzac)) : zzt;
                        zzur zzurVar3 = this.zzac.zzb;
                        final zzcn zzcnVar2 = new zzcn(obj3, zzd2, zzbpVar3, obj4, i11, zzt, zzt2, zzurVar3.zzb, zzurVar3.zzc);
                        this.zzl.zzd(11, new zzez() { // from class: com.google.android.gms.internal.ads.zzjr
                            @Override // com.google.android.gms.internal.ads.zzez
                            public final void zza(Object obj7) {
                                int i17 = zzko.zzd;
                                ((zzcl) obj7).zzm(zzcnVar, zzcnVar2, i12);
                            }
                        });
                    } else {
                        j3 = zzlyVar2.zzb.zze != -1 ? zzaa(this.zzac) : zzcuVar.zze;
                        zzaa = j3;
                        int i162 = zzfy.zza;
                        zzur zzurVar22 = zzlyVar2.zzb;
                        final zzcn zzcnVar3 = new zzcn(obj, i9, zzbpVar2, obj2, i10, zzfy.zzt(j3), zzfy.zzt(zzaa), zzurVar22.zzb, zzurVar22.zzc);
                        int zzd22 = zzd();
                        if (this.zzac.zza.zzo()) {
                        }
                        long zzt3 = zzfy.zzt(j);
                        if (!this.zzac.zzb.zzb()) {
                        }
                        zzur zzurVar32 = this.zzac.zzb;
                        final zzcn zzcnVar22 = new zzcn(obj3, zzd22, zzbpVar3, obj4, i11, zzt3, zzt2, zzurVar32.zzb, zzurVar32.zzc);
                        this.zzl.zzd(11, new zzez() { // from class: com.google.android.gms.internal.ads.zzjr
                            @Override // com.google.android.gms.internal.ads.zzez
                            public final void zza(Object obj7) {
                                int i17 = zzko.zzd;
                                ((zzcl) obj7).zzm(zzcnVar3, zzcnVar22, i12);
                            }
                        });
                    }
                } else if (zzlyVar2.zzb.zzb()) {
                    j3 = zzlyVar2.zzr;
                    zzaa = zzaa(zzlyVar2);
                    int i1622 = zzfy.zza;
                    zzur zzurVar222 = zzlyVar2.zzb;
                    final zzcn zzcnVar32 = new zzcn(obj, i9, zzbpVar2, obj2, i10, zzfy.zzt(j3), zzfy.zzt(zzaa), zzurVar222.zzb, zzurVar222.zzc);
                    int zzd222 = zzd();
                    if (this.zzac.zza.zzo()) {
                    }
                    long zzt32 = zzfy.zzt(j);
                    if (!this.zzac.zzb.zzb()) {
                    }
                    zzur zzurVar322 = this.zzac.zzb;
                    final zzcn zzcnVar222 = new zzcn(obj3, zzd222, zzbpVar3, obj4, i11, zzt32, zzt2, zzurVar322.zzb, zzurVar322.zzc);
                    this.zzl.zzd(11, new zzez() { // from class: com.google.android.gms.internal.ads.zzjr
                        @Override // com.google.android.gms.internal.ads.zzez
                        public final void zza(Object obj7) {
                            int i17 = zzko.zzd;
                            ((zzcl) obj7).zzm(zzcnVar32, zzcnVar222, i12);
                        }
                    });
                } else {
                    j3 = zzlyVar2.zzr;
                    zzaa = j3;
                    int i16222 = zzfy.zza;
                    zzur zzurVar2222 = zzlyVar2.zzb;
                    final zzcn zzcnVar322 = new zzcn(obj, i9, zzbpVar2, obj2, i10, zzfy.zzt(j3), zzfy.zzt(zzaa), zzurVar2222.zzb, zzurVar2222.zzc);
                    int zzd2222 = zzd();
                    if (this.zzac.zza.zzo()) {
                    }
                    long zzt322 = zzfy.zzt(j);
                    if (!this.zzac.zzb.zzb()) {
                    }
                    zzur zzurVar3222 = this.zzac.zzb;
                    final zzcn zzcnVar2222 = new zzcn(obj3, zzd2222, zzbpVar3, obj4, i11, zzt322, zzt2, zzurVar3222.zzb, zzurVar3222.zzc);
                    this.zzl.zzd(11, new zzez() { // from class: com.google.android.gms.internal.ads.zzjr
                        @Override // com.google.android.gms.internal.ads.zzez
                        public final void zza(Object obj7) {
                            int i17 = zzko.zzd;
                            ((zzcl) obj7).zzm(zzcnVar322, zzcnVar2222, i12);
                        }
                    });
                }
            }
            if (booleanValue) {
                this.zzl.zzd(1, new zzez() { // from class: com.google.android.gms.internal.ads.zzjt
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzd(zzbp.this, intValue);
                    }
                });
            }
            if (zzlyVar2.zzf != zzlyVar.zzf) {
                this.zzl.zzd(10, new zzez() { // from class: com.google.android.gms.internal.ads.zzju
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzk(zzly.this.zzf);
                    }
                });
                if (zzlyVar.zzf != null) {
                    this.zzl.zzd(10, new zzez() { // from class: com.google.android.gms.internal.ads.zzjv
                        @Override // com.google.android.gms.internal.ads.zzez
                        public final void zza(Object obj7) {
                            int i17 = zzko.zzd;
                            ((zzcl) obj7).zzj(zzly.this.zzf);
                        }
                    });
                }
            }
            zzypVar = zzlyVar2.zzi;
            zzypVar2 = zzlyVar.zzi;
            if (zzypVar != zzypVar2) {
                this.zzi.zzq(zzypVar2.zze);
                this.zzl.zzd(2, new zzez() { // from class: com.google.android.gms.internal.ads.zzjw
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzq(zzly.this.zzi.zzd);
                    }
                });
            }
            if (!equals) {
                final zzbv zzbvVar = this.zzI;
                this.zzl.zzd(14, new zzez() { // from class: com.google.android.gms.internal.ads.zzjx
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zze(zzbv.this);
                    }
                });
            }
            if (z9) {
                this.zzl.zzd(3, new zzez() { // from class: com.google.android.gms.internal.ads.zzjy
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzb(zzly.this.zzg);
                    }
                });
            }
            if (!z8 || z6) {
                this.zzl.zzd(-1, new zzez() { // from class: com.google.android.gms.internal.ads.zzjz
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        zzly zzlyVar4 = zzly.this;
                        ((zzcl) obj7).zzl(zzlyVar4.zzl, zzlyVar4.zze);
                    }
                });
            }
            if (z8) {
                this.zzl.zzd(4, new zzez() { // from class: com.google.android.gms.internal.ads.zzka
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzh(zzly.this.zze);
                    }
                });
            }
            if (z6) {
                this.zzl.zzd(5, new zzez() { // from class: com.google.android.gms.internal.ads.zzjn
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzf(zzly.this.zzl, i2);
                    }
                });
            }
            if (zzlyVar2.zzm != zzlyVar.zzm) {
                this.zzl.zzd(6, new zzez() { // from class: com.google.android.gms.internal.ads.zzjo
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzi(zzly.this.zzm);
                    }
                });
            }
            if (zzlyVar2.zzi() != zzlyVar.zzi()) {
                this.zzl.zzd(7, new zzez() { // from class: com.google.android.gms.internal.ads.zzjp
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzc(zzly.this.zzi());
                    }
                });
            }
            if (!zzlyVar2.zzn.equals(zzlyVar.zzn)) {
                this.zzl.zzd(12, new zzez() { // from class: com.google.android.gms.internal.ads.zzjq
                    @Override // com.google.android.gms.internal.ads.zzez
                    public final void zza(Object obj7) {
                        int i17 = zzko.zzd;
                        ((zzcl) obj7).zzg(zzly.this.zzn);
                    }
                });
            }
            zzckVar = this.zzH;
            zzco zzcoVar = this.zzg;
            zzck zzckVar2 = this.zzc;
            int i17 = zzfy.zza;
            boolean zzx = zzcoVar.zzx();
            zzmVar = (zzm) zzcoVar;
            zzcx zzn5 = zzmVar.zzn();
            z10 = zzn5.zzo() && zzn5.zze(zzmVar.zzd(), zzmVar.zza, 0L).zzi;
            zzn2 = zzmVar.zzn();
            if (zzn2.zzo()) {
                int zzd3 = zzmVar.zzd();
                zzmVar.zzh();
                zzmVar.zzw();
                z11 = false;
                r12 = 0;
                int zzk = zzn2.zzk(zzd3, 0, false);
                i7 = -1;
                if (zzk != -1) {
                    z12 = true;
                    zzn3 = zzmVar.zzn();
                    if (!zzn3.zzo()) {
                        int zzd4 = zzmVar.zzd();
                        zzmVar.zzh();
                        zzmVar.zzw();
                        if (zzn3.zzj(zzd4, r12, r12) != i7) {
                            z13 = true;
                            zzn4 = zzmVar.zzn();
                            if (zzn4.zzo()) {
                                j2 = 0;
                                if (zzn4.zze(zzmVar.zzd(), zzmVar.zza, 0L).zzb()) {
                                    z14 = true;
                                    zzcx zzn6 = zzmVar.zzn();
                                    boolean z17 = zzn6.zzo() && zzn6.zze(zzmVar.zzd(), zzmVar.zza, j2).zzj;
                                    boolean zzo = zzcoVar.zzn().zzo();
                                    zzci zzciVar = new zzci();
                                    zzciVar.zzb(zzckVar2);
                                    boolean z18 = !zzx;
                                    zzciVar.zzd(4, z18);
                                    zzciVar.zzd(5, (z10 || zzx) ? false : true);
                                    zzciVar.zzd(6, (z12 || zzx) ? false : true);
                                    zzciVar.zzd(7, zzo && (z12 || !z14 || z10) && !zzx);
                                    zzciVar.zzd(8, (z13 || zzx) ? false : true);
                                    zzciVar.zzd(9, zzo && (z13 || (z14 && z17)) && !zzx);
                                    zzciVar.zzd(10, z18);
                                    zzciVar.zzd(11, (z10 || zzx) ? false : true);
                                    if (z10 || zzx) {
                                        i8 = 12;
                                        z15 = false;
                                    } else {
                                        i8 = 12;
                                        z15 = true;
                                    }
                                    zzciVar.zzd(i8, z15);
                                    zze = zzciVar.zze();
                                    this.zzH = zze;
                                    if (!zze.equals(zzckVar)) {
                                        this.zzl.zzd(13, new zzez() { // from class: com.google.android.gms.internal.ads.zzjl
                                            @Override // com.google.android.gms.internal.ads.zzez
                                            public final void zza(Object obj7) {
                                                zzko.this.zzU((zzcl) obj7);
                                            }
                                        });
                                    }
                                    this.zzl.zzc();
                                }
                            } else {
                                j2 = 0;
                            }
                            z14 = false;
                            zzcx zzn62 = zzmVar.zzn();
                            if (zzn62.zzo()) {
                            }
                            boolean zzo2 = zzcoVar.zzn().zzo();
                            zzci zzciVar2 = new zzci();
                            zzciVar2.zzb(zzckVar2);
                            boolean z182 = !zzx;
                            zzciVar2.zzd(4, z182);
                            zzciVar2.zzd(5, (z10 || zzx) ? false : true);
                            zzciVar2.zzd(6, (z12 || zzx) ? false : true);
                            zzciVar2.zzd(7, zzo2 && (z12 || !z14 || z10) && !zzx);
                            zzciVar2.zzd(8, (z13 || zzx) ? false : true);
                            zzciVar2.zzd(9, zzo2 && (z13 || (z14 && z17)) && !zzx);
                            zzciVar2.zzd(10, z182);
                            zzciVar2.zzd(11, (z10 || zzx) ? false : true);
                            if (z10) {
                            }
                            i8 = 12;
                            z15 = false;
                            zzciVar2.zzd(i8, z15);
                            zze = zzciVar2.zze();
                            this.zzH = zze;
                            if (!zze.equals(zzckVar)) {
                            }
                            this.zzl.zzc();
                        }
                    }
                    z13 = false;
                    zzn4 = zzmVar.zzn();
                    if (zzn4.zzo()) {
                    }
                    z14 = false;
                    zzcx zzn622 = zzmVar.zzn();
                    if (zzn622.zzo()) {
                    }
                    boolean zzo22 = zzcoVar.zzn().zzo();
                    zzci zzciVar22 = new zzci();
                    zzciVar22.zzb(zzckVar2);
                    boolean z1822 = !zzx;
                    zzciVar22.zzd(4, z1822);
                    zzciVar22.zzd(5, (z10 || zzx) ? false : true);
                    zzciVar22.zzd(6, (z12 || zzx) ? false : true);
                    zzciVar22.zzd(7, zzo22 && (z12 || !z14 || z10) && !zzx);
                    zzciVar22.zzd(8, (z13 || zzx) ? false : true);
                    zzciVar22.zzd(9, zzo22 && (z13 || (z14 && z17)) && !zzx);
                    zzciVar22.zzd(10, z1822);
                    zzciVar22.zzd(11, (z10 || zzx) ? false : true);
                    if (z10) {
                    }
                    i8 = 12;
                    z15 = false;
                    zzciVar22.zzd(i8, z15);
                    zze = zzciVar22.zze();
                    this.zzH = zze;
                    if (!zze.equals(zzckVar)) {
                    }
                    this.zzl.zzc();
                }
            } else {
                i7 = -1;
                z11 = false;
            }
            z12 = false;
            r12 = z11;
            zzn3 = zzmVar.zzn();
            if (!zzn3.zzo()) {
            }
            z13 = false;
            zzn4 = zzmVar.zzn();
            if (zzn4.zzo()) {
            }
            z14 = false;
            zzcx zzn6222 = zzmVar.zzn();
            if (zzn6222.zzo()) {
            }
            boolean zzo222 = zzcoVar.zzn().zzo();
            zzci zzciVar222 = new zzci();
            zzciVar222.zzb(zzckVar2);
            boolean z18222 = !zzx;
            zzciVar222.zzd(4, z18222);
            zzciVar222.zzd(5, (z10 || zzx) ? false : true);
            zzciVar222.zzd(6, (z12 || zzx) ? false : true);
            zzciVar222.zzd(7, zzo222 && (z12 || !z14 || z10) && !zzx);
            zzciVar222.zzd(8, (z13 || zzx) ? false : true);
            zzciVar222.zzd(9, zzo222 && (z13 || (z14 && z17)) && !zzx);
            zzciVar222.zzd(10, z18222);
            zzciVar222.zzd(11, (z10 || zzx) ? false : true);
            if (z10) {
            }
            i8 = 12;
            z15 = false;
            zzciVar222.zzd(i8, z15);
            zze = zzciVar222.zze();
            this.zzH = zze;
            if (!zze.equals(zzckVar)) {
            }
            this.zzl.zzc();
        }
        z4 = z;
        booleanValue = ((Boolean) pair.first).booleanValue();
        final int intValue2 = ((Integer) pair.second).intValue();
        if (booleanValue) {
        }
        if (!zzlyVar2.zzj.equals(zzlyVar.zzj)) {
        }
        zzn = zzn();
        if (zzn.zzo()) {
        }
        equals = zzu.equals(this.zzI);
        this.zzI = zzu;
        if (zzlyVar2.zzl == zzlyVar.zzl) {
        }
        if (zzlyVar2.zze == zzlyVar.zze) {
        }
        if (!z7) {
        }
        zzam();
        if (zzlyVar2.zzg == zzlyVar.zzg) {
        }
        if (!equals2) {
        }
        if (z4) {
        }
        if (booleanValue) {
        }
        if (zzlyVar2.zzf != zzlyVar.zzf) {
        }
        zzypVar = zzlyVar2.zzi;
        zzypVar2 = zzlyVar.zzi;
        if (zzypVar != zzypVar2) {
        }
        if (!equals) {
        }
        if (z9) {
        }
        if (!z8) {
        }
        this.zzl.zzd(-1, new zzez() { // from class: com.google.android.gms.internal.ads.zzjz
            @Override // com.google.android.gms.internal.ads.zzez
            public final void zza(Object obj7) {
                int i172 = zzko.zzd;
                zzly zzlyVar4 = zzly.this;
                ((zzcl) obj7).zzl(zzlyVar4.zzl, zzlyVar4.zze);
            }
        });
        if (z8) {
        }
        if (z6) {
        }
        if (zzlyVar2.zzm != zzlyVar.zzm) {
        }
        if (zzlyVar2.zzi() != zzlyVar.zzi()) {
        }
        if (!zzlyVar2.zzn.equals(zzlyVar.zzn)) {
        }
        zzckVar = this.zzH;
        zzco zzcoVar2 = this.zzg;
        zzck zzckVar22 = this.zzc;
        int i172 = zzfy.zza;
        boolean zzx2 = zzcoVar2.zzx();
        zzmVar = (zzm) zzcoVar2;
        zzcx zzn52 = zzmVar.zzn();
        if (zzn52.zzo()) {
        }
        zzn2 = zzmVar.zzn();
        if (zzn2.zzo()) {
        }
        z12 = false;
        r12 = z11;
        zzn3 = zzmVar.zzn();
        if (!zzn3.zzo()) {
        }
        z13 = false;
        zzn4 = zzmVar.zzn();
        if (zzn4.zzo()) {
        }
        z14 = false;
        zzcx zzn62222 = zzmVar.zzn();
        if (zzn62222.zzo()) {
        }
        boolean zzo2222 = zzcoVar2.zzn().zzo();
        zzci zzciVar2222 = new zzci();
        zzciVar2222.zzb(zzckVar22);
        boolean z182222 = !zzx2;
        zzciVar2222.zzd(4, z182222);
        zzciVar2222.zzd(5, (z10 || zzx2) ? false : true);
        zzciVar2222.zzd(6, (z12 || zzx2) ? false : true);
        zzciVar2222.zzd(7, zzo2222 && (z12 || !z14 || z10) && !zzx2);
        zzciVar2222.zzd(8, (z13 || zzx2) ? false : true);
        zzciVar2222.zzd(9, zzo2222 && (z13 || (z14 && z17)) && !zzx2);
        zzciVar2222.zzd(10, z182222);
        zzciVar2222.zzd(11, (z10 || zzx2) ? false : true);
        if (z10) {
        }
        i8 = 12;
        z15 = false;
        zzciVar2222.zzd(i8, z15);
        zze = zzciVar2222.zze();
        this.zzH = zze;
        if (!zze.equals(zzckVar)) {
        }
        this.zzl.zzc();
    }

    private final void zzam() {
        int zzf = zzf();
        if (zzf != 2 && zzf != 3) {
            return;
        }
        zzan();
        boolean z = this.zzac.zzo;
        zzv();
        zzv();
    }

    private final void zzan() {
        IllegalStateException illegalStateException;
        this.zze.zzb();
        if (Thread.currentThread() != this.zzs.getThread()) {
            String format = String.format(Locale.US, new ObfuscatedString(new long[]{2515213343998001179L, -6954579069809475396L, 5075124326592776064L, 3647030555816260733L, 3701663800705393002L, 338903744613231215L, 2890404694002621723L, -7107161161879783950L, -6831154879844591574L, -350123916829895049L, -6680269043251729731L, 2834093583016718063L, 1027602518550382152L, 709778950825994773L, -6994686642073469453L, 6961282018709783271L, 1331117944492632613L, -6271015649939031829L, 3465609621087616256L, -5112046416928856600L, -8415215509560967163L, -613015470204268964L, -4657526611413720011L}).toString(), Thread.currentThread().getName(), this.zzs.getThread().getName());
            if (!this.zzX) {
                if (this.zzY) {
                    illegalStateException = null;
                } else {
                    illegalStateException = new IllegalStateException();
                }
                zzff.zzg(new ObfuscatedString(new long[]{3949622682572376997L, -4238137438542218942L, 8050757553499236460L}).toString(), format, illegalStateException);
                this.zzY = true;
                return;
            }
            throw new IllegalStateException(format);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjj
    public final void zzA(zzms zzmsVar) {
        zzan();
        this.zzr.zzQ(zzmsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjj
    public final void zzB(zzut zzutVar) {
        boolean z;
        zzan();
        List singletonList = Collections.singletonList(zzutVar);
        zzan();
        zzan();
        zzW(this.zzac);
        zzk();
        this.zzC++;
        if (!this.zzo.isEmpty()) {
            int size = this.zzo.size();
            for (int i = size - 1; i >= 0; i--) {
                this.zzo.remove(i);
            }
            this.zzag = this.zzag.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < singletonList.size(); i2++) {
            zzlv zzlvVar = new zzlv((zzut) singletonList.get(i2), this.zzp);
            arrayList.add(zzlvVar);
            this.zzo.add(i2, new zzkn(zzlvVar.zzb, zzlvVar.zza));
        }
        this.zzag = this.zzag.zzg(0, arrayList.size());
        zzmd zzmdVar = new zzmd(this.zzo, this.zzag);
        if (!zzmdVar.zzo() && zzmdVar.zzc() < 0) {
            throw new zzan(zzmdVar, -1, -9223372036854775807L);
        }
        int zzg = zzmdVar.zzg(false);
        zzly zzad = zzad(this.zzac, zzmdVar, zzac(zzmdVar, zzg, -9223372036854775807L));
        int i3 = zzad.zze;
        if (zzg != -1 && i3 != 1) {
            i3 = 4;
            if (!zzmdVar.zzo() && zzg < zzmdVar.zzc()) {
                i3 = 2;
            }
        }
        zzly zze = zzad.zze(i3);
        this.zzk.zzq(arrayList, zzg, zzfy.zzq(-9223372036854775807L), this.zzag);
        if (!this.zzac.zzb.zza.equals(zze.zzb.zza) && !this.zzac.zza.zzo()) {
            z = true;
        } else {
            z = false;
        }
        zzal(zze, 0, 1, z, 4, zzZ(zze), -1, false);
    }

    @Nullable
    public final zziz zzE() {
        zzan();
        return this.zzac.zzf;
    }

    public final /* synthetic */ void zzS(zzkx zzkxVar) {
        long j;
        boolean z;
        boolean z2;
        int i = this.zzC - zzkxVar.zzb;
        this.zzC = i;
        boolean z3 = true;
        if (zzkxVar.zzc) {
            this.zzD = zzkxVar.zzd;
            this.zzE = true;
        }
        if (zzkxVar.zze) {
            this.zzF = zzkxVar.zzf;
        }
        if (i == 0) {
            zzcx zzcxVar = zzkxVar.zza.zza;
            if (!this.zzac.zza.zzo() && zzcxVar.zzo()) {
                this.zzad = -1;
                this.zzae = 0L;
            }
            if (!zzcxVar.zzo()) {
                List zzw = ((zzmd) zzcxVar).zzw();
                if (zzw.size() == this.zzo.size()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zzek.zzf(z2);
                for (int i2 = 0; i2 < zzw.size(); i2++) {
                    ((zzkn) this.zzo.get(i2)).zzc((zzcx) zzw.get(i2));
                }
            }
            if (this.zzE) {
                if (zzkxVar.zza.zzb.equals(this.zzac.zzb) && zzkxVar.zza.zzd == this.zzac.zzr) {
                    z3 = false;
                }
                if (z3) {
                    if (!zzcxVar.zzo() && !zzkxVar.zza.zzb.zzb()) {
                        zzly zzlyVar = zzkxVar.zza;
                        zzur zzurVar = zzlyVar.zzb;
                        j = zzlyVar.zzd;
                        zzab(zzcxVar, zzurVar, j);
                    } else {
                        j = zzkxVar.zza.zzd;
                    }
                } else {
                    j = -9223372036854775807L;
                }
                z = z3;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.zzE = false;
            zzal(zzkxVar.zza, 1, this.zzF, z, this.zzD, j, -1, false);
        }
    }

    public final /* synthetic */ void zzT(final zzkx zzkxVar) {
        this.zzj.zzh(new Runnable() { // from class: com.google.android.gms.internal.ads.zzkd
            @Override // java.lang.Runnable
            public final void run() {
                zzko.this.zzS(zzkxVar);
            }
        });
    }

    public final /* synthetic */ void zzU(zzcl zzclVar) {
        zzclVar.zza(this.zzH);
    }

    @Override // com.google.android.gms.internal.ads.zzm
    public final void zza(int i, long j, int i2, boolean z) {
        boolean z2;
        zzan();
        if (i >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzek.zzd(z2);
        this.zzr.zzu();
        zzcx zzcxVar = this.zzac.zza;
        if (!zzcxVar.zzo() && i >= zzcxVar.zzc()) {
            return;
        }
        this.zzC++;
        if (zzx()) {
            zzff.zzf(new ObfuscatedString(new long[]{105838932010200333L, 15824275481248458L, -1709395652930196845L}).toString(), new ObfuscatedString(new long[]{-5474428834953633930L, 1571999226726612609L, -4909266357817598632L, -4191816914263192480L, 6596821602477949613L, -8244145132639169047L}).toString());
            zzkx zzkxVar = new zzkx(this.zzac);
            zzkxVar.zza(1);
            this.zzaf.zza.zzT(zzkxVar);
            return;
        }
        zzly zzlyVar = this.zzac;
        int i3 = zzlyVar.zze;
        if (i3 == 3 || (i3 == 4 && !zzcxVar.zzo())) {
            zzlyVar = this.zzac.zze(2);
        }
        int zzd2 = zzd();
        zzly zzad = zzad(zzlyVar, zzcxVar, zzac(zzcxVar, i, j));
        this.zzk.zzl(zzcxVar, i, zzfy.zzq(j));
        zzal(zzad, 0, 1, true, 1, zzZ(zzad), zzd2, false);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzb() {
        zzan();
        if (zzx()) {
            return this.zzac.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzc() {
        zzan();
        if (zzx()) {
            return this.zzac.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzd() {
        zzan();
        int zzW = zzW(this.zzac);
        if (zzW == -1) {
            return 0;
        }
        return zzW;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zze() {
        zzan();
        if (this.zzac.zza.zzo()) {
            return 0;
        }
        zzly zzlyVar = this.zzac;
        return zzlyVar.zza.zza(zzlyVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzf() {
        zzan();
        return this.zzac.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzg() {
        zzan();
        return this.zzac.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final int zzh() {
        zzan();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final long zzi() {
        zzan();
        if (zzx()) {
            zzly zzlyVar = this.zzac;
            if (zzlyVar.zzk.equals(zzlyVar.zzb)) {
                return zzfy.zzt(this.zzac.zzp);
            }
            return zzl();
        }
        zzan();
        if (this.zzac.zza.zzo()) {
            return this.zzae;
        }
        zzly zzlyVar2 = this.zzac;
        long j = 0;
        if (zzlyVar2.zzk.zzd != zzlyVar2.zzb.zzd) {
            return zzfy.zzt(zzlyVar2.zza.zze(zzd(), this.zza, 0L).zzo);
        }
        long j2 = zzlyVar2.zzp;
        if (this.zzac.zzk.zzb()) {
            zzly zzlyVar3 = this.zzac;
            zzlyVar3.zza.zzn(zzlyVar3.zzk.zza, this.zzn).zzi(this.zzac.zzk.zzb);
        } else {
            j = j2;
        }
        zzly zzlyVar4 = this.zzac;
        zzab(zzlyVar4.zza, zzlyVar4.zzk, j);
        return zzfy.zzt(j);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final long zzj() {
        zzan();
        return zzY(this.zzac);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final long zzk() {
        zzan();
        return zzfy.zzt(zzZ(this.zzac));
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final long zzl() {
        zzan();
        if (!zzx()) {
            zzcx zzn = zzn();
            if (zzn.zzo()) {
                return -9223372036854775807L;
            }
            return zzfy.zzt(zzn.zze(zzd(), this.zza, 0L).zzo);
        }
        zzly zzlyVar = this.zzac;
        zzur zzurVar = zzlyVar.zzb;
        zzlyVar.zza.zzn(zzurVar.zza, this.zzn);
        return zzfy.zzt(this.zzn.zzh(zzurVar.zzb, zzurVar.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final long zzm() {
        zzan();
        return zzfy.zzt(this.zzac.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzcx zzn() {
        zzan();
        return this.zzac.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzdk zzo() {
        zzan();
        return this.zzac.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzp() {
        zzan();
        zzip zzipVar = this.zzy;
        boolean zzv = zzv();
        int i = 2;
        int zzb = zzipVar.zzb(zzv, 2);
        zzak(zzv, zzb, zzX(zzv, zzb));
        zzly zzlyVar = this.zzac;
        if (zzlyVar.zze != 1) {
            return;
        }
        zzly zzd2 = zzlyVar.zzd(null);
        if (true == zzd2.zza.zzo()) {
            i = 4;
        }
        zzly zze = zzd2.zze(i);
        this.zzC++;
        this.zzk.zzk();
        zzal(zze, 1, 1, false, 5, -9223372036854775807L, -1, false);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzq() {
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzfy.zze;
        String zza = zzbq.zza();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-7645654637762457992L, -9144017401531356610L}).toString());
        sb.append(hexString);
        sb.append(new ObfuscatedString(new long[]{921892803586455989L, 1531919802112264619L, 8934279034010563882L, -1494728968540783440L, 6995823609500371527L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{7451335176092509421L, 7419456759900302781L}).toString());
        sb.append(zza);
        zzff.zze(new ObfuscatedString(new long[]{2833745799079740960L, 2996335865690117456L, -410722365748716239L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4653904150601646805L, -6612288110358592418L}), sb));
        zzan();
        this.zzy.zzd();
        if (!this.zzk.zzp()) {
            zzfc zzfcVar = this.zzl;
            zzfcVar.zzd(10, new zzez() { // from class: com.google.android.gms.internal.ads.zzkc
                @Override // com.google.android.gms.internal.ads.zzez
                public final void zza(Object obj) {
                    ((zzcl) obj).zzj(zziz.zzd(new zzla(1), PointerIconCompat.TYPE_HELP));
                }
            });
            zzfcVar.zzc();
        }
        this.zzl.zze();
        this.zzj.zze(null);
        this.zzt.zzf(this.zzr);
        zzly zzlyVar = this.zzac;
        boolean z = zzlyVar.zzo;
        zzly zze = zzlyVar.zze(1);
        this.zzac = zze;
        zzly zza2 = zze.zza(zze.zzb);
        this.zzac = zza2;
        zza2.zzp = zza2.zzr;
        this.zzac.zzq = 0L;
        this.zzr.zzP();
        this.zzi.zzj();
        Surface surface = this.zzN;
        if (surface != null) {
            surface.release();
            this.zzN = null;
        }
        this.zzW = zzee.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzr(boolean z) {
        zzan();
        int zzb = this.zzy.zzb(z, zzf());
        zzak(z, zzb, zzX(z, zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzs(@Nullable Surface surface) {
        int i;
        zzan();
        zzai(surface);
        if (surface == null) {
            i = 0;
        } else {
            i = -1;
        }
        zzaf(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzt(float f) {
        zzan();
        final float max = Math.max(0.0f, Math.min(f, 1.0f));
        if (this.zzU == max) {
            return;
        }
        this.zzU = max;
        zzah();
        zzfc zzfcVar = this.zzl;
        zzfcVar.zzd(22, new zzez() { // from class: com.google.android.gms.internal.ads.zzjs
            @Override // com.google.android.gms.internal.ads.zzez
            public final void zza(Object obj) {
                int i = zzko.zzd;
                ((zzcl) obj).zzs(max);
            }
        });
        zzfcVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final void zzu() {
        zzan();
        this.zzy.zzb(zzv(), 1);
        zzaj(null);
        this.zzW = new zzee(zzgaa.zzl(), this.zzac.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final boolean zzv() {
        zzan();
        return this.zzac.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final boolean zzw() {
        zzan();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final boolean zzx() {
        zzan();
        return this.zzac.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzjj
    public final int zzy() {
        zzan();
        int length = this.zzh.length;
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzjj
    public final void zzz(zzms zzmsVar) {
        this.zzr.zzt(zzmsVar);
    }
}
