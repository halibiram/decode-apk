package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcgm {
    private final Context zza;
    private final String zzb;
    private final zzcei zzc;

    @Nullable
    private final zzbgr zzd;

    @Nullable
    private final zzbgu zze;
    private final com.google.android.gms.ads.internal.util.zzbh zzf;
    private final long[] zzg;
    private final String[] zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;
    private zzcfr zzn;
    private boolean zzo;
    private boolean zzp;
    private long zzq;

    public zzcgm(Context context, zzcei zzceiVar, String str, @Nullable zzbgu zzbguVar, @Nullable zzbgr zzbgrVar) {
        com.google.android.gms.ads.internal.util.zzbf zzbfVar = new com.google.android.gms.ads.internal.util.zzbf();
        zzbfVar.zza(new ObfuscatedString(new long[]{1400522182775629234L, -4555025247703008202L}).toString(), Double.MIN_VALUE, 1.0d);
        zzbfVar.zza(new ObfuscatedString(new long[]{-951331312511683604L, -1875417901670116928L}).toString(), 1.0d, 5.0d);
        zzbfVar.zza(new ObfuscatedString(new long[]{5119700609082126060L, 2552610524715957143L}).toString(), 5.0d, 10.0d);
        zzbfVar.zza(new ObfuscatedString(new long[]{4220102433085069834L, 6850915063752691456L}).toString(), 10.0d, 20.0d);
        zzbfVar.zza(new ObfuscatedString(new long[]{2461023212726324556L, -330366024160775570L}).toString(), 20.0d, 30.0d);
        zzbfVar.zza(new ObfuscatedString(new long[]{-5123551184048867626L, -4977890793362072535L}).toString(), 30.0d, Double.MAX_VALUE);
        this.zzf = zzbfVar.zzb();
        this.zzi = false;
        this.zzj = false;
        this.zzk = false;
        this.zzl = false;
        this.zzq = -1L;
        this.zza = context;
        this.zzc = zzceiVar;
        this.zzb = str;
        this.zze = zzbguVar;
        this.zzd = zzbgrVar;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzA);
        if (str2 == null) {
            this.zzh = new String[0];
            this.zzg = new long[0];
            return;
        }
        String[] split = TextUtils.split(str2, new ObfuscatedString(new long[]{1293553582287305405L, -5948207019819411733L}).toString());
        int length = split.length;
        this.zzh = new String[length];
        this.zzg = new long[length];
        for (int i = 0; i < split.length; i++) {
            try {
                this.zzg[i] = Long.parseLong(split[i]);
            } catch (NumberFormatException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{1671153354070730708L, -8192453673972360175L, 5776381349685662077L, 8275688048542475156L, -5718860427822916193L, 7924123588565732679L, 8919126332752574034L}).toString(), e);
                this.zzg[i] = -1;
            }
        }
    }

    public final void zza(zzcfr zzcfrVar) {
        zzbgm.zza(this.zze, this.zzd, new ObfuscatedString(new long[]{5316146867918784115L, 4136551094911652820L}).toString());
        this.zzi = true;
        this.zze.zzd(new ObfuscatedString(new long[]{-1115811229008703333L, -23207045368449941L}).toString(), zzcfrVar.zzj());
        this.zzn = zzcfrVar;
    }

    public final void zzb() {
        if (this.zzi && !this.zzj) {
            zzbgm.zza(this.zze, this.zzd, new ObfuscatedString(new long[]{5133374668535558822L, 5795193992657708656L}).toString());
            this.zzj = true;
        }
    }

    public final void zzc() {
        this.zzm = true;
        if (this.zzj && !this.zzk) {
            zzbgm.zza(this.zze, this.zzd, new ObfuscatedString(new long[]{-3401664282041539702L, 9130321666355129406L}).toString());
            this.zzk = true;
        }
    }

    public final void zzd() {
        if (((Boolean) zzbip.zza.zze()).booleanValue() && !this.zzo) {
            Bundle bundle = new Bundle();
            bundle.putString(new ObfuscatedString(new long[]{-3005239393518185469L, -9139143291752721109L}).toString(), new ObfuscatedString(new long[]{1642863365435845682L, -1839129544911111794L, -3039677213179411631L, -6477925695047463761L}).toString());
            bundle.putString(new ObfuscatedString(new long[]{4966990062857122742L, 7152792125622722613L}).toString(), this.zzb);
            bundle.putString(new ObfuscatedString(new long[]{-6802409403037978485L, -3985289120169177580L}).toString(), this.zzn.zzj());
            for (com.google.android.gms.ads.internal.util.zzbe zzbeVar : this.zzf.zza()) {
                String valueOf = String.valueOf(zzbeVar.zza);
                bundle.putString(new ObfuscatedString(new long[]{580915214440104719L, -760472691466150499L}).toString().concat(valueOf), Integer.toString(zzbeVar.zze));
                String valueOf2 = String.valueOf(zzbeVar.zza);
                bundle.putString(new ObfuscatedString(new long[]{-2117041971750253952L, -959064378551331210L}).toString().concat(valueOf2), Double.toString(zzbeVar.zzd));
            }
            int i = 0;
            while (true) {
                long[] jArr = this.zzg;
                if (i < jArr.length) {
                    String str = this.zzh[i];
                    if (str != null) {
                        bundle.putString(new ObfuscatedString(new long[]{-3905688366058609700L, -6603373319513023598L}).toString().concat(Long.valueOf(jArr[i]).toString()), str);
                    }
                    i++;
                } else {
                    com.google.android.gms.ads.internal.zzt.zzp().zzh(this.zza, this.zzc.zza, new ObfuscatedString(new long[]{532630595791354967L, 4595047130617011080L, -4190893753303335648L}).toString(), bundle, true);
                    this.zzo = true;
                    return;
                }
            }
        }
    }

    public final void zze() {
        this.zzm = false;
    }

    public final void zzf(zzcfr zzcfrVar) {
        long j;
        if (this.zzk && !this.zzl) {
            if (com.google.android.gms.ads.internal.util.zze.zzc() && !this.zzl) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{3653900836572338745L, 663039331046384059L, 2531450389790139147L, -1017242784311896738L, -8519598052624929066L}).toString());
            }
            zzbgm.zza(this.zze, this.zzd, new ObfuscatedString(new long[]{-9024185823716479917L, -6428046136608085854L}).toString());
            this.zzl = true;
        }
        long nanoTime = com.google.android.gms.ads.internal.zzt.zzB().nanoTime();
        if (this.zzm && this.zzp && this.zzq != -1) {
            this.zzf.zzb(TimeUnit.SECONDS.toNanos(1L) / (nanoTime - this.zzq));
        }
        this.zzp = this.zzm;
        this.zzq = nanoTime;
        long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzB)).longValue();
        long zza = zzcfrVar.zza();
        int i = 0;
        while (true) {
            String[] strArr = this.zzh;
            if (i < strArr.length) {
                if (strArr[i] == null && longValue > Math.abs(zza - this.zzg[i])) {
                    String[] strArr2 = this.zzh;
                    int i2 = 8;
                    Bitmap bitmap = zzcfrVar.getBitmap(8, 8);
                    long j2 = 63;
                    int i3 = 0;
                    long j3 = 0;
                    while (i3 < i2) {
                        int i4 = 0;
                        while (i4 < i2) {
                            int pixel = bitmap.getPixel(i4, i3);
                            if (Color.green(pixel) + Color.red(pixel) + Color.blue(pixel) > 128) {
                                j = 1;
                            } else {
                                j = 0;
                            }
                            j3 |= j << ((int) j2);
                            j2--;
                            i4++;
                            i2 = 8;
                        }
                        i3++;
                        i2 = 8;
                    }
                    strArr2[i] = String.format(new ObfuscatedString(new long[]{-3790912818763549419L, -7168617421038207208L}).toString(), Long.valueOf(j3));
                    return;
                }
                i++;
            } else {
                return;
            }
        }
    }
}
