package com.google.android.gms.internal.common;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzt extends zzw {
    final /* synthetic */ zzu zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzt(zzu zzuVar, zzx zzxVar, CharSequence charSequence) {
        super(zzxVar, charSequence);
        this.zza = zzuVar;
    }

    @Override // com.google.android.gms.internal.common.zzw
    public final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.common.zzw
    public final int zzd(int i) {
        CharSequence charSequence = ((zzw) this).zzb;
        int length = charSequence.length();
        zzs.zzb(i, length, new ObfuscatedString(new long[]{-2053035994351794686L, -2710249410047106059L}).toString());
        while (i < length) {
            zzu zzuVar = this.zza;
            if (!zzuVar.zza.zza(charSequence.charAt(i))) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }
}
