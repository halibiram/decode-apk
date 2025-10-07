package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxt extends zzaxx {
    public zzaxt(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-6414988627013171888L, -5467896337935927596L, -407795958095129235L, -5342934352005871568L, 9095477185031943417L, 7605570550986554780L, 5467115182878843080L, 4313481297301365321L, 4290236704516446551L}).toString(), new ObfuscatedString(new long[]{-4294916239686360489L, -8431264399392594779L, -7550433240016752L, -1627671034634218697L, -6248486962976024519L, -7544072690497279238L, -1795850535754933926L}).toString(), zzasgVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        this.zze.zzag(3);
        boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzb())).booleanValue();
        synchronized (this.zze) {
            try {
                if (booleanValue) {
                    this.zze.zzag(2);
                } else {
                    this.zze.zzag(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
