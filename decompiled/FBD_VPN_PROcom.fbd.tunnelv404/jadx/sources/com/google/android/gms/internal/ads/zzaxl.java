package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaxl extends zzaxx {
    public zzaxl(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{3053728997652797701L, -7280519831756703689L, 8670491158881176681L, 7567877712025928866L, -3334940018510425357L, -2013418410692048036L, 5298393562685996466L, -1565626670039359982L, 8903566584734585599L}).toString(), new ObfuscatedString(new long[]{-4916738091093827383L, -1630585542965020477L, 4577121643379958974L, -5738788648754995371L, -8256898507951793256L, -9143857014318985034L, 7680624203804251191L}).toString(), zzasgVar, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcA);
        bool.booleanValue();
        zzavp zzavpVar = new zzavp((String) this.zzf.invoke(null, this.zzb.zzb(), bool));
        synchronized (this.zze) {
            this.zze.zzj(zzavpVar.zza);
            this.zze.zzC(zzavpVar.zzb);
        }
    }
}
