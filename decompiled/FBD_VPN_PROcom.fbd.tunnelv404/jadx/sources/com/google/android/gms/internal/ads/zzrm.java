package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzrm extends zzdu {
    private static final int zzd = Float.floatToIntBits(Float.NaN);

    private static void zzo(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        if (floatToIntBits == zzd) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.zzdt
    public final void zze(ByteBuffer byteBuffer) {
        ByteBuffer zzj;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.zzb.zzd;
        if (i2 != 21) {
            if (i2 != 22) {
                if (i2 != 1342177280) {
                    if (i2 == 1610612736) {
                        zzj = zzj(i);
                        while (position < limit) {
                            int i3 = byteBuffer.get(position + 3) & 255;
                            int i4 = (byteBuffer.get(position + 2) & 255) << 8;
                            zzo(i3 | i4 | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), zzj);
                            position += 4;
                        }
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    zzj = zzj((i / 3) * 4);
                    while (position < limit) {
                        zzo(((byteBuffer.get(position + 2) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), zzj);
                        position += 3;
                    }
                }
            } else {
                zzj = zzj(i);
                while (position < limit) {
                    int i5 = byteBuffer.get(position) & 255;
                    int i6 = (byteBuffer.get(position + 1) & 255) << 8;
                    zzo(i5 | i6 | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), zzj);
                    position += 4;
                }
            }
        } else {
            zzj = zzj((i / 3) * 4);
            while (position < limit) {
                zzo(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), zzj);
                position += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final zzdr zzi(zzdr zzdrVar) {
        int i = zzdrVar.zzd;
        int i2 = zzfy.zza;
        if (i != 21 && i != 1342177280 && i != 22 && i != 1610612736) {
            if (i == 4) {
                return zzdr.zza;
            }
            throw new zzds(new ObfuscatedString(new long[]{-3157848306478485708L, -3997705898741273913L, 7093594021985344512L, 1201857332393749976L}).toString(), zzdrVar);
        }
        return new zzdr(zzdrVar.zzb, zzdrVar.zzc, 4);
    }
}
