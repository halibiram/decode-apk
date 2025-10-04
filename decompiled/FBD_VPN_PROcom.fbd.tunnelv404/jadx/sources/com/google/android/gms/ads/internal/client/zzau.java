package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbjv;
import com.google.android.gms.internal.ads.zzbjy;
import com.google.android.gms.internal.ads.zzbjz;
import com.google.android.gms.internal.ads.zzblm;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzau extends zzax {
    final /* synthetic */ View zza;
    final /* synthetic */ HashMap zzb;
    final /* synthetic */ HashMap zzc;
    final /* synthetic */ zzaw zzd;

    public zzau(zzaw zzawVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.zza = view;
        this.zzb = hashMap;
        this.zzc = hashMap2;
        this.zzd = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza.getContext(), new ObfuscatedString(new long[]{1553506425510473363L, 9121011879970988353L, 9164873846661473029L, -9210086458436393909L, 3238799037059551558L}).toString());
        return new zzfa();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        HashMap hashMap = this.zzc;
        return zzceVar.zzj(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(hashMap));
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzbxy zzbxyVar;
        zzblm zzblmVar;
        zzbgc.zza(this.zza.getContext());
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
                return zzbjv.zze(((zzbjz) zzceg.zzb(this.zza.getContext(), new ObfuscatedString(new long[]{2342009876510338188L, -6066948672858028730L, -989587060172510339L, -6618324554223777965L, 6192671435786535869L, 6788199842196809340L, -5167708629247283960L, 4304645025744183093L, -8007892971946467932L, -4022779087811169682L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzat
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        return zzbjy.zzb(obj);
                    }
                })).zze(ObjectWrapper.wrap(this.zza), ObjectWrapper.wrap(this.zzb), ObjectWrapper.wrap(this.zzc)));
            } catch (RemoteException | zzcef | NullPointerException e) {
                this.zzd.zzh = zzbxw.zza(this.zza.getContext());
                zzbxyVar = this.zzd.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-5934874026257368458L, -1433813514045810913L, 5246090324384751365L, 8962830517927596729L, -9118769699658470170L, 4035200801346440369L, 8464014824963332038L}).toString());
                return null;
            }
        }
        zzaw zzawVar = this.zzd;
        View view = this.zza;
        HashMap hashMap = this.zzb;
        HashMap hashMap2 = this.zzc;
        zzblmVar = zzawVar.zzg;
        return zzblmVar.zza(view, hashMap, hashMap2);
    }
}
