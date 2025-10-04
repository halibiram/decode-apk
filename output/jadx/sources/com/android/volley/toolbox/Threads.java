package com.android.volley.toolbox;

import android.os.Looper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
final class Threads {
    private Threads() {
    }

    public static void throwIfNotOnMainThread() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{6731194817725028682L, -294313332151503225L, -1171127994608310678L, -2122722470443718148L, 5996617478718176686L, 4556551248840924815L}).toString());
        }
    }
}
