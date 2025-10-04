package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzbpc implements zzapt {
    private volatile zzbop zza;
    private final Context zzb;

    public zzbpc(Context context) {
        this.zzb = context;
    }

    public static /* bridge */ /* synthetic */ void zzc(zzbpc zzbpcVar) {
        if (zzbpcVar.zza == null) {
            return;
        }
        zzbpcVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzapt
    @Nullable
    public final zzapw zza(zzaqa zzaqaVar) {
        Parcelable.Creator<zzboq> creator = zzboq.CREATOR;
        Map zzl = zzaqaVar.zzl();
        int size = zzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry entry : zzl.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            strArr2[i2] = (String) entry.getValue();
            i2++;
        }
        zzboq zzboqVar = new zzboq(zzaqaVar.zzk(), strArr, strArr2);
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        try {
            zzceu zzceuVar = new zzceu();
            this.zza = new zzbop(this.zzb, com.google.android.gms.ads.internal.zzt.zzt().zzb(), new zzbpa(this, zzceuVar), new zzbpb(this, zzceuVar));
            this.zza.checkAvailabilityAndConnect();
            zzboy zzboyVar = new zzboy(this, zzboqVar);
            zzgey zzgeyVar = zzcep.zza;
            ListenableFuture zzo = zzgen.zzo(zzgen.zzn(zzceuVar, zzboyVar, zzgeyVar), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzet)).intValue(), TimeUnit.MILLISECONDS, zzcep.zzd);
            zzo.addListener(new zzboz(this), zzgeyVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzo.get();
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-5427634060748827800L, 4544747837718445591L, -4914212678378106573L, -445395872497878636L, 1811768268030883590L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime) + new ObfuscatedString(new long[]{-6407129449095156804L, 5180773899624982344L}).toString());
            zzbos zzbosVar = (zzbos) new zzbzc(parcelFileDescriptor).zza(zzbos.CREATOR);
            if (zzbosVar == null) {
                return null;
            }
            if (!zzbosVar.zza) {
                if (zzbosVar.zze.length != zzbosVar.zzf.length) {
                    return null;
                }
                HashMap hashMap = new HashMap();
                while (true) {
                    String[] strArr3 = zzbosVar.zze;
                    if (i < strArr3.length) {
                        hashMap.put(strArr3[i], zzbosVar.zzf[i]);
                        i++;
                    } else {
                        return new zzapw(zzbosVar.zzc, zzbosVar.zzd, hashMap, zzbosVar.zzg, zzbosVar.zzh);
                    }
                }
            } else {
                throw new zzaqj(zzbosVar.zzb);
            }
        } catch (InterruptedException | ExecutionException unused) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{8784798987367884511L, -3429053738439181515L, 2920243449008292944L, -1846687628690464889L, 1984785888040092454L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime) + new ObfuscatedString(new long[]{-2360716586140810448L, 3466147780241983922L}).toString());
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-8958622248421173791L, 4248853701477896163L, -5398831254732664189L, 2846452082300838191L, 6678843429183609278L}).toString() + (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - elapsedRealtime) + new ObfuscatedString(new long[]{7483574774445525915L, -6123059724372064521L}).toString());
            throw th;
        }
    }
}
