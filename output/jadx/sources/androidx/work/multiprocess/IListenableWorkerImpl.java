package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.RestrictTo;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import kotlin.text.Typography;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public interface IListenableWorkerImpl extends IInterface {
    public static final String DESCRIPTOR = "androidx$work$multiprocess$IListenableWorkerImpl".replace(Typography.dollar, '.');

    /* loaded from: classes.dex */
    public static class Default implements IListenableWorkerImpl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.work.multiprocess.IListenableWorkerImpl
        public void interrupt(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback) {
        }

        @Override // androidx.work.multiprocess.IListenableWorkerImpl
        public void startWork(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IListenableWorkerImpl {
        static final int TRANSACTION_interrupt = 2;
        static final int TRANSACTION_startWork = 1;

        /* loaded from: classes.dex */
        public static class Proxy implements IListenableWorkerImpl {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return IListenableWorkerImpl.DESCRIPTOR;
            }

            @Override // androidx.work.multiprocess.IListenableWorkerImpl
            public void interrupt(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IListenableWorkerImpl.DESCRIPTOR);
                    obtain.writeByteArray(bArr);
                    obtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IListenableWorkerImpl
            public void startWork(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IListenableWorkerImpl.DESCRIPTOR);
                    obtain.writeByteArray(bArr);
                    obtain.writeStrongInterface(iWorkManagerImplCallback);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, IListenableWorkerImpl.DESCRIPTOR);
        }

        public static IListenableWorkerImpl asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IListenableWorkerImpl.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IListenableWorkerImpl)) {
                return (IListenableWorkerImpl) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = IListenableWorkerImpl.DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                interrupt(parcel.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
            } else {
                startWork(parcel.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(parcel.readStrongBinder()));
            }
            return true;
        }
    }

    void interrupt(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback);

    void startWork(byte[] bArr, IWorkManagerImplCallback iWorkManagerImplCallback);
}
