package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzgna {
    private final Map zza;
    private final Map zzb;

    public /* synthetic */ zzgna(Map map, Map map2, zzgmz zzgmzVar) {
        this.zza = map;
        this.zzb = map2;
    }

    public static zzgmy zza() {
        return new zzgmy(null);
    }

    public final Enum zzb(Object obj) {
        Enum r0 = (Enum) this.zzb.get(obj);
        if (r0 != null) {
            return r0;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{8062691927299098314L, -4900813093838950721L, 1585139251150029396L, 3909288715315180788L, -3316609053586732112L}).toString().concat(String.valueOf(obj)));
    }

    public final Object zzc(Enum r4) {
        Object obj = this.zza.get(r4);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-4772002971947591814L, -7788809141600054166L, -4241353466105261280L, -2302663493298090249L, -8498167411894272972L}).toString().concat(String.valueOf(r4)));
    }
}
