package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class zzfcs extends com.google.android.gms.ads.internal.client.zzbt implements com.google.android.gms.ads.internal.overlay.zzp, zzbad {

    @Nullable
    protected zzctz zza;
    private final zzclg zzb;
    private final Context zzc;
    private final String zze;
    private final zzfcm zzf;
    private final zzfck zzg;
    private final zzcei zzh;
    private final zzdwf zzi;

    @Nullable
    private zzctn zzk;
    private AtomicBoolean zzd = new AtomicBoolean();
    private long zzj = -1;

    public zzfcs(zzclg zzclgVar, Context context, String str, zzfcm zzfcmVar, zzfck zzfckVar, zzcei zzceiVar, zzdwf zzdwfVar) {
        this.zzb = zzclgVar;
        this.zzc = context;
        this.zze = str;
        this.zzf = zzfcmVar;
        this.zzg = zzfckVar;
        this.zzh = zzceiVar;
        this.zzi = zzdwfVar;
        zzfckVar.zzm(this);
    }

    private final synchronized void zzq(int i) {
        try {
            if (this.zzd.compareAndSet(false, true)) {
                this.zzg.zzj();
                zzctn zzctnVar = this.zzk;
                if (zzctnVar != null) {
                    com.google.android.gms.ads.internal.zzt.zzb().zze(zzctnVar);
                }
                if (this.zza != null) {
                    long j = -1;
                    if (this.zzj != -1) {
                        j = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzj;
                    }
                    this.zza.zze(j, i);
                }
                zzx();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzA() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzB() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{4029847734234060547L, -1749321278276540408L, 8505371537239859698L, -218917399598232197L, 1351696328631095766L, -3325550849763153524L, 9050562947143460024L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzC(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzD(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzE(com.google.android.gms.ads.internal.client.zzby zzbyVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzF(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7220888528054243558L, 6830316851835105645L, 5607345170976207566L, 7443731575597256088L, 2546974617491933514L, -98492595642455314L, -6890441739346863629L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzG(com.google.android.gms.ads.internal.client.zzcb zzcbVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzH(zzbam zzbamVar) {
        this.zzg.zzo(zzbamVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzI(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.zzf.zzl(zzwVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzJ(com.google.android.gms.ads.internal.client.zzci zzciVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzK(com.google.android.gms.ads.internal.client.zzdu zzduVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzL(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzM(zzbxc zzbxcVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzN(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzO(zzbha zzbhaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzP(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzQ(zzbxf zzbxfVar, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzR(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzS(zzcaa zzcaaVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzT(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzU(com.google.android.gms.ads.internal.client.zzfk zzfkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzW(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzX() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized boolean zzY() {
        return this.zzf.zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final boolean zzZ() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbad
    public final void zza() {
        zzq(3);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0087 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0089 A[Catch: all -> 0x0027, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0027, blocks: (B:4:0x0002, B:6:0x0011, B:9:0x002a, B:12:0x0053, B:14:0x005e, B:17:0x0063, B:21:0x0081, B:25:0x0089, B:28:0x0042), top: B:3:0x0002 }] */
    @Override // com.google.android.gms.ads.internal.client.zzbu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized boolean zzaa(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        boolean z;
        try {
            if (((Boolean) zzbhy.zzd.zze()).booleanValue()) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkG)).booleanValue()) {
                    z = true;
                    if (this.zzh.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue() || !z) {
                        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-635061430897319493L, -6647239011068438557L, 893494036455736719L, 7269562393903999115L, -8596218597914856812L, 7296660159765441230L, 5235720343372521923L}).toString());
                    }
                    com.google.android.gms.ads.internal.zzt.zzp();
                    if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zzc) && zzlVar.zzs == null) {
                        zzcec.zzg(new ObfuscatedString(new long[]{3630103829348102200L, 845659387678357307L, 8046257731034207519L, 1964540306347638039L, -3579033593624390027L, 1702380170859128348L, -2401629136557618387L}).toString());
                        this.zzg.zzbK(zzfij.zzd(4, null, null));
                        return false;
                    }
                    if (!zzY()) {
                        return false;
                    }
                    this.zzd = new AtomicBoolean();
                    return this.zzf.zzb(zzlVar, this.zze, new zzfcq(this), new zzfcr(this));
                }
            }
            z = false;
            if (this.zzh.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzkH)).intValue()) {
            }
            Preconditions.checkMainThread(new ObfuscatedString(new long[]{-635061430897319493L, -6647239011068438557L, 893494036455736719L, 7269562393903999115L, -8596218597914856812L, 7296660159765441230L, 5235720343372521923L}).toString());
            com.google.android.gms.ads.internal.zzt.zzp();
            if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zzc)) {
                zzcec.zzg(new ObfuscatedString(new long[]{3630103829348102200L, 845659387678357307L, 8046257731034207519L, 1964540306347638039L, -3579033593624390027L, 1702380170859128348L, -2401629136557618387L}).toString());
                this.zzg.zzbK(zzfij.zzd(4, null, null));
                return false;
            }
            if (!zzY()) {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzab(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbA() {
        if (this.zza != null) {
            this.zzj = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            int zza = this.zza.zza();
            if (zza > 0) {
                zzctn zzctnVar = new zzctn(this.zzb.zzC(), com.google.android.gms.ads.internal.zzt.zzB());
                this.zzk = zzctnVar;
                zzctnVar.zzd(zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcp
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfcs.this.zzp();
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final synchronized void zzbC() {
        zzctz zzctzVar = this.zza;
        if (zzctzVar != null) {
            zzctzVar.zze(com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzj, 1);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbD(int i) {
        if (i != 0) {
            int i2 = i - 1;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        zzq(6);
                        return;
                    } else {
                        zzq(3);
                        return;
                    }
                }
                zzq(4);
                return;
            }
            zzq(2);
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbP() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbt() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final Bundle zzd() {
        return new Bundle();
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzq zzg() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzbh zzi() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final com.google.android.gms.ads.internal.client.zzcb zzj() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdn zzk() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized com.google.android.gms.ads.internal.client.zzdq zzl() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final IObjectWrapper zzn() {
        return null;
    }

    public final /* synthetic */ void zzo() {
        zzq(5);
    }

    @VisibleForTesting
    public final void zzp() {
        this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfco
            @Override // java.lang.Runnable
            public final void run() {
                zzfcs.this.zzo();
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzr() {
        return this.zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzs() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized String zzt() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzx() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{7952380862076511230L, 709333668632950611L, 1436986030811351163L, 4150003873467995713L, -8186898551791819542L, 1758243693129720487L, 4046598044301531660L}).toString());
        zzctz zzctzVar = this.zza;
        if (zzctzVar != null) {
            zzctzVar.zzb();
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final void zzy(com.google.android.gms.ads.internal.client.zzl zzlVar, com.google.android.gms.ads.internal.client.zzbk zzbkVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzbu
    public final synchronized void zzz() {
        Preconditions.checkMainThread(new ObfuscatedString(new long[]{-719653972451020808L, 3498728896693414634L, 6969809603276837929L, 6662881956329750215L, 1367000509949436803L, 8015076229890066981L, 905272238702217401L}).toString());
    }
}
