package com.google.android.gms.common.api.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.Status;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface IStatusCallback extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class Stub extends com.google.android.gms.internal.base.zab implements IStatusCallback {
        public Stub() {
            super(new ObfuscatedString(new long[]{-2850075262024593665L, 8320882179162240794L, -3859258840951984285L, -1061858826333754353L, -3578951916691168055L, -6855996314275031982L, -8591548518164721213L, 2433718991283160410L, -834285922756720243L}).toString());
        }

        @NonNull
        public static IStatusCallback asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-3960631004235782229L, 8748158646207344549L, -5644146533075770199L, -8847267393906877925L, 5358636277402009096L, 3043620853035587127L, 7764693535908043229L, -2937265417481711460L, 6433362929701905274L}).toString());
            if (queryLocalInterface instanceof IStatusCallback) {
                return (IStatusCallback) queryLocalInterface;
            }
            return new zaby(iBinder);
        }

        @Override // com.google.android.gms.internal.base.zab
        public final boolean zaa(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) {
            if (i == 1) {
                onResult((Status) com.google.android.gms.internal.base.zac.zaa(parcel, Status.CREATOR));
                return true;
            }
            return false;
        }
    }

    void onResult(@NonNull Status status);
}
