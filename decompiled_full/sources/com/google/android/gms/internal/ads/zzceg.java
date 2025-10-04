package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzceg {
    public static Context zza(Context context) {
        return zzc(context).getModuleContext();
    }

    public static Object zzb(Context context, String str, zzcee zzceeVar) {
        try {
            return zzceeVar.zza(zzc(context).instantiate(str));
        } catch (Exception e) {
            throw new zzcef(e);
        }
    }

    private static DynamiteModule zzc(Context context) {
        try {
            return DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, new ObfuscatedString(new long[]{5294103770657838204L, 6420849106841162259L, 531476134754075173L, 238465756490769898L, 5848648406940839515L, 5355775584105219978L}).toString());
        } catch (Exception e) {
            throw new zzcef(e);
        }
    }
}
