package com.android.volley.toolbox;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.VolleyLog;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class AsyncHttpStack extends BaseHttpStack {
    private ExecutorService mBlockingExecutor;
    private ExecutorService mNonBlockingExecutor;

    /* loaded from: classes.dex */
    public interface OnRequestComplete {
        void onAuthError(AuthFailureError authFailureError);

        void onError(IOException iOException);

        void onSuccess(HttpResponse httpResponse);
    }

    /* loaded from: classes.dex */
    public static class Response {
        AuthFailureError authFailureError;
        HttpResponse httpResponse;
        IOException ioException;

        private Response(@Nullable HttpResponse httpResponse, @Nullable IOException iOException, @Nullable AuthFailureError authFailureError) {
            this.httpResponse = httpResponse;
            this.ioException = iOException;
            this.authFailureError = authFailureError;
        }
    }

    @Override // com.android.volley.toolbox.BaseHttpStack
    public final HttpResponse executeRequest(Request<?> request, Map<String, String> map) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        executeRequest(request, map, new OnRequestComplete() { // from class: com.android.volley.toolbox.AsyncHttpStack.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.android.volley.toolbox.AsyncHttpStack.OnRequestComplete
            public void onAuthError(AuthFailureError authFailureError) {
                atomicReference.set(new Response(null, 0 == true ? 1 : 0, authFailureError));
                countDownLatch.countDown();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.android.volley.toolbox.AsyncHttpStack.OnRequestComplete
            public void onError(IOException iOException) {
                atomicReference.set(new Response(null, iOException, 0 == true ? 1 : 0));
                countDownLatch.countDown();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.android.volley.toolbox.AsyncHttpStack.OnRequestComplete
            public void onSuccess(HttpResponse httpResponse) {
                atomicReference.set(new Response(httpResponse, null, 0 == true ? 1 : 0));
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            Response response = (Response) atomicReference.get();
            HttpResponse httpResponse = response.httpResponse;
            if (httpResponse != null) {
                return httpResponse;
            }
            IOException iOException = response.ioException;
            if (iOException != null) {
                throw iOException;
            }
            throw response.authFailureError;
        } catch (InterruptedException e) {
            VolleyLog.e(e, new ObfuscatedString(new long[]{-5098950568438961046L, -6511272909629929666L, 5400613036062047448L, 8332073518482693812L, 4777356194825804094L}).toString(), new Object[0]);
            Thread.currentThread().interrupt();
            throw new InterruptedIOException(e.toString());
        }
    }

    public abstract void executeRequest(Request<?> request, Map<String, String> map, OnRequestComplete onRequestComplete);

    public ExecutorService getBlockingExecutor() {
        return this.mBlockingExecutor;
    }

    public ExecutorService getNonBlockingExecutor() {
        return this.mNonBlockingExecutor;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setBlockingExecutor(ExecutorService executorService) {
        this.mBlockingExecutor = executorService;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNonBlockingExecutor(ExecutorService executorService) {
        this.mNonBlockingExecutor = executorService;
    }
}
