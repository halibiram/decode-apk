package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzdrl implements zzbng {

    @Nullable
    private final zzbkq zza;
    private final zzdrz zzb;
    private final zzhgx zzc;

    public zzdrl(zzdnl zzdnlVar, zzdna zzdnaVar, zzdrz zzdrzVar, zzhgx zzhgxVar) {
        this.zza = zzdnlVar.zzc(zzdnaVar.zzA());
        this.zzb = zzdrzVar;
        this.zzc = zzhgxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        String str = (String) map.get(new ObfuscatedString(new long[]{-3373353970182547221L, -2248427667638531699L}).toString());
        try {
            this.zza.zze((zzbkg) this.zzc.zzb(), str);
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{573536700642392413L, 8771831822651850981L, -5773366615928623599L, -3028730784949373911L, -4665292084979601418L, 1124835425228594658L}).toString() + str + new ObfuscatedString(new long[]{4911852580261072861L, -2446516213541075936L}).toString(), e);
        }
    }

    public final void zzb() {
        if (this.zza == null) {
            return;
        }
        this.zzb.zzi(new ObfuscatedString(new long[]{-4953758059386278834L, 4218728319841125403L, 3335941990289662561L, 649069269395934899L}).toString(), this);
    }
}
