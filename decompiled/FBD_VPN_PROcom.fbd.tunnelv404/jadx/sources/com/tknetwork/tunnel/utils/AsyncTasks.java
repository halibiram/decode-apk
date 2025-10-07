package com.tknetwork.tunnel.utils;

import android.os.Handler;
import android.os.Looper;
import defpackage.RunnableC0371x742e2fda;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes3.dex */
public abstract class AsyncTasks<Params, Result> {
    private final ExecutorService executors = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$startBackground$1(Object[] objArr) {
        new Handler(Looper.getMainLooper()).post(new RunnableC0371x742e2fda(this, doInBackground(objArr), 2));
    }

    @SafeVarargs
    private final void startBackground(Params... paramsArr) {
        onPreExecute();
        this.executors.execute(new RunnableC0371x742e2fda(this, paramsArr, 3));
    }

    public abstract Result doInBackground(Params... paramsArr);

    @SafeVarargs
    public final void execute(Params... paramsArr) {
        startBackground(paramsArr);
    }

    public boolean isShutdown() {
        return this.executors.isShutdown();
    }

    /* renamed from: onPostExecute, reason: merged with bridge method [inline-methods] */
    public void lambda$startBackground$0(Result result) {
    }

    public void onPreExecute() {
    }

    public void shutdown() {
        this.executors.shutdown();
    }
}
