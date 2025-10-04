package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzblc extends zzayh implements zzbld {
    public static zzbld zzb(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1540086448342709731L, -246056380701822848L, 7746374154034771496L, 6320841811340985790L, 245021572602373757L, 6277094809738804484L, -8203188003038515388L, 5854584397312550470L, 4747974153546879192L, -1837036915805089617L, 1138770045914109678L, 6635124174996039579L}).toString());
        if (queryLocalInterface instanceof zzbld) {
            return (zzbld) queryLocalInterface;
        }
        return new zzblb(iBinder);
    }
}
