package com.android.volley;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.volley.Cache;
import com.android.volley.Request;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class WaitingRequestManager implements Request.NetworkRequestCompleteListener {

    @Nullable
    private final CacheDispatcher mCacheDispatcher;

    @Nullable
    private final BlockingQueue<Request<?>> mNetworkQueue;

    @Nullable
    private final RequestQueue mRequestQueue;
    private final ResponseDelivery mResponseDelivery;
    private final Map<String, List<Request<?>>> mWaitingRequests;

    public WaitingRequestManager(@NonNull RequestQueue requestQueue) {
        this.mWaitingRequests = new HashMap();
        this.mRequestQueue = requestQueue;
        this.mResponseDelivery = requestQueue.getResponseDelivery();
        this.mCacheDispatcher = null;
        this.mNetworkQueue = null;
    }

    public synchronized boolean maybeAddToWaitingRequests(Request<?> request) {
        try {
            String cacheKey = request.getCacheKey();
            if (this.mWaitingRequests.containsKey(cacheKey)) {
                List<Request<?>> list = this.mWaitingRequests.get(cacheKey);
                if (list == null) {
                    list = new ArrayList<>();
                }
                request.addMarker(new ObfuscatedString(new long[]{-4381935050041043281L, -1786643051961168218L, 3802951395361021682L, 1712153314552417223L}).toString());
                list.add(request);
                this.mWaitingRequests.put(cacheKey, list);
                if (VolleyLog.DEBUG) {
                    VolleyLog.d(new ObfuscatedString(new long[]{-3905028483652587277L, 5542719086103353453L, -5875905955649048370L, 2760896575123909110L, 4559616846915495004L, 7617943418585353313L, 7665042801554560409L, 5115901840449468833L}).toString(), cacheKey);
                }
                return true;
            }
            this.mWaitingRequests.put(cacheKey, null);
            request.setNetworkRequestCompleteListener(this);
            if (VolleyLog.DEBUG) {
                VolleyLog.d(new ObfuscatedString(new long[]{-7944236298367801764L, 6909858830271493966L, 4427180518175687902L, -1697927567985643706L, 2952926719377324217L, -2295692278642402477L}).toString(), cacheKey);
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public synchronized void onNoUsableResponseReceived(Request<?> request) {
        BlockingQueue<Request<?>> blockingQueue;
        try {
            String cacheKey = request.getCacheKey();
            List<Request<?>> remove = this.mWaitingRequests.remove(cacheKey);
            if (remove != null && !remove.isEmpty()) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.v(new ObfuscatedString(new long[]{294334850245743209L, -1527584331893954992L, -887434100748694566L, 7617145312056900364L, -1173979224788422727L, -7303272081338181884L, 1718298297932374827L, 3840903306240320746L}).toString(), Integer.valueOf(remove.size()), cacheKey);
                }
                Request<?> remove2 = remove.remove(0);
                this.mWaitingRequests.put(cacheKey, remove);
                remove2.setNetworkRequestCompleteListener(this);
                RequestQueue requestQueue = this.mRequestQueue;
                if (requestQueue != null) {
                    requestQueue.sendRequestOverNetwork(remove2);
                } else if (this.mCacheDispatcher != null && (blockingQueue = this.mNetworkQueue) != null) {
                    try {
                        blockingQueue.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.e(new ObfuscatedString(new long[]{-3747185461913670954L, 9193127959209747803L, -2385802874835993901L, -4088089880374025206L, -9179996571819667730L, 4138629313983834419L}).toString(), e.toString());
                        Thread.currentThread().interrupt();
                        this.mCacheDispatcher.quit();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.android.volley.Request.NetworkRequestCompleteListener
    public void onResponseReceived(Request<?> request, Response<?> response) {
        List<Request<?>> remove;
        Cache.Entry entry = response.cacheEntry;
        if (entry != null && !entry.isExpired()) {
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.mWaitingRequests.remove(cacheKey);
            }
            if (remove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.v(new ObfuscatedString(new long[]{7187504131075514422L, 8650352800367432220L, -5065127780107756758L, 4719754093853349276L, -7851034806283332364L, -3661730695185297858L, 5430215098615633187L}).toString(), Integer.valueOf(remove.size()), cacheKey);
                }
                Iterator<Request<?>> it = remove.iterator();
                while (it.hasNext()) {
                    this.mResponseDelivery.postResponse(it.next(), response);
                }
                return;
            }
            return;
        }
        onNoUsableResponseReceived(request);
    }

    public WaitingRequestManager(@NonNull CacheDispatcher cacheDispatcher, @NonNull BlockingQueue<Request<?>> blockingQueue, ResponseDelivery responseDelivery) {
        this.mWaitingRequests = new HashMap();
        this.mRequestQueue = null;
        this.mResponseDelivery = responseDelivery;
        this.mCacheDispatcher = cacheDispatcher;
        this.mNetworkQueue = blockingQueue;
    }
}
