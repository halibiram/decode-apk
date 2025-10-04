package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzfid {

    @GuardedBy("LiteSdkInfoRetriever.class")
    private static zzfid zza;
    private final Context zzb;
    private final com.google.android.gms.ads.internal.client.zzcl zzc;
    private final AtomicReference zzd = new AtomicReference();

    @VisibleForTesting
    public zzfid(Context context, com.google.android.gms.ads.internal.client.zzcl zzclVar) {
        this.zzb = context;
        this.zzc = zzclVar;
    }

    @VisibleForTesting
    public static com.google.android.gms.ads.internal.client.zzcl zza(Context context) {
        try {
            return com.google.android.gms.ads.internal.client.zzck.asInterface((IBinder) context.getClassLoader().loadClass(new ObfuscatedString(new long[]{2036355303708308516L, -157350849305278432L, 2579143848595746211L, 356096291528778418L, -660168663244834910L, -7360833223466181071L, 4815685226116714792L, -3525588451853688628L}).toString()).getConstructor(Context.class).newInstance(context));
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{2223521459534989210L, 653786836799086169L, 6685856032897698992L, -4429219725056746846L, 5593012435511970443L, -9184747646408672249L}).toString(), e);
            return null;
        }
    }

    public static zzfid zzd(Context context) {
        synchronized (zzfid.class) {
            try {
                zzfid zzfidVar = zza;
                if (zzfidVar != null) {
                    return zzfidVar;
                }
                Context applicationContext = context.getApplicationContext();
                long longValue = ((Long) zzbic.zzb.zze()).longValue();
                com.google.android.gms.ads.internal.client.zzcl zzclVar = null;
                if (longValue > 0 && longValue <= 240304702) {
                    zzclVar = zza(applicationContext);
                }
                zzfid zzfidVar2 = new zzfid(applicationContext, zzclVar);
                zza = zzfidVar2;
                return zzfidVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final com.google.android.gms.ads.internal.client.zzen zzg() {
        com.google.android.gms.ads.internal.client.zzcl zzclVar = this.zzc;
        if (zzclVar != null) {
            try {
                return zzclVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return null;
    }

    public final zzbsv zzb() {
        return (zzbsv) this.zzd.get();
    }

    public final zzcei zzc(int i, boolean z, int i2) {
        com.google.android.gms.ads.internal.client.zzen zzg;
        com.google.android.gms.ads.internal.zzt.zzp();
        boolean zzD = com.google.android.gms.ads.internal.util.zzt.zzD(this.zzb);
        zzcei zzceiVar = new zzcei(240304000, i2, true, zzD);
        if (((Boolean) zzbic.zzc.zze()).booleanValue() && (zzg = zzg()) != null) {
            return new zzcei(240304000, zzg.zza(), true, zzD);
        }
        return zzceiVar;
    }

    public final String zze() {
        com.google.android.gms.ads.internal.client.zzen zzg = zzg();
        if (zzg != null) {
            return zzg.zzb();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf(zzbsv zzbsvVar) {
        zzbsv adapterCreator;
        if (((Boolean) zzbic.zza.zze()).booleanValue()) {
            com.google.android.gms.ads.internal.client.zzcl zzclVar = this.zzc;
            if (zzclVar != null) {
                try {
                    adapterCreator = zzclVar.getAdapterCreator();
                } catch (RemoteException unused) {
                }
                AtomicReference atomicReference = this.zzd;
                if (adapterCreator != null) {
                    zzbsvVar = adapterCreator;
                }
                zzfic.zza(atomicReference, null, zzbsvVar);
                return;
            }
            adapterCreator = null;
            AtomicReference atomicReference2 = this.zzd;
            if (adapterCreator != null) {
            }
            zzfic.zza(atomicReference2, null, zzbsvVar);
            return;
        }
        zzfic.zza(this.zzd, null, zzbsvVar);
    }
}
