package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzqg extends zzdu {

    @Nullable
    private int[] zzd;

    @Nullable
    private int[] zze;

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zze(ByteBuffer byteBuffer) {
        int[] iArr = this.zze;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer zzj = zzj(((limit - position) / this.zzb.zze) * this.zzc.zze);
        while (position < limit) {
            for (int i : iArr) {
                zzj.putShort(byteBuffer.getShort(i + i + position));
            }
            position += this.zzb.zze;
        }
        byteBuffer.position(limit);
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final zzdr zzi(zzdr zzdrVar) {
        boolean z;
        boolean z2;
        int[] iArr = this.zzd;
        if (iArr == null) {
            return zzdr.zza;
        }
        if (zzdrVar.zzd == 2) {
            if (zzdrVar.zzc != iArr.length) {
                z = true;
            } else {
                z = false;
            }
            int i = 0;
            while (true) {
                int length = iArr.length;
                if (i < length) {
                    int i2 = iArr[i];
                    if (i2 < zzdrVar.zzc) {
                        if (i2 != i) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        z |= z2;
                        i++;
                    } else {
                        throw new zzds(new ObfuscatedString(new long[]{-6273881478268763887L, 7894180249875464689L, -8821266331578524895L, -3155763304664278951L}).toString(), zzdrVar);
                    }
                } else {
                    if (z) {
                        return new zzdr(zzdrVar.zzb, length, 2);
                    }
                    return zzdr.zza;
                }
            }
        } else {
            throw new zzds(new ObfuscatedString(new long[]{896918433734217085L, -7587676173898494019L, -5278821446880585947L, -5646091371657416899L}).toString(), zzdrVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zzk() {
        this.zze = this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final void zzm() {
        this.zze = null;
        this.zzd = null;
    }

    public final void zzo(@Nullable int[] iArr) {
        this.zzd = iArr;
    }
}
