package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class zzcik extends zzgq {
    private final Context zza;
    private final zzgw zzb;
    private final String zzc;
    private final int zzd;
    private final boolean zze;
    private InputStream zzf;
    private boolean zzg;
    private Uri zzh;
    private volatile zzbbb zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;
    private long zzn;
    private ListenableFuture zzo;
    private final AtomicLong zzp;
    private final zzciv zzq;

    public zzcik(Context context, zzgw zzgwVar, String str, int i, zzhy zzhyVar, zzciv zzcivVar) {
        super(false);
        this.zza = context;
        this.zzb = zzgwVar;
        this.zzq = zzcivVar;
        this.zzc = str;
        this.zzd = i;
        this.zzj = false;
        this.zzk = false;
        this.zzl = false;
        this.zzm = false;
        this.zzn = 0L;
        this.zzp = new AtomicLong(-1L);
        this.zzo = null;
        this.zze = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue();
        zzf(zzhyVar);
    }

    private final boolean zzr() {
        if (!this.zze) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzem)).booleanValue() && !this.zzl) {
            return true;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzen)).booleanValue() || this.zzm) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        int zza;
        if (this.zzg) {
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                zza = inputStream.read(bArr, i, i2);
            } else {
                zza = this.zzb.zza(bArr, i, i2);
            }
            if (!this.zze || this.zzf != null) {
                zzg(zza);
            }
            return zza;
        }
        throw new IOException(new ObfuscatedString(new long[]{-7300770975650753060L, -5193809403535920753L, -5920854204435098740L, -7669637970869620430L, 2387792744386784548L, 2716423597851637433L}).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0278  */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18, types: [int] */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v33 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.panda912.muddy.ObfuscatedString] */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StringBuilder] */
    @Override // com.google.android.gms.internal.ads.zzgw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long zzb(zzhb zzhbVar) {
        zzbay zzbayVar;
        Long l;
        boolean z;
        boolean z2;
        String str;
        zzbbn zzbbnVar;
        int i = 2;
        i = 2;
        i = 2;
        int i2 = 4;
        i2 = 4;
        i2 = 4;
        if (!this.zzg) {
            boolean z3 = true;
            this.zzg = true;
            this.zzh = zzhbVar.zza;
            if (!this.zze) {
                zzj(zzhbVar);
            }
            this.zzi = zzbbb.zza(zzhbVar.zza);
            ?? r4 = -1;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzej)).booleanValue()) {
                if (this.zzi != null) {
                    this.zzi.zzh = zzhbVar.zzf;
                    this.zzi.zzi = zzfxt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    if (this.zzi.zzg) {
                        l = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzel);
                    } else {
                        l = (Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzek);
                    }
                    long longValue = l.longValue();
                    long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                    com.google.android.gms.ads.internal.zzt.zzd();
                    Future zza = zzbbm.zza(this.zza, this.zzi);
                    try {
                        try {
                            zzbbnVar = (zzbbn) zza.get(longValue, TimeUnit.MILLISECONDS);
                        } catch (Throwable th) {
                            th = th;
                            z3 = r4;
                        }
                        try {
                            this.zzj = zzbbnVar.zzd();
                            this.zzl = zzbbnVar.zzf();
                            this.zzm = zzbbnVar.zze();
                            this.zzn = zzbbnVar.zza();
                        } catch (InterruptedException unused) {
                            z2 = true;
                            zza.cancel(true);
                            Thread.currentThread().interrupt();
                            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                            this.zzq.zza.zzab(z2, elapsedRealtime2);
                            this.zzk = z2;
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-109468594181815526L, 5691690983897888116L, 2549179152597106207L, -8242155712228512089L}).toString());
                            sb.append(elapsedRealtime2);
                            i2 = new ObfuscatedString(new long[]{-3000251296169427890L, 6714316803868899685L});
                            r4 = sb;
                            r4.append(i2.toString());
                            i = r4.toString();
                            str = i;
                            com.google.android.gms.ads.internal.util.zze.zza(str);
                            this.zzk = false;
                            if (this.zzi != null) {
                            }
                            return this.zzb.zzb(zzhbVar);
                        } catch (ExecutionException | TimeoutException unused2) {
                            z = true;
                            zza.cancel(true);
                            long elapsedRealtime3 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                            this.zzq.zza.zzab(z, elapsedRealtime3);
                            this.zzk = z;
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(new ObfuscatedString(new long[]{3652197459061562448L, 6623138123040584441L, 4664311746795719345L, 4844651127380923153L}).toString());
                            sb2.append(elapsedRealtime3);
                            i2 = new ObfuscatedString(new long[]{-5428155375100196675L, 334532595389003332L});
                            r4 = sb2;
                            r4.append(i2.toString());
                            i = r4.toString();
                            str = i;
                            com.google.android.gms.ads.internal.util.zze.zza(str);
                            this.zzk = false;
                            if (this.zzi != null) {
                            }
                            return this.zzb.zzb(zzhbVar);
                        } catch (Throwable th2) {
                            th = th2;
                            long elapsedRealtime4 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                            this.zzq.zza.zzab(z3, elapsedRealtime4);
                            this.zzk = z3;
                            StringBuilder sb3 = new StringBuilder();
                            long[] jArr = new long[i2];
                            // fill-array-data instruction
                            jArr[0] = 2736587920260083086L;
                            jArr[1] = -7760326666293784419L;
                            jArr[2] = 1217341717000233563L;
                            jArr[3] = -8381993323098679632L;
                            sb3.append(new ObfuscatedString(jArr).toString());
                            sb3.append(elapsedRealtime4);
                            long[] jArr2 = new long[i];
                            // fill-array-data instruction
                            jArr2[0] = -6429175924796001502L;
                            jArr2[1] = -2250034935329268901L;
                            sb3.append(new ObfuscatedString(jArr2).toString());
                            com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
                            throw th;
                        }
                    } catch (InterruptedException unused3) {
                        z2 = false;
                    } catch (ExecutionException | TimeoutException unused4) {
                        z = false;
                    } catch (Throwable th3) {
                        th = th3;
                        z3 = false;
                    }
                    if (!zzr()) {
                        this.zzf = zzbbnVar.zzc();
                        if (this.zze) {
                            zzj(zzhbVar);
                        }
                        long elapsedRealtime5 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                        this.zzq.zza.zzab(true, elapsedRealtime5);
                        this.zzk = true;
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2018457016228121170L, 8365070847497605866L, -4990263267351730691L, 2181564049676811650L}).toString() + elapsedRealtime5 + new ObfuscatedString(new long[]{-4360393903827557425L, 4062514835341024760L}).toString());
                        return -1L;
                    }
                    long elapsedRealtime6 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime;
                    this.zzq.zza.zzab(true, elapsedRealtime6);
                    this.zzk = true;
                    str = new ObfuscatedString(new long[]{-7264517752269667475L, -8303842447943325868L, 8612608628632388778L, 2657535285098768763L}).toString() + elapsedRealtime6 + new ObfuscatedString(new long[]{9102492626672220401L, -5920376910224542595L}).toString();
                    com.google.android.gms.ads.internal.util.zze.zza(str);
                }
            } else {
                if (this.zzi != null) {
                    this.zzi.zzh = zzhbVar.zzf;
                    this.zzi.zzi = zzfxt.zzc(this.zzc);
                    this.zzi.zzj = this.zzd;
                    zzbayVar = com.google.android.gms.ads.internal.zzt.zzc().zzb(this.zzi);
                } else {
                    zzbayVar = null;
                }
                if (zzbayVar != null && zzbayVar.zze()) {
                    this.zzj = zzbayVar.zzd();
                    this.zzl = zzbayVar.zzg();
                    this.zzm = zzbayVar.zzf();
                    this.zzn = zzbayVar.zza();
                    this.zzk = true;
                    if (!zzr()) {
                        this.zzf = zzbayVar.zzc();
                        if (this.zze) {
                            zzj(zzhbVar);
                        }
                        return -1L;
                    }
                }
            }
            this.zzk = false;
            if (this.zzi != null) {
                zzhbVar = new zzhb(Uri.parse(this.zzi.zza), null, zzhbVar.zze, zzhbVar.zzf, zzhbVar.zzg, null, zzhbVar.zzi);
            }
            return this.zzb.zzb(zzhbVar);
        }
        throw new IOException(new ObfuscatedString(new long[]{-6009005262459670118L, 4557182619165538339L, 4262652524049208210L, 7067568074231740933L, 2322953283935674774L, -8353537567916570836L, -5469513880259652373L, -8135109191092424271L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final Uri zzc() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        if (this.zzg) {
            boolean z = false;
            this.zzg = false;
            this.zzh = null;
            if (!this.zze || this.zzf != null) {
                z = true;
            }
            InputStream inputStream = this.zzf;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.zzf = null;
            } else {
                this.zzb.zzd();
            }
            if (z) {
                zzh();
                return;
            }
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{1017165130091980934L, -2546514004423974679L, -9197404694099574403L, -1792307184654294845L, 9063639558224704767L, -6758406544089700260L, -8088557861085095738L, -1313238909537169786L}).toString());
    }

    public final long zzk() {
        return this.zzn;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long zzl() {
        if (this.zzi != null) {
            if (this.zzp.get() != -1) {
                return this.zzp.get();
            }
            synchronized (this) {
                try {
                    if (this.zzo == null) {
                        this.zzo = zzcep.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcij
                            @Override // java.util.concurrent.Callable
                            public final Object call() {
                                return zzcik.this.zzm();
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.zzo.isDone()) {
                try {
                    this.zzp.compareAndSet(-1L, ((Long) this.zzo.get()).longValue());
                    return this.zzp.get();
                } catch (InterruptedException | ExecutionException unused) {
                }
            }
        }
        return -1L;
    }

    public final /* synthetic */ Long zzm() {
        return Long.valueOf(com.google.android.gms.ads.internal.zzt.zzc().zza(this.zzi));
    }

    public final boolean zzn() {
        return this.zzj;
    }

    public final boolean zzo() {
        return this.zzm;
    }

    public final boolean zzp() {
        return this.zzl;
    }

    public final boolean zzq() {
        return this.zzk;
    }
}
