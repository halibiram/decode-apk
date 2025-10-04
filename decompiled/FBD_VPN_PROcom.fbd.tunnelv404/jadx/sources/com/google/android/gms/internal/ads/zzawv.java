package com.google.android.gms.internal.ads;

import android.provider.Settings;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes2.dex */
public final class zzawv extends zzaxx {
    public zzawv(zzawj zzawjVar, String str, String str2, zzasg zzasgVar, int i, int i2) {
        super(zzawjVar, new ObfuscatedString(new long[]{-6349011196181154184L, 2258806038821642100L, 365560272093866777L, -6630344263072546401L, 4879118724484820608L, -5861433015305704723L, -4824043298819660238L, 6715429496637097444L, 2991816039934612153L}).toString(), new ObfuscatedString(new long[]{1650144537048726354L, 4306144081531922007L, 340465020789000670L, 3925455971116924830L, 507639144350962592L, -9132833143083940669L, 6341917345064917930L}).toString(), zzasgVar, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzaxx
    public final void zza() {
        int i = 1;
        this.zze.zzaa(3);
        try {
            boolean booleanValue = ((Boolean) this.zzf.invoke(null, this.zzb.zzb())).booleanValue();
            zzasg zzasgVar = this.zze;
            if (true == booleanValue) {
                i = 2;
            }
            zzasgVar.zzaa(i);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Settings.SettingNotFoundException) {
            } else {
                throw e;
            }
        }
    }
}
