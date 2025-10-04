package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaq extends zzax {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzaw zzb;

    public zzaq(zzaw zzawVar, Context context) {
        this.zza = context;
        this.zzb = zzawVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zza() {
        zzaw.zzt(this.zza, new ObfuscatedString(new long[]{8235007626145293732L, 679614206781575467L, -4330646824779048619L, 7616427591403208379L}).toString());
        return new zzey();
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    public final /* bridge */ /* synthetic */ Object zzb(zzce zzceVar) {
        return zzceVar.zzg(ObjectWrapper.wrap(this.zza), 240304000);
    }

    @Override // com.google.android.gms.ads.internal.client.zzax
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() {
        zzeq zzeqVar;
        zzbxy zzbxyVar;
        Object zzcmVar;
        zzbgc.zza(this.zza);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
                IBinder zze = ((zzcp) zzceg.zzb(this.zza, new ObfuscatedString(new long[]{6558237133920790949L, 5513397068009848862L, 4109974891005748808L, 5056034505137264460L, -6153506521458873407L, -5243549752813361149L, 6159655453614564026L, -8950644169647497864L, 7410870595509442821L, 1144808016980857432L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzap
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        if (obj == 0) {
                            return null;
                        }
                        IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{75277591701935226L, 5299269267227849520L, -2081824029731884478L, -7065916669126484615L, 3292347821153549512L, -8188467415915510423L, -1625821622417201299L, 5903053857063029507L, -1470770288009803634L, -4750360993211983608L, 8247839779893409606L}).toString());
                        if (queryLocalInterface instanceof zzcp) {
                            return (zzcp) queryLocalInterface;
                        }
                        return new zzcp(obj);
                    }
                })).zze(ObjectWrapper.wrap(this.zza), 240304000);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{-805042774491608758L, -4299325925259148695L, 8105232033983846385L, 6771891638182622848L, 6890067173879146027L, 6990542955650241061L, -913610732464588597L, -8834395964819827428L, -6624772020770776723L, 1451573029500043903L}).toString());
                if (queryLocalInterface instanceof zzco) {
                    zzcmVar = (zzco) queryLocalInterface;
                } else {
                    zzcmVar = new zzcm(zze);
                }
                return zzcmVar;
            } catch (RemoteException e) {
                e = e;
                this.zzb.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzb.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-447993855488824397L, 4785606079702739490L, -8124286321864397881L, 4264962096123498245L, 3619199915395422975L, 3576476721357811951L, 6005111701393377235L}).toString());
                return null;
            } catch (zzcef e2) {
                e = e2;
                this.zzb.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzb.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-447993855488824397L, 4785606079702739490L, -8124286321864397881L, 4264962096123498245L, 3619199915395422975L, 3576476721357811951L, 6005111701393377235L}).toString());
                return null;
            } catch (NullPointerException e3) {
                e = e3;
                this.zzb.zzh = zzbxw.zza(this.zza);
                zzbxyVar = this.zzb.zzh;
                zzbxyVar.zzg(e, new ObfuscatedString(new long[]{-447993855488824397L, 4785606079702739490L, -8124286321864397881L, 4264962096123498245L, 3619199915395422975L, 3576476721357811951L, 6005111701393377235L}).toString());
                return null;
            }
        }
        zzaw zzawVar = this.zzb;
        Context context = this.zza;
        zzeqVar = zzawVar.zzc;
        return zzeqVar.zza(context);
    }
}
