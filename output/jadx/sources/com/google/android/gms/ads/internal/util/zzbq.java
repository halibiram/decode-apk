package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzapi;
import com.google.android.gms.internal.ads.zzaqd;
import com.google.android.gms.internal.ads.zzarg;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzceb;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzceu;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzbq {
    private static zzaqd zzb;
    private static final Object zzc = new Object();

    @Deprecated
    public static final zzbl zza = new zzbi();

    public zzbq(Context context) {
        zzaqd zza2;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (zzc) {
            try {
                if (zzb == null) {
                    zzbgc.zza(context);
                    if (!ClientLibraryUtils.isPackageSide()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzer)).booleanValue()) {
                            zza2 = zzaz.zzb(context);
                            zzb = zza2;
                        }
                    }
                    zza2 = zzarg.zza(context, null);
                    zzb = zza2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zza(String str) {
        zzceu zzceuVar = new zzceu();
        zzb.zza(new zzbp(str, null, zzceuVar));
        return zzceuVar;
    }

    public final ListenableFuture zzb(int i, String str, @Nullable Map map, @Nullable byte[] bArr) {
        zzbn zzbnVar = new zzbn(null);
        zzbj zzbjVar = new zzbj(this, str, zzbnVar);
        zzceb zzcebVar = new zzceb(null);
        zzbk zzbkVar = new zzbk(this, i, str, zzbnVar, zzbjVar, bArr, map, zzcebVar);
        if (zzceb.zzk()) {
            try {
                zzcebVar.zzd(str, new ObfuscatedString(new long[]{-7133838121890371183L, 3353236491813813192L}).toString(), zzbkVar.zzl(), zzbkVar.zzx());
            } catch (zzapi e) {
                zzcec.zzj(e.getMessage());
            }
        }
        zzb.zza(zzbkVar);
        return zzbnVar;
    }
}
