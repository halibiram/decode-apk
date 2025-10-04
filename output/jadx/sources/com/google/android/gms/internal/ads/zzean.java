package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzean implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzean(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzflm zzflmVar = (zzflm) this.zza.zzb();
        final CookieManager zza = com.google.android.gms.ads.internal.zzt.zzq().zza((Context) this.zzb.zzb());
        zzfld zzi = zzfkw.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeak
            @Override // java.util.concurrent.Callable
            public final Object call() {
                CookieManager cookieManager = zza;
                if (cookieManager == null) {
                    return new ObfuscatedString(new long[]{-8178750050919027436L}).toString();
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzaN));
            }
        }, zzflg.zzv, zzflmVar).zzi(1L, TimeUnit.SECONDS);
        final zzeal zzealVar = new zzfkp() { // from class: com.google.android.gms.internal.ads.zzeal
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                return new ObfuscatedString(new long[]{-4866941381764022142L}).toString();
            }
        };
        return zzi.zzc(Exception.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzfkx
            @Override // com.google.android.gms.internal.ads.zzgdu
            public final ListenableFuture zza(Object obj) {
                return zzgen.zzh(new ObfuscatedString(new long[]{8847609515146048070L}).toString());
            }
        }).zza();
    }
}
