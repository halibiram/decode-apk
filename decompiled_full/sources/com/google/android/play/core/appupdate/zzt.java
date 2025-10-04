package com.google.android.play.core.appupdate;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzt {
    private final Context zza;

    public zzt(Context context) {
        this.zza = context;
    }

    private static long zzb(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        long j = 0;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                j += zzb(file2);
            }
        }
        return j;
    }

    public final long zza() {
        return zzb(new File(this.zza.getFilesDir(), new ObfuscatedString(new long[]{7536862344494298283L, 741746682642206377L, 679936189624748069L}).toString()));
    }
}
