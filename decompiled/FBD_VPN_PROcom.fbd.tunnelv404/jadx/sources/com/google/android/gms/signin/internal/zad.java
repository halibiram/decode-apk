package com.google.android.gms.signin.internal;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zad extends com.google.android.gms.internal.base.zab implements zae {
    public zad() {
        super(new ObfuscatedString(new long[]{-2416705589003305940L, 9073298828900956621L, 1125780539277751837L, -7309501582668791673L, 5994816661592271503L, 1435682208674473275L, -4763913617197655730L, 3770168963388480035L}).toString());
    }

    @Override // com.google.android.gms.internal.base.zab
    public final boolean zaa(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 3:
                break;
            case 4:
                break;
            case 5:
            default:
                return false;
            case 6:
                break;
            case 7:
                break;
            case 8:
                zab((zak) com.google.android.gms.internal.base.zac.zaa(parcel, zak.CREATOR));
                break;
            case 9:
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
