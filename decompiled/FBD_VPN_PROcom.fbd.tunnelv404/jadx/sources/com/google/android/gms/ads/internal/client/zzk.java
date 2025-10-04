package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzbxw;
import com.google.android.gms.internal.ads.zzbxy;
import com.google.android.gms.internal.ads.zzcec;
import com.google.android.gms.internal.ads.zzcee;
import com.google.android.gms.internal.ads.zzcef;
import com.google.android.gms.internal.ads.zzceg;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzk extends RemoteCreator {
    private zzbxy zza;

    @VisibleForTesting
    public zzk() {
        super(new ObfuscatedString(new long[]{-787802780232739356L, 3839323407666773870L, -8613387341654359263L, 8104217419089189261L, 977185548736453881L, -9110336605297208765L, -6430770583543414799L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4593711070684285860L, -5068179272449973479L, 8002850010689859351L, 4363858714931632369L, 3278782772427967951L, 6747681983365407894L, -5491241217340206553L, 3948776173706297344L, 7548022764927709683L}).toString());
        if (queryLocalInterface instanceof zzbv) {
            return (zzbv) queryLocalInterface;
        }
        return new zzbv(iBinder);
    }

    @Nullable
    public final zzbu zza(Context context, zzq zzqVar, String str, zzbsv zzbsvVar, int i) {
        zzbu zzbsVar;
        zzbgc.zza(context);
        if (((Boolean) zzba.zzc().zza(zzbgc.zzki)).booleanValue()) {
            try {
            } catch (RemoteException | zzcef | NullPointerException e) {
                e = e;
            }
            try {
                IBinder zze = ((zzbv) zzceg.zzb(context, new ObfuscatedString(new long[]{-8860365271564004554L, 5449612855755446722L, 2747640488992486073L, -6464653863457619740L, 7365594595270686388L, -2770034037486527845L, 2635759512390705852L, 4232430552981983744L}).toString(), new zzcee() { // from class: com.google.android.gms.ads.internal.client.zzj
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // com.google.android.gms.internal.ads.zzcee
                    public final Object zza(Object obj) {
                        if (obj == 0) {
                            return null;
                        }
                        IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{-5803724532655561753L, 4580113449969289171L, -2964420237699878421L, 6837941975036097436L, -4832126017399152602L, -2743604979509672709L, -358739194287286066L, 6477811332289753684L, 6603641861277303947L}).toString());
                        if (queryLocalInterface instanceof zzbv) {
                            return (zzbv) queryLocalInterface;
                        }
                        return new zzbv(obj);
                    }
                })).zze(ObjectWrapper.wrap(context), zzqVar, str, zzbsvVar, 240304000, i);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{8617256789605290534L, 4866398034780198187L, -2176944174279631985L, -146241963457948231L, 7192781209742518426L, -2847799579280761355L, -6534350416790349641L, 3024608111429653111L}).toString());
                if (queryLocalInterface instanceof zzbu) {
                    zzbsVar = (zzbu) queryLocalInterface;
                } else {
                    zzbsVar = new zzbs(zze);
                }
            } catch (RemoteException e2) {
                e = e2;
                zzbxy zza = zzbxw.zza(context);
                this.zza = zza;
                zza.zzg(e, new ObfuscatedString(new long[]{5740292281573847094L, -7841342138036301072L, -8973981169017201924L, -8579002681226814653L, 8021080179585313058L, 1407516441931095928L, -8688950747010352570L}).toString());
                zzcec.zzl(new ObfuscatedString(new long[]{-1224034323897156129L, 2946342397920789436L, -5723580260440731585L, 5133169040808402462L, -3570437780977585435L, 1842202073103017400L}).toString(), e);
                return null;
            } catch (zzcef e3) {
                e = e3;
                zzbxy zza2 = zzbxw.zza(context);
                this.zza = zza2;
                zza2.zzg(e, new ObfuscatedString(new long[]{5740292281573847094L, -7841342138036301072L, -8973981169017201924L, -8579002681226814653L, 8021080179585313058L, 1407516441931095928L, -8688950747010352570L}).toString());
                zzcec.zzl(new ObfuscatedString(new long[]{-1224034323897156129L, 2946342397920789436L, -5723580260440731585L, 5133169040808402462L, -3570437780977585435L, 1842202073103017400L}).toString(), e);
                return null;
            } catch (NullPointerException e4) {
                e = e4;
                zzbxy zza22 = zzbxw.zza(context);
                this.zza = zza22;
                zza22.zzg(e, new ObfuscatedString(new long[]{5740292281573847094L, -7841342138036301072L, -8973981169017201924L, -8579002681226814653L, 8021080179585313058L, 1407516441931095928L, -8688950747010352570L}).toString());
                zzcec.zzl(new ObfuscatedString(new long[]{-1224034323897156129L, 2946342397920789436L, -5723580260440731585L, 5133169040808402462L, -3570437780977585435L, 1842202073103017400L}).toString(), e);
                return null;
            }
        } else {
            try {
                IBinder zze2 = ((zzbv) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), zzqVar, str, zzbsvVar, 240304000, i);
                if (zze2 == null) {
                    return null;
                }
                IInterface queryLocalInterface2 = zze2.queryLocalInterface(new ObfuscatedString(new long[]{-8539817349980695105L, -1646274359732600200L, 6862108775928229137L, 4606653550490321685L, -9025085562201133879L, -1457037768443208555L, 1245276840099367927L, -2452911208395260020L}).toString());
                if (queryLocalInterface2 instanceof zzbu) {
                    zzbsVar = (zzbu) queryLocalInterface2;
                } else {
                    zzbsVar = new zzbs(zze2);
                }
            } catch (RemoteException e5) {
                e = e5;
                zzcec.zzf(new ObfuscatedString(new long[]{2183920541310390232L, -8258663918604672035L, 8792727009285045838L, 5622543919982135373L, -2319173682896112936L, 3698825438585190431L}).toString(), e);
                return null;
            } catch (RemoteCreator.RemoteCreatorException e6) {
                e = e6;
                zzcec.zzf(new ObfuscatedString(new long[]{2183920541310390232L, -8258663918604672035L, 8792727009285045838L, 5622543919982135373L, -2319173682896112936L, 3698825438585190431L}).toString(), e);
                return null;
            }
        }
        return zzbsVar;
    }
}
