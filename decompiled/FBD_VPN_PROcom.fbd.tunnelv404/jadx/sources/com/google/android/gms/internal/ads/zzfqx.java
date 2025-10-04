package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
final class zzfqx extends zzfqt {
    private final String zza;
    private final boolean zzb;
    private final boolean zzc;

    public /* synthetic */ zzfqx(String str, boolean z, boolean z2, zzfqw zzfqwVar) {
        this.zza = str;
        this.zzb = z;
        this.zzc = z2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfqt) {
            zzfqt zzfqtVar = (zzfqt) obj;
            if (this.zza.equals(zzfqtVar.zzb()) && this.zzb == zzfqtVar.zzd() && this.zzc == zzfqtVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zza.hashCode() ^ 1000003;
        int i2 = 1231;
        if (true != this.zzb) {
            i = 1237;
        } else {
            i = 1231;
        }
        int i3 = ((hashCode * 1000003) ^ i) * 1000003;
        if (true != this.zzc) {
            i2 = 1237;
        }
        return i3 ^ i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1918570567037724009L, -6686887327233266255L, -958712421010839622L, 4181297196170487270L, -3541586750005361283L}).toString());
        sb.append(this.zza);
        sb.append(new ObfuscatedString(new long[]{-8517578860309189595L, -4344605408602579764L, -7252742874414058695L, 2571688683477168387L, 1937670617871221331L}).toString());
        sb.append(this.zzb);
        sb.append(new ObfuscatedString(new long[]{-8834628349059140601L, -8242544919057151120L, 8431220619758812150L, 8906013611793100836L, -9100024310702132745L}).toString());
        sb.append(this.zzc);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6103128516297402192L, -4953964504199465152L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfqt
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfqt
    public final boolean zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzfqt
    public final boolean zzd() {
        return this.zzb;
    }
}
