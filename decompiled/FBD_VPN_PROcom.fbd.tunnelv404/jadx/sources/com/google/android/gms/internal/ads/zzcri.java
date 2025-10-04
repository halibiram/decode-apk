package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzcri implements zzcqv {
    @Override // com.google.android.gms.internal.ads.zzcqv
    public final void zza(Map map) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjU)).booleanValue() && !map.isEmpty()) {
            String str = (String) map.get(new ObfuscatedString(new long[]{4561038241159722556L, 7441751035489361615L, -6971925209159370017L, 2204151857208082339L, -3707782500919045351L, 2004815535267049865L}).toString());
            if (!TextUtils.isEmpty(str)) {
                com.google.android.gms.ads.internal.zzt.zzo().zzi().zzI(Boolean.parseBoolean(str));
            }
        }
    }
}
