package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzcic extends zzchw implements zzhy {
    private String zzd;
    private final zzcgk zze;
    private boolean zzf;
    private final zzcib zzg;
    private final zzchh zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private final Object zzk;
    private final String zzl;
    private final int zzm;
    private boolean zzn;

    public zzcic(zzcgl zzcglVar, zzcgk zzcgkVar) {
        super(zzcglVar);
        String str;
        this.zze = zzcgkVar;
        this.zzg = new zzcib();
        this.zzh = new zzchh();
        this.zzk = new Object();
        if (zzcglVar != null) {
            str = zzcglVar.zzr();
        } else {
            str = null;
        }
        this.zzl = (String) zzfwz.zzd(str).zzb(new ObfuscatedString(new long[]{3730808205950469318L}).toString());
        this.zzm = zzcglVar != null ? zzcglVar.zzf() : 0;
    }

    public static final String zzm(String str) {
        return new ObfuscatedString(new long[]{-4727823031372141986L, -3314267408576215619L}).toString().concat(String.valueOf(zzcdv.zze(str)));
    }

    private final void zzv() {
        boolean z;
        int zza = (int) this.zzg.zza();
        int zza2 = (int) this.zzh.zza(this.zzi);
        int position = this.zzi.position();
        int round = Math.round((position / zza) * zza2);
        int zzs = zzcgc.zzs();
        int zzu = zzcgc.zzu();
        String str = this.zzd;
        String zzm = zzm(str);
        long j = round;
        if (round > 0) {
            z = true;
        } else {
            z = false;
        }
        zzn(str, zzm, position, zza, j, zza2, z, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zza(zzgw zzgwVar, zzhb zzhbVar, boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzb(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzc(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzhy
    public final void zzd(zzgw zzgwVar, zzhb zzhbVar, boolean z) {
        if (zzgwVar instanceof zzhj) {
            this.zzg.zzb((zzhj) zzgwVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final void zzf() {
        this.zzf = true;
    }

    public final String zzi() {
        return this.zzd;
    }

    public final ByteBuffer zzk() {
        synchronized (this.zzk) {
            try {
                ByteBuffer byteBuffer = this.zzi;
                if (byteBuffer != null && !this.zzj) {
                    byteBuffer.flip();
                    this.zzj = true;
                }
                this.zzf = true;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.zzi;
    }

    public final boolean zzl() {
        return this.zzn;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0111, code lost:
    
        r3 = new com.panda912.muddy.ObfuscatedString(new long[]{-5871791736895673788L, -6705575733390510342L, 5643982093046084927L}).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0155, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{-1662471104991748207L, -3576502047518429272L, 1505702699694786951L, -915010130758759911L, -7079484211478322613L}).toString() + r5 + new com.panda912.muddy.ObfuscatedString(new long[]{-6563415776213394732L, -6004112287099521405L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0156, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0157, code lost:
    
        r6 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0159, code lost:
    
        r6 = new com.panda912.muddy.ObfuscatedString(new long[]{6433204179932438064L, 609144260641716666L, 3505912632769514904L}).toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01a3, code lost:
    
        throw new java.io.IOException(new com.panda912.muddy.ObfuscatedString(new long[]{849696368973294382L, -6880163445379709003L, 5764914506083547652L, 4160940311470833324L}).toString() + r24.zzi.limit() + new com.panda912.muddy.ObfuscatedString(new long[]{-4815678199266065477L, 5981219690284799055L}).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01a4, code lost:
    
        r0 = e;
     */
    @Override // com.google.android.gms.internal.ads.zzchw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzt(String str) {
        String str2;
        boolean z;
        zzgw zza;
        Clock zzB;
        long currentTimeMillis;
        long longValue;
        long longValue2;
        int i;
        byte[] bArr;
        long j;
        this.zzd = str;
        String obfuscatedString = new ObfuscatedString(new long[]{6684756505985229435L, -5878783971125784589L}).toString();
        String zzm = zzm(str);
        try {
            zzhe zzheVar = new zzhe();
            zzheVar.zzf(this.zzb);
            zzheVar.zzc(this.zze.zzd);
            zzheVar.zzd(this.zze.zzf);
            z = true;
            zzheVar.zzb(true);
            zzheVar.zze(this);
            zza = zzheVar.zza();
            if (this.zze.zzj) {
                zza = new zzchf(this.zza, zza, this.zzl, this.zzm, null, null);
            }
            zza.zzb(new zzhb(Uri.parse(str)));
            zzcgl zzcglVar = (zzcgl) this.zzc.get();
            if (zzcglVar != null) {
                zzcglVar.zzt(zzm, this);
            }
            zzB = com.google.android.gms.ads.internal.zzt.zzB();
            currentTimeMillis = zzB.currentTimeMillis();
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzy)).longValue();
            str2 = obfuscatedString;
            try {
                longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzx)).longValue();
                this.zzi = ByteBuffer.allocate(this.zze.zzc);
                i = 8192;
                bArr = new byte[8192];
                j = currentTimeMillis;
            } catch (Exception e) {
                e = e;
                String str3 = str2;
                String canonicalName = e.getClass().getCanonicalName();
                String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{137504387382527663L, 8986375826913718499L}), AbstractC0749x8313616e.m3341xc20437a5(canonicalName), e.getMessage());
                zzcec.zzj(new ObfuscatedString(new long[]{6365813052699157088L, 740475504575193917L, -5933019262018790408L, 412122815088923800L}).toString() + str + new ObfuscatedString(new long[]{-6043102813429519578L, -6266522601180473516L, 8355804012455110721L}).toString() + m3336x1aebc6d9);
                zzg(str, zzm, str3, m3336x1aebc6d9);
                return false;
            }
        } catch (Exception e2) {
            e = e2;
            str2 = obfuscatedString;
        }
        while (true) {
            int zza2 = zza.zza(bArr, 0, Math.min(this.zzi.remaining(), i));
            if (zza2 == -1) {
                this.zzn = z;
                zzj(str, zzm, (int) this.zzh.zza(this.zzi));
                break;
            }
            synchronized (this.zzk) {
                try {
                    if (!this.zzf) {
                        this.zzi.put(bArr, 0, zza2);
                    }
                } finally {
                }
            }
            if (this.zzi.remaining() <= 0) {
                zzv();
                break;
            }
            if (!this.zzf) {
                long currentTimeMillis2 = zzB.currentTimeMillis();
                if (currentTimeMillis2 - j >= longValue) {
                    zzv();
                    j = currentTimeMillis2;
                }
                if (currentTimeMillis2 - currentTimeMillis > 1000 * longValue2) {
                    break;
                }
                i = 8192;
                z = true;
            } else {
                break;
            }
            String canonicalName2 = e.getClass().getCanonicalName();
            String m3336x1aebc6d92 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{137504387382527663L, 8986375826913718499L}), AbstractC0749x8313616e.m3341xc20437a5(canonicalName2), e.getMessage());
            zzcec.zzj(new ObfuscatedString(new long[]{6365813052699157088L, 740475504575193917L, -5933019262018790408L, 412122815088923800L}).toString() + str + new ObfuscatedString(new long[]{-6043102813429519578L, -6266522601180473516L, 8355804012455110721L}).toString() + m3336x1aebc6d92);
            zzg(str, zzm, str3, m3336x1aebc6d92);
            return false;
        }
        return true;
    }
}
