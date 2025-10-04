package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class AccountAccessor extends IAccountAccessor.Stub {
    @Nullable
    @KeepForSdk
    public static Account getAccountBinderSafe(@NonNull IAccountAccessor iAccountAccessor) {
        Account account = null;
        if (iAccountAccessor != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = iAccountAccessor.zzb();
                } catch (RemoteException unused) {
                    new ObfuscatedString(new long[]{-4762928625772868993L, -1827113725900368159L, -4190013600512788735L}).toString();
                    new ObfuscatedString(new long[]{9196088885106722000L, -7841175579532996714L, -8520699881652434460L, 3032492503377731279L, 8134117445815450652L, 2351752702197710650L}).toString();
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public final boolean equals(@Nullable Object obj) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    @NonNull
    public final Account zzb() {
        throw null;
    }
}
