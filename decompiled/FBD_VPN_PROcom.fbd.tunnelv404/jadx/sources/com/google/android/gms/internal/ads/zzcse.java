package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.InputEvent;
import androidx.annotation.VisibleForTesting;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Random;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzcse {

    @VisibleForTesting
    zzbxy zza;

    @VisibleForTesting
    zzbxy zzb;
    private final Context zzc;
    private final com.google.android.gms.ads.internal.util.zzg zzd;
    private final zzeij zze;
    private final zzdtp zzf;
    private final zzgey zzg;
    private final Executor zzh;
    private final ScheduledExecutorService zzi;

    public zzcse(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar, zzeij zzeijVar, zzdtp zzdtpVar, zzgey zzgeyVar, zzgey zzgeyVar2, ScheduledExecutorService scheduledExecutorService) {
        this.zzc = context;
        this.zzd = zzgVar;
        this.zze = zzeijVar;
        this.zzf = zzdtpVar;
        this.zzg = zzgeyVar;
        this.zzh = zzgeyVar2;
        this.zzi = scheduledExecutorService;
    }

    public static boolean zzh(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjM));
    }

    private final ListenableFuture zzi(final String str, @Nullable final InputEvent inputEvent, Random random) {
        final Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjM)) && !this.zzd.zzQ()) {
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjN), String.valueOf(random.nextInt(Integer.MAX_VALUE)));
            if (inputEvent == null) {
                buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjO), new ObfuscatedString(new long[]{-3246296200181738992L, 5964353686115712620L}).toString());
                return zzgen.zzh(buildUpon.toString());
            }
            return zzgen.zzf(zzgen.zzn(zzgee.zzu(this.zze.zza()), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcry
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzcse.this.zzc(buildUpon, str, inputEvent, (Integer) obj);
                }
            }, this.zzh), Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcrz
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    return zzcse.this.zzd(buildUpon, (Throwable) obj);
                }
            }, this.zzg);
        }
        return zzgen.zzh(str);
    }

    public final ListenableFuture zzb(final String str, Random random) {
        if (TextUtils.isEmpty(str)) {
            return zzgen.zzh(str);
        }
        return zzgen.zzf(zzi(str, this.zzf.zza(), random), Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcrx
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(str);
            }
        }, this.zzg);
    }

    public final /* synthetic */ ListenableFuture zzc(final Uri.Builder builder, String str, InputEvent inputEvent, Integer num) {
        if (num.intValue() == 1) {
            Uri.Builder buildUpon = builder.build().buildUpon();
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjP), new ObfuscatedString(new long[]{197673213649090133L, 8284520058630468498L}).toString());
            buildUpon.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjO), new ObfuscatedString(new long[]{4357955034622339581L, 5619650937282318085L}).toString());
            if (str.contains((CharSequence) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjQ))) {
                buildUpon.authority((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjR));
            }
            return zzgen.zzn(zzgee.zzu(this.zze.zzb(buildUpon.build(), inputEvent)), new zzgdu() { // from class: com.google.android.gms.internal.ads.zzcsa
                @Override // com.google.android.gms.internal.ads.zzgdu
                public final ListenableFuture zza(Object obj) {
                    String str2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjO);
                    Uri.Builder builder2 = builder;
                    builder2.appendQueryParameter(str2, new ObfuscatedString(new long[]{-5837295651006504805L, -4365662938353001363L}).toString());
                    return zzgen.zzh(builder2.toString());
                }
            }, this.zzh);
        }
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjO), new ObfuscatedString(new long[]{-87978914083190082L, -4490852440346946875L}).toString());
        return zzgen.zzh(builder.toString());
    }

    public final /* synthetic */ ListenableFuture zzd(Uri.Builder builder, final Throwable th) {
        this.zzg.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrw
            @Override // java.lang.Runnable
            public final void run() {
                zzcse.this.zzf(th);
            }
        });
        builder.appendQueryParameter((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjO), new ObfuscatedString(new long[]{-8700476004562845221L, -431854316344576570L}).toString());
        return zzgen.zzh(builder.toString());
    }

    public final /* synthetic */ void zzf(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjT)).booleanValue()) {
            zzbxy zzc = zzbxw.zzc(this.zzc);
            this.zzb = zzc;
            zzc.zzg(th, new ObfuscatedString(new long[]{-8363062590800722600L, 7553478538691860511L, 3443029877732098658L, 6336499007471886760L}).toString());
        } else {
            zzbxy zza = zzbxw.zza(this.zzc);
            this.zza = zza;
            zza.zzg(th, new ObfuscatedString(new long[]{420861350558510150L, -2900311776368688268L, -2125911564693604246L, 2085377782652693124L}).toString());
        }
    }

    public final void zzg(String str, zzfny zzfnyVar, Random random) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzgen.zzr(zzgen.zzo(zzi(str, this.zzf.zza(), random), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjS)).intValue(), TimeUnit.MILLISECONDS, this.zzi), new zzcsd(this, zzfnyVar, str), this.zzg);
    }
}
