package de.blinkt.openvpn.core;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes3.dex */
public interface IStatusCallbacks extends IInterface {
    public static final String DESCRIPTOR = "de.blinkt.openvpn.core.IStatusCallbacks";

    /* loaded from: classes3.dex */
    public static class Default implements IStatusCallbacks {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IStatusCallbacks
        public void connectedVPN(String str) {
        }

        @Override // de.blinkt.openvpn.core.IStatusCallbacks
        public void newLogItem(LogItem logItem) {
        }

        @Override // de.blinkt.openvpn.core.IStatusCallbacks
        public void updateByteCount(long j, long j2) {
        }

        @Override // de.blinkt.openvpn.core.IStatusCallbacks
        public void updateStateString(String str, String str2, int i, ConnectionStatus connectionStatus, Intent intent) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IStatusCallbacks {
        public Stub() {
            attachInterface(this, IStatusCallbacks.DESCRIPTOR);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [de.blinkt.openvpn.core.뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, de.blinkt.openvpn.core.IStatusCallbacks, java.lang.Object] */
        public static IStatusCallbacks asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IStatusCallbacks.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IStatusCallbacks)) {
                return (IStatusCallbacks) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.f1045xfbe0c504 = iBinder;
            return obj;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            ConnectionStatus connectionStatus;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IStatusCallbacks.DESCRIPTOR);
            }
            if (i != 1598968902) {
                Object obj = null;
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return super.onTransact(i, parcel, parcel2, i2);
                            }
                            connectedVPN(parcel.readString());
                        } else {
                            updateByteCount(parcel.readLong(), parcel.readLong());
                        }
                    } else {
                        String readString = parcel.readString();
                        String readString2 = parcel.readString();
                        int readInt = parcel.readInt();
                        Parcelable.Creator<ConnectionStatus> creator = ConnectionStatus.CREATOR;
                        if (parcel.readInt() != 0) {
                            connectionStatus = creator.createFromParcel(parcel);
                        } else {
                            connectionStatus = null;
                        }
                        ConnectionStatus connectionStatus2 = connectionStatus;
                        Parcelable.Creator creator2 = Intent.CREATOR;
                        if (parcel.readInt() != 0) {
                            obj = creator2.createFromParcel(parcel);
                        }
                        updateStateString(readString, readString2, readInt, connectionStatus2, (Intent) obj);
                    }
                } else {
                    Parcelable.Creator<LogItem> creator3 = LogItem.CREATOR;
                    if (parcel.readInt() != 0) {
                        obj = creator3.createFromParcel(parcel);
                    }
                    newLogItem((LogItem) obj);
                }
                return true;
            }
            parcel2.writeString(IStatusCallbacks.DESCRIPTOR);
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public static class _Parcel {
    }

    void connectedVPN(String str);

    void newLogItem(LogItem logItem);

    void updateByteCount(long j, long j2);

    void updateStateString(String str, String str2, int i, ConnectionStatus connectionStatus, Intent intent);
}
