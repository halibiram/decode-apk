package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.h5.OnH5AdsEventListener;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbob;
import com.google.android.gms.internal.ads.zzboj;
import com.google.android.gms.internal.ads.zzbok;
import com.google.android.gms.internal.ads.zzboo;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzai extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbsv zzb;
    final /* synthetic */ OnH5AdsEventListener zzc;

    public zzai(zzaw zzawVar, Context context, zzbsv zzbsvVar, OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = context;
        this.zzb = zzbsvVar;
        this.zzc = onH5AdsEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @NonNull
    public final /* synthetic */ Object zza() {
        return new zzboo();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzk(ObjectWrapper.wrap(this.zza), this.zzb, 240304000, new zzbob(this.zzc));
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        try {
            return ((zzbok) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{5294874968864948568L, -8686623261188592598L, 6553504846650140553L, -2363585530805885761L, -8128223799470428600L, 478689212891080500L, -4125234503421987209L, -6690626292918528367L, -7044093380374717250L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzah
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcee
                public final Object zza(Object obj) {
                    return zzboj.zzb(obj);
                }
            })).zze(ObjectWrapper.wrap(this.zza), this.zzb, 240304000, new zzbob(this.zzc));
        } catch (RemoteException | zzcef | NullPointerException unused) {
            return null;
        }
    }
}
