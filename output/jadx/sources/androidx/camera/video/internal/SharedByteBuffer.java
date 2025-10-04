package androidx.camera.video.internal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.camera.core.Logger;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import defpackage.AbstractC0362x4440ab85;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class SharedByteBuffer implements Closeable {
    private static final String TAG = "SharedByteBuffer";
    private final Object mCloseLock = new Object();

    @GuardedBy("mCloseLock")
    private boolean mClosed = false;
    private final Pair<Executor, Runnable> mFinalCloseAction;
    private final int mShareId;
    private final ByteBuffer mSharedByteBuffer;

    @GuardedBy("mCloseLock")
    private final AtomicInteger mSharedRefCount;

    private SharedByteBuffer(@NonNull ByteBuffer byteBuffer, @NonNull AtomicInteger atomicInteger, @NonNull Pair<Executor, Runnable> pair, int i) {
        int i2;
        this.mSharedByteBuffer = byteBuffer;
        this.mSharedRefCount = atomicInteger;
        this.mFinalCloseAction = pair;
        this.mShareId = i;
        if (Logger.isDebugEnabled(TAG) && (i2 = atomicInteger.get()) < 1) {
            Locale locale = Locale.US;
            throw new AssertionError("Cannot create new instance of SharedByteBuffer with invalid ref count " + i2 + ". Ref count must be >= 1. [" + toString() + "]");
        }
    }

    @GuardedBy("mCloseLock")
    private void checkNotClosed(@NonNull String str) {
        if (!this.mClosed) {
        } else {
            throw new IllegalStateException(AbstractC0362x4440ab85.m2932x95f25580("Cannot call ", str, " on a closed SharedByteBuffer."));
        }
    }

    private boolean closeInternal() {
        synchronized (this.mCloseLock) {
            try {
                if (this.mClosed) {
                    return false;
                }
                this.mClosed = true;
                int decrementAndGet = this.mSharedRefCount.decrementAndGet();
                if (Logger.isDebugEnabled(TAG)) {
                    if (decrementAndGet >= 0) {
                        Locale locale = Locale.US;
                        Logger.d(TAG, "Ref count decremented: " + decrementAndGet + " [" + toString() + "]");
                    } else {
                        throw new AssertionError("Invalid ref count. close() should never produce a ref count below 0");
                    }
                }
                if (decrementAndGet == 0) {
                    if (Logger.isDebugEnabled(TAG)) {
                        Locale locale2 = Locale.US;
                        Logger.d(TAG, "Final reference released. Running final close action. [" + toString() + "]");
                    }
                    try {
                        ((Executor) Preconditions.checkNotNull(this.mFinalCloseAction.first)).execute((Runnable) Preconditions.checkNotNull(this.mFinalCloseAction.second));
                    } catch (RejectedExecutionException e) {
                        Locale locale3 = Locale.US;
                        Logger.e(TAG, "Unable to execute final close action. [" + toString() + "]", e);
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @NonNull
    public static SharedByteBuffer newSharedInstance(@NonNull ByteBuffer byteBuffer, @NonNull Executor executor, @NonNull Runnable runnable) {
        return new SharedByteBuffer(((ByteBuffer) Preconditions.checkNotNull(byteBuffer)).asReadOnlyBuffer(), new AtomicInteger(1), new Pair((Executor) Preconditions.checkNotNull(executor), (Runnable) Preconditions.checkNotNull(runnable)), System.identityHashCode(byteBuffer));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        closeInternal();
    }

    public void finalize() {
        try {
            if (closeInternal()) {
                Locale locale = Locale.US;
                Logger.w(TAG, "SharedByteBuffer closed by finalizer, but should have been closed manually with SharedByteBuffer.close() [" + toString() + "]");
            }
        } finally {
            super.finalize();
        }
    }

    @NonNull
    public ByteBuffer get() {
        ByteBuffer byteBuffer;
        synchronized (this.mCloseLock) {
            checkNotClosed("get()");
            byteBuffer = this.mSharedByteBuffer;
        }
        return byteBuffer;
    }

    @NonNull
    public SharedByteBuffer share() {
        int incrementAndGet;
        AtomicInteger atomicInteger;
        synchronized (this.mCloseLock) {
            checkNotClosed("share()");
            incrementAndGet = this.mSharedRefCount.incrementAndGet();
            atomicInteger = this.mSharedRefCount;
        }
        if (Logger.isDebugEnabled(TAG)) {
            if (incrementAndGet > 1) {
                Locale locale = Locale.US;
                Logger.d(TAG, "Ref count incremented: " + incrementAndGet + " [" + toString() + "]");
            } else {
                throw new AssertionError("Invalid ref count. share() should always produce a ref count of 2 or more.");
            }
        }
        return new SharedByteBuffer(this.mSharedByteBuffer.asReadOnlyBuffer(), atomicInteger, this.mFinalCloseAction, this.mShareId);
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, "SharedByteBuffer[buf: %s, shareId: 0x%x, instanceId:0x%x]", this.mSharedByteBuffer, Integer.valueOf(this.mShareId), Integer.valueOf(System.identityHashCode(this)));
    }
}
