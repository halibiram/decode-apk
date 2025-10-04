package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzawt extends zzaxx {
    private final Activity zzi;
    private final View zzj;

    public zzawt(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2, View view, Activity activity) {
        super(zzawjVar, new ObfuscatedString(new long[]{4508816944731845111L, 8023244679752442076L, 7896625481062944159L, -7927958935122348446L, -6932261863654773095L, 4026621652572473930L, -3566063512403280449L, -705684770042996749L, -5503023287075675988L}).toString(), new ObfuscatedString(new long[]{4234868987875268880L, 8795349389695962926L, -4448916411594108557L, 4307534723563876580L, 1200954741683266767L, -2939032760907444997L, -1752878002742391105L}).toString(), zzasgVar, i, 62);
        this.zzj = view;
        this.zzi = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        if (this.zzj == null) {
            return;
        }
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcu);
        boolean booleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.zzf.invoke(null, this.zzj, this.zzi, bool);
        synchronized (this.zze) {
            try {
                this.zze.zzc(((Long) objArr[0]).longValue());
                this.zze.zze(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.zze.zzd((String) objArr[2]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
