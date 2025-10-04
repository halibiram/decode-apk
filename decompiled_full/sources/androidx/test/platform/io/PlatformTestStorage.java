package androidx.test.platform.io;

import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public interface PlatformTestStorage {
    void addOutputProperties(Map<String, Serializable> map);

    String getInputArg(String str);

    Map<String, String> getInputArgs();

    Uri getInputFileUri(@NonNull String str);

    Uri getOutputFileUri(@NonNull String str);

    Map<String, Serializable> getOutputProperties();

    boolean isTestStorageFilePath(@NonNull String str);

    InputStream openInputFile(String str);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    InputStream openInternalInputFile(String str);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    OutputStream openInternalOutputFile(String str);

    OutputStream openOutputFile(String str);

    OutputStream openOutputFile(String str, boolean z);
}
