package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbun extends zzayg implements zzbup {
    public zzbun(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3142363158719296651L, -7757581835283743494L, 9144634123258852067L, 8580121093161387873L, 168591672376283238L, 3097539902469376696L, 2210663329844458515L, 6271278198115366607L, -5244065281223799480L, 2528983550951530583L, -4856852126963915673L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(new ObfuscatedString(new long[]{-5006931297089522477L, -5316606965045407157L, 4998002494225949674L, -8358656474599549965L}).toString());
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbup
    public final void zzg() {
        zzbm(2, zza());
    }
}
