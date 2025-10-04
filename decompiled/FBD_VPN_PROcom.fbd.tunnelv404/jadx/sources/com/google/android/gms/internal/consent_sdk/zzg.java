package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.FormError;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzg extends Exception {
    private final int zza;

    public zzg(int i, String str) {
        super(str);
        this.zza = i;
    }

    public final FormError zza() {
        if (getCause() == null) {
            getMessage();
            new ObfuscatedString(new long[]{-4908308798409170461L, -4916426207621695150L, 8580007473861360441L, -7051172714763681810L}).toString();
        } else {
            getMessage();
            getCause();
            new ObfuscatedString(new long[]{-1463023880940957097L, -1598825119022578337L, 8260075661119377031L, 3161028051811636599L}).toString();
        }
        return new FormError(this.zza, getMessage());
    }

    public zzg(int i, String str, Throwable th) {
        super(str, th);
        this.zza = i;
    }
}
