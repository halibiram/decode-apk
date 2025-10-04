package com.google.android.gms.internal.ads;

import androidx.work.WorkInfo;
import com.panda912.muddy.ObfuscatedString;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class zzdx extends zzdu {
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8 A[ADDED_TO_REGION, LOOP:6: B:42:0x00e8->B:43:0x00ea, LOOP_START, PHI: r0
      0x00e8: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:13:0x003d, B:43:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzdt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        int i3 = this.zzb.zzd;
        if (i3 != 3) {
            if (i3 != 4) {
                if (i3 != 21) {
                    if (i3 != 22) {
                        if (i3 != 268435456) {
                            if (i3 != 1342177280) {
                                if (i3 != 1610612736) {
                                    throw new IllegalStateException();
                                }
                            }
                        }
                        ByteBuffer zzj = zzj(i2);
                        i = this.zzb.zzd;
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 21) {
                                    if (i != 22) {
                                        if (i != 268435456) {
                                            if (i != 1342177280) {
                                                if (i == 1610612736) {
                                                    while (position < limit) {
                                                        zzj.put(byteBuffer.get(position + 1));
                                                        zzj.put(byteBuffer.get(position));
                                                        position += 4;
                                                    }
                                                } else {
                                                    throw new IllegalStateException();
                                                }
                                            } else {
                                                while (position < limit) {
                                                    zzj.put(byteBuffer.get(position + 1));
                                                    zzj.put(byteBuffer.get(position));
                                                    position += 3;
                                                }
                                            }
                                        } else {
                                            while (position < limit) {
                                                zzj.put(byteBuffer.get(position + 1));
                                                zzj.put(byteBuffer.get(position));
                                                position += 2;
                                            }
                                        }
                                    } else {
                                        while (position < limit) {
                                            zzj.put(byteBuffer.get(position + 2));
                                            zzj.put(byteBuffer.get(position + 3));
                                            position += 4;
                                        }
                                    }
                                } else {
                                    while (position < limit) {
                                        zzj.put(byteBuffer.get(position + 1));
                                        zzj.put(byteBuffer.get(position + 2));
                                        position += 3;
                                    }
                                }
                            } else {
                                while (position < limit) {
                                    short max = (short) (Math.max(-1.0f, Math.min(byteBuffer.getFloat(position), 1.0f)) * 32767.0f);
                                    zzj.put((byte) (max & 255));
                                    zzj.put((byte) ((max >> 8) & 255));
                                    position += 4;
                                }
                            }
                        } else {
                            while (position < limit) {
                                zzj.put((byte) 0);
                                zzj.put((byte) ((byteBuffer.get(position) & 255) + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT));
                                position++;
                            }
                        }
                        byteBuffer.position(byteBuffer.limit());
                        zzj.flip();
                    }
                }
                i2 /= 3;
            }
            i2 /= 2;
            ByteBuffer zzj2 = zzj(i2);
            i = this.zzb.zzd;
            if (i != 3) {
            }
            byteBuffer.position(byteBuffer.limit());
            zzj2.flip();
        }
        i2 += i2;
        ByteBuffer zzj22 = zzj(i2);
        i = this.zzb.zzd;
        if (i != 3) {
        }
        byteBuffer.position(byteBuffer.limit());
        zzj22.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzdu
    public final zzdr zzi(zzdr zzdrVar) {
        int i = zzdrVar.zzd;
        if (i != 3) {
            if (i != 2) {
                if (i != 268435456 && i != 21 && i != 1342177280 && i != 22 && i != 1610612736 && i != 4) {
                    throw new zzds(new ObfuscatedString(new long[]{-2155706394711664201L, 773801139680246574L, 5449366044758184031L, 7548205501868218709L}).toString(), zzdrVar);
                }
            } else {
                return zzdr.zza;
            }
        }
        return new zzdr(zzdrVar.zzb, zzdrVar.zzc, 2);
    }
}
