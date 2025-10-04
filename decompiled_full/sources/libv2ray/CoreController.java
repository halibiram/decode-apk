package libv2ray;

import go.Seq;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class CoreController implements Seq.Proxy {
    private final int refnum;

    static {
        Libv2ray.touch();
    }

    public CoreController(CoreCallbackHandler coreCallbackHandler) {
        int __NewCoreController = __NewCoreController(coreCallbackHandler);
        this.refnum = __NewCoreController;
        Seq.trackGoRef(__NewCoreController, this);
    }

    private static native int __NewCoreController(CoreCallbackHandler coreCallbackHandler);

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof CoreController)) {
            return false;
        }
        CoreController coreController = (CoreController) obj;
        CoreCallbackHandler callbackHandler = getCallbackHandler();
        CoreCallbackHandler callbackHandler2 = coreController.getCallbackHandler();
        if (callbackHandler == null) {
            if (callbackHandler2 != null) {
                return false;
            }
        } else if (!callbackHandler.equals(callbackHandler2)) {
            return false;
        }
        if (getIsRunning() != coreController.getIsRunning()) {
            return false;
        }
        return true;
    }

    public final native CoreCallbackHandler getCallbackHandler();

    public final native boolean getIsRunning();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getCallbackHandler(), Boolean.valueOf(getIsRunning())});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public native long measureDelay(String str);

    public native long queryStats(String str, String str2);

    public final native void setCallbackHandler(CoreCallbackHandler coreCallbackHandler);

    public final native void setIsRunning(boolean z);

    public native void startLoop(String str);

    public native void stopLoop();

    public String toString() {
        return "CoreController{CallbackHandler:" + getCallbackHandler() + ",IsRunning:" + getIsRunning() + ",}";
    }

    public CoreController(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }
}
