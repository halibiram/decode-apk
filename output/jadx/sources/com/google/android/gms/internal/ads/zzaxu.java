package com.google.android.gms.internal.ads;

import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxu extends zzaxx {
    private final View zzi;

    public zzaxu(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, View view) {
        super(zzawjVar, new ObfuscatedString(new long[]{-1378066710837015251L, -4548818408193176007L, -2673422781863973583L, 2678150426473818802L, 658981851050737039L, 4073880692617819965L, 8207868113885131234L, 800572609575081699L, -514371441588197665L}).toString(), new ObfuscatedString(new long[]{7202520355210383874L, 2849643458378384181L, -3767688401757224334L, 537347684953998987L, 4759296149285736400L, 557913363935349757L, -6519866155797185398L}).toString(), zzasgVar, i, 57);
        this.zzi = view;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (this.zzi != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzdk);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzku);
            zzawn zzawnVar = new zzawn((String) this.zzf.invoke(null, this.zzi, this.zzb.zzb().getResources().getDisplayMetrics(), bool, bool2));
            zzatb zza = zzatc.zza();
            zza.zzb(zzawnVar.zza.longValue());
            zza.zzd(zzawnVar.zzb.longValue());
            zza.zze(zzawnVar.zzc.longValue());
            if (bool2.booleanValue()) {
                zza.zzc(zzawnVar.zze.longValue());
            }
            if (bool.booleanValue()) {
                zza.zza(zzawnVar.zzd.longValue());
            }
            this.zze.zzY((zzatc) zza.zzal());
        }
    }
}
