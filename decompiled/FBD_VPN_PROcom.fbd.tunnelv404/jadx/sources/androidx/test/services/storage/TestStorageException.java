package androidx.test.services.storage;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TestStorageException extends RuntimeException {
    public TestStorageException(String str) {
        super(str);
    }

    public TestStorageException(String str, Throwable th) {
        super(str, th);
    }
}
