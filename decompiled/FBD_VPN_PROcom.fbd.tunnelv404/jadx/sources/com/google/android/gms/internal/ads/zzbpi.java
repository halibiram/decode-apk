package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbpi extends zzayg implements zzbpk {
    public zzbpi(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{3541505545322568491L, -1778595392347674754L, -6589799093213848551L, -5726901298322890423L, 6153818796520773655L, 9108501530950777012L, 5118996263015087182L, 6054304534446335435L, -4069111960403014666L, 821004393348854055L, -6456715927549089163L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbpk
    public final void zzb(List list) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzbm(1, zza);
    }
}
