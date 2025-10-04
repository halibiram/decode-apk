package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbsv;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzi extends RemoteCreator {
    public zzi() {
        super(new ObfuscatedString(new long[]{-965386191646283768L, -8934107938628271262L, -7881387497613717760L, -4387817283043151287L, 980576837156050674L, 7350280678008699747L, -1014575627808151234L, -8762483168576653402L}).toString());
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7727542206239538942L, -1780048663630964913L, -7002717371411357397L, -8504265275275393977L, -3878157615270744406L, 1076713391934268478L, -8133790958727016688L, -6195681509496729998L, -3609130209404415705L, 3830526437530684561L}).toString());
        if (queryLocalInterface instanceof zzbr) {
            return (zzbr) queryLocalInterface;
        }
        return new zzbr(iBinder);
    }

    @Nullable
    public final zzbq zza(Context context, String str, zzbsv zzbsvVar) {
        zzbq zzboVar;
        try {
            IBinder zze = ((zzbr) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), str, zzbsvVar, 240304000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{-52345277308574053L, 5389895334628618545L, 5402874522886307178L, 3818484333380493147L, 2864307820206190252L, -1162838878455573288L, -3134221287771741945L, 2713920385215369915L, 7158527988222309301L}).toString());
            if (queryLocalInterface instanceof zzbq) {
                zzboVar = (zzbq) queryLocalInterface;
            } else {
                zzboVar = new zzbo(zze);
            }
            return zzboVar;
        } catch (RemoteException e) {
            e = e;
            zzcec.zzk(new ObfuscatedString(new long[]{1389751568175191840L, -9117828031149722887L, 294062615868666886L, 4204196095457214513L, -6956284900148278570L, 4761471323664497362L, 4421665143642339892L}).toString(), e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e2) {
            e = e2;
            zzcec.zzk(new ObfuscatedString(new long[]{1389751568175191840L, -9117828031149722887L, 294062615868666886L, 4204196095457214513L, -6956284900148278570L, 4761471323664497362L, 4421665143642339892L}).toString(), e);
            return null;
        }
    }
}
