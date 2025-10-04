package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.nativead.NativeAd;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbvy extends NativeAd.AdChoicesInfo {
    private final List zza = new ArrayList();
    private String zzb;

    public zzbvy(zzbjf zzbjfVar) {
        zzbjm zzbjmVar;
        try {
            this.zzb = zzbjfVar.zzg();
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{-3991326242802456008L}).toString(), e);
            this.zzb = new ObfuscatedString(new long[]{5551962827961299558L}).toString();
        }
        try {
            for (Object obj : zzbjfVar.zzh()) {
                if (obj instanceof IBinder) {
                    zzbjmVar = zzbjl.zzg((IBinder) obj);
                } else {
                    zzbjmVar = null;
                }
                if (zzbjmVar != null) {
                    this.zza.add(new zzbwa(zzbjmVar));
                }
            }
        } catch (RemoteException e2) {
            zzcec.zzh(new ObfuscatedString(new long[]{-2830003110161300437L}).toString(), e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List<NativeAd.Image> getImages() {
        return this.zza;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.zzb;
    }
}
