package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcaz {
    @Nullable
    public static final zzcan zza(Context context, String str, zzbsv zzbsvVar) {
        zzcan zzcalVar;
        try {
            IBinder zze = ((zzcar) zzceg.zzb(context, new ObfuscatedString(new long[]{8049368226237275454L, -1229506152601076412L, 727218543749325145L, -749766803463316847L, 8088334392964450562L, -6877255287234150088L, -8649088726641513189L, -2121955626062701323L, 2873877046315528830L}).toString(), new zzcee() { // from class: com.google.android.gms.internal.ads.zzcay
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.android.gms.internal.ads.zzcee
                public final Object zza(Object obj) {
                    if (obj == 0) {
                        return null;
                    }
                    IInterface queryLocalInterface = obj.queryLocalInterface(new ObfuscatedString(new long[]{-6963189895938076476L, 8190670757045843857L, 8261135259184996406L, -2149752207964369540L, -654459616865146697L, -7079363896978196822L, -4965094777176999295L, -4635380374134738933L, -1013850331282092632L, -4160135070479612512L}).toString());
                    if (queryLocalInterface instanceof zzcar) {
                        return (zzcar) queryLocalInterface;
                    }
                    return new zzcar(obj);
                }
            })).zze(ObjectWrapper.wrap(context), str, zzbsvVar, 240304000);
            if (zze == null) {
                return null;
            }
            IInterface queryLocalInterface = zze.queryLocalInterface(new ObfuscatedString(new long[]{2485251353555223667L, -3092892143722136633L, -3052401603878710705L, -1938965894689243598L, 7217738857235442692L, 7544818213054456595L, -2250825058474492306L, 2132340149056383621L, 3119189011541720032L}).toString());
            if (queryLocalInterface instanceof zzcan) {
                zzcalVar = (zzcan) queryLocalInterface;
            } else {
                zzcalVar = new zzcal(zze);
            }
            return zzcalVar;
        } catch (RemoteException e) {
            e = e;
            zzcec.zzl(new ObfuscatedString(new long[]{-3716297649037415007L, -6666336332698120143L, 6533955251285379991L, -8459533088935771598L, 1228289869243239805L, -4399130736563230280L}).toString(), e);
            return null;
        } catch (zzcef e2) {
            e = e2;
            zzcec.zzl(new ObfuscatedString(new long[]{-3716297649037415007L, -6666336332698120143L, 6533955251285379991L, -8459533088935771598L, 1228289869243239805L, -4399130736563230280L}).toString(), e);
            return null;
        }
    }
}
