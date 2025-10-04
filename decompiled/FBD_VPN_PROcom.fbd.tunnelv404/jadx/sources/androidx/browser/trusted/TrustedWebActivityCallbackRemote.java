package androidx.browser.trusted;

import android.os.Bundle;
import android.os.IBinder;
import android.support.customtabs.trusted.ITrustedWebActivityCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public class TrustedWebActivityCallbackRemote {
    private final ITrustedWebActivityCallback mCallbackBinder;

    private TrustedWebActivityCallbackRemote(@NonNull ITrustedWebActivityCallback iTrustedWebActivityCallback) {
        this.mCallbackBinder = iTrustedWebActivityCallback;
    }

    @Nullable
    public static TrustedWebActivityCallbackRemote fromBinder(@Nullable IBinder iBinder) {
        ITrustedWebActivityCallback asInterface;
        if (iBinder == null) {
            asInterface = null;
        } else {
            asInterface = ITrustedWebActivityCallback.Stub.asInterface(iBinder);
        }
        if (asInterface == null) {
            return null;
        }
        return new TrustedWebActivityCallbackRemote(asInterface);
    }

    public void runExtraCallback(@NonNull String str, @NonNull Bundle bundle) {
        this.mCallbackBinder.onExtraCallback(str, bundle);
    }
}
