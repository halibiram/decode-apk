package com.google.android.gms.dynamic;

import android.os.IBinder;
import android.os.IInterface;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface IObjectWrapper extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class Stub extends com.google.android.gms.internal.common.zzb implements IObjectWrapper {
        public Stub() {
            super(new ObfuscatedString(new long[]{7355477146831439364L, -7494884295385346376L, -5595044414893191162L, -9092535894065642616L, -1857829130727140740L, 6468872456159202453L, 2021813498135144759L}).toString());
        }

        @NonNull
        public static IObjectWrapper asInterface(@NonNull IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{2513564540660505595L, -4008797157362615858L, 7080292992879855074L, 8108336322106696916L, 2745958118457794338L, -365007863797556556L, -3937706455288132389L}).toString());
            if (queryLocalInterface instanceof IObjectWrapper) {
                return (IObjectWrapper) queryLocalInterface;
            }
            return new zzb(iBinder);
        }
    }
}
