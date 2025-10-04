package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbwq extends RemoteCreator {
    public zzbwq() {
        super(new ObfuscatedString(new long[]{-7433053274834385284L, -4733154081258056810L, -6461342645858038430L, 6629847572828201749L, 776638493278173480L, 2728094253275270108L, -5635571441791612896L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6870985185042446236L, -3985267828884830088L, 3463734801742329003L, 6159283167967666642L, -1175940430927279961L, 1502950623810926239L, -4657934187319494140L, -2294738784120457955L, 6793075769132074526L, -9041905691946640700L}).toString());
        if (queryLocalInterface instanceof zzbww) {
            return (zzbww) queryLocalInterface;
        }
        return new zzbwu(iBinder);
    }

    @Nullable
    public final zzbwt zza(Activity activity) {
        zzbwt zzbwrVar;
        try {
            IBinder zze = ((zzbww) getRemoteCreatorInstance(activity)).zze(ObjectWrapper.wrap(activity));
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{2596823327836247374L, 1682522886683522251L, -2735939858854713222L, 4719248648634456883L, -3674195532966016285L, 7936048756015881925L, -8799037052248070827L, -432130329404990398L, 5653793737883474633L}).toString());
            if (queryLocalInterface instanceof zzbwt) {
                zzbwrVar = (zzbwt) queryLocalInterface;
            } else {
                zzbwrVar = new zzbwr(zze);
            }
            return zzbwrVar;
        } catch (RemoteException e) {
            zzcec.zzk(new ObfuscatedString(new long[]{7960539440633695458L, 6800258526105345341L, -1698670166578326868L, -7643781587798818871L, -6660963160537132478L, 1869118903208156974L}).toString(), e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            zzcec.zzk(new ObfuscatedString(new long[]{-3184514573306332774L, 765854384362656163L, -8470164791789635731L, -3690959383345119667L, 6539579582474179204L, 7250950201234157616L}).toString(), e2);
            return null;
        }
    }
}
