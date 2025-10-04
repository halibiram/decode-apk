package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbwa extends NativeAd.Image {
    private final zzbjm zza;

    @Nullable
    private final Drawable zzb;

    @Nullable
    private final Uri zzc;
    private final double zzd;

    /* JADX WARN: Can't wrap try/catch for region: R(17:1|(2:2|3)|(13:5|6|7|8|9|10|11|12|13|14|15|16|17)|33|6|7|8|9|10|11|12|13|14|15|16|17|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(18:1|2|3|(13:5|6|7|8|9|10|11|12|13|14|15|16|17)|33|6|7|8|9|10|11|12|13|14|15|16|17|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-8115477134373494532L}).toString(), r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0057, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0058, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-8316244636775992639L}).toString(), r8);
        r2 = 1.0d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0038, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0039, code lost:
    
        com.google.android.gms.internal.ads.zzcec.zzh(new com.panda912.muddy.ObfuscatedString(new long[]{-6811454847012848969L}).toString(), r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbwa(zzbjm zzbjmVar) {
        Drawable drawable;
        IObjectWrapper zzf;
        this.zza = zzbjmVar;
        Uri uri = null;
        try {
            zzf = zzbjmVar.zzf();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-1312530259261799736L}).toString(), e);
        }
        try {
            if (zzf != null) {
                drawable = (Drawable) ObjectWrapper.unwrap(zzf);
                this.zzb = drawable;
                uri = this.zza.zze();
                this.zzc = uri;
                double d = this.zza.zzb();
                this.zzd = d;
                this.zza.zzd();
                this.zza.zzc();
                return;
            }
            this.zza.zzc();
            return;
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-7319107963105601267L}).toString(), e2);
            return;
        }
        drawable = null;
        this.zzb = drawable;
        uri = this.zza.zze();
        this.zzc = uri;
        double d2 = this.zza.zzb();
        this.zzd = d2;
        this.zza.zzd();
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    @Nullable
    public final Drawable getDrawable() {
        return this.zzb;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    public final double getScale() {
        return this.zzd;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.Image
    @Nullable
    public final Uri getUri() {
        return this.zzc;
    }
}
