package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzgpl extends RuntimeException {
    public zzgpl(String str) {
        super(str);
    }

    public static Object zza(zzgpk zzgpkVar) {
        try {
            return zzgpkVar.zza();
        } catch (Exception e) {
            throw new zzgpl(e);
        }
    }

    public zzgpl(String str, Throwable th) {
        super(str, th);
    }

    public zzgpl(Throwable th) {
        super(th);
    }
}
