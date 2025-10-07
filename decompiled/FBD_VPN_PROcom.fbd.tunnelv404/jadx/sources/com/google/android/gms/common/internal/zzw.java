package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzw extends com.google.android.gms.internal.common.zza implements IAccountAccessor {
    public zzw(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1055724171546586531L, 8937383829877993436L, -5240438886416043822L, -371050512858721723L, 1385708937219069881L, 1786054086721297264L, -4331802690997886758L, 8678617031637654597L}).toString());
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() {
        Parcel zzB = zzB(2, zza());
        Account account = (Account) com.google.android.gms.internal.common.zzc.zza(zzB, Account.CREATOR);
        zzB.recycle();
        return account;
    }
}
