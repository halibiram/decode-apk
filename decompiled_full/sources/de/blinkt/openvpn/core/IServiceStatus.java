package de.blinkt.openvpn.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import de.blinkt.openvpn.core.IStatusCallbacks;

/* loaded from: classes3.dex */
public interface IServiceStatus extends IInterface {
    public static final String DESCRIPTOR = "de.blinkt.openvpn.core.IServiceStatus";

    /* loaded from: classes3.dex */
    public static class Default implements IServiceStatus {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IServiceStatus
        public String getLastConnectedVPN() {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IServiceStatus
        public TrafficHistory getTrafficHistory() {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IServiceStatus
        public ParcelFileDescriptor registerStatusCallback(IStatusCallbacks iStatusCallbacks) {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IServiceStatus
        public void setCachedPassword(String str, int i, String str2) {
        }

        @Override // de.blinkt.openvpn.core.IServiceStatus
        public void unregisterStatusCallback(IStatusCallbacks iStatusCallbacks) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IServiceStatus {
        public Stub() {
            attachInterface(this, IServiceStatus.DESCRIPTOR);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [de.blinkt.openvpn.core.IServiceStatus, java.lang.Object, de.blinkt.openvpn.core.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫] */
        public static IServiceStatus asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IServiceStatus.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IServiceStatus)) {
                return (IServiceStatus) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.f1044xfbe0c504 = iBinder;
            return obj;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IServiceStatus.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                if (i != 5) {
                                    return super.onTransact(i, parcel, parcel2, i2);
                                }
                                TrafficHistory trafficHistory = getTrafficHistory();
                                parcel2.writeNoException();
                                if (trafficHistory != null) {
                                    parcel2.writeInt(1);
                                    trafficHistory.writeToParcel(parcel2, 1);
                                } else {
                                    parcel2.writeInt(0);
                                }
                            } else {
                                setCachedPassword(parcel.readString(), parcel.readInt(), parcel.readString());
                                parcel2.writeNoException();
                            }
                        } else {
                            String lastConnectedVPN = getLastConnectedVPN();
                            parcel2.writeNoException();
                            parcel2.writeString(lastConnectedVPN);
                        }
                    } else {
                        unregisterStatusCallback(IStatusCallbacks.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                    }
                } else {
                    ParcelFileDescriptor registerStatusCallback = registerStatusCallback(IStatusCallbacks.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    if (registerStatusCallback != null) {
                        parcel2.writeInt(1);
                        registerStatusCallback.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                }
                return true;
            }
            parcel2.writeString(IServiceStatus.DESCRIPTOR);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class _Parcel {
    }

    String getLastConnectedVPN();

    TrafficHistory getTrafficHistory();

    ParcelFileDescriptor registerStatusCallback(IStatusCallbacks iStatusCallbacks);

    void setCachedPassword(String str, int i, String str2);

    void unregisterStatusCallback(IStatusCallbacks iStatusCallbacks);
}
