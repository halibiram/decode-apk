package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbyk;
import com.google.android.gms.internal.ads.zzcbs;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes2.dex */
public final class zzb {
    private final Context zza;
    private boolean zzb;

    @Nullable
    private final zzcbs zzc;
    private final zzbyk zzd = new zzbyk(false, Collections.emptyList());

    public zzb(Context context, @Nullable zzcbs zzcbsVar, @Nullable zzbyk zzbykVar) {
        this.zza = context;
        this.zzc = zzcbsVar;
    }

    private final boolean zzd() {
        zzcbs zzcbsVar = this.zzc;
        return (zzcbsVar != null && zzcbsVar.zza().zzf) || this.zzd.zza;
    }

    public final void zza() {
        this.zzb = true;
    }

    public final void zzb(@Nullable String str) {
        List<String> list;
        if (zzd()) {
            if (str == null) {
                str = new ObfuscatedString(new long[]{-4065333032220749127L}).toString();
            }
            zzcbs zzcbsVar = this.zzc;
            if (zzcbsVar != null) {
                zzcbsVar.zzd(str, null, 3);
                return;
            }
            zzbyk zzbykVar = this.zzd;
            if (zzbykVar.zza && (list = zzbykVar.zzb) != null) {
                for (String str2 : list) {
                    if (!TextUtils.isEmpty(str2)) {
                        String replace = str2.replace(new ObfuscatedString(new long[]{2482327817127632469L, 3059352270951749568L, 2724955309719662986L}).toString(), Uri.encode(str));
                        Context context = this.zza;
                        zzt.zzp();
                        com.google.android.gms.ads.internal.util.zzt.zzK(context, new ObfuscatedString(new long[]{-9112231549979093769L}).toString(), replace);
                    }
                }
            }
        }
    }

    public final boolean zzc() {
        return !zzd() || this.zzb;
    }
}
