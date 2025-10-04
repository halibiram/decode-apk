package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface IAccountAccessor extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IAccountAccessor {
        public Stub() {
            super(new ObfuscatedString(new long[]{-5865645462690741161L, 5912850190967488238L, -2393500941744674359L, 3194857449600336699L, -2105640120878113847L, 1873194892814904308L, -3058494650887480646L, -2643800853997036010L}).toString());
        }

        @NonNull
        public static IAccountAccessor asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-5470113292199683079L, -1941984969636553429L, -658324028990889086L, 1715646975022427417L, 7714168366086262778L, 7340623306391257751L, -3884408028849400805L, 3487266176127474302L}).toString());
            if (queryLocalInterface instanceof IAccountAccessor) {
                return (IAccountAccessor) queryLocalInterface;
            }
            return new zzw(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) {
            if (i == 2) {
                Account zzb = zzb();
                parcel2.writeNoException();
                com.google.android.gms.internal.common.zzc.zzd(parcel2, zzb);
                return true;
            }
            return false;
        }
    }

    @NonNull
    Account zzb();
}
