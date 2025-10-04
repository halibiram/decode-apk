package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzao extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbsv zzc;
    final /* synthetic */ zzaw zzd;

    public zzao(zzaw zzawVar, Context context, String str, zzbsv zzbsvVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbsvVar;
        this.zzd = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{7831905939014112045L, 4638297494993235171L, -8030889552974958056L}).toString());
        return new zzeu();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzb(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 240304000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzi zziVar;
        zzbxy zzbxyVar;
        Object zzboVar;
        zzbgc.zza(this.zza);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
                IBinder zze = ((zzbr) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{8725975111807802679L, -4632239963833218083L, -3391753944036015737L, 3829513250885018495L, -3782215577449102890L, -2138861681085484173L, 847625049038916913L, 5099050580779373357L, 599429733606596254L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzan
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        if (obj == 0) {
                            return null;
                        }
                        IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{-304650989579450249L, -60728615588137840L, 8457196979443123409L, -1220604713140713370L, 2124206007572982938L, 3991594377637775449L, 9087183784570166860L, 6395338356301451638L, -1606793233229652034L, -736926222340495185L}).toString());
                        if (queryLocalInterface instanceof zzbr) {
                            return (zzbr) queryLocalInterface;
                        }
                        return new zzbr(obj);
                    }
                })).zze(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, 240304000);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{2739345643655642437L, 8936070136684330066L, 6286231118711668617L, 6563155948078571959L, -6118254068241362809L, -3179410675427739645L, 5473884633768311141L, -2691238431206868104L, -846805342256585791L}).toString());
                if (queryLocalInterface instanceof zzbq) {
                    zzboVar = (zzbq) queryLocalInterface;
                } else {
                    zzboVar = new zzbo(zze);
                }
                return zzboVar;
            } catch (RemoteException e) {
                e = e;
                this.zzd.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzd.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{1155156574934272776L, 5338156684364207208L, 2655578468542425798L, -3143241029964193363L, 6019506341715030214L, -9216387473584724104L}).toString());
                return null;
            } catch (zzcef e2) {
                e = e2;
                this.zzd.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzd.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{1155156574934272776L, 5338156684364207208L, 2655578468542425798L, -3143241029964193363L, 6019506341715030214L, -9216387473584724104L}).toString());
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                this.zzd.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzd.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{1155156574934272776L, 5338156684364207208L, 2655578468542425798L, -3143241029964193363L, 6019506341715030214L, -9216387473584724104L}).toString());
                return null;
            }
        }
        zzaw zzawVar = this.zzd;
        Context context = this.zza;
        String str = this.zzb;
        zzbsv zzbsvVar = this.zzc;
        zziVar = zzawVar.zzb;
        return zziVar.zza(context, str, zzbsvVar);
    }
}
