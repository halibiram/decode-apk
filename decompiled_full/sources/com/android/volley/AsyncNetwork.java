package com.android.volley;

import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class AsyncNetwork implements Network {
    private ExecutorService mBlockingExecutor;
    private ExecutorService mNonBlockingExecutor;
    private ScheduledExecutorService mNonBlockingScheduledExecutor;

    /* loaded from: classes.dex */
    public interface OnRequestComplete {
        void onError(VolleyError volleyError);

        void onSuccess(NetworkResponse networkResponse);
    }

    public ExecutorService getBlockingExecutor() {
        return this.mBlockingExecutor;
    }

    public ExecutorService getNonBlockingExecutor() {
        return this.mNonBlockingExecutor;
    }

    public ScheduledExecutorService getNonBlockingScheduledExecutor() {
        return this.mNonBlockingScheduledExecutor;
    }

    @Override // com.android.volley.Network
    public NetworkResponse performRequest(Request<?> request) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        performRequest(request, new OnRequestComplete() { // from class: com.android.volley.AsyncNetwork.1
            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void onError(VolleyError volleyError) {
                atomicReference2.set(volleyError);
                countDownLatch.countDown();
            }

            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void onSuccess(NetworkResponse networkResponse) {
                atomicReference.set(networkResponse);
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (atomicReference.get() != null) {
                return (NetworkResponse) atomicReference.get();
            }
            if (atomicReference2.get() != null) {
                throw ((VolleyError) atomicReference2.get());
            }
            throw new VolleyError(new ObfuscatedString(new long[]{306991690233009982L, 2715309687060897662L, -3475949536959502640L, 1455658786519967809L, -4025234274183083910L}).toString());
        } catch (InterruptedException e) {
            VolleyLog.e(e, new ObfuscatedString(new long[]{5872770960814353213L, -1586684432116852000L, 6236492976083077614L, 1538237801602649333L, 3962283765198715705L}).toString(), new Object[0]);
            Thread.currentThread().interrupt();
            throw new VolleyError(e);
        }
    }

    public abstract void performRequest(Request<?> request, OnRequestComplete onRequestComplete);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setBlockingExecutor(ExecutorService executorService) {
        this.mBlockingExecutor = executorService;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNonBlockingExecutor(ExecutorService executorService) {
        this.mNonBlockingExecutor = executorService;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNonBlockingScheduledExecutor(ScheduledExecutorService scheduledExecutorService) {
        this.mNonBlockingScheduledExecutor = scheduledExecutorService;
    }
}
