package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import androidx.annotation.Nullable;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzexf implements zzexq {
    private final zzgey zza;
    private final Context zzb;
    private final zzcei zzc;

    @Nullable
    private final String zzd;

    public zzexf(zzgey zzgeyVar, Context context, zzcei zzceiVar, @Nullable String str) {
        this.zza = zzgeyVar;
        this.zzb = context;
        this.zzc = zzceiVar;
        this.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzexe
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzexf.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzexg zzc() {
        int i;
        boolean isCallerInstantApp = Wrappers.packageManager(this.zzb).isCallerInstantApp();
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zzD = com.google.android.gms.ads.internal.util.zzt.zzD(this.zzb);
        String str = this.zzc.zza;
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zzE = com.google.android.gms.ads.internal.util.zzt.zzE();
        com.google.android.gms.ads.internal.zzt.zzp();
        ApplicationInfo applicationInfo = this.zzb.getApplicationInfo();
        if (applicationInfo == null) {
            i = 0;
        } else {
            i = applicationInfo.targetSdkVersion;
        }
        Context context = this.zzb;
        return new zzexg(isCallerInstantApp, zzD, str, zzE, i, DynamiteModule.getRemoteVersion(context, new ObfuscatedString(new long[]{1139592801711458519L, -6106285128662080073L, 187838893844177373L, -4610780333554261066L, -45781999500348702L, 7896775357820243018L}).toString()), DynamiteModule.getLocalVersion(context, new ObfuscatedString(new long[]{-1183793928534073498L, 6162796909141360029L, -3114256034802113802L, -125742987614711850L, 4285342422380415605L, 2820682726829137716L}).toString()), this.zzd);
    }
}
