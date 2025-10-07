package androidx.test.platform.device;

import androidx.test.platform.TestFrameworkException;

/* loaded from: classes.dex */
public class UnsupportedDeviceOperationException extends RuntimeException implements TestFrameworkException {
    public UnsupportedDeviceOperationException(String str) {
        super(str);
    }

    public UnsupportedDeviceOperationException(String str, Throwable th) {
        super(str, th);
    }
}
