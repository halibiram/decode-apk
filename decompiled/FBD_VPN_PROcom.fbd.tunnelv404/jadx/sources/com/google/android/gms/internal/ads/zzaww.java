package com.google.android.gms.internal.ads;

import android.content.Context;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzaww extends zzaxx {
    private static final zzaxy zzi = new zzaxy();
    private final Context zzj;

    public zzaww(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, Context context) {
        super(zzawjVar, new ObfuscatedString(new long[]{-5818701782668147967L, -4311950804433523002L, 6646426976081913714L, -5954854484484244363L, -500589769216445397L, -1531109946112253441L, 5566619524618189779L, -2265463330734740476L, 4659395602665404709L}).toString(), new ObfuscatedString(new long[]{4219012851783563991L, 1722091222935579015L, 3994318693212789594L, -7253868391548663488L, 7631607358102505222L, 2459106381042239297L, 5147129113206206343L}).toString(), zzasgVar, i, 29);
        this.zzj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        this.zze.zzn(new ObfuscatedString(new long[]{8921200727154776627L, 8768320441107405947L}).toString());
        AtomicReference zza = zzi.zza(this.zzj.getPackageName());
        if (zza.get() == null) {
            synchronized (zza) {
                try {
                    if (zza.get() == null) {
                        zza.set((String) this.zzf.invoke(null, this.zzj));
                    }
                } finally {
                }
            }
        }
        String str = (String) zza.get();
        synchronized (this.zze) {
            this.zze.zzn(zzatt.zza(str.getBytes(), true));
        }
    }
}
