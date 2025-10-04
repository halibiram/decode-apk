package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.measurement.internal.zzga;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcx extends zzdt {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Context zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ zzee zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcx(zzee zzeeVar, String str, String str2, Context context, Bundle bundle) {
        super(zzeeVar, true);
        this.zze = zzeeVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = context;
        this.zzd = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() {
        boolean zzV;
        String str;
        String str2;
        String str3;
        zzcc zzccVar;
        boolean z;
        zzcc zzccVar2;
        String str4;
        String unused;
        try {
            zzee zzeeVar = this.zze;
            zzV = zzee.zzV(this.zza, this.zzb);
            if (zzV) {
                String str5 = this.zzb;
                String str6 = this.zza;
                str4 = this.zze.zzd;
                str3 = str5;
                str2 = str6;
                str = str4;
            } else {
                str = null;
                str2 = null;
                str3 = null;
            }
            Preconditions.checkNotNull(this.zzc);
            zzee zzeeVar2 = this.zze;
            zzeeVar2.zzj = zzeeVar2.zzf(this.zzc, true);
            zzccVar = this.zze.zzj;
            if (zzccVar == null) {
                unused = this.zze.zzd;
                new ObfuscatedString(new long[]{8981370532555652617L, 6385232505820787156L, 2082231074746301357L, -4214529551159005392L, 1422886970697142676L, -7311375981679002588L}).toString();
                return;
            }
            int localVersion = DynamiteModule.getLocalVersion(this.zzc, new ObfuscatedString(new long[]{308854474561056590L, 411859230833490766L, 603571436953127053L, -4071350816338444029L, 3633855625533771441L, 751904708165595620L, 4101998832196476628L}).toString());
            int remoteVersion = DynamiteModule.getRemoteVersion(this.zzc, new ObfuscatedString(new long[]{-7817410514661422558L, -1719406597985432975L, 657251169394342896L, -5032391597523752063L, 1359003519606754090L, -5701245965928763348L, 3744075792268706187L}).toString());
            int max = Math.max(localVersion, remoteVersion);
            if (remoteVersion < localVersion) {
                z = true;
            } else {
                z = false;
            }
            zzcl zzclVar = new zzcl(61000L, max, z, str, str2, str3, this.zzd, zzga.zza(this.zzc));
            zzccVar2 = this.zze.zzj;
            ((zzcc) Preconditions.checkNotNull(zzccVar2)).initialize(ObjectWrapper.wrap(this.zzc), zzclVar, this.zzh);
        } catch (Exception e) {
            this.zze.zzS(e, true, false);
        }
    }
}
