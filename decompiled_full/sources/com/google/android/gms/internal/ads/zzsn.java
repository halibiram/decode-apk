package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class zzsn extends zzih {
    private long zzg;
    private int zzh;
    private int zzi;

    public zzsn() {
        super(2, 0);
        this.zzi = 32;
    }

    @Override // com.google.android.gms.internal.ads.zzih, com.google.android.gms.internal.ads.zzib
    public final void zzb() {
        super.zzb();
        this.zzh = 0;
    }

    public final int zzl() {
        return this.zzh;
    }

    public final long zzm() {
        return this.zzg;
    }

    public final void zzn(@IntRange(from = 1) int i) {
        this.zzi = i;
    }

    public final boolean zzo(zzih zzihVar) {
        ByteBuffer byteBuffer;
        zzek.zzd(!zzihVar.zzd(1073741824));
        zzek.zzd(!zzihVar.zzd(268435456));
        zzek.zzd(!zzihVar.zzd(4));
        if (zzp()) {
            if (this.zzh < this.zzi) {
                ByteBuffer byteBuffer2 = zzihVar.zzc;
                if (byteBuffer2 != null && (byteBuffer = this.zzc) != null) {
                    if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        }
        int i = this.zzh;
        this.zzh = i + 1;
        if (i == 0) {
            this.zze = zzihVar.zze;
            if (zzihVar.zzd(1)) {
                zzc(1);
            }
        }
        ByteBuffer byteBuffer3 = zzihVar.zzc;
        if (byteBuffer3 != null) {
            zzi(byteBuffer3.remaining());
            this.zzc.put(byteBuffer3);
        }
        this.zzg = zzihVar.zze;
        return true;
    }

    public final boolean zzp() {
        return this.zzh > 0;
    }
}
