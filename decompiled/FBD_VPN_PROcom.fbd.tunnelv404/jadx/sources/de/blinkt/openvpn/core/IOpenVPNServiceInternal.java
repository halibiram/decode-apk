package de.blinkt.openvpn.core;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes3.dex */
public interface IOpenVPNServiceInternal extends IInterface {
    public static final String DESCRIPTOR = "de.blinkt.openvpn.core.IOpenVPNServiceInternal";

    /* loaded from: classes3.dex */
    public static class Default implements IOpenVPNServiceInternal {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
        public void challengeResponse(String str) {
        }

        @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
        public boolean protect(int i) {
            return false;
        }

        @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
        public boolean stopVPN(boolean z) {
            return false;
        }

        @Override // de.blinkt.openvpn.core.IOpenVPNServiceInternal
        public void userPause(boolean z) {
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class Stub extends Binder implements IOpenVPNServiceInternal {
        public Stub() {
            attachInterface(this, IOpenVPNServiceInternal.DESCRIPTOR);
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [de.blinkt.openvpn.core.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, java.lang.Object, de.blinkt.openvpn.core.IOpenVPNServiceInternal] */
        public static IOpenVPNServiceInternal asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IOpenVPNServiceInternal.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOpenVPNServiceInternal)) {
                return (IOpenVPNServiceInternal) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.f1043xfbe0c504 = iBinder;
            return obj;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(IOpenVPNServiceInternal.DESCRIPTOR);
            }
            if (i != 1598968902) {
                if (i != 1) {
                    boolean z = false;
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return super.onTransact(i, parcel, parcel2, i2);
                            }
                            challengeResponse(parcel.readString());
                            parcel2.writeNoException();
                        } else {
                            if (parcel.readInt() != 0) {
                                z = true;
                            }
                            boolean stopVPN = stopVPN(z);
                            parcel2.writeNoException();
                            parcel2.writeInt(stopVPN ? 1 : 0);
                        }
                    } else {
                        if (parcel.readInt() != 0) {
                            z = true;
                        }
                        userPause(z);
                        parcel2.writeNoException();
                    }
                } else {
                    boolean protect = protect(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(protect ? 1 : 0);
                }
                return true;
            }
            parcel2.writeString(IOpenVPNServiceInternal.DESCRIPTOR);
            return true;
        }
    }

    void challengeResponse(String str);

    boolean protect(int i);

    boolean stopVPN(boolean z);

    void userPause(boolean z);
}
