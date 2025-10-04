package libv2ray;

import go.Seq;

/* loaded from: classes3.dex */
public abstract class Libv2ray {

    /* loaded from: classes3.dex */
    public static final class proxyCoreCallbackHandler implements Seq.Proxy, CoreCallbackHandler {
        private final int refnum;

        public proxyCoreCallbackHandler(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // libv2ray.CoreCallbackHandler
        public native long onEmitStatus(long j, String str);

        @Override // libv2ray.CoreCallbackHandler
        public native long shutdown();

        @Override // libv2ray.CoreCallbackHandler
        public native long startup();
    }

    static {
        Seq.touch();
        _init();
    }

    private Libv2ray() {
    }

    private static native void _init();

    public static native String checkVersionX();

    public static native void initCoreEnv(String str, String str2);

    public static native long measureOutboundDelay(String str, String str2);

    public static native CoreController newCoreController(CoreCallbackHandler coreCallbackHandler);

    public static void touch() {
    }
}
