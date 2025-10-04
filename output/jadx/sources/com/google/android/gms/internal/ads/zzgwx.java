package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.security.Provider;
import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzgwx implements zzgwy {
    private final zzgxh zza;

    @Override // com.google.android.gms.internal.ads.zzgwy
    public final Object zza(String str) {
        Iterator it = zzgwz.zzb(new ObfuscatedString(new long[]{-8580122092279836826L, 8313523067526140005L, -6366439597728282632L}).toString(), new ObfuscatedString(new long[]{-4367627929484341921L, 4664969596827079180L, 9193317899546524485L}).toString(), new ObfuscatedString(new long[]{-8707140073983644024L, 5376504313895507755L, -6654356267172940056L}).toString()).iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return this.zza.zza(str, (Provider) it.next());
            } catch (Exception e) {
                if (exc == null) {
                    exc = e;
                }
            }
        }
        throw new GeneralSecurityException(new ObfuscatedString(new long[]{3715601668287337954L, -1463764320627929833L, 5202455253139633171L, -6465471863014231990L}).toString(), exc);
    }
}
