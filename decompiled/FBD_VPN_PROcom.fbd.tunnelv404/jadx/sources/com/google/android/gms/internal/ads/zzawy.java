package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawy extends zzaxx {
    public zzawy(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{7441045911121818939L, -3146730563745849846L, 8575175629445584640L, -953314077555551270L, 127278580493057436L, 4520117159228226470L, 3712412275746397128L, 880788477284426443L, 587880745937010171L}).toString(), new ObfuscatedString(new long[]{5852444300474200447L, -296915371140785087L, -5113610484411124852L, -7075112372651630196L, -6457195882202972988L, -4161597362147743037L, 5410402817906283569L}).toString(), zzasgVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        this.zze.zzm(-1L);
        this.zze.zzl(-1L);
        int[] iArr = (int[]) this.zzf.invoke(null, this.zzb.zzb());
        synchronized (this.zze) {
            try {
                this.zze.zzm(iArr[0]);
                this.zze.zzl(iArr[1]);
                int i = iArr[2];
                if (i != Integer.MIN_VALUE) {
                    this.zze.zzk(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
