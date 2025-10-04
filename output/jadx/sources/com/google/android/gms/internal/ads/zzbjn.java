package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbjn extends NativeAd.Image {
    private final zzbjm zza;
    private final Drawable zzb;
    private final Uri zzc;
    private final double zzd;
    private final int zze;
    private final int zzf;

    /* JADX WARN: Can't wrap try/catch for region: R(18:1|(2:2|3)|(15:5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)|34|6|7|8|9|10|11|12|13|14|15|16|17|18|19) */
    /* JADX WARN: Can't wrap try/catch for region: R(19:1|2|3|(15:5|6|7|8|9|10|11|12|13|14|15|16|17|18|19)|34|6|7|8|9|10|11|12|13|14|15|16|17|18|19) */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0099, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x009a, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-7171298394516747534L}).toString(), r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{961328588677534482L}).toString(), r2);
        r2 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0057, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0058, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-5791289006240251383L}).toString(), r8);
        r2 = 1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0038, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0039, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-7054387020805406958L}).toString(), r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbjn(zzbjm zzbjmVar) {
        Drawable drawable;
        IObjectWrapper zzf;
        this.zza = zzbjmVar;
        Uri uri = null;
        try {
            zzf = zzbjmVar.zzf();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{4249044342117855269L}).toString(), e);
        }
        if (zzf != null) {
            drawable = (Drawable) ObjectWrapper.unwrap(zzf);
            this.zzb = drawable;
            uri = this.zza.zze();
            this.zzc = uri;
            double d = this.zza.zzb();
            this.zzd = d;
            int i = -1;
            int i2 = this.zza.zzd();
            this.zze = i2;
            i = this.zza.zzc();
            this.zzf = i;
        }
        drawable = null;
        this.zzb = drawable;
        uri = this.zza.zze();
        this.zzc = uri;
        double d2 = this.zza.zzb();
        this.zzd = d2;
        int i3 = -1;
        int i22 = this.zza.zzd();
        this.zze = i22;
        i3 = this.zza.zzc();
        this.zzf = i3;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Drawable getDrawable() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final double getScale() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final Uri getUri() {
        return this.zzc;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int zza() {
        return this.zzf;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.Image
    public final int zzb() {
        return this.zze;
    }
}
