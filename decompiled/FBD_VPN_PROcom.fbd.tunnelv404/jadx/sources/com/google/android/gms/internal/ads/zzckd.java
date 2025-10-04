package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzckd implements zzbng {
    final /* synthetic */ zzckf zza;

    public zzckd(zzckf zzckfVar) {
        this.zza = zzckfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get(new ObfuscatedString(new long[]{-1126158445413641389L, -3471806655228423040L}).toString());
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.zza) {
                        try {
                            zzckf zzckfVar = this.zza;
                            i = zzckfVar.zzH;
                            if (i != parseInt) {
                                zzckfVar.zzH = parseInt;
                                this.zza.requestLayout();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    zzcec.zzk(new ObfuscatedString(new long[]{-6672331042190166895L, -283057152321823928L, -819268702900398215L, -2436503502226694385L, -2066218427017824639L, 2355275737685082460L, 5919365321790844344L, 8248516658762875619L}).toString(), e);
                }
            }
        }
    }
}
