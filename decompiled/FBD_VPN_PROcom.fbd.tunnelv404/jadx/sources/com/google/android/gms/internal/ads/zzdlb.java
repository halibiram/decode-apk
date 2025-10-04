package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

/* loaded from: classes2.dex */
public final class zzdlb implements zzdax, zzdhz {
    private final zzccd zza;
    private final Context zzb;
    private final zzcch zzc;

    @Nullable
    private final View zzd;
    private String zze;
    private final zzbbz zzf;

    public zzdlb(zzccd zzccdVar, Context context, zzcch zzcchVar, @Nullable View view, zzbbz zzbbzVar) {
        this.zza = zzccdVar;
        this.zzb = context;
        this.zzc = zzcchVar;
        this.zzd = view;
        this.zzf = zzbbzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zza() {
        this.zza.zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    @ParametersAreNonnullByDefault
    public final void zzbB(zzbzu zzbzuVar, String str, String str2) {
        if (this.zzc.zzp(this.zzb)) {
            try {
                zzcch zzcchVar = this.zzc;
                Context context = this.zzb;
                zzcchVar.zzl(context, zzcchVar.zza(context), this.zza.zza(), zzbzuVar.zzc(), zzbzuVar.zzb());
            } catch (RemoteException e) {
                zzcec.zzk(new ObfuscatedString(new long[]{-977782110896324028L, 1997752362130280454L, -4834738202723831846L, -8117603322652674276L, 2419282246463524499L, -4307249720592405858L}).toString(), e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzc() {
        View view = this.zzd;
        if (view != null && this.zze != null) {
            this.zzc.zzo(view.getContext(), this.zze);
        }
        this.zza.zzb(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdax
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzk() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhz
    public final void zzl() {
        ObfuscatedString obfuscatedString;
        if (this.zzf == zzbbz.zzk) {
            return;
        }
        String zzc = this.zzc.zzc(this.zzb);
        this.zze = zzc;
        zzbbz zzbbzVar = this.zzf;
        String valueOf = String.valueOf(zzc);
        if (zzbbzVar == zzbbz.zzh) {
            obfuscatedString = new ObfuscatedString(new long[]{477308031414829965L, -7258270937859374679L, -1259748200660697658L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-6485138725981950286L, -1584666871961811554L, 6561188208900043934L});
        }
        this.zze = valueOf.concat(obfuscatedString.toString());
    }
}
