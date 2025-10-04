package com.google.android.gms.internal.ads;

import android.system.ErrnoException;
import android.system.OsConstants;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@RequiresApi(21)
/* loaded from: classes2.dex */
final class zzhk {
    /* JADX INFO: Access modifiers changed from: private */
    @DoNotInline
    public static boolean zzb(@Nullable Throwable th) {
        if ((th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES) {
            return true;
        }
        return false;
    }
}
