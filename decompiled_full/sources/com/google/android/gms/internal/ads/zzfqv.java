package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfqv extends zzfqs {
    private String zza;
    private boolean zzb;
    private boolean zzc;
    private byte zzd;

    @Override // com.google.android.gms.internal.ads.zzfqs
    public final zzfqs zza(String str) {
        if (str != null) {
            this.zza = str;
            return this;
        }
        throw new NullPointerException(new ObfuscatedString(new long[]{6923015488381021164L, 508363634535048602L, -4125756561504417770L, 8139319704248835456L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfqs
    public final zzfqs zzb(boolean z) {
        this.zzc = true;
        this.zzd = (byte) (this.zzd | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfqs
    public final zzfqs zzc(boolean z) {
        this.zzb = z;
        this.zzd = (byte) (this.zzd | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfqs
    public final zzfqt zzd() {
        String str;
        if (this.zzd == 3 && (str = this.zza) != null) {
            return new zzfqx(str, this.zzb, this.zzc, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(new ObfuscatedString(new long[]{4334315174515474981L, 8550784136990419033L, 512313506054831679L}).toString());
        }
        if ((this.zzd & 1) == 0) {
            sb.append(new ObfuscatedString(new long[]{-5546994134324691999L, 2454996647453489205L, 1047357732395936734L, 5201668141002727046L}).toString());
        }
        if ((this.zzd & 2) == 0) {
            sb.append(new ObfuscatedString(new long[]{-7445688328237374735L, 8530033040502600831L, 4499620502250013611L, 6741370993798573897L, -3229659234550563310L}).toString());
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{1497076857543109993L, 1985557644114999195L, 2206394859183561918L, 3168536054792916608L, 1163169850190735717L}).toString().concat(sb.toString()));
    }
}
