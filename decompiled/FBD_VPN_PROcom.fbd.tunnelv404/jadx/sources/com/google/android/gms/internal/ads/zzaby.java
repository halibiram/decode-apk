package com.google.android.gms.internal.ads;

import app.tunnel.logger.utils.TrafficData;
import com.google.common.primitives.SignedBytes;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes2.dex */
public final class zzaby {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {2002, TrafficData.INTERVAL_TIME, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, HttpStatusCodesKt.HTTP_BAD_REQUEST, HttpStatusCodesKt.HTTP_BAD_REQUEST, 2048};

    /* JADX WARN: Code restructure failed: missing block: B:42:0x0095, code lost:
    
        if (r12 != 11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x009d, code lost:
    
        if (r12 != 11) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a2, code lost:
    
        if (r12 != 8) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static zzabx zza(zzfo zzfoVar) {
        int i;
        int i2;
        int i3;
        int i4;
        int zzd;
        int zzd2 = zzfoVar.zzd(16);
        int zzd3 = zzfoVar.zzd(16);
        if (zzd3 == 65535) {
            zzd3 = zzfoVar.zzd(24);
            i = 7;
        } else {
            i = 4;
        }
        int i5 = zzd3 + i;
        if (zzd2 == 44097) {
            i5 += 2;
        }
        int i6 = i5;
        int zzd4 = zzfoVar.zzd(2);
        if (zzd4 == 3) {
            int i7 = 0;
            while (true) {
                zzd = zzfoVar.zzd(2) + i7;
                if (!zzfoVar.zzo()) {
                    break;
                }
                i7 = (zzd + 1) << 2;
            }
            i2 = zzd + 3;
        } else {
            i2 = zzd4;
        }
        int zzd5 = zzfoVar.zzd(10);
        if (zzfoVar.zzo() && zzfoVar.zzd(3) > 0) {
            zzfoVar.zzm(2);
        }
        if (true != zzfoVar.zzo()) {
            i3 = 44100;
        } else {
            i3 = 48000;
        }
        int zzd6 = zzfoVar.zzd(4);
        if (i3 == 44100 && zzd6 == 13) {
            i4 = zzb[13];
        } else if (i3 == 48000 && zzd6 < 14) {
            int i8 = zzb[zzd6];
            int i9 = zzd5 % 5;
            if (i9 != 1) {
                if (i9 != 2) {
                    if (i9 != 3) {
                        if (i9 == 4) {
                            if (zzd6 != 3) {
                                if (zzd6 != 8) {
                                }
                            }
                            i8++;
                        }
                        i4 = i8;
                    }
                } else {
                    if (zzd6 != 8) {
                    }
                    i8++;
                    i4 = i8;
                }
            }
            if (zzd6 != 3) {
            }
            i8++;
            i4 = i8;
        } else {
            i4 = 0;
        }
        return new zzabx(i2, 2, i3, i6, i4, null);
    }

    public static void zzb(int i, zzfp zzfpVar) {
        zzfpVar.zzH(7);
        byte[] zzM = zzfpVar.zzM();
        zzM[0] = -84;
        zzM[1] = SignedBytes.MAX_POWER_OF_TWO;
        zzM[2] = -1;
        zzM[3] = -1;
        zzM[4] = (byte) ((i >> 16) & 255);
        zzM[5] = (byte) ((i >> 8) & 255);
        zzM[6] = (byte) (i & 255);
    }
}
