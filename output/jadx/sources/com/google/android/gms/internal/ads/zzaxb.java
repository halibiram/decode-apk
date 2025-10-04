package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class zzaxb extends zzaxx {
    public zzaxb(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-5428452502715580748L, -4942774786647058588L, 1715338197263361492L, 4337205625407604884L, -2053567166647255630L, 3034250947225771242L, 9113595938689091430L, 9083351518329724814L, 4651626763822768018L}).toString(), new ObfuscatedString(new long[]{-7608831375091882266L, -8212986707211191078L, 4747150745008668211L, 1759831264987621900L, -6884184386686647577L, -9074275467953592060L, 6123863028024760947L}).toString(), zzasgVar, i, 24);
    }

    private final void zzc() {
        AdvertisingIdClient zzh = this.zzb.zzh();
        if (zzh != null) {
            try {
                AdvertisingIdClient.Info info = zzh.getInfo();
                String id = info.getId();
                int i = zzawm.zza;
                if (id != null && id.matches(new ObfuscatedString(new long[]{-1004834682243249352L, -3122829235445987696L, -6211452941852268259L, -633547866438911440L, -3922472211371084156L, -4367983044308390411L, -3952646356956705242L, -5700101491313652002L}).toString())) {
                    UUID fromString = UUID.fromString(id);
                    byte[] bArr = new byte[16];
                    ByteBuffer wrap = ByteBuffer.wrap(bArr);
                    wrap.putLong(fromString.getMostSignificantBits());
                    wrap.putLong(fromString.getLeastSignificantBits());
                    id = zzatt.zza(bArr, true);
                }
                if (id != null) {
                    synchronized (this.zze) {
                        this.zze.zzs(id);
                        this.zze.zzr(info.isLimitAdTrackingEnabled());
                        this.zze.zzab(6);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxx, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        zzm();
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (!this.zzb.zzq()) {
            synchronized (this.zze) {
                this.zze.zzs((String) this.zzf.invoke(null, this.zzb.zzb()));
            }
            return;
        }
        zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final Void zzm() {
        if (this.zzb.zzr()) {
            super.zzm();
            return null;
        }
        if (this.zzb.zzq()) {
            zzc();
        }
        return null;
    }
}
