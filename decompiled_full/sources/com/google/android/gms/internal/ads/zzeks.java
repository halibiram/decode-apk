package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzeks implements zzdkw {
    private final zzfgm zza;
    private final zzbus zzb;
    private final AdFormat zzc;

    @Nullable
    private zzdbp zzd = null;

    public zzeks(zzfgm zzfgmVar, zzbus zzbusVar, AdFormat adFormat) {
        this.zza = zzfgmVar;
        this.zzb = zzbusVar;
        this.zzc = adFormat;
    }

    @Override // com.google.android.gms.internal.ads.zzdkw
    public final void zza(boolean z, Context context, zzdbk zzdbkVar) {
        boolean zzs;
        try {
            AdFormat adFormat = AdFormat.BANNER;
            int ordinal = this.zzc.ordinal();
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 5) {
                        zzs = this.zzb.zzr(ObjectWrapper.wrap(context));
                    }
                    throw new zzdkv(new ObfuscatedString(new long[]{959959958043145552L, -1050224052719238129L, 405743217295661393L, 9095597892998991175L}).toString());
                }
                zzs = this.zzb.zzt(ObjectWrapper.wrap(context));
            } else {
                zzs = this.zzb.zzs(ObjectWrapper.wrap(context));
            }
            if (zzs) {
                if (this.zzd != null) {
                    if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbw)).booleanValue() && this.zza.zzZ == 2) {
                        this.zzd.zza();
                        return;
                    }
                    return;
                }
                return;
            }
            throw new zzdkv(new ObfuscatedString(new long[]{959959958043145552L, -1050224052719238129L, 405743217295661393L, 9095597892998991175L}).toString());
        } catch (Throwable th) {
            throw new zzdkv(th);
        }
    }

    public final void zzb(zzdbp zzdbpVar) {
        this.zzd = zzdbpVar;
    }
}
