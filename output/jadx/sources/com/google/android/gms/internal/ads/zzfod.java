package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzfod {
    public static zzfod zza(zzfoe zzfoeVar, zzfof zzfofVar) {
        if (zzfob.zzb()) {
            return new zzfoh(zzfoeVar, zzfofVar);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-1967869019106531046L, 5936889186683457952L, -27456512454576034L, 7004343630031438329L, 6463734967886085284L, 7879406462727855836L}).toString());
    }

    public abstract void zzb(View view, zzfok zzfokVar, @Nullable String str);

    public abstract void zzc();

    public abstract void zzd(View view);

    public abstract void zze();
}
