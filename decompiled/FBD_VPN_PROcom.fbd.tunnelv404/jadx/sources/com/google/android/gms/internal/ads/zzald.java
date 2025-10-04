package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.work.WorkInfo;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzald implements zzakr {
    private static final byte[] zza = {0, 7, 8, Ascii.SI};
    private static final byte[] zzb = {0, 119, -120, -1};
    private static final byte[] zzc = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private final Paint zzd;
    private final Paint zze;
    private final Canvas zzf;
    private final zzakw zzg;
    private final zzakv zzh;
    private final zzalc zzi;
    private Bitmap zzj;

    public zzald(List list) {
        zzfp zzfpVar = new zzfp((byte[]) list.get(0));
        int zzq = zzfpVar.zzq();
        int zzq2 = zzfpVar.zzq();
        Paint paint = new Paint();
        this.zzd = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.zze = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.zzf = new Canvas();
        this.zzg = new zzakw(719, 575, 0, 719, 0, 575);
        this.zzh = new zzakv(0, zzg(), zzh(), zzi());
        this.zzi = new zzalc(zzq, zzq2);
    }

    private static int zzb(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static zzakv zzc(zzfo zzfoVar, int i) {
        int[] iArr;
        int zzd;
        int zzd2;
        int i2;
        int i3;
        int i4 = 8;
        int zzd3 = zzfoVar.zzd(8);
        zzfoVar.zzm(8);
        int[] zzg = zzg();
        int[] zzh = zzh();
        int[] zzi = zzi();
        int i5 = i - 2;
        while (i5 > 0) {
            int zzd4 = zzfoVar.zzd(i4);
            int zzd5 = zzfoVar.zzd(i4);
            if ((zzd5 & 128) != 0) {
                iArr = zzg;
            } else if ((zzd5 & 64) != 0) {
                iArr = zzh;
            } else {
                iArr = zzi;
            }
            if ((zzd5 & 1) != 0) {
                i2 = zzfoVar.zzd(i4);
                i3 = zzfoVar.zzd(i4);
                zzd = zzfoVar.zzd(i4);
                zzd2 = zzfoVar.zzd(i4);
                i5 -= 6;
            } else {
                int zzd6 = zzfoVar.zzd(6) << 2;
                int zzd7 = zzfoVar.zzd(4) << 4;
                i5 -= 4;
                zzd = zzfoVar.zzd(4) << 4;
                zzd2 = zzfoVar.zzd(2) << 6;
                i2 = zzd6;
                i3 = zzd7;
            }
            if (i2 == 0) {
                zzd2 = 255;
            }
            if (i2 == 0) {
                zzd = 0;
            }
            if (i2 == 0) {
                i3 = 0;
            }
            int i6 = zzd + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            double d = i2;
            double d2 = i3 + WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
            double d3 = i6;
            iArr[zzd4] = zzb((byte) (255 - (zzd2 & 255)), Math.max(0, Math.min((int) ((1.402d * d2) + d), 255)), Math.max(0, Math.min((int) ((d - (0.34414d * d3)) - (d2 * 0.71414d)), 255)), Math.max(0, Math.min((int) ((d3 * 1.772d) + d), 255)));
            zzd3 = zzd3;
            i4 = 8;
        }
        return new zzakv(zzd3, zzg, zzh, zzi);
    }

    private static zzakx zzd(zzfo zzfoVar) {
        byte[] bArr;
        int zzd = zzfoVar.zzd(16);
        zzfoVar.zzm(4);
        int zzd2 = zzfoVar.zzd(2);
        boolean zzo = zzfoVar.zzo();
        zzfoVar.zzm(1);
        byte[] bArr2 = zzfy.zzf;
        if (zzd2 == 1) {
            zzfoVar.zzm(zzfoVar.zzd(8) * 16);
        } else if (zzd2 == 0) {
            int zzd3 = zzfoVar.zzd(16);
            int zzd4 = zzfoVar.zzd(16);
            if (zzd3 > 0) {
                bArr2 = new byte[zzd3];
                zzfoVar.zzh(bArr2, 0, zzd3);
            }
            if (zzd4 > 0) {
                bArr = new byte[zzd4];
                zzfoVar.zzh(bArr, 0, zzd4);
                return new zzakx(zzd, zzo, bArr2, bArr);
            }
        }
        bArr = bArr2;
        return new zzakx(zzd, zzo, bArr2, bArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0224 A[LOOP:3: B:88:0x016c->B:100:0x0224, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:101:0x021e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:105:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0119 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0148 A[LOOP:2: B:41:0x00ac->B:53:0x0148, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01eb A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void zze(byte[] bArr, int[] iArr, int i, int i2, int i3, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        int i4;
        boolean z;
        int zzd;
        int i5;
        boolean z2;
        int i6;
        byte[] bArr4;
        boolean z3;
        int i7;
        int zzd2;
        int zzd3;
        int i8;
        boolean z4;
        int zzd4;
        zzfo zzfoVar = new zzfo(bArr, bArr.length);
        int i9 = i2;
        int i10 = i3;
        byte[] bArr5 = null;
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        while (zzfoVar.zza() != 0) {
            int i11 = 8;
            int zzd5 = zzfoVar.zzd(8);
            if (zzd5 != 240) {
                int i12 = 4;
                int i13 = 2;
                switch (zzd5) {
                    case 16:
                        int i14 = 1;
                        if (i == 3) {
                            if (bArr5 == null) {
                                bArr3 = zzb;
                                bArr2 = bArr3;
                                i4 = i9;
                                z = false;
                                while (true) {
                                    zzd = zzfoVar.zzd(2);
                                    if (zzd != 0) {
                                        z2 = z;
                                    } else {
                                        if (zzfoVar.zzo()) {
                                            i5 = zzfoVar.zzd(3) + 3;
                                            zzd = zzfoVar.zzd(2);
                                            z2 = z;
                                        } else if (zzfoVar.zzo()) {
                                            z2 = z;
                                            zzd = 0;
                                        } else {
                                            int zzd6 = zzfoVar.zzd(2);
                                            if (zzd6 != 0) {
                                                if (zzd6 != i14) {
                                                    if (zzd6 != 2) {
                                                        if (zzd6 != 3) {
                                                            z2 = z;
                                                            zzd = 0;
                                                            i5 = 0;
                                                        } else {
                                                            i5 = zzfoVar.zzd(8) + 29;
                                                            zzd = zzfoVar.zzd(2);
                                                            z2 = z;
                                                        }
                                                    } else {
                                                        i5 = zzfoVar.zzd(4) + 12;
                                                        zzd = zzfoVar.zzd(2);
                                                        z2 = z;
                                                    }
                                                } else {
                                                    z2 = z;
                                                    zzd = 0;
                                                    i5 = 2;
                                                }
                                            } else {
                                                zzd = 0;
                                                i5 = 0;
                                                z2 = true;
                                            }
                                        }
                                        if (i5 == 0 && paint != null) {
                                            int i15 = i10 + 1;
                                            float f = i10;
                                            if (bArr2 != 0) {
                                                zzd = bArr2[zzd];
                                            }
                                            paint.setColor(iArr[zzd]);
                                            i6 = i4;
                                            canvas.drawRect(i4, f, i4 + i5, i15, paint);
                                        } else {
                                            i6 = i4;
                                        }
                                        i4 = i6 + i5;
                                        if (!z2) {
                                            zzfoVar.zze();
                                            i9 = i4;
                                            break;
                                        } else {
                                            z = z2;
                                            i14 = 1;
                                        }
                                    }
                                    i5 = 1;
                                    if (i5 == 0) {
                                    }
                                    i6 = i4;
                                    i4 = i6 + i5;
                                    if (!z2) {
                                    }
                                }
                            } else {
                                bArr2 = bArr5;
                                i4 = i9;
                                z = false;
                                while (true) {
                                    zzd = zzfoVar.zzd(2);
                                    if (zzd != 0) {
                                    }
                                    i5 = 1;
                                    if (i5 == 0) {
                                    }
                                    i6 = i4;
                                    i4 = i6 + i5;
                                    if (!z2) {
                                    }
                                    z = z2;
                                    i14 = 1;
                                }
                            }
                        } else {
                            if (i == 2) {
                                if (bArr7 == null) {
                                    bArr3 = zza;
                                    bArr2 = bArr3;
                                } else {
                                    bArr2 = bArr7;
                                }
                            } else {
                                bArr2 = null;
                            }
                            i4 = i9;
                            z = false;
                            while (true) {
                                zzd = zzfoVar.zzd(2);
                                if (zzd != 0) {
                                }
                                i5 = 1;
                                if (i5 == 0) {
                                }
                                i6 = i4;
                                i4 = i6 + i5;
                                if (!z2) {
                                }
                                z = z2;
                                i14 = 1;
                            }
                        }
                    case 17:
                        if (i == 3) {
                            if (bArr6 == null) {
                                bArr4 = zzc;
                            } else {
                                bArr4 = bArr6;
                            }
                        } else {
                            bArr4 = null;
                        }
                        int i16 = i9;
                        boolean z5 = false;
                        while (true) {
                            int zzd7 = zzfoVar.zzd(i12);
                            if (zzd7 != 0) {
                                z3 = z5;
                            } else if (!zzfoVar.zzo()) {
                                int zzd8 = zzfoVar.zzd(3);
                                if (zzd8 != 0) {
                                    z3 = z5;
                                    i7 = zzd8 + 2;
                                    zzd7 = 0;
                                    if (i7 == 0 && paint != null) {
                                        int i17 = i10 + 1;
                                        float f2 = i10;
                                        if (bArr4 != 0) {
                                            zzd7 = bArr4[zzd7];
                                        }
                                        paint.setColor(iArr[zzd7]);
                                        i8 = i16;
                                        canvas.drawRect(i16, f2, i16 + i7, i17, paint);
                                    } else {
                                        i8 = i16;
                                    }
                                    i16 = i8 + i7;
                                    if (!z3) {
                                        zzfoVar.zze();
                                        i9 = i16;
                                        break;
                                    } else {
                                        z5 = z3;
                                        i13 = 2;
                                        i12 = 4;
                                        i11 = 8;
                                    }
                                } else {
                                    zzd7 = 0;
                                    z3 = true;
                                    i7 = 0;
                                    if (i7 == 0) {
                                    }
                                    i8 = i16;
                                    i16 = i8 + i7;
                                    if (!z3) {
                                    }
                                }
                            } else {
                                if (!zzfoVar.zzo()) {
                                    zzd2 = zzfoVar.zzd(i13) + i12;
                                    zzd3 = zzfoVar.zzd(i12);
                                } else {
                                    int zzd9 = zzfoVar.zzd(i13);
                                    if (zzd9 != 0) {
                                        if (zzd9 != 1) {
                                            if (zzd9 != i13) {
                                                if (zzd9 != 3) {
                                                    z3 = z5;
                                                    zzd7 = 0;
                                                    i7 = 0;
                                                    if (i7 == 0) {
                                                    }
                                                    i8 = i16;
                                                    i16 = i8 + i7;
                                                    if (!z3) {
                                                    }
                                                } else {
                                                    zzd2 = zzfoVar.zzd(i11) + 25;
                                                    zzd3 = zzfoVar.zzd(i12);
                                                }
                                            } else {
                                                zzd2 = zzfoVar.zzd(i12) + 9;
                                                zzd3 = zzfoVar.zzd(i12);
                                            }
                                        } else {
                                            z3 = z5;
                                            zzd7 = 0;
                                            i7 = 2;
                                            if (i7 == 0) {
                                            }
                                            i8 = i16;
                                            i16 = i8 + i7;
                                            if (!z3) {
                                            }
                                        }
                                    } else {
                                        z3 = z5;
                                        zzd7 = 0;
                                    }
                                }
                                z3 = z5;
                                i7 = zzd2;
                                zzd7 = zzd3;
                                if (i7 == 0) {
                                }
                                i8 = i16;
                                i16 = i8 + i7;
                                if (!z3) {
                                }
                            }
                            i7 = 1;
                            if (i7 == 0) {
                            }
                            i8 = i16;
                            i16 = i8 + i7;
                            if (!z3) {
                            }
                        }
                    case 18:
                        int i18 = i9;
                        boolean z6 = false;
                        while (true) {
                            int zzd10 = zzfoVar.zzd(8);
                            if (zzd10 != 0) {
                                z4 = z6;
                                zzd4 = 1;
                            } else if (!zzfoVar.zzo()) {
                                int zzd11 = zzfoVar.zzd(7);
                                if (zzd11 != 0) {
                                    z4 = z6;
                                    zzd4 = zzd11;
                                    zzd10 = 0;
                                } else {
                                    zzd10 = 0;
                                    z4 = true;
                                    zzd4 = 0;
                                }
                            } else {
                                z4 = z6;
                                zzd4 = zzfoVar.zzd(7);
                                zzd10 = zzfoVar.zzd(8);
                            }
                            if (zzd4 != 0 && paint != null) {
                                paint.setColor(iArr[zzd10]);
                                canvas.drawRect(i18, i10, i18 + zzd4, i10 + 1, paint);
                            }
                            i18 += zzd4;
                            if (!z4) {
                                z6 = z4;
                            } else {
                                i9 = i18;
                                break;
                            }
                        }
                    default:
                        switch (zzd5) {
                            case 32:
                                bArr7 = zzf(4, 4, zzfoVar);
                                break;
                            case 33:
                                bArr5 = zzf(4, 8, zzfoVar);
                                break;
                            case 34:
                                bArr6 = zzf(16, 8, zzfoVar);
                                break;
                        }
                }
            } else {
                i10 += 2;
                i9 = i2;
            }
        }
    }

    private static byte[] zzf(int i, int i2, zzfo zzfoVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) zzfoVar.zzd(i2);
        }
        return bArr;
    }

    private static int[] zzg() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] zzh() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i6 = 1; i6 < 16; i6++) {
            int i7 = i6 & 4;
            int i8 = i6 & 2;
            int i9 = i6 & 1;
            if (i6 < 8) {
                if (1 != i9) {
                    i3 = 0;
                } else {
                    i3 = 255;
                }
                if (i8 != 0) {
                    i4 = 255;
                } else {
                    i4 = 0;
                }
                if (i7 != 0) {
                    i5 = 255;
                } else {
                    i5 = 0;
                }
                iArr[i6] = zzb(255, i3, i4, i5);
            } else {
                int i10 = 127;
                if (1 != i9) {
                    i = 0;
                } else {
                    i = 127;
                }
                if (i8 != 0) {
                    i2 = 127;
                } else {
                    i2 = 0;
                }
                if (i7 == 0) {
                    i10 = 0;
                }
                iArr[i6] = zzb(255, i, i2, i10);
            }
        }
        return iArr;
    }

    private static int[] zzi() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i19 = 0; i19 < 256; i19++) {
            int i20 = 255;
            if (i19 < 8) {
                int i21 = i19 & 2;
                int i22 = i19 & 4;
                if (1 != (i19 & 1)) {
                    i17 = 0;
                } else {
                    i17 = 255;
                }
                if (i21 != 0) {
                    i18 = 255;
                } else {
                    i18 = 0;
                }
                if (i22 == 0) {
                    i20 = 0;
                }
                iArr[i19] = zzb(63, i17, i18, i20);
            } else {
                int i23 = i19 & 136;
                int i24 = 170;
                int i25 = 85;
                if (i23 != 0) {
                    if (i23 != 8) {
                        int i26 = 43;
                        if (i23 != 128) {
                            if (i23 == 136) {
                                int i27 = i19 & 16;
                                int i28 = i19 & 32;
                                int i29 = i19 & 2;
                                int i30 = i19 & 64;
                                int i31 = i19 & 4;
                                if (1 != (i19 & 1)) {
                                    i13 = 0;
                                } else {
                                    i13 = 43;
                                }
                                if (i27 != 0) {
                                    i14 = 85;
                                } else {
                                    i14 = 0;
                                }
                                if (i29 != 0) {
                                    i15 = 43;
                                } else {
                                    i15 = 0;
                                }
                                if (i28 != 0) {
                                    i16 = 85;
                                } else {
                                    i16 = 0;
                                }
                                if (i31 == 0) {
                                    i26 = 0;
                                }
                                if (i30 == 0) {
                                    i25 = 0;
                                }
                                iArr[i19] = zzb(255, i13 + i14, i15 + i16, i26 + i25);
                            }
                        } else {
                            int i32 = i19 & 16;
                            int i33 = i19 & 32;
                            int i34 = i19 & 2;
                            int i35 = i19 & 64;
                            int i36 = i19 & 4;
                            if (1 != (i19 & 1)) {
                                i9 = 0;
                            } else {
                                i9 = 43;
                            }
                            int i37 = i9 + 127;
                            if (i32 != 0) {
                                i10 = 85;
                            } else {
                                i10 = 0;
                            }
                            if (i34 != 0) {
                                i11 = 43;
                            } else {
                                i11 = 0;
                            }
                            int i38 = i11 + 127;
                            if (i33 != 0) {
                                i12 = 85;
                            } else {
                                i12 = 0;
                            }
                            if (i36 == 0) {
                                i26 = 0;
                            }
                            int i39 = i26 + 127;
                            if (i35 == 0) {
                                i25 = 0;
                            }
                            iArr[i19] = zzb(255, i37 + i10, i38 + i12, i39 + i25);
                        }
                    } else {
                        int i40 = i19 & 16;
                        int i41 = i19 & 32;
                        int i42 = i19 & 2;
                        int i43 = i19 & 64;
                        int i44 = i19 & 4;
                        if (1 != (i19 & 1)) {
                            i5 = 0;
                        } else {
                            i5 = 85;
                        }
                        if (i40 != 0) {
                            i6 = 170;
                        } else {
                            i6 = 0;
                        }
                        if (i42 != 0) {
                            i7 = 85;
                        } else {
                            i7 = 0;
                        }
                        if (i41 != 0) {
                            i8 = 170;
                        } else {
                            i8 = 0;
                        }
                        if (i44 == 0) {
                            i25 = 0;
                        }
                        if (i43 == 0) {
                            i24 = 0;
                        }
                        int i45 = i5 + i6;
                        iArr[i19] = zzb(127, i45, i7 + i8, i25 + i24);
                    }
                } else {
                    int i46 = i19 & 16;
                    int i47 = i19 & 32;
                    int i48 = i19 & 2;
                    int i49 = i19 & 64;
                    int i50 = i19 & 4;
                    if (1 != (i19 & 1)) {
                        i = 0;
                    } else {
                        i = 85;
                    }
                    if (i46 != 0) {
                        i2 = 170;
                    } else {
                        i2 = 0;
                    }
                    if (i48 != 0) {
                        i3 = 85;
                    } else {
                        i3 = 0;
                    }
                    if (i47 != 0) {
                        i4 = 170;
                    } else {
                        i4 = 0;
                    }
                    if (i50 == 0) {
                        i25 = 0;
                    }
                    if (i49 == 0) {
                        i24 = 0;
                    }
                    int i51 = i + i2;
                    iArr[i19] = zzb(255, i51, i3 + i4, i25 + i24);
                }
            }
        }
        return iArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x021b, code lost:
    
        r6.zzn(r12 - r6.zzb());
        r2 = 8;
     */
    @Override // com.google.android.gms.internal.ads.zzakr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(byte[] bArr, int i, int i2, zzakq zzakqVar, zzep zzepVar) {
        zzakj zzakjVar;
        int i3;
        SparseArray sparseArray;
        int i4;
        SparseArray sparseArray2;
        int i5;
        int[] iArr;
        zzala zzalaVar;
        int zzd;
        int i6;
        int zzd2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = 8;
        zzfo zzfoVar = new zzfo(bArr, i + i2);
        zzfoVar.zzk(i);
        while (zzfoVar.zza() >= 48 && zzfoVar.zzd(i11) == 15) {
            zzalc zzalcVar = this.zzi;
            int zzd3 = zzfoVar.zzd(i11);
            int i12 = 16;
            int zzd4 = zzfoVar.zzd(16);
            int zzd5 = zzfoVar.zzd(16);
            int zzb2 = zzfoVar.zzb() + zzd5;
            if (zzd5 * 8 > zzfoVar.zza()) {
                zzff.zzf(new ObfuscatedString(new long[]{-1256753640006243675L, -3442533307345162340L, 8026223005493334233L}).toString(), new ObfuscatedString(new long[]{4980007255110725245L, -1778265869759552074L, -6193514068806730450L, -1268361005837419625L, -7795920044127332181L}).toString());
                zzfoVar.zzm(zzfoVar.zza());
            } else {
                switch (zzd3) {
                    case 16:
                        if (zzd4 == zzalcVar.zza) {
                            zzaky zzakyVar = zzalcVar.zzi;
                            int zzd6 = zzfoVar.zzd(i11);
                            int zzd7 = zzfoVar.zzd(4);
                            int zzd8 = zzfoVar.zzd(2);
                            zzfoVar.zzm(2);
                            int i13 = zzd5 - 2;
                            SparseArray sparseArray3 = new SparseArray();
                            while (i13 > 0) {
                                int zzd9 = zzfoVar.zzd(i11);
                                zzfoVar.zzm(i11);
                                sparseArray3.put(zzd9, new zzakz(zzfoVar.zzd(i12), zzfoVar.zzd(i12)));
                                i13 -= 6;
                                i11 = 8;
                                i12 = 16;
                            }
                            zzaky zzakyVar2 = new zzaky(zzd6, zzd7, zzd8, sparseArray3);
                            if (zzakyVar2.zzb == 0) {
                                if (zzakyVar != null) {
                                    if (zzakyVar.zza != zzakyVar2.zza) {
                                        zzalcVar.zzi = zzakyVar2;
                                        break;
                                    }
                                }
                            } else {
                                zzalcVar.zzi = zzakyVar2;
                                zzalcVar.zzc.clear();
                                zzalcVar.zzd.clear();
                                zzalcVar.zze.clear();
                                break;
                            }
                        }
                        break;
                    case 17:
                        zzaky zzakyVar3 = zzalcVar.zzi;
                        if (zzd4 == zzalcVar.zza && zzakyVar3 != null) {
                            int zzd10 = zzfoVar.zzd(i11);
                            zzfoVar.zzm(4);
                            boolean zzo = zzfoVar.zzo();
                            zzfoVar.zzm(3);
                            int zzd11 = zzfoVar.zzd(16);
                            int zzd12 = zzfoVar.zzd(16);
                            int zzd13 = zzfoVar.zzd(3);
                            int zzd14 = zzfoVar.zzd(3);
                            zzfoVar.zzm(2);
                            int zzd15 = zzfoVar.zzd(i11);
                            int zzd16 = zzfoVar.zzd(i11);
                            int zzd17 = zzfoVar.zzd(4);
                            int zzd18 = zzfoVar.zzd(2);
                            zzfoVar.zzm(2);
                            int i14 = zzd5 - 10;
                            SparseArray sparseArray4 = new SparseArray();
                            while (i14 > 0) {
                                int zzd19 = zzfoVar.zzd(16);
                                int zzd20 = zzfoVar.zzd(2);
                                int zzd21 = zzfoVar.zzd(2);
                                int zzd22 = zzfoVar.zzd(12);
                                zzfoVar.zzm(4);
                                int zzd23 = zzfoVar.zzd(12);
                                int i15 = i14 - 6;
                                if (zzd20 != 1) {
                                    if (zzd20 == 2) {
                                        zzd20 = 2;
                                    } else {
                                        i14 = i15;
                                        i6 = zzd20;
                                        zzd = 0;
                                        zzd2 = 0;
                                        sparseArray4.put(zzd19, new zzalb(i6, zzd21, zzd22, zzd23, zzd, zzd2));
                                    }
                                }
                                i14 -= 8;
                                zzd = zzfoVar.zzd(i11);
                                i6 = zzd20;
                                zzd2 = zzfoVar.zzd(i11);
                                sparseArray4.put(zzd19, new zzalb(i6, zzd21, zzd22, zzd23, zzd, zzd2));
                            }
                            zzala zzalaVar2 = new zzala(zzd10, zzo, zzd11, zzd12, zzd13, zzd14, zzd15, zzd16, zzd17, zzd18, sparseArray4);
                            if (zzakyVar3.zzb == 0 && (zzalaVar = (zzala) zzalcVar.zzc.get(zzalaVar2.zza)) != null) {
                                int i16 = 0;
                                while (true) {
                                    SparseArray sparseArray5 = zzalaVar.zzj;
                                    if (i16 < sparseArray5.size()) {
                                        zzalaVar2.zzj.put(sparseArray5.keyAt(i16), (zzalb) sparseArray5.valueAt(i16));
                                        i16++;
                                    }
                                }
                            }
                            zzalcVar.zzc.put(zzalaVar2.zza, zzalaVar2);
                            break;
                        }
                        break;
                    case 18:
                        if (zzd4 != zzalcVar.zza) {
                            if (zzd4 == zzalcVar.zzb) {
                                zzakv zzc2 = zzc(zzfoVar, zzd5);
                                zzalcVar.zzf.put(zzc2.zza, zzc2);
                                break;
                            }
                        } else {
                            zzakv zzc3 = zzc(zzfoVar, zzd5);
                            zzalcVar.zzd.put(zzc3.zza, zzc3);
                            break;
                        }
                        break;
                    case 19:
                        if (zzd4 != zzalcVar.zza) {
                            if (zzd4 == zzalcVar.zzb) {
                                zzakx zzd24 = zzd(zzfoVar);
                                zzalcVar.zzg.put(zzd24.zza, zzd24);
                                break;
                            }
                        } else {
                            zzakx zzd25 = zzd(zzfoVar);
                            zzalcVar.zze.put(zzd25.zza, zzd25);
                            break;
                        }
                        break;
                    case 20:
                        if (zzd4 == zzalcVar.zza) {
                            zzfoVar.zzm(4);
                            boolean zzo2 = zzfoVar.zzo();
                            zzfoVar.zzm(3);
                            int zzd26 = zzfoVar.zzd(16);
                            int zzd27 = zzfoVar.zzd(16);
                            if (zzo2) {
                                int zzd28 = zzfoVar.zzd(16);
                                i7 = zzfoVar.zzd(16);
                                i10 = zzfoVar.zzd(16);
                                i9 = zzd28;
                                i8 = zzfoVar.zzd(16);
                            } else {
                                i7 = zzd26;
                                i8 = zzd27;
                                i9 = 0;
                                i10 = 0;
                            }
                            zzalcVar.zzh = new zzakw(zzd26, zzd27, i9, i7, i10, i8);
                            break;
                        }
                        break;
                }
            }
        }
        zzalc zzalcVar2 = this.zzi;
        zzaky zzakyVar4 = zzalcVar2.zzi;
        if (zzakyVar4 == null) {
            zzakjVar = new zzakj(zzgaa.zzl(), -9223372036854775807L, -9223372036854775807L);
        } else {
            zzakw zzakwVar = zzalcVar2.zzh;
            if (zzakwVar == null) {
                zzakwVar = this.zzg;
            }
            Bitmap bitmap = this.zzj;
            if (bitmap == null || zzakwVar.zza + 1 != bitmap.getWidth() || zzakwVar.zzb + 1 != this.zzj.getHeight()) {
                Bitmap createBitmap = Bitmap.createBitmap(zzakwVar.zza + 1, zzakwVar.zzb + 1, Bitmap.Config.ARGB_8888);
                this.zzj = createBitmap;
                this.zzf.setBitmap(createBitmap);
            }
            ArrayList arrayList = new ArrayList();
            SparseArray sparseArray6 = zzakyVar4.zzc;
            int i17 = 0;
            while (i17 < sparseArray6.size()) {
                this.zzf.save();
                zzakz zzakzVar = (zzakz) sparseArray6.valueAt(i17);
                zzala zzalaVar3 = (zzala) this.zzi.zzc.get(sparseArray6.keyAt(i17));
                int i18 = zzakzVar.zza + zzakwVar.zzc;
                int i19 = zzakzVar.zzb + zzakwVar.zze;
                this.zzf.clipRect(i18, i19, Math.min(zzalaVar3.zzc + i18, zzakwVar.zzd), Math.min(zzalaVar3.zzd + i19, zzakwVar.zzf));
                zzakv zzakvVar = (zzakv) this.zzi.zzd.get(zzalaVar3.zzf);
                if (zzakvVar == null) {
                    zzakvVar = (zzakv) this.zzi.zzf.get(zzalaVar3.zzf);
                    if (zzakvVar == null) {
                        zzakvVar = this.zzh;
                    }
                }
                SparseArray sparseArray7 = zzalaVar3.zzj;
                int i20 = 0;
                while (i20 < sparseArray7.size()) {
                    int keyAt = sparseArray7.keyAt(i20);
                    zzalb zzalbVar = (zzalb) sparseArray7.valueAt(i20);
                    zzakx zzakxVar = (zzakx) this.zzi.zze.get(keyAt);
                    if (zzakxVar == null) {
                        zzakxVar = (zzakx) this.zzi.zzg.get(keyAt);
                    }
                    if (zzakxVar != null) {
                        Paint paint = zzakxVar.zzb ? null : this.zzd;
                        int i21 = zzalaVar3.zze;
                        int i22 = zzalbVar.zza + i18;
                        int i23 = zzalbVar.zzb + i19;
                        sparseArray = sparseArray6;
                        Canvas canvas = this.zzf;
                        sparseArray2 = sparseArray7;
                        if (i21 == 3) {
                            iArr = zzakvVar.zzd;
                        } else if (i21 == 2) {
                            iArr = zzakvVar.zzc;
                        } else {
                            iArr = zzakvVar.zzb;
                        }
                        i4 = i17;
                        int[] iArr2 = iArr;
                        Paint paint2 = paint;
                        zze(zzakxVar.zzc, iArr2, i21, i22, i23, paint2, canvas);
                        i5 = 1;
                        zze(zzakxVar.zzd, iArr2, i21, i22, i23 + 1, paint2, canvas);
                    } else {
                        sparseArray = sparseArray6;
                        i4 = i17;
                        sparseArray2 = sparseArray7;
                        i5 = 1;
                    }
                    i20 += i5;
                    sparseArray6 = sparseArray;
                    sparseArray7 = sparseArray2;
                    i17 = i4;
                }
                SparseArray sparseArray8 = sparseArray6;
                int i24 = i17;
                float f = i19;
                float f2 = i18;
                if (zzalaVar3.zzb) {
                    int i25 = zzalaVar3.zze;
                    if (i25 == 3) {
                        i3 = zzakvVar.zzd[zzalaVar3.zzg];
                    } else if (i25 == 2) {
                        i3 = zzakvVar.zzc[zzalaVar3.zzh];
                    } else {
                        i3 = zzakvVar.zzb[zzalaVar3.zzi];
                    }
                    this.zze.setColor(i3);
                    this.zzf.drawRect(f2, f, zzalaVar3.zzc + i18, zzalaVar3.zzd + i19, this.zze);
                }
                zzea zzeaVar = new zzea();
                zzeaVar.zzc(Bitmap.createBitmap(this.zzj, i18, i19, zzalaVar3.zzc, zzalaVar3.zzd));
                zzeaVar.zzh(f2 / zzakwVar.zza);
                zzeaVar.zzi(0);
                zzeaVar.zze(f / zzakwVar.zzb, 0);
                zzeaVar.zzf(0);
                zzeaVar.zzk(zzalaVar3.zzc / zzakwVar.zza);
                zzeaVar.zzd(zzalaVar3.zzd / zzakwVar.zzb);
                arrayList.add(zzeaVar.zzp());
                this.zzf.drawColor(0, PorterDuff.Mode.CLEAR);
                this.zzf.restore();
                i17 = i24 + 1;
                sparseArray6 = sparseArray8;
            }
            zzakjVar = new zzakj(arrayList, -9223372036854775807L, -9223372036854775807L);
        }
        zzepVar.zza(zzakjVar);
    }
}
