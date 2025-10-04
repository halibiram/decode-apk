package org.junit.internal.management;

/* loaded from: classes3.dex */
final class FakeThreadMXBean implements ThreadMXBean {
    @Override // org.junit.internal.management.ThreadMXBean
    public long getThreadCpuTime(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // org.junit.internal.management.ThreadMXBean
    public boolean isThreadCpuTimeSupported() {
        return false;
    }
}
