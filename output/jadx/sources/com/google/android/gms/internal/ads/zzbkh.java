package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbkh {
    private final zzbkg zza;
    private final MediaView zzb;
    private final VideoController zzc = new VideoController();

    @VisibleForTesting
    public zzbkh(zzbkg zzbkgVar) {
        Context context;
        this.zza = zzbkgVar;
        MediaView mediaView = null;
        try {
            context = (Context) ObjectWrapper.unwrap(zzbkgVar.zzh());
        } catch (RemoteException | NullPointerException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2983031028338598759L}).toString(), e);
            context = null;
        }
        if (context != null) {
            MediaView mediaView2 = new MediaView(context);
            try {
                if (true == this.zza.zzs(ObjectWrapper.wrap(mediaView2))) {
                    mediaView = mediaView2;
                }
            } catch (RemoteException e2) {
                zzcec.zzh(new ObfuscatedString(new long[]{7197205849490872143L}).toString(), e2);
            }
        }
        this.zzb = mediaView;
    }

    public final zzbkg zza() {
        return this.zza;
    }

    @Nullable
    public final String zzb() {
        try {
            return this.zza.zzi();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-8417398582292091253L}).toString(), e);
            return null;
        }
    }
}
