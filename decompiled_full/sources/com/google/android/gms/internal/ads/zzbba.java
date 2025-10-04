package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.ArrayUtils;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbba extends com.google.android.gms.ads.internal.zzc {
    public zzbba(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(zzbzs.zza(context), looper, 123, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{1021059706861347231L, -4217092337570349613L, -6111231620917834905L, 3661846194791305185L, 6293684914343254556L, -4115035466313620779L, 194450090115279505L, 8331337837813123350L}).toString());
        if (queryLocalInterface instanceof zzbbd) {
            return (zzbbd) queryLocalInterface;
        }
        return new zzbbd(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] getApiFeatures() {
        return com.google.android.gms.ads.zzg.zzb;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{-7488480547658069303L, -5314496265417807665L, 182024768800385440L, 1977036677868913321L, 465442120523910058L, 1204412286931961479L, 1080974528850944361L, 5782499902399154332L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{3594696969795813819L, 927138098827274500L, -4543858657143230950L, 3489580337635238266L, 9097143396703601078L, 5175511421123458392L}).toString();
    }

    public final boolean zzp() {
        Feature[] availableFeatures = getAvailableFeatures();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzbQ)).booleanValue() && ArrayUtils.contains(availableFeatures, com.google.android.gms.ads.zzg.zza)) {
            return true;
        }
        return false;
    }

    public final zzbbd zzq() {
        return (zzbbd) getService();
    }
}
