package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbwo;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzag extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbsv zzb;

    public zzag(zzaw zzawVar, Context context, zzbsv zzbsvVar) {
        this.zza = context;
        this.zzb = zzbsvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzl(ObjectWrapper.wrap(this.zza), this.zzb, 240304000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        try {
            return ((zzbwp) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{3574354205570031922L, -6717044277539267079L, 616666870980014905L, -4005605034978751556L, -2766974017886763506L, 1342533528565742659L, 8660123044420915783L, -7709300297297917679L, 8917885663071903725L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzaf
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcee
                public final Object zza(Object obj) {
                    return zzbwo.zzb(obj);
                }
            })).zze(ObjectWrapper.wrap(this.zza), this.zzb, 240304000);
        } catch (RemoteException | zzcef | NullPointerException unused) {
            return null;
        }
    }
}
