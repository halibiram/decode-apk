package com.google.android.gms.common.util;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.Set;

@KeepForSdk
/* loaded from: classes2.dex */
public final class ScopeUtil {
    private ScopeUtil() {
    }

    @NonNull
    @KeepForSdk
    public static String[] toScopeString(@NonNull Set<Scope> set) {
        Preconditions.checkNotNull(set, new ObfuscatedString(new long[]{3296466016734346252L, 5765114309809269575L, -8138158178140625519L, -4608126528692733350L}).toString());
        Scope[] scopeArr = (Scope[]) set.toArray(new Scope[set.size()]);
        Preconditions.checkNotNull(scopeArr, new ObfuscatedString(new long[]{1583300583579332479L, 2984533346700172514L, 7312701889136559500L, -5475247159490020832L}).toString());
        String[] strArr = new String[scopeArr.length];
        for (int i = 0; i < scopeArr.length; i++) {
            strArr[i] = scopeArr[i].getScopeUri();
        }
        return strArr;
    }
}
