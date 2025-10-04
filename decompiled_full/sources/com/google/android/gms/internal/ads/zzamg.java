package com.google.android.gms.internal.ads;

import android.text.Layout;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzamg {
    public CharSequence zzc;
    public long zza = 0;
    public long zzb = 0;
    public int zzd = 2;
    public float zze = -3.4028235E38f;
    public int zzf = 1;
    public int zzg = 0;
    public float zzh = -3.4028235E38f;
    public int zzi = Integer.MIN_VALUE;
    public float zzj = 1.0f;
    public int zzk = Integer.MIN_VALUE;

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0090, code lost:
    
        if (r4 == 0) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzea zza() {
        Layout.Alignment alignment;
        float f;
        CharSequence charSequence;
        float f2 = this.zzh;
        float f3 = -3.4028235E38f;
        if (f2 == -3.4028235E38f) {
            int i = this.zzd;
            if (i != 4) {
                if (i != 5) {
                    f2 = 0.5f;
                } else {
                    f2 = 1.0f;
                }
            } else {
                f2 = 0.0f;
            }
        }
        int i2 = this.zzi;
        if (i2 == Integer.MIN_VALUE) {
            int i3 = this.zzd;
            if (i3 != 1) {
                if (i3 != 3) {
                    if (i3 != 4) {
                        if (i3 != 5) {
                            i2 = 1;
                        }
                    }
                }
                i2 = 2;
            }
            i2 = 0;
        }
        zzea zzeaVar = new zzea();
        int i4 = this.zzd;
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        if (i4 != 5) {
                            zzff.zzf(new ObfuscatedString(new long[]{4987385256522221955L, 5834233134406864325L, -5593991426141027580L}).toString(), AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6208751508037365647L, -443652699140269661L, 7082783414105268076L, 5587436202457488632L}), new StringBuilder(), i4));
                            alignment = null;
                        }
                    }
                }
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else {
                alignment = Layout.Alignment.ALIGN_CENTER;
            }
            zzeaVar.zzm(alignment);
            f = this.zze;
            int i5 = this.zzf;
            if (f != -3.4028235E38f || i5 != 0 || (f >= 0.0f && f <= 1.0f)) {
                if (f == -3.4028235E38f) {
                    f3 = f;
                }
                zzeaVar.zze(f3, i5);
                zzeaVar.zzf(this.zzg);
                zzeaVar.zzh(f2);
                zzeaVar.zzi(i2);
                float f4 = this.zzj;
                if (i2 != 0) {
                    if (i2 != 1) {
                        if (i2 != 2) {
                            throw new IllegalStateException(String.valueOf(i2));
                        }
                    } else if (f2 <= 0.5f) {
                        f2 += f2;
                    } else {
                        float f5 = 1.0f - f2;
                        f2 = f5 + f5;
                    }
                } else {
                    f2 = 1.0f - f2;
                }
                zzeaVar.zzk(Math.min(f4, f2));
                zzeaVar.zzo(this.zzk);
                charSequence = this.zzc;
                if (charSequence != null) {
                    zzeaVar.zzl(charSequence);
                }
                return zzeaVar;
            }
            f3 = 1.0f;
            zzeaVar.zze(f3, i5);
            zzeaVar.zzf(this.zzg);
            zzeaVar.zzh(f2);
            zzeaVar.zzi(i2);
            float f42 = this.zzj;
            if (i2 != 0) {
            }
            zzeaVar.zzk(Math.min(f42, f2));
            zzeaVar.zzo(this.zzk);
            charSequence = this.zzc;
            if (charSequence != null) {
            }
            return zzeaVar;
        }
        alignment = Layout.Alignment.ALIGN_NORMAL;
        zzeaVar.zzm(alignment);
        f = this.zze;
        int i52 = this.zzf;
        if (f != -3.4028235E38f) {
        }
        if (f == -3.4028235E38f) {
        }
        zzeaVar.zze(f3, i52);
        zzeaVar.zzf(this.zzg);
        zzeaVar.zzh(f2);
        zzeaVar.zzi(i2);
        float f422 = this.zzj;
        if (i2 != 0) {
        }
        zzeaVar.zzk(Math.min(f422, f2));
        zzeaVar.zzo(this.zzk);
        charSequence = this.zzc;
        if (charSequence != null) {
        }
        return zzeaVar;
    }
}
