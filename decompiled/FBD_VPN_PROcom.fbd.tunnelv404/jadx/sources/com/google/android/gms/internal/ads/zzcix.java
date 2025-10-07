package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzcix extends zzcgc implements zzhy, zzms {
    public static final /* synthetic */ int zza = 0;
    private final Context zzb;
    private final zzcii zzc;
    private final zzyg zzd;
    private final zzcgk zze;
    private final WeakReference zzf;
    private final zzvw zzg;

    @Nullable
    private zzjj zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private zzcgb zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private final String zzo;
    private final int zzp;

    @Nullable
    private Integer zzr;
    private final ArrayList zzs;

    @Nullable
    private volatile zzcik zzt;
    private final Object zzq = new Object();
    private final Set zzu = new HashSet();

    public zzcix(Context context, zzcgk zzcgkVar, zzcgl zzcglVar, @Nullable Integer num) {
        int i;
        final zzgv zzgvVar;
        final zzgv zzgvVar2;
        zzadb zzadbVar;
        final boolean z = true;
        this.zzb = context;
        this.zze = zzcgkVar;
        this.zzr = num;
        this.zzf = new WeakReference(zzcglVar);
        zzcii zzciiVar = new zzcii();
        this.zzc = zzciiVar;
        zzyg zzygVar = new zzyg(context);
        this.zzd = zzygVar;
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{7439142396434832423L, 6298228441356893016L, -2126185869342836970L, -575831746985267180L, -5344813604513835999L, 495427269702421087L}).toString().concat(toString()));
        }
        zzcgc.zzD().incrementAndGet();
        zzmk zzmkVar = new zzmk(context, new zzciu(this));
        zzmkVar.zzb(zzygVar);
        zzmkVar.zza(zzciiVar);
        zzml zzc = zzmkVar.zzc();
        this.zzh = zzc;
        zzc.zzz(this);
        this.zzl = 0;
        this.zzn = 0L;
        this.zzm = 0;
        this.zzs = new ArrayList();
        this.zzt = null;
        this.zzo = (String) zzfwz.zzd(zzcglVar != null ? zzcglVar.zzr() : null).zzb(new ObfuscatedString(new long[]{7656368128124686431L}).toString());
        if (zzcglVar != null) {
            i = zzcglVar.zzf();
        } else {
            i = 0;
        }
        this.zzp = i;
        final String zzc2 = com.google.android.gms.ads.internal.zzt.zzp().zzc(context, zzcglVar.zzn().zza);
        if (this.zzj && this.zzi.limit() > 0) {
            final byte[] bArr = new byte[this.zzi.limit()];
            this.zzi.get(bArr);
            zzgvVar2 = new zzgv() { // from class: com.google.android.gms.internal.ads.zzcim
                @Override // com.google.android.gms.internal.ads.zzgv
                public final zzgw zza() {
                    return new zzgr(bArr);
                }
            };
        } else {
            if ((!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbY)).booleanValue() || !((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue()) && zzcgkVar.zzj) {
                z = false;
            }
            if (zzcgkVar.zzm) {
                zzgvVar = new zzgv() { // from class: com.google.android.gms.internal.ads.zzcio
                    @Override // com.google.android.gms.internal.ads.zzgv
                    public final zzgw zza() {
                        return zzcix.this.zzW(zzc2, z);
                    }
                };
            } else if (zzcgkVar.zzi > 0) {
                zzgvVar = new zzgv() { // from class: com.google.android.gms.internal.ads.zzcip
                    @Override // com.google.android.gms.internal.ads.zzgv
                    public final zzgw zza() {
                        return zzcix.this.zzX(zzc2, z);
                    }
                };
            } else {
                zzgvVar = new zzgv() { // from class: com.google.android.gms.internal.ads.zzciq
                    @Override // com.google.android.gms.internal.ads.zzgv
                    public final zzgw zza() {
                        return zzcix.this.zzY(zzc2, z);
                    }
                };
            }
            if (zzcgkVar.zzj) {
                zzgvVar2 = new zzgv() { // from class: com.google.android.gms.internal.ads.zzcir
                    @Override // com.google.android.gms.internal.ads.zzgv
                    public final zzgw zza() {
                        return zzcix.this.zzZ(zzgvVar);
                    }
                };
            } else {
                zzgvVar2 = zzgvVar;
            }
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null && byteBuffer.limit() > 0) {
                final byte[] bArr2 = new byte[this.zzi.limit()];
                this.zzi.get(bArr2);
                zzgvVar2 = new zzgv() { // from class: com.google.android.gms.internal.ads.zzcis
                    @Override // com.google.android.gms.internal.ads.zzgv
                    public final zzgw zza() {
                        int i2 = zzcix.zza;
                        zzgw zza2 = zzgv.this.zza();
                        byte[] bArr3 = bArr2;
                        return new zzcil(new zzgr(bArr3), bArr3.length, zza2);
                    }
                };
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzo)).booleanValue()) {
            zzadbVar = new zzadb() { // from class: com.google.android.gms.internal.ads.zzciw
                @Override // com.google.android.gms.internal.ads.zzadb
                public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
                    int i2 = zzada.zza;
                    int i3 = zzcix.zza;
                    return new zzacu[]{new zzajh(), new zzahy(0), new zzajc()};
                }
            };
        } else {
            zzadbVar = new zzadb() { // from class: com.google.android.gms.internal.ads.zzcin
                @Override // com.google.android.gms.internal.ads.zzadb
                public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
                    int i2 = zzada.zza;
                    int i3 = zzcix.zza;
                    return new zzacu[]{new zzajh(), new zzahy(0)};
                }
            };
        }
        this.zzg = new zzvw(zzgvVar2, new zzvv(zzadbVar));
    }

    private final boolean zzad() {
        if (this.zzt != null && this.zzt.zzq()) {
            return true;
        }
        return false;
    }

    public final void finalize() {
        zzcgc.zzD().decrementAndGet();
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3920350193308931606L, -1523930196245310622L, 171800576329786589L, -5654318990916049339L, 7005686754041457776L}).toString().concat(toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzA() {
        if (!zzad()) {
            return this.zzl;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzB() {
        if (!zzad()) {
            synchronized (this.zzq) {
                while (!this.zzs.isEmpty()) {
                    long j = this.zzn;
                    Map zze = ((zzht) this.zzs.remove(0)).zze();
                    long j2 = 0;
                    if (zze != null) {
                        Iterator it = zze.entrySet().iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Map.Entry entry = (Map.Entry) it.next();
                            if (entry != null) {
                                try {
                                    if (entry.getKey() != null && zzfwk.zzc(new ObfuscatedString(new long[]{1349526381839261198L, 7385016991070926756L, -8829408691117069558L}).toString(), (CharSequence) entry.getKey()) && entry.getValue() != null && ((List) entry.getValue()).get(0) != null) {
                                        j2 = Long.parseLong((String) ((List) entry.getValue()).get(0));
                                        break;
                                    }
                                } catch (NumberFormatException unused) {
                                    continue;
                                }
                            }
                        }
                    }
                    this.zzn = j + j2;
                }
            }
            return this.zzn;
        }
        return this.zzt.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    @Nullable
    public final Integer zzC() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzF(Uri[] uriArr, String str) {
        zzG(uriArr, str, ByteBuffer.allocate(0), false);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzG(Uri[] uriArr, String str, ByteBuffer byteBuffer, boolean z) {
        zzut zzvhVar;
        if (this.zzh != null) {
            this.zzi = byteBuffer;
            this.zzj = z;
            int length = uriArr.length;
            if (length == 1) {
                zzvhVar = zzaa(uriArr[0]);
            } else {
                zzut[] zzutVarArr = new zzut[length];
                for (int i = 0; i < uriArr.length; i++) {
                    zzutVarArr[i] = zzaa(uriArr[i]);
                }
                zzvhVar = new zzvh(false, false, zzutVarArr);
            }
            this.zzh.zzB(zzvhVar);
            this.zzh.zzp();
            zzcgc.zzE().incrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzH() {
        zzjj zzjjVar = this.zzh;
        if (zzjjVar != null) {
            zzjjVar.zzA(this);
            this.zzh.zzq();
            this.zzh = null;
            zzcgc.zzE().decrementAndGet();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzI(long j) {
        zzm zzmVar = (zzm) this.zzh;
        zzmVar.zza(zzmVar.zzd(), j, 5, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzJ(int i) {
        this.zzc.zzk(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzK(int i) {
        this.zzc.zzl(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzL(zzcgb zzcgbVar) {
        this.zzk = zzcgbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzM(int i) {
        this.zzc.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzN(int i) {
        this.zzc.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzO(boolean z) {
        this.zzh.zzr(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzP(@Nullable Integer num) {
        this.zzr = num;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzQ(boolean z) {
        if (this.zzh != null) {
            int i = 0;
            while (true) {
                this.zzh.zzy();
                if (i < 2) {
                    zzyg zzygVar = this.zzd;
                    zzxs zzc = zzygVar.zze().zzc();
                    zzc.zzp(i, !z);
                    zzygVar.zzl(zzc);
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzR(int i) {
        Iterator it = this.zzu.iterator();
        while (it.hasNext()) {
            zzcih zzcihVar = (zzcih) ((WeakReference) it.next()).get();
            if (zzcihVar != null) {
                zzcihVar.zzm(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzS(Surface surface, boolean z) {
        zzjj zzjjVar = this.zzh;
        if (zzjjVar != null) {
            zzjjVar.zzs(surface);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzT(float f, boolean z) {
        zzjj zzjjVar = this.zzh;
        if (zzjjVar != null) {
            zzjjVar.zzt(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final void zzU() {
        this.zzh.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final boolean zzV() {
        return this.zzh != null;
    }

    public final /* synthetic */ zzgw zzW(String str, boolean z) {
        zzcix zzcixVar;
        if (true != z) {
            zzcixVar = null;
        } else {
            zzcixVar = this;
        }
        zzcgk zzcgkVar = this.zze;
        return new zzcja(str, zzcixVar, zzcgkVar.zzd, zzcgkVar.zzf, zzcgkVar.zzn, zzcgkVar.zzo);
    }

    public final /* synthetic */ zzgw zzX(String str, boolean z) {
        zzcix zzcixVar;
        if (true != z) {
            zzcixVar = null;
        } else {
            zzcixVar = this;
        }
        zzcgk zzcgkVar = this.zze;
        zzcih zzcihVar = new zzcih(str, zzcixVar, zzcgkVar.zzd, zzcgkVar.zzf, zzcgkVar.zzi);
        this.zzu.add(new WeakReference(zzcihVar));
        return zzcihVar;
    }

    public final /* synthetic */ zzgw zzY(String str, boolean z) {
        zzcix zzcixVar;
        zzhe zzheVar = new zzhe();
        zzheVar.zzf(str);
        if (true != z) {
            zzcixVar = null;
        } else {
            zzcixVar = this;
        }
        zzheVar.zze(zzcixVar);
        zzheVar.zzc(this.zze.zzd);
        zzheVar.zzd(this.zze.zzf);
        zzheVar.zzb(true);
        return zzheVar.zza();
    }

    public final /* synthetic */ zzgw zzZ(zzgv zzgvVar) {
        zzgw zza2 = zzgvVar.zza();
        zzciv zzcivVar = new zzciv(this);
        return new zzcik(this.zzb, zza2, this.zzo, this.zzp, this, zzcivVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzgw zzgwVar, zzhb zzhbVar, boolean z, int i) {
        this.zzl += i;
    }

    @VisibleForTesting
    public final zzut zzaa(Uri uri) {
        zzar zzarVar = new zzar();
        zzarVar.zzb(uri);
        zzbp zzc = zzarVar.zzc();
        zzvw zzvwVar = this.zzg;
        zzvwVar.zza(this.zze.zzg);
        return zzvwVar.zzb(zzc);
    }

    public final /* synthetic */ void zzab(boolean z, long j) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            zzcgbVar.zzi(z, j);
        }
    }

    public final /* synthetic */ zzmf[] zzac(Handler handler, zzabk zzabkVar, zzpu zzpuVar, zzwv zzwvVar, zztr zztrVar) {
        zztb zztbVar = zztb.zzb;
        zzpd zzpdVar = zzpd.zza;
        zzdt[] zzdtVarArr = new zzdt[0];
        zzqr zzqrVar = new zzqr();
        if (zzpdVar != null || zzpdVar != null) {
            Context context = this.zzb;
            zzqrVar.zzc(zzpdVar);
            zzqrVar.zzd(zzdtVarArr);
            zzrd zze = zzqrVar.zze();
            zzsq zzsqVar = zzsq.zza;
            return new zzmf[]{new zzrj(context, zzsqVar, zztbVar, false, handler, zzpuVar, zze), new zzaah(this.zzb, zzsqVar, zztbVar, 0L, false, handler, zzabkVar, -1, 30.0f)};
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{2350318177610020391L, -8040957996629517447L, 168302527237644294L, -6607116634335706437L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzb(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzc(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzd(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
        if (zzgwVar instanceof zzht) {
            synchronized (this.zzq) {
                this.zzs.add((zzht) zzgwVar);
            }
            return;
        }
        if (zzgwVar instanceof zzcik) {
            this.zzt = (zzcik) zzgwVar;
            final zzcgl zzcglVar = (zzcgl) this.zzf.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && zzcglVar != null && this.zzt.zzn()) {
                final HashMap hashMap = new HashMap();
                hashMap.put(new ObfuscatedString(new long[]{2354305448799005239L, -909423875469493869L, 4204540798889730441L}).toString(), String.valueOf(this.zzt.zzp()));
                hashMap.put(new ObfuscatedString(new long[]{1636078331112379377L, 5724313402761695990L, -432829948605393068L}).toString(), String.valueOf(this.zzt.zzo()));
                com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcit
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i = zzcix.zza;
                        zzcgl.this.zzd(new ObfuscatedString(new long[]{-3341459816199942950L, 140771271807103305L, 4087036813539653438L, 4129598401156889409L}).toString(), hashMap);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zze(zzmq zzmqVar, zzam zzamVar, @Nullable zzis zzisVar) {
        zzcgl zzcglVar = (zzcgl) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && zzcglVar != null) {
            HashMap hashMap = new HashMap();
            String str = zzamVar.zzl;
            if (str != null) {
                hashMap.put(new ObfuscatedString(new long[]{74336192825592174L, 4876603820384894268L, 543898843431142620L}).toString(), str);
            }
            String str2 = zzamVar.zzm;
            if (str2 != null) {
                hashMap.put(new ObfuscatedString(new long[]{-3232507818422323360L, 3238749067036091457L, -4920242273155186999L}).toString(), str2);
            }
            String str3 = zzamVar.zzj;
            if (str3 != null) {
                hashMap.put(new ObfuscatedString(new long[]{1235289351160348846L, -8791234818636254844L, -2170599097820103965L}).toString(), str3);
            }
            zzcglVar.zzd(new ObfuscatedString(new long[]{-3641782544041585104L, -1997344604449222152L, 7058834028669899756L}).toString(), hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzf(zzmq zzmqVar, int i, long j, long j2) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzg(zzmq zzmqVar, zzun zzunVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzh(zzmq zzmqVar, int i, long j) {
        this.zzm += i;
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzi(zzco zzcoVar, zzmr zzmrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzj(zzmq zzmqVar, zzui zzuiVar, zzun zzunVar, IOException iOException, boolean z) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            if (this.zze.zzk) {
                zzcgbVar.zzl(new ObfuscatedString(new long[]{-6512746921528015170L, 8707974849960194755L, -4004142137852692599L}).toString(), iOException);
            } else {
                zzcgbVar.zzk(new ObfuscatedString(new long[]{5810496170724155662L, -6442911253998154414L, -1024538955638884080L}).toString(), iOException);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzk(zzmq zzmqVar, int i) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            zzcgbVar.zzm(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzl(zzmq zzmqVar, zzce zzceVar) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            zzcgbVar.zzk(new ObfuscatedString(new long[]{-3603610392000086290L, -4069872273455117761L, -5682317522319737219L}).toString(), zzceVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzm(zzmq zzmqVar, zzcn zzcnVar, zzcn zzcnVar2, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzn(zzmq zzmqVar, Object obj, long j) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            zzcgbVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final /* synthetic */ void zzo(zzmq zzmqVar, zzir zzirVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzp(zzmq zzmqVar, zzam zzamVar, @Nullable zzis zzisVar) {
        zzcgl zzcglVar = (zzcgl) this.zzf.get();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && zzcglVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(new ObfuscatedString(new long[]{7924594199809836655L, -7873690758687210246L, -797205860405814120L}).toString(), String.valueOf(zzamVar.zzt));
            hashMap.put(new ObfuscatedString(new long[]{1286417969743250762L, 4540230037438288890L}).toString(), String.valueOf(zzamVar.zzi));
            int i = zzamVar.zzr;
            int i2 = zzamVar.zzs;
            hashMap.put(new ObfuscatedString(new long[]{3637412752546632324L, 8966823688063461124L, 5142525030385072844L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1235589543191251398L, -839274702871685494L}), AbstractC0749x8313616e.m3340x952a0a9e(i), i2));
            String str = zzamVar.zzl;
            if (str != null) {
                hashMap.put(new ObfuscatedString(new long[]{-7515119134455072145L, -295200315281137705L, -5561061060512033630L}).toString(), str);
            }
            String str2 = zzamVar.zzm;
            if (str2 != null) {
                hashMap.put(new ObfuscatedString(new long[]{7873078306588795297L, 412531144526883742L, 7730299169460023401L}).toString(), str2);
            }
            String str3 = zzamVar.zzj;
            if (str3 != null) {
                hashMap.put(new ObfuscatedString(new long[]{-4366475542695282069L, -4652333480782395665L, 1343286841971827757L}).toString(), str3);
            }
            zzcglVar.zzd(new ObfuscatedString(new long[]{-8932422431671953700L, 8082073141549163656L, 8847159533372215420L}).toString(), hashMap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzms
    public final void zzq(zzmq zzmqVar, zzdp zzdpVar) {
        zzcgb zzcgbVar = this.zzk;
        if (zzcgbVar != null) {
            zzcgbVar.zzD(zzdpVar.zzc, zzdpVar.zzd);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final int zzr() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final int zzt() {
        return this.zzh.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzv() {
        return this.zzh.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzw() {
        return this.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzx() {
        if (zzad() && this.zzt.zzp()) {
            return Math.min(this.zzl, this.zzt.zzk());
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzy() {
        return this.zzh.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzcgc
    public final long zzz() {
        return this.zzh.zzl();
    }
}
