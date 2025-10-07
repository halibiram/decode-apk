package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfgi implements OnAdMetadataChangedListener {
    final /* synthetic */ com.google.android.gms.ads.internal.client.zzby zza;
    final /* synthetic */ zzfgj zzb;

    public zzfgi(zzfgj zzfgjVar, com.google.android.gms.ads.internal.client.zzby zzbyVar) {
        this.zza = zzbyVar;
        this.zzb = zzfgjVar;
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzdso zzdsoVar;
        zzdsoVar = this.zzb.zzd;
        if (zzdsoVar != null) {
            try {
                this.zza.zze();
            } catch (RemoteException e) {
                zzcec.zzl(new ObfuscatedString(new long[]{-4746961726594197058L, -2489513493575476989L, 6914882573170785494L, -3765690699783880777L, -3756888108463062696L, -4460848117387469565L}).toString(), e);
            }
        }
    }
}
