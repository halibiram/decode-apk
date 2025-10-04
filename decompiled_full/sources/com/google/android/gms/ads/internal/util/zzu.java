package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbbp;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcjk;
import com.google.android.gms.internal.ads.zzcjs;
import com.google.android.gms.internal.ads.zzckp;
import com.google.android.gms.internal.ads.zzehs;
import com.panda912.muddy.ObfuscatedString;
import java.io.InputStream;
import java.util.Map;

@TargetApi(21)
/* loaded from: classes2.dex */
public class zzu extends zzab {
    public zzu() {
        super(null);
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    @Nullable
    public final CookieManager zza(Context context) {
        com.google.android.gms.ads.internal.zzt.zzp();
        if (zzt.zzE()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            zzcec.zzh(new ObfuscatedString(new long[]{1525968439087446210L, -279362356129619416L, -7300726610245119282L, -6452261041375520634L, -3558548236222871250L}).toString(), th);
            com.google.android.gms.ads.internal.zzt.zzo().zzv(th, new ObfuscatedString(new long[]{2997688239565862910L, 5777403445677952692L, 1634570121554196065L, 2332231895210087696L, 7733192890602117980L}).toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final WebResourceResponse zzb(String str, String str2, int i, String str3, Map map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i, str3, map, inputStream);
    }

    @Override // com.google.android.gms.ads.internal.util.zzab
    public final zzcjs zzc(zzcjk zzcjkVar, zzbbp zzbbpVar, boolean z, @Nullable zzehs zzehsVar) {
        return new zzckp(zzcjkVar, zzbbpVar, z, zzehsVar);
    }
}
