package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeq extends RemoteCreator {
    public zzeq() {
        super(new ObfuscatedString(new long[]{-8584240346571150388L, 6757496722010043800L, 6758935601851065612L, -2824457851922690997L, 651743527080474716L, -4416814976111649483L, -1440341567941397639L, -4307498056463035537L, -4775421018706925434L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{1304225293957677455L, -1686474887875204407L, 3771734145758334185L, -5517896766308428781L, 2120219335910663716L, 6772894092473017807L, -7555267718380347419L, -76231348088200179L, -6873718891761494320L, 4852449810722333961L, 8344969383529901370L}).toString());
        if (queryLocalInterface instanceof zzcp) {
            return (zzcp) queryLocalInterface;
        }
        return new zzcp(iBinder);
    }

    @Nullable
    public final zzco zza(Context context) {
        zzco zzcmVar;
        try {
            IBinder zze = ((zzcp) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), 240304000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{2606209370641269753L, -3395515403862472602L, -8945728614157126613L, -7721637052831584503L, -3168783649168114495L, 6910694117451278016L, 1919010651647236199L, 4573532023343418502L, 4198172361819693116L, -3706205439979373215L}).toString());
            if (queryLocalInterface instanceof zzco) {
                zzcmVar = (zzco) queryLocalInterface;
            } else {
                zzcmVar = new zzcm(zze);
            }
            return zzcmVar;
        } catch (RemoteException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{-2071255051725960291L, 5324462529206390305L, 3145805151293971036L, 2380818504723775378L, 7268440161628185872L, -5963714444346484717L, -3578015765592619318L}).toString(), e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{-2071255051725960291L, 5324462529206390305L, 3145805151293971036L, 2380818504723775378L, 7268440161628185872L, -5963714444346484717L, -3578015765592619318L}).toString(), e);
            return null;
        }
    }
}
