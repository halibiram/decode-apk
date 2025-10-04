package android.support.customtabs;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.customtabs.ICustomTabsCallback;
import java.util.List;

/* loaded from: classes.dex */
public interface ICustomTabsService extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ICustomTabsService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public Bundle extraCommand(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
            return 0;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle) {
            return false;
        }

        @Override // android.support.customtabs.ICustomTabsService
        public boolean warmup(long j) {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ICustomTabsService {
        private static final String DESCRIPTOR = "android.support.customtabs.ICustomTabsService";
        static final int TRANSACTION_extraCommand = 5;
        static final int TRANSACTION_mayLaunchUrl = 4;
        static final int TRANSACTION_newSession = 3;
        static final int TRANSACTION_newSessionWithExtras = 10;
        static final int TRANSACTION_postMessage = 8;
        static final int TRANSACTION_receiveFile = 12;
        static final int TRANSACTION_requestPostMessageChannel = 7;
        static final int TRANSACTION_requestPostMessageChannelWithExtras = 11;
        static final int TRANSACTION_updateVisuals = 6;
        static final int TRANSACTION_validateRelationship = 9;
        static final int TRANSACTION_warmup = 2;

        /* loaded from: classes.dex */
        public static class Proxy implements ICustomTabsService {
            public static ICustomTabsService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.support.customtabs.ICustomTabsService
            public Bundle extraCommand(String str, Bundle bundle) {
                Bundle bundle2;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        Bundle extraCommand = Stub.getDefaultImpl().extraCommand(str, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return extraCommand;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return bundle2;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeTypedList(list);
                    if (!this.mRemote.transact(4, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean mayLaunchUrl = Stub.getDefaultImpl().mayLaunchUrl(iCustomTabsCallback, uri, bundle, list);
                        obtain2.recycle();
                        obtain.recycle();
                        return mayLaunchUrl;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean newSession(ICustomTabsCallback iCustomTabsCallback) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = false;
                    if (!this.mRemote.transact(3, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean newSession = Stub.getDefaultImpl().newSession(iCustomTabsCallback);
                        obtain2.recycle();
                        obtain.recycle();
                        return newSession;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(10, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean newSessionWithExtras = Stub.getDefaultImpl().newSessionWithExtras(iCustomTabsCallback, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return newSessionWithExtras;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeString(str);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        int postMessage = Stub.getDefaultImpl().postMessage(iCustomTabsCallback, str, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return postMessage;
                    }
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(12, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean receiveFile = Stub.getDefaultImpl().receiveFile(iCustomTabsCallback, uri, i, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return receiveFile;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(7, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean requestPostMessageChannel = Stub.getDefaultImpl().requestPostMessageChannel(iCustomTabsCallback, uri);
                        obtain2.recycle();
                        obtain.recycle();
                        return requestPostMessageChannel;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(11, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean requestPostMessageChannelWithExtras = Stub.getDefaultImpl().requestPostMessageChannelWithExtras(iCustomTabsCallback, uri, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return requestPostMessageChannelWithExtras;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    boolean z = true;
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(6, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean updateVisuals = Stub.getDefaultImpl().updateVisuals(iCustomTabsCallback, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return updateVisuals;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle) {
                IBinder iBinder;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iCustomTabsCallback != null) {
                        iBinder = iCustomTabsCallback.asBinder();
                    } else {
                        iBinder = null;
                    }
                    obtain.writeStrongBinder(iBinder);
                    obtain.writeInt(i);
                    boolean z = true;
                    if (uri != null) {
                        obtain.writeInt(1);
                        uri.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(9, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        boolean validateRelationship = Stub.getDefaultImpl().validateRelationship(iCustomTabsCallback, i, uri, bundle);
                        obtain2.recycle();
                        obtain.recycle();
                        return validateRelationship;
                    }
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    return z;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }

            @Override // android.support.customtabs.ICustomTabsService
            public boolean warmup(long j) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    boolean z = false;
                    if (!this.mRemote.transact(2, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().warmup(j);
                    }
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICustomTabsService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ICustomTabsService)) {
                return (ICustomTabsService) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        public static ICustomTabsService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICustomTabsService iCustomTabsService) {
            if (Proxy.sDefaultImpl == null) {
                if (iCustomTabsService != null) {
                    Proxy.sDefaultImpl = iCustomTabsService;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            Uri uri;
            Uri uri2;
            Uri uri3;
            Uri uri4;
            if (i != 1598968902) {
                Bundle bundle = null;
                Bundle bundle2 = null;
                Bundle bundle3 = null;
                Bundle bundle4 = null;
                Bundle bundle5 = null;
                Bundle bundle6 = null;
                Uri uri5 = null;
                Bundle bundle7 = null;
                Bundle bundle8 = null;
                switch (i) {
                    case 2:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean warmup = warmup(parcel.readLong());
                        parcel2.writeNoException();
                        parcel2.writeInt(warmup ? 1 : 0);
                        return true;
                    case 3:
                        parcel.enforceInterface(DESCRIPTOR);
                        boolean newSession = newSession(ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        parcel2.writeInt(newSession ? 1 : 0);
                        return true;
                    case 4:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean mayLaunchUrl = mayLaunchUrl(asInterface, uri, bundle, parcel.createTypedArrayList(Bundle.CREATOR));
                        parcel2.writeNoException();
                        parcel2.writeInt(mayLaunchUrl ? 1 : 0);
                        return true;
                    case 5:
                        parcel.enforceInterface(DESCRIPTOR);
                        String readString = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle8 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        Bundle extraCommand = extraCommand(readString, bundle8);
                        parcel2.writeNoException();
                        if (extraCommand != null) {
                            parcel2.writeInt(1);
                            extraCommand.writeToParcel(parcel2, 1);
                        } else {
                            parcel2.writeInt(0);
                        }
                        return true;
                    case 6:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface2 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle7 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean updateVisuals = updateVisuals(asInterface2, bundle7);
                        parcel2.writeNoException();
                        parcel2.writeInt(updateVisuals ? 1 : 0);
                        return true;
                    case 7:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface3 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri5 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        }
                        boolean requestPostMessageChannel = requestPostMessageChannel(asInterface3, uri5);
                        parcel2.writeNoException();
                        parcel2.writeInt(requestPostMessageChannel ? 1 : 0);
                        return true;
                    case 8:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface4 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        String readString2 = parcel.readString();
                        if (parcel.readInt() != 0) {
                            bundle6 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        int postMessage = postMessage(asInterface4, readString2, bundle6);
                        parcel2.writeNoException();
                        parcel2.writeInt(postMessage);
                        return true;
                    case 9:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface5 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        int readInt = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            uri2 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri2 = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle5 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean validateRelationship = validateRelationship(asInterface5, readInt, uri2, bundle5);
                        parcel2.writeNoException();
                        parcel2.writeInt(validateRelationship ? 1 : 0);
                        return true;
                    case 10:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface6 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean newSessionWithExtras = newSessionWithExtras(asInterface6, bundle4);
                        parcel2.writeNoException();
                        parcel2.writeInt(newSessionWithExtras ? 1 : 0);
                        return true;
                    case 11:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface7 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri3 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri3 = null;
                        }
                        if (parcel.readInt() != 0) {
                            bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean requestPostMessageChannelWithExtras = requestPostMessageChannelWithExtras(asInterface7, uri3, bundle3);
                        parcel2.writeNoException();
                        parcel2.writeInt(requestPostMessageChannelWithExtras ? 1 : 0);
                        return true;
                    case 12:
                        parcel.enforceInterface(DESCRIPTOR);
                        ICustomTabsCallback asInterface8 = ICustomTabsCallback.Stub.asInterface(parcel.readStrongBinder());
                        if (parcel.readInt() != 0) {
                            uri4 = (Uri) Uri.CREATOR.createFromParcel(parcel);
                        } else {
                            uri4 = null;
                        }
                        int readInt2 = parcel.readInt();
                        if (parcel.readInt() != 0) {
                            bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        boolean receiveFile = receiveFile(asInterface8, uri4, readInt2, bundle2);
                        parcel2.writeNoException();
                        parcel2.writeInt(receiveFile ? 1 : 0);
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString(DESCRIPTOR);
            return true;
        }
    }

    Bundle extraCommand(String str, Bundle bundle);

    boolean mayLaunchUrl(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle, List<Bundle> list);

    boolean newSession(ICustomTabsCallback iCustomTabsCallback);

    boolean newSessionWithExtras(ICustomTabsCallback iCustomTabsCallback, Bundle bundle);

    int postMessage(ICustomTabsCallback iCustomTabsCallback, String str, Bundle bundle);

    boolean receiveFile(ICustomTabsCallback iCustomTabsCallback, Uri uri, int i, Bundle bundle);

    boolean requestPostMessageChannel(ICustomTabsCallback iCustomTabsCallback, Uri uri);

    boolean requestPostMessageChannelWithExtras(ICustomTabsCallback iCustomTabsCallback, Uri uri, Bundle bundle);

    boolean updateVisuals(ICustomTabsCallback iCustomTabsCallback, Bundle bundle);

    boolean validateRelationship(ICustomTabsCallback iCustomTabsCallback, int i, Uri uri, Bundle bundle);

    boolean warmup(long j);
}
