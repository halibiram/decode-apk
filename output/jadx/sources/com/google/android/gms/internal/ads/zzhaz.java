package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzhaz {
    public static final boolean zza(Object obj) {
        if (!((zzhay) obj).zze()) {
            return true;
        }
        return false;
    }

    public static final Object zzb(Object obj, Object obj2) {
        zzhay zzhayVar = (zzhay) obj;
        zzhay zzhayVar2 = (zzhay) obj2;
        if (!zzhayVar2.isEmpty()) {
            if (!zzhayVar.zze()) {
                zzhayVar = zzhayVar.zzb();
            }
            zzhayVar.zzd(zzhayVar2);
        }
        return zzhayVar;
    }
}
