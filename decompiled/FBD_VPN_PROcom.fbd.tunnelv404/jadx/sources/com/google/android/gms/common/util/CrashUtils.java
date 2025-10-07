package com.google.android.gms.common.util;

import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class CrashUtils {
    private static final String[] zza = {new ObfuscatedString(new long[]{-1196763021058007024L, -5315771903471646189L}).toString(), new ObfuscatedString(new long[]{8510758464563049942L, -1341586213083821465L, -2014206370391665758L}).toString(), new ObfuscatedString(new long[]{8076584483815200923L, 2588673640865926531L}).toString(), new ObfuscatedString(new long[]{6418822987034074996L, -4900065655675561288L}).toString(), new ObfuscatedString(new long[]{-4286218009117154438L, 3136423952892886579L}).toString()};

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static boolean addDynamiteErrorToDropBox(@NonNull Context context, @NonNull Throwable th) {
        try {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(th);
            return false;
        } catch (Exception unused) {
            new ObfuscatedString(new long[]{7389603553320323319L, -3492449704907248527L, 7757942709393999578L}).toString();
            new ObfuscatedString(new long[]{1760922600375972581L, 2424290396179284697L, -4460923554723360031L, 3480329119411493556L, -3865818846449955656L, -5329683910556242436L}).toString();
            return false;
        }
    }
}
