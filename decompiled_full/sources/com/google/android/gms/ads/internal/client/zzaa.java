package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbws;
import com.google.android.gms.internal.ads.zzbwv;
import com.google.android.gms.internal.ads.zzbww;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaa extends zzax {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzaw zzb;

    public zzaa(zzaw zzawVar, Activity activity) {
        this.zza = activity;
        this.zzb = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{-4393510163511063508L, 731486977367555082L, 3423099093628147286L}).toString());
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzm(ObjectWrapper.wrap(this.zza));
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzbxy zzbxyVar;
        zzbwq zzbwqVar;
        zzbgc.zza(this.zza);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
                return zzbws.zzI(((zzbww) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{5820877958663940486L, 7531058407044463754L, 684550984880027134L, -7290689933799458146L, 4979419714631462623L, -7448172131454236203L, 6098054342709169897L, 9070915809004415162L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzz
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        return zzbwv.zzb(obj);
                    }
                })).zze(ObjectWrapper.wrap(this.zza)));
            } catch (RemoteException | zzcef | NullPointerException e) {
                this.zzb.zzh = zzbxw.zza(this.zza.getApplicationContext());
                zzbxyVar = this.zzb.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-6730850947976667014L, -2135065300278616997L, 3225553681461339671L, 7767384518481591762L, -4697307077589799130L}).toString());
                return null;
            }
        }
        zzaw zzawVar = this.zzb;
        Activity activity = this.zza;
        zzbwqVar = zzawVar.zzf;
        return zzbwqVar.zza(activity);
    }
}
