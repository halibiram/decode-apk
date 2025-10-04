package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class zzbol {
    private final Context zza;
    private final OnH5AdsEventListener zzb;

    @Nullable
    private zzboh zzc;

    public zzbol(Context context, OnH5AdsEventListener onH5AdsEventListener) {
        Preconditions.checkState(true, new ObfuscatedString(new long[]{3655122997025967728L, 8383669391653523667L, 643210073225468240L, 7908790927528542496L, 8563123875583937227L, 2434569141501641270L, -7878942402476917801L}).toString());
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(onH5AdsEventListener);
        this.zza = context;
        this.zzb = onH5AdsEventListener;
        zzbgc.zza(context);
    }

    public static final boolean zzc(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjF)).booleanValue()) {
            return false;
        }
        Preconditions.checkNotNull(str);
        if (str.length() > ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjH)).intValue()) {
            zzcec.zze(new ObfuscatedString(new long[]{1446635452378147722L, -5730768189767162133L, -4363727144930149665L, 8120571039814893343L, -5309169366040535370L}).toString());
            return false;
        }
        Uri parse = Uri.parse(str);
        if (new ObfuscatedString(new long[]{-8587849178817308386L, 8894447849771684075L}).toString().equals(parse.getScheme())) {
            if (new ObfuscatedString(new long[]{5933224288097370946L, 4914602595153490527L, -131014020015753479L, 2567278915342981316L}).toString().equals(parse.getHost())) {
                if (new ObfuscatedString(new long[]{-7412500752774531939L, 8172705530441283082L}).toString().equals(parse.getPath())) {
                    return true;
                }
            }
        }
        return false;
    }

    private final void zzd() {
        if (this.zzc != null) {
            return;
        }
        this.zzc = com.google.android.gms.ads.internal.client.zzay.zza().zzl(this.zza, new zzbsr(), this.zzb);
    }

    public final void zza() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjF)).booleanValue()) {
            zzd();
            zzboh zzbohVar = this.zzc;
            if (zzbohVar != null) {
                try {
                    zzbohVar.zze();
                } catch (RemoteException e) {
                    zzcec.zzl(new ObfuscatedString(new long[]{-1818258143807488807L, 1602604561734821125L, 244170055135997703L, -6623089472573875994L, 7664051998456702460L, 1135471994065694949L}).toString(), e);
                }
            }
        }
    }

    public final boolean zzb(String str) {
        if (!zzc(str)) {
            return false;
        }
        zzd();
        zzboh zzbohVar = this.zzc;
        if (zzbohVar == null) {
            return false;
        }
        try {
            zzbohVar.zzf(str);
            return true;
        } catch (RemoteException e) {
            zzcec.zzl(new ObfuscatedString(new long[]{-3173994224487246850L, -3123516858931707943L, -644491770026682776L, 6238606844775125896L, -7965668577396736294L, 2589352064187696035L}).toString(), e);
            return true;
        }
    }
}
