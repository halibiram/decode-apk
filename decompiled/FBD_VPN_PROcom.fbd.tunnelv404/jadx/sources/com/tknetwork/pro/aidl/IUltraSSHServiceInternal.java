package com.tknetwork.pro.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public interface IUltraSSHServiceInternal extends IInterface {
    public static final String DESCRIPTOR = new ObfuscatedString(new long[]{6278589788450694003L, -7015297049311625365L, 7606019493044595118L, 3947705429226947493L, 1270501193107317263L, -1515599421818142558L, 8217120104741543973L}).toString();

    /* loaded from: classes3.dex */
    public static class Default implements IUltraSSHServiceInternal {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.tknetwork.pro.aidl.IUltraSSHServiceInternal
        public void stopVPN() {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IUltraSSHServiceInternal {
        static final int TRANSACTION_stopVPN = 1;

        /* loaded from: classes3.dex */
        public static class Proxy implements IUltraSSHServiceInternal {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return new ObfuscatedString(new long[]{-3086316674219709923L, 291601534704654964L, 3467713367517608767L, -6410135064802679802L, 7771960035356526587L, -1537532135453911702L, 3223903551629504070L}).toString();
            }

            @Override // com.tknetwork.pro.aidl.IUltraSSHServiceInternal
            public void stopVPN() {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(new ObfuscatedString(new long[]{-2062528448128266606L, 5550781280553955509L, -9110269676765871009L, 1289735882860417749L, -1238268776767414474L, -8699629796627635134L, 5210470524064939109L}).toString());
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, new ObfuscatedString(new long[]{-6058581519575260819L, 6795572791355732668L, -8436145592790741938L, -4772404153744715233L, -7472496024351239604L, 7522693607369277888L, -5106825505330363410L}).toString());
        }

        public static IUltraSSHServiceInternal asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7811647801023711846L, 5975759141485185566L, 4503504403337094556L, -6673105944244862621L, -3026266686010460211L, 8811393132631365358L, 5124686122490087179L}).toString());
            if (queryLocalInterface != null && (queryLocalInterface instanceof IUltraSSHServiceInternal)) {
                return (IUltraSSHServiceInternal) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String obfuscatedString = new ObfuscatedString(new long[]{4168877895814130690L, 5272178890646839737L, -1333902182114528122L, -1969314788788486364L, -319654041977361515L, -2925121990575608252L, 7970556464515599239L}).toString();
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(obfuscatedString);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                stopVPN();
                parcel2.writeNoException();
                return true;
            }
            parcel2.writeString(obfuscatedString);
            return true;
        }
    }

    void stopVPN();
}
