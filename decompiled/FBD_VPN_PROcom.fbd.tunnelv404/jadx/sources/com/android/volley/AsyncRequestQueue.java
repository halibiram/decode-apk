package com.android.volley;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.android.volley.AsyncCache;
import com.android.volley.AsyncNetwork;
import com.android.volley.Cache;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class AsyncRequestQueue extends RequestQueue {
    private static final int DEFAULT_BLOCKING_THREAD_POOL_SIZE = 4;

    @Nullable
    private final AsyncCache mAsyncCache;
    private ExecutorService mBlockingExecutor;
    private final Object mCacheInitializationLock;
    private ExecutorFactory mExecutorFactory;
    private volatile boolean mIsCacheInitialized;
    private final AsyncNetwork mNetwork;
    private ExecutorService mNonBlockingExecutor;
    private ScheduledExecutorService mNonBlockingScheduledExecutor;
    private final List<Request<?>> mRequestsAwaitingCacheInitialization;
    private final WaitingRequestManager mWaitingRequestManager;

    /* loaded from: classes.dex */
    public static class Builder {
        private final AsyncNetwork mNetwork;

        @Nullable
        private AsyncCache mAsyncCache = null;

        @Nullable
        private Cache mCache = null;

        @Nullable
        private ExecutorFactory mExecutorFactory = null;

        @Nullable
        private ResponseDelivery mResponseDelivery = null;

        public Builder(AsyncNetwork asyncNetwork) {
            if (asyncNetwork != null) {
                this.mNetwork = asyncNetwork;
                return;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{728424154829618311L, 3273977446086086422L, -1109595913541019650L, -4233723287706972583L}).toString());
        }

        private ExecutorFactory getDefaultExecutorFactory() {
            return new ExecutorFactory() { // from class: com.android.volley.AsyncRequestQueue.Builder.1
                private ThreadPoolExecutor getNewThreadPoolExecutor(int i, String str, BlockingQueue<Runnable> blockingQueue) {
                    return new ThreadPoolExecutor(0, i, 60L, TimeUnit.SECONDS, blockingQueue, getThreadFactory(str));
                }

                private ThreadFactory getThreadFactory(final String str) {
                    return new ThreadFactory() { // from class: com.android.volley.AsyncRequestQueue.Builder.1.1
                        @Override // java.util.concurrent.ThreadFactory
                        public Thread newThread(@NonNull Runnable runnable) {
                            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
                            newThread.setName(new ObfuscatedString(new long[]{851844174204584388L, -6559556616995094080L}).toString() + str);
                            return newThread;
                        }
                    };
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ExecutorService createBlockingExecutor(BlockingQueue<Runnable> blockingQueue) {
                    return getNewThreadPoolExecutor(4, new ObfuscatedString(new long[]{-578013482753493157L, 5388496695647150602L, 4121134516173652449L}).toString(), blockingQueue);
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ExecutorService createNonBlockingExecutor(BlockingQueue<Runnable> blockingQueue) {
                    return getNewThreadPoolExecutor(1, new ObfuscatedString(new long[]{-6488738426691403219L, -469755163242852750L, -5264823009625301188L, -8065528575518694621L}).toString(), blockingQueue);
                }

                @Override // com.android.volley.AsyncRequestQueue.ExecutorFactory
                public ScheduledExecutorService createNonBlockingScheduledExecutor() {
                    return new ScheduledThreadPoolExecutor(0, getThreadFactory(new ObfuscatedString(new long[]{1440578701164972401L, -1832344063004269481L, 3258631765955546013L, 3686218088908876879L}).toString()));
                }
            };
        }

        public AsyncRequestQueue build() {
            Cache cache = this.mCache;
            if (cache == null && this.mAsyncCache == null) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8899873926420076664L, -2185164021553047085L, 4149639417123217L, 8105287200344410435L, 1881931407033590118L, -3601647153730844834L}).toString());
            }
            if (cache == null) {
                this.mCache = new ThrowingCache();
            }
            if (this.mResponseDelivery == null) {
                this.mResponseDelivery = new ExecutorDelivery(new Handler(Looper.getMainLooper()));
            }
            if (this.mExecutorFactory == null) {
                this.mExecutorFactory = getDefaultExecutorFactory();
            }
            return new AsyncRequestQueue(this.mCache, this.mNetwork, this.mAsyncCache, this.mResponseDelivery, this.mExecutorFactory);
        }

        public Builder setAsyncCache(AsyncCache asyncCache) {
            this.mAsyncCache = asyncCache;
            return this;
        }

        public Builder setCache(Cache cache) {
            this.mCache = cache;
            return this;
        }

        public Builder setExecutorFactory(ExecutorFactory executorFactory) {
            this.mExecutorFactory = executorFactory;
            return this;
        }

        public Builder setResponseDelivery(ResponseDelivery responseDelivery) {
            this.mResponseDelivery = responseDelivery;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public class CacheParseTask<T> extends RequestTask<T> {
        Cache.Entry entry;
        long startTimeMillis;

        public CacheParseTask(Request<T> request, Cache.Entry entry, long j) {
            super(request);
            this.entry = entry;
            this.startTimeMillis = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRequest.addMarker(new ObfuscatedString(new long[]{-7778509344499314589L, 6386434483187740376L, -2866565482777499354L}).toString());
            Request<T> request = this.mRequest;
            Cache.Entry entry = this.entry;
            Response<T> parseNetworkResponse = request.parseNetworkResponse(new NetworkResponse(200, entry.data, false, 0L, entry.allResponseHeaders));
            this.mRequest.addMarker(new ObfuscatedString(new long[]{-3862771277808770330L, 3118032087525220030L, -151173787235167079L}).toString());
            if (!this.entry.refreshNeeded(this.startTimeMillis)) {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse);
                return;
            }
            this.mRequest.addMarker(new ObfuscatedString(new long[]{-5312110172321511114L, 580977523103138465L, -4809752925238316669L, -7008298953016116672L}).toString());
            this.mRequest.setCacheEntry(this.entry);
            parseNetworkResponse.intermediate = true;
            if (!AsyncRequestQueue.this.mWaitingRequestManager.maybeAddToWaitingRequests(this.mRequest)) {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse, new Runnable() { // from class: com.android.volley.AsyncRequestQueue.CacheParseTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CacheParseTask cacheParseTask = CacheParseTask.this;
                        AsyncRequestQueue.this.sendRequestOverNetwork(cacheParseTask.mRequest);
                    }
                });
            } else {
                AsyncRequestQueue.this.getResponseDelivery().postResponse(this.mRequest, parseNetworkResponse);
            }
        }
    }

    /* loaded from: classes.dex */
    public class CachePutTask<T> extends RequestTask<T> {
        Response<?> response;

        public CachePutTask(Request<T> request, Response<?> response) {
            super(request);
            this.response = response;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mAsyncCache.put(this.mRequest.getCacheKey(), this.response.cacheEntry, new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CachePutTask.1
                    @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                    public void onWriteComplete() {
                        CachePutTask cachePutTask = CachePutTask.this;
                        AsyncRequestQueue.this.finishRequest(cachePutTask.mRequest, cachePutTask.response, true);
                    }
                });
            } else {
                AsyncRequestQueue.this.getCache().put(this.mRequest.getCacheKey(), this.response.cacheEntry);
                AsyncRequestQueue.this.finishRequest(this.mRequest, this.response, true);
            }
        }
    }

    /* loaded from: classes.dex */
    public class CacheTask<T> extends RequestTask<T> {
        public CacheTask(Request<T> request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish(new ObfuscatedString(new long[]{2341262378454709519L, -7437075578844850964L, -8790389114540314815L, -7510389479763681393L}).toString());
                return;
            }
            this.mRequest.addMarker(new ObfuscatedString(new long[]{-2961362998438284011L, -3097992256410285716L, -5581727757034170675L}).toString());
            if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mAsyncCache.get(this.mRequest.getCacheKey(), new AsyncCache.OnGetCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CacheTask.1
                    @Override // com.android.volley.AsyncCache.OnGetCompleteCallback
                    public void onGetComplete(Cache.Entry entry) {
                        CacheTask cacheTask = CacheTask.this;
                        AsyncRequestQueue.this.handleEntry(entry, cacheTask.mRequest);
                    }
                });
            } else {
                AsyncRequestQueue.this.handleEntry(AsyncRequestQueue.this.getCache().get(this.mRequest.getCacheKey()), this.mRequest);
            }
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ExecutorFactory {
        public abstract ExecutorService createBlockingExecutor(BlockingQueue<Runnable> blockingQueue);

        public abstract ExecutorService createNonBlockingExecutor(BlockingQueue<Runnable> blockingQueue);

        public abstract ScheduledExecutorService createNonBlockingScheduledExecutor();
    }

    /* loaded from: classes.dex */
    public class NetworkParseTask<T> extends RequestTask<T> {
        NetworkResponse networkResponse;

        public NetworkParseTask(Request<T> request, NetworkResponse networkResponse) {
            super(request);
            this.networkResponse = networkResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            Response<T> parseNetworkResponse = this.mRequest.parseNetworkResponse(this.networkResponse);
            this.mRequest.addMarker(new ObfuscatedString(new long[]{-3858640256266816069L, 4892023796714182165L, 1602429554756466475L, 7905217041907942152L}).toString());
            if (!this.mRequest.shouldCache() || parseNetworkResponse.cacheEntry == null) {
                AsyncRequestQueue.this.finishRequest(this.mRequest, parseNetworkResponse, false);
            } else if (AsyncRequestQueue.this.mAsyncCache != null) {
                AsyncRequestQueue.this.mNonBlockingExecutor.execute(new CachePutTask(this.mRequest, parseNetworkResponse));
            } else {
                AsyncRequestQueue.this.mBlockingExecutor.execute(new CachePutTask(this.mRequest, parseNetworkResponse));
            }
        }
    }

    /* loaded from: classes.dex */
    public class NetworkTask<T> extends RequestTask<T> {
        public NetworkTask(Request<T> request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.mRequest.isCanceled()) {
                this.mRequest.finish(new ObfuscatedString(new long[]{7758046191584280976L, 351756495183827386L, 1081931024340665627L, 112792624587164927L, -908931561406377837L}).toString());
                this.mRequest.notifyListenerResponseNotUsable();
            } else {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.mRequest.addMarker(new ObfuscatedString(new long[]{-2474154304331288566L, -890738264632853875L, -676354577101583494L, 5951677487482349445L}).toString());
                AsyncRequestQueue.this.mNetwork.performRequest(this.mRequest, new AsyncNetwork.OnRequestComplete() { // from class: com.android.volley.AsyncRequestQueue.NetworkTask.1
                    @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                    public void onError(VolleyError volleyError) {
                        volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                        ExecutorService executorService = AsyncRequestQueue.this.mBlockingExecutor;
                        NetworkTask networkTask = NetworkTask.this;
                        executorService.execute(new ParseErrorTask(networkTask.mRequest, volleyError));
                    }

                    @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                    public void onSuccess(NetworkResponse networkResponse) {
                        NetworkTask.this.mRequest.addMarker(new ObfuscatedString(new long[]{-4266558073751702839L, -3571378843812626049L, 399000991367124823L, -1732319729191094277L}).toString());
                        if (!networkResponse.notModified || !NetworkTask.this.mRequest.hasHadResponseDelivered()) {
                            ExecutorService executorService = AsyncRequestQueue.this.mBlockingExecutor;
                            NetworkTask networkTask = NetworkTask.this;
                            executorService.execute(new NetworkParseTask(networkTask.mRequest, networkResponse));
                        } else {
                            NetworkTask.this.mRequest.finish(new ObfuscatedString(new long[]{-8549648664017286410L, -2753662249475084657L, -1139220629497772722L}).toString());
                            NetworkTask.this.mRequest.notifyListenerResponseNotUsable();
                        }
                    }
                });
            }
        }
    }

    /* loaded from: classes.dex */
    public class ParseErrorTask<T> extends RequestTask<T> {
        VolleyError volleyError;

        public ParseErrorTask(Request<T> request, VolleyError volleyError) {
            super(request);
            this.volleyError = volleyError;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncRequestQueue.this.getResponseDelivery().postError(this.mRequest, this.mRequest.parseNetworkError(this.volleyError));
            this.mRequest.notifyListenerResponseNotUsable();
        }
    }

    /* loaded from: classes.dex */
    public static class ThrowingCache implements Cache {
        private ThrowingCache() {
        }

        @Override // com.android.volley.Cache
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public Cache.Entry get(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void initialize() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void invalidate(String str, boolean z) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void put(String str, Cache.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void remove(String str) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishRequest(Request<?> request, Response<?> response, boolean z) {
        if (z) {
            request.addMarker(new ObfuscatedString(new long[]{8169751626392835189L, 4472763485836746627L, -4080124158829557796L, 2890838241284583313L}).toString());
        }
        request.markDelivered();
        getResponseDelivery().postResponse(request, response);
        request.notifyListenerResponseReceived(response);
    }

    private static PriorityBlockingQueue<Runnable> getBlockingQueue() {
        return new PriorityBlockingQueue<>(11, new Comparator<Runnable>() { // from class: com.android.volley.AsyncRequestQueue.3
            @Override // java.util.Comparator
            public int compare(Runnable runnable, Runnable runnable2) {
                if (!(runnable instanceof RequestTask)) {
                    return runnable2 instanceof RequestTask ? -1 : 0;
                }
                if (runnable2 instanceof RequestTask) {
                    return ((RequestTask) runnable).compareTo((RequestTask) runnable2);
                }
                return 1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleEntry(Cache.Entry entry, Request<?> request) {
        if (entry == null) {
            request.addMarker(new ObfuscatedString(new long[]{-1493341071951113624L, -8426538616088246298L, -7130344998113058717L}).toString());
            if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                sendRequestOverNetwork(request);
                return;
            }
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (entry.isExpired(currentTimeMillis)) {
            request.addMarker(new ObfuscatedString(new long[]{447750070614312869L, 6290883343173479694L, 3931935271064677679L, 5136085549314571157L}).toString());
            request.setCacheEntry(entry);
            if (!this.mWaitingRequestManager.maybeAddToWaitingRequests(request)) {
                sendRequestOverNetwork(request);
                return;
            }
            return;
        }
        this.mBlockingExecutor.execute(new CacheParseTask(request, entry, currentTimeMillis));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onCacheInitializationComplete() {
        ArrayList arrayList;
        synchronized (this.mCacheInitializationLock) {
            arrayList = new ArrayList(this.mRequestsAwaitingCacheInitialization);
            this.mRequestsAwaitingCacheInitialization.clear();
            this.mIsCacheInitialized = true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            beginRequest((Request) it.next());
        }
    }

    @Override // com.android.volley.RequestQueue
    public <T> void beginRequest(Request<T> request) {
        if (!this.mIsCacheInitialized) {
            synchronized (this.mCacheInitializationLock) {
                try {
                    if (!this.mIsCacheInitialized) {
                        this.mRequestsAwaitingCacheInitialization.add(request);
                        return;
                    }
                } finally {
                }
            }
        }
        if (request.shouldCache()) {
            if (this.mAsyncCache != null) {
                this.mNonBlockingExecutor.execute(new CacheTask(request));
                return;
            } else {
                this.mBlockingExecutor.execute(new CacheTask(request));
                return;
            }
        }
        sendRequestOverNetwork(request);
    }

    @Override // com.android.volley.RequestQueue
    public <T> void sendRequestOverNetwork(Request<T> request) {
        this.mNonBlockingExecutor.execute(new NetworkTask(request));
    }

    @Override // com.android.volley.RequestQueue
    public void start() {
        stop();
        this.mNonBlockingExecutor = this.mExecutorFactory.createNonBlockingExecutor(getBlockingQueue());
        this.mBlockingExecutor = this.mExecutorFactory.createBlockingExecutor(getBlockingQueue());
        this.mNonBlockingScheduledExecutor = this.mExecutorFactory.createNonBlockingScheduledExecutor();
        this.mNetwork.setBlockingExecutor(this.mBlockingExecutor);
        this.mNetwork.setNonBlockingExecutor(this.mNonBlockingExecutor);
        this.mNetwork.setNonBlockingScheduledExecutor(this.mNonBlockingScheduledExecutor);
        if (this.mAsyncCache != null) {
            this.mNonBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncRequestQueue.this.mAsyncCache.initialize(new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.1.1
                        @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                        public void onWriteComplete() {
                            AsyncRequestQueue.this.onCacheInitializationComplete();
                        }
                    });
                }
            });
        } else {
            this.mBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncRequestQueue.this.getCache().initialize();
                    AsyncRequestQueue.this.mNonBlockingExecutor.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            AsyncRequestQueue.this.onCacheInitializationComplete();
                        }
                    });
                }
            });
        }
    }

    @Override // com.android.volley.RequestQueue
    public void stop() {
        ExecutorService executorService = this.mNonBlockingExecutor;
        if (executorService != null) {
            executorService.shutdownNow();
            this.mNonBlockingExecutor = null;
        }
        ExecutorService executorService2 = this.mBlockingExecutor;
        if (executorService2 != null) {
            executorService2.shutdownNow();
            this.mBlockingExecutor = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.mNonBlockingScheduledExecutor;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            this.mNonBlockingScheduledExecutor = null;
        }
    }

    private AsyncRequestQueue(Cache cache, AsyncNetwork asyncNetwork, @Nullable AsyncCache asyncCache, ResponseDelivery responseDelivery, ExecutorFactory executorFactory) {
        super(cache, asyncNetwork, 0, responseDelivery);
        this.mWaitingRequestManager = new WaitingRequestManager(this);
        this.mRequestsAwaitingCacheInitialization = new ArrayList();
        this.mIsCacheInitialized = false;
        this.mCacheInitializationLock = new Object[0];
        this.mAsyncCache = asyncCache;
        this.mNetwork = asyncNetwork;
        this.mExecutorFactory = executorFactory;
    }
}
