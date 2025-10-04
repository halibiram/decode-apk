package androidx.test.platform.io;

import androidx.test.internal.platform.ServiceLoaderWrapper;
import androidx.test.internal.util.Checks;
import defpackage.C0370x5ac5058d;

/* loaded from: classes.dex */
public final class PlatformTestStorageRegistry {
    private static PlatformTestStorage testStorageInstance = (PlatformTestStorage) ServiceLoaderWrapper.loadSingleService(PlatformTestStorage.class, new C0370x5ac5058d(20));

    private PlatformTestStorageRegistry() {
    }

    public static synchronized PlatformTestStorage getInstance() {
        PlatformTestStorage platformTestStorage;
        synchronized (PlatformTestStorageRegistry.class) {
            platformTestStorage = testStorageInstance;
        }
        return platformTestStorage;
    }

    public static synchronized void registerInstance(PlatformTestStorage platformTestStorage) {
        synchronized (PlatformTestStorageRegistry.class) {
            testStorageInstance = (PlatformTestStorage) Checks.checkNotNull(platformTestStorage);
        }
    }
}
