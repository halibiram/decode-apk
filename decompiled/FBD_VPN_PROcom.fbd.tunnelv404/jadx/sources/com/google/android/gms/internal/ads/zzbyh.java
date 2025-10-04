package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbyh extends BaseGmsClient {
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbyh(Context context, Looper looper, BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        super(r2, looper, 8, baseConnectionCallbacks, baseOnConnectionFailedListener, null);
        Context context2;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            context2 = applicationContext;
        } else {
            context2 = context;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{2283703267995351802L, 6816324908960659254L, -4023331451638047608L, -5786500912368802274L, 7534924608642199493L, -4156118106662481185L, -4277904871046742755L, 2168259604114061809L}).toString());
        if (queryLocalInterface instanceof zzbyu) {
            return (zzbyu) queryLocalInterface;
        }
        return new zzbys(iBinder);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getServiceDescriptor() {
        return new ObfuscatedString(new long[]{7447415341884244351L, 8265797922121118758L, 3125880732429088385L, 7030614493016970064L, -5526221133695738788L, -6200844033609257594L, -7272580682119254438L, 2346022874058300002L}).toString();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    @VisibleForTesting
    public final String getStartServiceAction() {
        return new ObfuscatedString(new long[]{5731377078966252288L, 4340784681122586493L, -5582637848972651601L, -566354432161951172L, 7883696133508261174L, -6892595592887780922L}).toString();
    }

    public final zzbyu zzp() {
        return (zzbyu) getService();
    }
}
