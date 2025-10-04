package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzpx extends Exception {
    public final int zza;
    public final boolean zzb;
    public final zzam zzc;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzpx(int i, int i2, int i3, int i4, zzam zzamVar, boolean z, @Nullable Exception exc) {
        super(r1.toString(), exc);
        String obfuscatedString;
        String valueOf = String.valueOf(zzamVar);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-2964900783758607982L, -404743236112543324L, 52800195961492714L, 3205262777742406774L}).toString());
        sb.append(i);
        sb.append(new ObfuscatedString(new long[]{4994350039949497899L, -3528638519325561099L}).toString());
        sb.append(i2);
        sb.append(new ObfuscatedString(new long[]{4785910665619193623L, -6248934664758830727L}).toString());
        sb.append(i3);
        sb.append(new ObfuscatedString(new long[]{-3714650166840079587L, 5338992786543606860L}).toString());
        sb.append(i4);
        sb.append(new ObfuscatedString(new long[]{-3735129184973472066L, -7993820899993855904L}).toString());
        sb.append(valueOf);
        if (true != z) {
            obfuscatedString = new ObfuscatedString(new long[]{-73725244503760497L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-3024402598712129457L, -7561208512137449200L, 4841901387788671874L}).toString();
        }
        sb.append(obfuscatedString);
        this.zza = i;
        this.zzb = z;
        this.zzc = zzamVar;
    }
}
