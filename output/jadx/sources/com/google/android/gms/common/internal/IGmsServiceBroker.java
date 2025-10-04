package com.google.android.gms.common.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public interface IGmsServiceBroker extends IInterface {

    /* loaded from: classes2.dex */
    public static abstract class Stub extends Binder implements IGmsServiceBroker {
        public Stub() {
            attachInterface(this, new ObfuscatedString(new long[]{-4066128004322290030L, 266333440309113059L, 7106210929391262721L, 1968552592489561068L, 1722163356087651222L, -1465042960940208656L, 7388072691894514937L, 3969829946067592172L}).toString());
        }

        @Override // android.os.IInterface
        @NonNull
        @CanIgnoreReturnValue
        @KeepForSdk
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i2) {
            IGmsCallbacks zzabVar;
            if (i > 16777215) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(new ObfuscatedString(new long[]{4096137988419333943L, -1532962357919698081L, -1602836252062271767L, 338056483861478367L, -2271833498130356321L, 6876471679514432885L, -7745884827639093277L, -2928015922245945153L}).toString());
            IBinder readStrongBinder = parcel.readStrongBinder();
            GetServiceRequest getServiceRequest = null;
            if (readStrongBinder == null) {
                zzabVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{2657367248662420025L, 8737381217098433831L, 3728227008284836250L, -2197891857053657043L, -4422465740017195994L, -8375825393397250809L, -3293192669378518198L, -7966119702922907464L}).toString());
                if (queryLocalInterface instanceof IGmsCallbacks) {
                    zzabVar = (IGmsCallbacks) queryLocalInterface;
                } else {
                    zzabVar = new zzab(readStrongBinder);
                }
            }
            if (i == 46) {
                if (parcel.readInt() != 0) {
                    getServiceRequest = GetServiceRequest.CREATOR.createFromParcel(parcel);
                }
                getService(zzabVar, getServiceRequest);
                Preconditions.checkNotNull(parcel2);
                parcel2.writeNoException();
                return true;
            }
            if (i == 47) {
                if (parcel.readInt() != 0) {
                    zzak.CREATOR.createFromParcel(parcel);
                }
                throw new UnsupportedOperationException();
            }
            parcel.readInt();
            if (i != 4) {
                parcel.readString();
                if (i != 1) {
                    if (i != 2 && i != 23 && i != 25 && i != 27) {
                        if (i != 30) {
                            if (i != 34) {
                                if (i != 41 && i != 43 && i != 37 && i != 38) {
                                    switch (i) {
                                        case 9:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            parcel.readString();
                                            parcel.readStrongBinder();
                                            parcel.readString();
                                            if (parcel.readInt() != 0) {
                                                break;
                                            }
                                            break;
                                        case 10:
                                            parcel.readString();
                                            parcel.createStringArray();
                                            break;
                                        case 19:
                                            parcel.readStrongBinder();
                                            if (parcel.readInt() != 0) {
                                                break;
                                            }
                                            break;
                                    }
                                }
                            } else {
                                parcel.readString();
                            }
                        }
                        parcel.createStringArray();
                        parcel.readString();
                        if (parcel.readInt() != 0) {
                        }
                    }
                    if (parcel.readInt() != 0) {
                    }
                } else {
                    parcel.readString();
                    parcel.createStringArray();
                    parcel.readString();
                    if (parcel.readInt() != 0) {
                    }
                }
            }
            throw new UnsupportedOperationException();
        }
    }

    @KeepForSdk
    void getService(@NonNull IGmsCallbacks iGmsCallbacks, @Nullable GetServiceRequest getServiceRequest);
}
