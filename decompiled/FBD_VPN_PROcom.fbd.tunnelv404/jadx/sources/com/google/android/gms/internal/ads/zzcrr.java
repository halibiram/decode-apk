package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzcrr implements zzcqv {
    private final CookieManager zza;

    public zzcrr(Context context) {
        this.zza = com.google.android.gms.ads.internal.zzt.zzq().zza(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        if (this.zza != null) {
            if (((String) map.get(new ObfuscatedString(new long[]{-5961648130934634451L, 4980767423223387596L}).toString())) != null) {
                String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaN);
                String cookie = this.zza.getCookie(str);
                if (cookie != null) {
                    List zzf = zzfxr.zzc(zzfwp.zzc(';')).zzf(cookie);
                    for (int i = 0; i < zzf.size(); i++) {
                        CookieManager cookieManager = this.zza;
                        Iterator it = zzfxr.zzc(zzfwp.zzc('=')).zzd((String) zzf.get(i)).iterator();
                        it.getClass();
                        if (it.hasNext()) {
                            cookieManager.setCookie(str, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzax))));
                        } else {
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-4738325546034877524L, 7923912252043721337L, 5159752572816337746L, -1999267407012279405L, 184353172592711653L, -1635702826399863490L, -4969036982729903030L, -3398950359446177247L, 6505819728063291207L, -2467758820231661685L}).toString());
                            sb.append(0);
                            throw new IndexOutOfBoundsException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5334401316708248526L, -5887575098612941293L}), sb));
                        }
                    }
                    return;
                }
                return;
            }
            String str2 = (String) map.get(new ObfuscatedString(new long[]{-1910767058479152767L, 8889553693837336606L}).toString());
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            this.zza.setCookie((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaN), str2);
        }
    }
}
