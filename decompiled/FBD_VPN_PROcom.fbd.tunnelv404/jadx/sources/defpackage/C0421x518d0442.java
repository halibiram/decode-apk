package defpackage;

import java.util.concurrent.locks.ReentrantLock;
import okio.AsyncTimeout;

/* renamed from: 돛듸듼됐됫땳뎹돠돵됐됨돠땍뒵됫땀됨돳둑땔땭딐딽듨땥땰뒀땱둑땟뒙땭뒷땔돤둑땄딀돨땡듻땲듬땪뎠돤됐딹땫돸뒘들땬뒷됐된뒐땦땣뒷땥듐딽돸두땮땄뒤돵듼딟됴뒀따땦딤땤듌땣돼딻땨뎡땣듌딤돛뒐딠둠땬뎡땲됐듐두딸듻뎠딨땄둠듻땮둣드들땟딜듻듬땐듐땣디들뒵땣듽땹땝땁딝땅딸뎸땲돤듽든, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0421x518d0442 extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        C0420x2e58990a c0420x2e58990a;
        ReentrantLock reentrantLock;
        C0420x2e58990a c0420x2e58990a2;
        AsyncTimeout m3079x1378447b;
        AsyncTimeout asyncTimeout;
        C0420x2e58990a unused;
        while (true) {
            try {
                c0420x2e58990a = AsyncTimeout.f3557x95f25580;
                c0420x2e58990a.getClass();
                reentrantLock = AsyncTimeout.f3558x3db60231;
                reentrantLock.lock();
                try {
                    c0420x2e58990a2 = AsyncTimeout.f3557x95f25580;
                    c0420x2e58990a2.getClass();
                    m3079x1378447b = C0420x2e58990a.m3079x1378447b();
                    asyncTimeout = AsyncTimeout.f3562x8c6fc18a;
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (InterruptedException unused2) {
            }
            if (m3079x1378447b == asyncTimeout) {
                unused = AsyncTimeout.f3557x95f25580;
                AsyncTimeout.f3562x8c6fc18a = null;
                reentrantLock.unlock();
                return;
            } else {
                reentrantLock.unlock();
                if (m3079x1378447b != null) {
                    m3079x1378447b.timedOut();
                }
            }
        }
    }
}
