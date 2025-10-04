package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzfxk extends zzfxp {
    final /* synthetic */ zzfxl zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfxk(zzfxl zzfxlVar, zzfxr zzfxrVar, CharSequence charSequence) {
        super(zzfxrVar, charSequence);
        this.zza = zzfxlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfxp
    public final int zzc(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzfxp
    public final int zzd(int i) {
        CharSequence charSequence = ((zzfxp) this).zzb;
        int length = charSequence.length();
        zzfxe.zzb(i, length, new ObfuscatedString(new long[]{9044617178930957132L, -1673912803807289146L}).toString());
        while (i < length) {
            zzfxl zzfxlVar = this.zza;
            if (!zzfxlVar.zza.zzb(charSequence.charAt(i))) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }
}
