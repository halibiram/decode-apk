package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import com.google.android.gms.common.util.Clock;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzdpm {
    private final com.google.android.gms.ads.internal.util.zzbq zza;
    private final Clock zzb;
    private final Executor zzc;

    public zzdpm(com.google.android.gms.ads.internal.util.zzbq zzbqVar, Clock clock, Executor executor) {
        this.zza = zzbqVar;
        this.zzb = clock;
        this.zzc = executor;
    }

    private final Bitmap zzc(byte[] bArr, BitmapFactory.Options options) {
        long elapsedRealtime = this.zzb.elapsedRealtime();
        boolean z = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long elapsedRealtime2 = this.zzb.elapsedRealtime();
        if (decodeByteArray != null) {
            long j = elapsedRealtime2 - elapsedRealtime;
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
                z = true;
            }
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2567994384783471776L, -6715272521450452067L, 8366576025253498214L, 8521081511541008146L}).toString() + width + new ObfuscatedString(new long[]{4256066179495867168L, -5210728598943514968L}).toString() + height + new ObfuscatedString(new long[]{-5773336142651096283L, -2593171711195385733L}).toString() + allocationByteCount + new ObfuscatedString(new long[]{-1839459149037923454L, -3716585338578487163L}).toString() + j + new ObfuscatedString(new long[]{-1032996651343028182L, -6573705297549171758L, -344234094215648000L}).toString() + z);
        }
        return decodeByteArray;
    }

    public final /* synthetic */ Bitmap zza(double d, boolean z, zzapw zzapwVar) {
        byte[] bArr = zzapwVar.zzb;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgg)).booleanValue()) {
            options.inJustDecodeBounds = true;
            zzc(bArr, options);
            options.inJustDecodeBounds = false;
            int i = options.outWidth * options.outHeight;
            if (i > 0) {
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros((i - 1) / ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzgh)).intValue())) / 2);
            }
        }
        return zzc(bArr, options);
    }

    public final ListenableFuture zzb(String str, final double d, final boolean z) {
        return zzgen.zzm(this.zza.zza(str), new zzfws() { // from class: com.google.android.gms.internal.ads.zzdpl
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return zzdpm.this.zza(d, z, (zzapw) obj);
            }
        }, this.zzc);
    }
}
