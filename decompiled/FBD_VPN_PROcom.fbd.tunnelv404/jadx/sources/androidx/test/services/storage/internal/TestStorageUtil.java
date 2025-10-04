package androidx.test.services.storage.internal;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import androidx.test.internal.util.Checks;
import androidx.test.services.storage.TestStorageException;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.io.OutputStream;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public final class TestStorageUtil {
    private TestStorageUtil() {
    }

    public static InputStream getInputStream(Uri uri, ContentResolver contentResolver) {
        Checks.checkNotNull(uri);
        ContentProviderClient contentProviderClient = null;
        try {
            try {
                contentProviderClient = makeContentProviderClient(contentResolver, uri);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new ParcelFileDescriptor.AutoCloseInputStream(contentProviderClient.openFile(uri, "r")));
                contentProviderClient.release();
                return bufferedInputStream;
            } catch (RemoteException e) {
                throw new TestStorageException("Unable to access content provider: " + uri, e);
            }
        } catch (Throwable th) {
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
            throw th;
        }
    }

    public static OutputStream getOutputStream(Uri uri, ContentResolver contentResolver) {
        return getOutputStream(uri, contentResolver, false);
    }

    private static ContentProviderClient makeContentProviderClient(ContentResolver contentResolver, Uri uri) {
        Checks.checkNotNull(contentResolver);
        ContentProviderClient acquireContentProviderClient = contentResolver.acquireContentProviderClient(uri);
        if (acquireContentProviderClient != null) {
            return acquireContentProviderClient;
        }
        throw new TestStorageException(String.format("No content provider registered for: %s. Are all test services apks installed?", uri));
    }

    public static OutputStream getOutputStream(Uri uri, ContentResolver contentResolver, boolean z) {
        Checks.checkNotNull(uri);
        ContentProviderClient contentProviderClient = null;
        try {
            try {
                contentProviderClient = makeContentProviderClient(contentResolver, uri);
                ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(contentProviderClient.openFile(uri, z ? "wa" : "wt"));
                contentProviderClient.release();
                return autoCloseOutputStream;
            } catch (RemoteException e) {
                throw new TestStorageException("Unable to access content provider: " + uri, e);
            }
        } catch (Throwable th) {
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
            throw th;
        }
    }
}
