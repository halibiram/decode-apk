package com.google.android.gms.internal.ads;

import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfpu {
    public static String zza(View view) {
        if (view.isAttachedToWindow()) {
            int visibility = view.getVisibility();
            if (visibility == 8) {
                return new ObfuscatedString(new long[]{7283723942878622456L, -6071118408170170019L}).toString();
            }
            if (visibility == 4) {
                return new ObfuscatedString(new long[]{2216890478667594500L, 6670746533641304363L, -4703080224910290139L}).toString();
            }
            if (visibility != 0) {
                return new ObfuscatedString(new long[]{4633904899719535451L, 2860713623544349460L, -3719036692057427624L}).toString();
            }
            if (view.getAlpha() == 0.0f) {
                return new ObfuscatedString(new long[]{5948087687874165832L, -8132237777304937421L, -3357296991749746491L}).toString();
            }
            return null;
        }
        return new ObfuscatedString(new long[]{-860581554054715842L, 4193159121074599017L, -6521607101324712433L}).toString();
    }
}
