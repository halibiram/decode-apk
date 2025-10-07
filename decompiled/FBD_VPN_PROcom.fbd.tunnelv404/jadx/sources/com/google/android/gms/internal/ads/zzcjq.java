package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcjq implements zzgej {
    final /* synthetic */ List zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Uri zzc;
    final /* synthetic */ zzcjs zzd;

    public zzcjq(zzcjs zzcjsVar, List list, String str, Uri uri) {
        this.zza = list;
        this.zzb = str;
        this.zzc = uri;
        this.zzd = zzcjsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        AbstractC0749x8313616e.m3347xe1f61061(new ObfuscatedString(new long[]{7143156918107281725L, 3330984946847425145L, -757110344456094432L, -5308495555107641982L, 5059895913968138864L, -2902730023011256405L}), String.valueOf(this.zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list = this.zza;
        String str = this.zzb;
        this.zzd.zzQ((Map) obj, list, str);
    }
}
