package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzdiu;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzn {
    public static final void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        zzy zzyVar;
        if (adOverlayInfoParcel.zzk == 4 && adOverlayInfoParcel.zzc == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdiu zzdiuVar = adOverlayInfoParcel.zzu;
            if (zzdiuVar != null) {
                zzdiuVar.zzs();
            }
            Activity zzi = adOverlayInfoParcel.zzd.zzi();
            zzc zzcVar = adOverlayInfoParcel.zza;
            if (zzcVar != null && zzcVar.zzj && zzi != null) {
                context = zzi;
            }
            com.google.android.gms.ads.internal.zzt.zzh();
            zzc zzcVar2 = adOverlayInfoParcel.zza;
            zzaa zzaaVar = adOverlayInfoParcel.zzi;
            if (zzcVar2 != null) {
                zzyVar = zzcVar2.zzi;
            } else {
                zzyVar = null;
            }
            zza.zzb(context, zzcVar2, zzaaVar, zzyVar);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, new ObfuscatedString(new long[]{-3898786921338796576L, 2938919335729943556L, 6733491091673808609L, 3237148525588850530L, 8281853548314831782L, 3390690919702738105L}).toString());
        intent.putExtra(new ObfuscatedString(new long[]{8348094214832697950L, 1239129084281701677L, 8265161312903513581L, -2042083050925355665L, 5684105107772410656L, -776402716399524921L, -3037175274630028588L, -7929236860306187905L}).toString(), adOverlayInfoParcel.zzm.zzd);
        intent.putExtra(new ObfuscatedString(new long[]{8462410829204447398L, 3777614179447076048L, 8819807212297468237L, -6197922812635036582L, -641917852923978591L}).toString(), z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(new ObfuscatedString(new long[]{-7577523459905094600L, 3296738538732890165L, 5451930295360524834L, -8353156824020178965L, -5504859642035435092L, 2810831236858222492L, -4623944157800533589L, -9038728759197910370L}).toString(), adOverlayInfoParcel);
        intent.putExtra(new ObfuscatedString(new long[]{6325558825650682214L, -9177263357457093040L, -8427530256779268403L, -3082781746020416318L, 1196227093639273323L, 446086361238041463L, -5992285299265252774L, 4461270653109373760L}).toString(), bundle);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.util.zzt.zzS(context, intent);
    }
}
