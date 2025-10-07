package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzajn {
    public final boolean zza;

    @Nullable
    public final String zzb;
    public final zzadz zzc;
    public final int zzd;

    @Nullable
    public final byte[] zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r7.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-1941386786862944110L, 2056916562866077163L}).toString()) != false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzajn(boolean z, @Nullable String str, int i, byte[] bArr, int i2, int i3, @Nullable byte[] bArr2) {
        boolean z2;
        boolean z3;
        int i4 = 2;
        char c = 0;
        if (i == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (bArr2 == null) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzek.zzd(z2 ^ z3);
        this.zza = z;
        this.zzb = str;
        this.zzd = i;
        this.zze = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    if (str.equals(new ObfuscatedString(new long[]{2845842906449613513L, -1761486522628478163L}).toString())) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 3046671:
                    if (str.equals(new ObfuscatedString(new long[]{-6534958054591580301L, -4589307760083100464L}).toString())) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 3049879:
                    break;
                case 3049895:
                    if (str.equals(new ObfuscatedString(new long[]{6322705574381135701L, -5217855447896688715L}).toString())) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            if (c != 0 && c != 1) {
                if (c != 2 && c != 3) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-2680626227973980742L, -8342811150510810205L, 1059628366909047194L, -1725376970708213481L, -3842319933388142424L, 7236729245368181823L}).toString());
                    sb.append(str);
                    zzff.zzf(new ObfuscatedString(new long[]{1580619288630918291L, -496734027866559881L, -645541252071005787L, 328580251728328598L}).toString(), AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8281733839614223724L, -2588248973861784256L, -7104316951669061474L, 3330979359095341682L, -7644918599952600420L}), sb));
                }
                this.zzc = new zzadz(i4, bArr, i2, i3);
            }
        }
        i4 = 1;
        this.zzc = new zzadz(i4, bArr, i2, i3);
    }
}
