package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Key;
import javax.crypto.Mac;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgxl extends ThreadLocal {
    final /* synthetic */ zzgxm zza;

    public zzgxl(zzgxm zzgxmVar) {
        this.zza = zzgxmVar;
    }

    @Override // java.lang.ThreadLocal
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final Mac initialValue() {
        String str;
        Key key;
        try {
            zzgwz zzgwzVar = zzgwz.zzb;
            str = this.zza.zzb;
            Mac mac = (Mac) zzgwzVar.zza(str);
            key = this.zza.zzc;
            mac.init(key);
            return mac;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
