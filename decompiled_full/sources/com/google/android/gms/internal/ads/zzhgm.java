package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class zzhgm extends zzhgk implements zzarm {
    private int zza;

    public zzhgm(String str) {
        super(new ObfuscatedString(new long[]{-7055723693325283453L, 4712497924072639274L}).toString());
    }

    public final int zzh() {
        if (!this.zzc) {
            zzg();
        }
        return this.zza;
    }

    public final long zzi(ByteBuffer byteBuffer) {
        this.zza = zzarl.zzc(byteBuffer.get());
        zzarl.zzd(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
