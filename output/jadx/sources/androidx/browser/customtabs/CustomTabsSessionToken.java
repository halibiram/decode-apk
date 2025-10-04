package androidx.browser.customtabs;

import android.app.PendingIntent;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.app.BundleCompat;

/* loaded from: classes.dex */
public class CustomTabsSessionToken {
    private static final String TAG = "CustomTabsSessionToken";

    @Nullable
    private final CustomTabsCallback mCallback;

    @Nullable
    final ICustomTabsCallback mCallbackBinder;

    @Nullable
    private final PendingIntent mSessionId;

    /* loaded from: classes.dex */
    public static class MockCallback extends ICustomTabsCallback.Stub {
        @Override // android.support.customtabs.ICustomTabsCallback.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void extraCallback(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public Bundle extraCallbackWithResult(String str, Bundle bundle) {
            return null;
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onMessageChannelReady(Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onNavigationEvent(int i, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onPostMessage(String str, Bundle bundle) {
        }

        @Override // android.support.customtabs.ICustomTabsCallback
        public void onRelationshipValidationResult(int i, Uri uri, boolean z, Bundle bundle) {
        }
    }

    public CustomTabsSessionToken(@Nullable ICustomTabsCallback iCustomTabsCallback, @Nullable PendingIntent pendingIntent) {
        CustomTabsCallback customTabsCallback;
        if (iCustomTabsCallback == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.mCallbackBinder = iCustomTabsCallback;
        this.mSessionId = pendingIntent;
        if (iCustomTabsCallback == null) {
            customTabsCallback = null;
        } else {
            customTabsCallback = new CustomTabsCallback() { // from class: androidx.browser.customtabs.CustomTabsSessionToken.1
                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void extraCallback(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.extraCallback(str, bundle);
                    } catch (RemoteException unused) {
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                @NonNull
                public Bundle extraCallbackWithResult(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        return CustomTabsSessionToken.this.mCallbackBinder.extraCallbackWithResult(str, bundle);
                    } catch (RemoteException unused) {
                        return null;
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onMessageChannelReady(@Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.onMessageChannelReady(bundle);
                    } catch (RemoteException unused) {
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onNavigationEvent(int i, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.onNavigationEvent(i, bundle);
                    } catch (RemoteException unused) {
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onPostMessage(@NonNull String str, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.onPostMessage(str, bundle);
                    } catch (RemoteException unused) {
                    }
                }

                @Override // androidx.browser.customtabs.CustomTabsCallback
                public void onRelationshipValidationResult(int i, @NonNull Uri uri, boolean z, @Nullable Bundle bundle) {
                    try {
                        CustomTabsSessionToken.this.mCallbackBinder.onRelationshipValidationResult(i, uri, z, bundle);
                    } catch (RemoteException unused) {
                    }
                }
            };
        }
        this.mCallback = customTabsCallback;
    }

    @NonNull
    public static CustomTabsSessionToken createMockSessionTokenForTesting() {
        return new CustomTabsSessionToken(new MockCallback(), null);
    }

    private IBinder getCallbackBinderAssertNotNull() {
        ICustomTabsCallback iCustomTabsCallback = this.mCallbackBinder;
        if (iCustomTabsCallback != null) {
            return iCustomTabsCallback.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    @Nullable
    public static CustomTabsSessionToken getSessionTokenFromIntent(@NonNull Intent intent) {
        Bundle extras = intent.getExtras();
        ICustomTabsCallback iCustomTabsCallback = null;
        if (extras == null) {
            return null;
        }
        IBinder binder = BundleCompat.getBinder(extras, CustomTabsIntent.EXTRA_SESSION);
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra(CustomTabsIntent.EXTRA_SESSION_ID);
        if (binder == null && pendingIntent == null) {
            return null;
        }
        if (binder != null) {
            iCustomTabsCallback = ICustomTabsCallback.Stub.asInterface(binder);
        }
        return new CustomTabsSessionToken(iCustomTabsCallback, pendingIntent);
    }

    public boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof CustomTabsSessionToken)) {
            return false;
        }
        CustomTabsSessionToken customTabsSessionToken = (CustomTabsSessionToken) obj;
        PendingIntent id = customTabsSessionToken.getId();
        PendingIntent pendingIntent = this.mSessionId;
        boolean z2 = true;
        if (pendingIntent == null) {
            z = true;
        } else {
            z = false;
        }
        if (id != null) {
            z2 = false;
        }
        if (z != z2) {
            return false;
        }
        if (pendingIntent != null) {
            return pendingIntent.equals(id);
        }
        return getCallbackBinderAssertNotNull().equals(customTabsSessionToken.getCallbackBinderAssertNotNull());
    }

    @Nullable
    public CustomTabsCallback getCallback() {
        return this.mCallback;
    }

    @Nullable
    public IBinder getCallbackBinder() {
        ICustomTabsCallback iCustomTabsCallback = this.mCallbackBinder;
        if (iCustomTabsCallback == null) {
            return null;
        }
        return iCustomTabsCallback.asBinder();
    }

    @Nullable
    public PendingIntent getId() {
        return this.mSessionId;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasCallback() {
        if (this.mCallbackBinder != null) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean hasId() {
        if (this.mSessionId != null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.mSessionId;
        if (pendingIntent != null) {
            return pendingIntent.hashCode();
        }
        return getCallbackBinderAssertNotNull().hashCode();
    }

    public boolean isAssociatedWith(@NonNull CustomTabsSession customTabsSession) {
        return customTabsSession.getBinder().equals(this.mCallbackBinder);
    }
}
