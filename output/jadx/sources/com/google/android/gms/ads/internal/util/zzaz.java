package com.google.android.gms.ads.internal.util;

import android.content.Context;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzaqa;
import com.google.android.gms.internal.ads.zzaqd;
import com.google.android.gms.internal.ads.zzaqo;
import com.google.android.gms.internal.ads.zzaqp;
import com.google.android.gms.internal.ads.zzaqw;
import com.google.android.gms.internal.ads.zzara;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbpc;
import com.google.android.gms.internal.ads.zzcdv;
import com.panda912.muddy.ObfuscatedString;
import java.io.File;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzaz extends zzaqp {
    private final Context zzc;

    private zzaz(Context context, zzaqo zzaqoVar) {
        super(zzaqoVar);
        this.zzc = context;
    }

    public static zzaqd zzb(Context context) {
        zzaqd zzaqdVar = new zzaqd(new zzaqw(new File(context.getCacheDir(), new ObfuscatedString(new long[]{-3982600821988469293L, -7208224106716678665L, -2546243041433057523L}).toString()), 20971520), new zzaz(context, new zzara()), 4);
        zzaqdVar.zzd();
        return zzaqdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqp, com.google.android.gms.internal.ads.zzapt
    public final zzapw zza(zzaqa zzaqaVar) {
        if (zzaqaVar.zza() == 0) {
            if (Pattern.matches((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzes), zzaqaVar.zzk())) {
                Context context = this.zzc;
                com.google.android.gms.ads.internal.client.zzay.zzb();
                if (zzcdv.zzs(context, 13400000)) {
                    zzapw zza = new zzbpc(this.zzc).zza(zzaqaVar);
                    if (zza != null) {
                        zze.zza(new ObfuscatedString(new long[]{8755140855922946743L, -1448006029258111358L, -5406311819478647299L, -3088689949663349925L, 357134536878183274L}).toString().concat(String.valueOf(zzaqaVar.zzk())));
                        return zza;
                    }
                    zze.zza(new ObfuscatedString(new long[]{7153151988459445588L, 5807619807756838204L, 80486268606772855L, -1261705156497217289L, 5396332896764228478L, 1909128426119026536L}).toString().concat(String.valueOf(zzaqaVar.zzk())));
                }
            }
        }
        return super.zza(zzaqaVar);
    }
}
