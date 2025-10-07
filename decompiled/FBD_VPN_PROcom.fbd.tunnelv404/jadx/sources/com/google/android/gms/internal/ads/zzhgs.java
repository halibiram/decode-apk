package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzhgs extends zzhgv {
    final Logger zza;

    public zzhgs(String str) {
        this.zza = Logger.getLogger(str);
    }

    @Override // com.google.android.gms.internal.ads.zzhgv
    public final void zza(String str) {
        this.zza.logp(Level.FINE, new ObfuscatedString(new long[]{8566102367577973365L, -3302128309808999414L, -2724300225634793308L, 3136078317750167868L, -6669067585716607225L, 1353259487296294065L}).toString(), new ObfuscatedString(new long[]{6994192393023776402L, 9044387559956966875L}).toString(), str);
    }
}
