package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface ICancelToken extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements ICancelToken {
        public Stub() {
            super(new ObfuscatedString(new long[]{8891856249693740628L, -4415975853619508123L, 6994596965951314155L, 8810179393941835665L, 2029948901914403603L, -6955961004934613517L, -2901456977543631774L, 6893960289642637919L}).toString());
        }

        @NonNull
        public static ICancelToken asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{1487970680920587084L, 3539646071026850953L, 5297763491720886589L, 3408916848003035590L, 75947996848727889L, -3770800851341714861L, -3157354144924059199L, 6735880580890586213L}).toString());
            if (queryLocalInterface instanceof ICancelToken) {
                return (ICancelToken) queryLocalInterface;
            }
            return new zzx(iBinder);
        }

        @Override // com.google.android.gms.internal.common.zzb
        public final boolean zza(int i, @NonNull Parcel parcel, @NonNull Parcel parcel2, int i2) {
            if (i == 2) {
                cancel();
                return true;
            }
            return false;
        }
    }

    void cancel();
}
