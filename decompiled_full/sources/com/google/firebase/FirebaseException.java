package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class FirebaseException extends Exception {
    @Deprecated
    public FirebaseException() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str) {
        super(str);
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{1251867081275861593L, 5623724850698067751L, 2583432614564395182L, -5305671221254414959L, -2830083246959804079L}).toString());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseException(@NonNull String str, @NonNull Throwable th) {
        super(str, th);
        Preconditions.checkNotEmpty(str, new ObfuscatedString(new long[]{6971637420615386885L, -7801609307396963390L, -4701239431808498764L, 6082536415525298621L, -9001216041698999783L}).toString());
    }
}
