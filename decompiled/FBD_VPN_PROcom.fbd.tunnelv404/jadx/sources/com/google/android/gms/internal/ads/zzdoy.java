package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
final class zzdoy implements zzgej {
    final /* synthetic */ zzdoz zza;

    public zzdoy(zzdoz zzdozVar) {
        this.zza = zzdozVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{1404049412510938348L, 3390964850872168113L, -8178064353504593470L, -5571927020753449424L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    /* renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final void zzb(List list) {
        try {
            zzcjk zzcjkVar = (zzcjk) list.get(0);
            if (zzcjkVar != null) {
                this.zza.zzb(zzcjkVar);
            }
        } catch (ClassCastException | IndexOutOfBoundsException e) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfb)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e, new ObfuscatedString(new long[]{1452718182539176771L, 9004962670188197171L, 1109791730945323249L, -2948876428607688503L}).toString());
            }
        }
    }
}
