package com.android.volley;

import android.os.Handler;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ExecutorDelivery implements ResponseDelivery {
    private final Executor mResponsePoster;

    /* loaded from: classes.dex */
    public static class ResponseDeliveryRunnable implements Runnable {
        private final Request mRequest;
        private final Response mResponse;
        private final Runnable mRunnable;

        public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
            this.mRequest = request;
            this.mResponse = response;
            this.mRunnable = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish(new ObfuscatedString(new long[]{-2030411233321705579L, -4705171608288787529L, -4427321597579985051L, -5054783020593704290L}).toString());
                return;
            }
            if (this.mResponse.isSuccess()) {
                this.mRequest.deliverResponse(this.mResponse.result);
            } else {
                this.mRequest.deliverError(this.mResponse.error);
            }
            if (this.mResponse.intermediate) {
                this.mRequest.addMarker(new ObfuscatedString(new long[]{-2388523200957148612L, -3085165396513279090L, -8495865161549685648L, -4365167411521371630L}).toString());
            } else {
                this.mRequest.finish(new ObfuscatedString(new long[]{8481487136266261415L, -6776664019611099746L}).toString());
            }
            Runnable runnable = this.mRunnable;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public ExecutorDelivery(final Handler handler) {
        this.mResponsePoster = new Executor() { // from class: com.android.volley.ExecutorDelivery.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    @Override // com.android.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker(new ObfuscatedString(new long[]{2062578786343208674L, -8662141801410160121L, 6727928955539919237L}).toString());
        this.mResponsePoster.execute(new ResponseDeliveryRunnable(request, Response.error(volleyError), null));
    }

    @Override // com.android.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.android.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker(new ObfuscatedString(new long[]{-8875472220527905608L, -5964532547163006246L, 1970277029151300021L}).toString());
        this.mResponsePoster.execute(new ResponseDeliveryRunnable(request, response, runnable));
    }

    public ExecutorDelivery(Executor executor) {
        this.mResponsePoster = executor;
    }
}
