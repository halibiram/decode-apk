package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class zzst extends zzif {

    @Nullable
    public final zzsv zza;

    @Nullable
    public final String zzb;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzst(Throwable th, @Nullable zzsv zzsvVar) {
        super(new ObfuscatedString(new long[]{-6317121157490944604L, 1663145035957500637L, -8754420524374394110L}).toString().concat(String.valueOf(r1)), th);
        String str;
        if (zzsvVar == null) {
            str = null;
        } else {
            str = zzsvVar.zza;
        }
        this.zza = zzsvVar;
        int i = zzfy.zza;
        this.zzb = th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null;
    }
}
