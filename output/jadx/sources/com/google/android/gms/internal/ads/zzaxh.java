package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxh extends zzaxx {
    private final zzawb zzi;

    public zzaxh(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, zzawb zzawbVar) {
        super(zzawjVar, new ObfuscatedString(new long[]{-8093168040197039691L, -3677296557694674037L, 6657889157379652536L, 297415375146007442L, 4271719022270997474L, -1841411329794892227L, -2971342833474891156L, -5845014824816010531L, -674013311146466758L}).toString(), new ObfuscatedString(new long[]{347964885560434778L, 4035085873950628026L, 5087480652181692236L, 8866940491143647478L, 5287068370651927726L, -6407344407304978433L, -3526394809723982119L}).toString(), zzasgVar, i, 94);
        this.zzi = zzawbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        int intValue = ((Integer) this.zzf.invoke(null, this.zzi.zza())).intValue();
        synchronized (this.zze) {
            this.zze.zzae(zzasu.zza(intValue));
        }
    }
}
