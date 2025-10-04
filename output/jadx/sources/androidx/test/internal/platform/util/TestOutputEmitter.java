package androidx.test.internal.platform.util;

import androidx.annotation.RestrictTo;
import androidx.test.internal.platform.ServiceLoaderWrapper;
import defpackage.C0370x5ac5058d;
import java.io.Serializable;
import java.util.Map;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class TestOutputEmitter {
    private static final TestOutputHandler debugHandler = (TestOutputHandler) ServiceLoaderWrapper.loadSingleService(TestOutputHandler.class, new C0370x5ac5058d(23));

    private TestOutputEmitter() {
    }

    public static boolean addOutputProperties(Map<String, Serializable> map) {
        return debugHandler.addOutputProperties(map);
    }

    public static boolean captureWindowHierarchy(String str) {
        return debugHandler.captureWindowHierarchy(str);
    }

    public static void dumpThreadStates(String str) {
        debugHandler.dumpThreadStates(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TestOutputHandler lambda$static$0() {
        return new TestOutputHandler() { // from class: androidx.test.internal.platform.util.TestOutputEmitter.1
            @Override // androidx.test.internal.platform.util.TestOutputHandler
            public boolean addOutputProperties(Map<String, Serializable> map) {
                return false;
            }

            @Override // androidx.test.internal.platform.util.TestOutputHandler
            public boolean captureWindowHierarchy(String str) {
                return false;
            }

            @Override // androidx.test.internal.platform.util.TestOutputHandler
            public void dumpThreadStates(String str) {
            }

            @Override // androidx.test.internal.platform.util.TestOutputHandler
            public boolean takeScreenshot(String str) {
                return false;
            }
        };
    }

    public static boolean takeScreenshot(String str) {
        return debugHandler.takeScreenshot(str);
    }
}
