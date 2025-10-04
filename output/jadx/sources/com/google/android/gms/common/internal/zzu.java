package com.google.android.gms.common.internal;

import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzu {
    private static final Uri zza;
    private static final Uri zzb;

    static {
        Uri parse = Uri.parse(new ObfuscatedString(new long[]{2566306809121058442L, -6178699450018170253L, 7229408032543881546L, -5249265324688629116L}).toString());
        zza = parse;
        zzb = parse.buildUpon().appendPath(new ObfuscatedString(new long[]{-2775842194909478170L, 5512880565910949424L}).toString()).appendPath(new ObfuscatedString(new long[]{7216856647617393146L, -8522609243697333167L}).toString()).build();
    }
}
