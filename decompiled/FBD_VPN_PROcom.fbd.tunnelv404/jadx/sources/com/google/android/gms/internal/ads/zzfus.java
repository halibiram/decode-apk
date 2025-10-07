package com.google.android.gms.internal.ads;

import android.os.IBinder;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfus extends zzfvm {
    private IBinder zza;
    private String zzb;
    private int zzc;
    private float zzd;
    private int zze;
    private String zzf;
    private byte zzg;

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zza(String str) {
        this.zzf = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzb(String str) {
        this.zzb = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzc(int i) {
        this.zzg = (byte) (this.zzg | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzd(int i) {
        this.zzc = i;
        this.zzg = (byte) (this.zzg | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zze(float f) {
        this.zzd = f;
        this.zzg = (byte) (this.zzg | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzf(boolean z) {
        this.zzg = (byte) (this.zzg | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzg(IBinder iBinder) {
        if (iBinder != null) {
            this.zza = iBinder;
            return this;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{3022702221242958585L, -6829923950389822794L, 186471594966717574L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvm zzh(int i) {
        this.zze = i;
        this.zzg = (byte) (this.zzg | Ascii.DLE);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvm
    public final zzfvn zzi() {
        IBinder iBinder;
        if (this.zzg == 31 && (iBinder = this.zza) != null) {
            return new zzfuu(iBinder, false, this.zzb, this.zzc, this.zzd, 0, null, this.zze, null, this.zzf, null, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(new ObfuscatedString(new long[]{4215150582721990616L, 4902135218964686816L, -7104343284373883086L}).toString());
        }
        if ((this.zzg & 1) == 0) {
            sb.append(new ObfuscatedString(new long[]{3217110288270589783L, -4511292653524034188L, -1510107810376446685L, 1589347960096837180L}).toString());
        }
        if ((this.zzg & 2) == 0) {
            sb.append(new ObfuscatedString(new long[]{8163845999843534228L, -7080997260181050035L, -3478012670504731198L}).toString());
        }
        if ((this.zzg & 4) == 0) {
            sb.append(new ObfuscatedString(new long[]{9203900670963958222L, 5483030873334081388L, -3138017452737456101L, -7559493714212864833L}).toString());
        }
        if ((this.zzg & 8) == 0) {
            sb.append(new ObfuscatedString(new long[]{-937227355021400213L, -5442808256098968431L, -3180500991409998236L}).toString());
        }
        if ((this.zzg & Ascii.DLE) == 0) {
            sb.append(new ObfuscatedString(new long[]{-1243346361513318977L, -7582944072426036345L, 2058509195388899996L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2049753684611637612L, -8168956347945317805L, -5961750617291384182L, -7750516194830363606L, 3462677906625767720L}).toString().concat(sb.toString()));
    }
}
