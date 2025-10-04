package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
public class NetworkDispatcher extends Thread {
    private final Cache mCache;
    private final ResponseDelivery mDelivery;
    private final Network mNetwork;
    private final BlockingQueue<Request<?>> mQueue;
    private volatile boolean mQuit = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.mQueue = blockingQueue;
        this.mNetwork = network;
        this.mCache = cache;
        this.mDelivery = responseDelivery;
    }

    @TargetApi(14)
    private void addTrafficStatsTag(Request<?> request) {
        TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
    }

    private void parseAndDeliverNetworkError(Request<?> request, VolleyError volleyError) {
        this.mDelivery.postError(request, request.parseNetworkError(volleyError));
    }

    private void processRequest() {
        processRequest(this.mQueue.take());
    }

    public void quit() {
        this.mQuit = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                processRequest();
            } catch (InterruptedException unused) {
                if (this.mQuit) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e(new ObfuscatedString(new long[]{-805903017504377667L, -1106243906086936001L, -8320394542400878343L, -1618512183110328017L, 9183359108865444552L, 2779730401303257782L, 5931664417252433636L, -5204728254138606020L, 4908942874528146300L, 2735808837216196223L, -2516449831365462602L, 4722727126271299457L}).toString(), new Object[0]);
            }
        }
    }

    @VisibleForTesting
    public void processRequest(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.sendEvent(3);
        try {
            try {
                request.addMarker(new ObfuscatedString(new long[]{-9115619832869012095L, 355275140935496839L, 7668334282488906024L, 2284882675148527488L}).toString());
            } catch (VolleyError e) {
                e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                parseAndDeliverNetworkError(request, e);
                request.notifyListenerResponseNotUsable();
            } catch (Exception e2) {
                VolleyLog.e(e2, new ObfuscatedString(new long[]{-6706967272322121246L, -3186030337768392069L, 7811962267602806450L, -6891234325352349871L}).toString(), e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.mDelivery.postError(request, volleyError);
                request.notifyListenerResponseNotUsable();
            }
            if (request.isCanceled()) {
                request.finish(new ObfuscatedString(new long[]{4686101015485500847L, 4357754144600796599L, -6206654709684990927L, -1626928193082644673L, -8296053279842044484L}).toString());
                request.notifyListenerResponseNotUsable();
                return;
            }
            addTrafficStatsTag(request);
            NetworkResponse performRequest = this.mNetwork.performRequest(request);
            request.addMarker(new ObfuscatedString(new long[]{989089423104742176L, -8709429513407690350L, 6825993793300126461L, 9170244298014483685L}).toString());
            if (performRequest.notModified && request.hasHadResponseDelivered()) {
                request.finish(new ObfuscatedString(new long[]{-6691716056971862443L, 3332205727843350869L, -1645252068625892066L}).toString());
                request.notifyListenerResponseNotUsable();
                return;
            }
            Response<?> parseNetworkResponse = request.parseNetworkResponse(performRequest);
            request.addMarker(new ObfuscatedString(new long[]{284267947031443186L, 8417096553880054449L, 8805012387588808083L, -7571604462457442206L}).toString());
            if (request.shouldCache() && parseNetworkResponse.cacheEntry != null) {
                this.mCache.put(request.getCacheKey(), parseNetworkResponse.cacheEntry);
                request.addMarker(new ObfuscatedString(new long[]{6145719309921568145L, 8835043156251343289L, 5349057722420875211L, -1220582771211049646L}).toString());
            }
            request.markDelivered();
            this.mDelivery.postResponse(request, parseNetworkResponse);
            request.notifyListenerResponseReceived(parseNetworkResponse);
        } finally {
            request.sendEvent(4);
        }
    }
}
