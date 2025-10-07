package com.android.volley;

import android.os.Process;
import androidx.annotation.VisibleForTesting;
import com.android.volley.Cache;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public class CacheDispatcher extends Thread {
    private static final boolean DEBUG = VolleyLog.DEBUG;
    private final Cache mCache;
    private final BlockingQueue<Request<?>> mCacheQueue;
    private final ResponseDelivery mDelivery;
    private final BlockingQueue<Request<?>> mNetworkQueue;
    private volatile boolean mQuit = false;
    private final WaitingRequestManager mWaitingRequestManager;

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.mCacheQueue = blockingQueue;
        this.mNetworkQueue = blockingQueue2;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
        this.mWaitingRequestManager = new WaitingRequestManager(this, blockingQueue2, responseDelivery);
    }

    private void processRequest() {
        processRequest(this.mCacheQueue.take());
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (DEBUG) {
            VolleyLog.v(new ObfuscatedString(new long[]{-2946139680719874256L, -4358729335835340399L, 7457364010977137691L, -3345807254052070488L}).toString(), new Object[0]);
        }
        Process.setThreadPriority(10);
        this.mCache.initialize();
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e(new ObfuscatedString(new long[]{8554643837840218015L, -6930989765669522904L, -5633387864526911968L, -6408323320004594272L, -8954790652945441083L, -4034267070002826504L, -2485912306025426535L, 2760103830782324025L, 1890001159127785194L, -3010341585400804161L, -2359188975298631551L, 5638269427032147389L}).toString(), new Object[0]);
            }
        }
    }

    @VisibleForTesting
    public void processRequest(final Request<?> request) {
        request.addMarker(new ObfuscatedString(new long[]{-347132434048339078L, -5447722842608390369L, -637723514855532773L}).toString());
        request.sendEvent(1);
        try {
            if (request.isCanceled()) {
                request.finish(new ObfuscatedString(new long[]{738442681255622277L, -3676730536851446597L, 2353126819834096089L, 4053694071145944740L}).toString());
                return;
            }
            Cache.Entry entry = this.mCache.get(request.getCacheKey());
            if (entry == null) {
                request.addMarker(new ObfuscatedString(new long[]{2125636342629608314L, -4884530409674071870L, 6347897356393129301L}).toString());
                if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (entry.isExpired(currentTimeMillis)) {
                request.addMarker(new ObfuscatedString(new long[]{8076543140264902632L, -6297655081737020296L, -2292963427037981442L, -1510660063663154517L}).toString());
                request.setCacheEntry(entry);
                if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            request.addMarker(new ObfuscatedString(new long[]{240491668490844249L, -2678791432425780347L, -7805602474126913990L}).toString());
            Response<?> parseNetworkResponse = request.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
            request.addMarker(new ObfuscatedString(new long[]{-8266368828553498838L, -6480962292847607515L, -6342531591814882762L}).toString());
            if (!parseNetworkResponse.isSuccess()) {
                request.addMarker(new ObfuscatedString(new long[]{-6967262874939576184L, 3623848565694641972L, 2266634797334880508L, -8798057715113502493L}).toString());
                this.mCache.invalidate(request.getCacheKey(), true);
                request.setCacheEntry(null);
                if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                    this.mNetworkQueue.put(request);
                }
                return;
            }
            if (!entry.refreshNeeded(currentTimeMillis)) {
                this.mDelivery.postResponse(request, parseNetworkResponse);
            } else {
                request.addMarker(new ObfuscatedString(new long[]{-6335292601343340022L, -6374780400211507988L, -4360513053929313920L, 4389151793766406253L}).toString());
                request.setCacheEntry(entry);
                parseNetworkResponse.intermediate = true;
                if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                    this.mDelivery.postResponse(request, parseNetworkResponse, new Runnable() { // from class: com.android.volley.CacheDispatcher.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CacheDispatcher.this.mNetworkQueue.put(request);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    });
                } else {
                    this.mDelivery.postResponse(request, parseNetworkResponse);
                }
            }
        } finally {
            request.sendEvent(2);
        }
    }
}
