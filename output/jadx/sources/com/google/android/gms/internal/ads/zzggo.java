package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

@Deprecated
/* loaded from: classes2.dex */
public final class zzggo {
    private static final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    @Deprecated
    public static zzggn zza(String str) {
        Iterator it = zza.iterator();
        while (it.hasNext()) {
            zzggn zzggnVar = (zzggn) it.next();
            if (zzggnVar.zza()) {
                return zzggnVar;
            }
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{-7095851539783520755L, -1163510805336510090L, 1818962351711840364L, -4180004331588524841L, -5449480869614676043L}).toString().concat(String.valueOf(str)));
    }
}
