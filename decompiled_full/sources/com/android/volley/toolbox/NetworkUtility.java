package com.android.volley.toolbox;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.android.volley.AuthFailureError;
import com.android.volley.Cache;
import com.android.volley.ClientError;
import com.android.volley.Header;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RetryPolicy;
import com.android.volley.ServerError;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.android.volley.VolleyLog;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* loaded from: classes.dex */
final class NetworkUtility {
    private static final int SLOW_REQUEST_THRESHOLD_MS = 3000;

    /* loaded from: classes.dex */
    public static class RetryInfo {
        private final VolleyError errorToRetry;
        private final String logPrefix;

        private RetryInfo(String str, VolleyError volleyError) {
            this.logPrefix = str;
            this.errorToRetry = volleyError;
        }
    }

    private NetworkUtility() {
    }

    public static void attemptRetryOnException(Request<?> request, RetryInfo retryInfo) {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(retryInfo.errorToRetry);
            request.addMarker(String.format(new ObfuscatedString(new long[]{8263519696737237804L, 8365923474413694880L, 1139926576979662977L, -663922814756184170L}).toString(), retryInfo.logPrefix, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e) {
            request.addMarker(String.format(new ObfuscatedString(new long[]{6172549067247431384L, 4423818061822273948L, -8042534749630881638L, -1661567831557030000L, 7260306284739764353L}).toString(), retryInfo.logPrefix, Integer.valueOf(timeoutMs)));
            throw e;
        }
    }

    public static NetworkResponse getNotModifiedNetworkResponse(Request<?> request, long j, List<Header> list) {
        Cache.Entry cacheEntry = request.getCacheEntry();
        if (cacheEntry == null) {
            return new NetworkResponse(304, (byte[]) null, true, j, list);
        }
        return new NetworkResponse(304, cacheEntry.data, true, j, HttpHeaderParser.combineHeaders(list, cacheEntry));
    }

    public static byte[] inputStreamToBytes(InputStream inputStream, int i, ByteArrayPool byteArrayPool) {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(byteArrayPool, i);
        try {
            bArr = byteArrayPool.getBuf(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(bArr, 0, read);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            VolleyLog.v(new ObfuscatedString(new long[]{4935573608457170060L, 6889472569374918161L, 5846965068509078587L, 6950341386176865329L, 6809130023971581945L, 3140512862339537769L}).toString(), new Object[0]);
                        }
                    }
                    byteArrayPool.returnBuf(bArr);
                    poolingByteArrayOutputStream.close();
                    throw th;
                }
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                VolleyLog.v(new ObfuscatedString(new long[]{-3289623315247609096L, -8680696442256073719L, -2119154371809373330L, 1403542781499643931L, 4509902028125612977L, -5594050511952908822L}).toString(), new Object[0]);
            }
            byteArrayPool.returnBuf(bArr);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArr = null;
        }
    }

    public static void logSlowRequests(long j, Request<?> request, byte[] bArr, int i) {
        Object obfuscatedString;
        if (VolleyLog.DEBUG || j > 3000) {
            String obfuscatedString2 = new ObfuscatedString(new long[]{7641112722046064695L, -3049866675767667273L, 6257128328295448459L, 2333483395851858210L, -4943895557936514347L, -419892800970912925L, 619461613342251467L, -1096936244406178910L, 3320280560790945552L, 223651584351904151L, 7350229190109768779L, -8236089579945967266L}).toString();
            Long valueOf = Long.valueOf(j);
            if (bArr != null) {
                obfuscatedString = Integer.valueOf(bArr.length);
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{1460649306522374175L, -9057897050001312271L}).toString();
            }
            VolleyLog.d(obfuscatedString2, request, valueOf, obfuscatedString, Integer.valueOf(i), Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount()));
        }
    }

    public static RetryInfo shouldRetryException(Request<?> request, IOException iOException, long j, @Nullable HttpResponse httpResponse, @Nullable byte[] bArr) {
        if (iOException instanceof SocketTimeoutException) {
            return new RetryInfo(new ObfuscatedString(new long[]{-5453125174445422825L, 8118499609784240437L}).toString(), new TimeoutError());
        }
        if (!(iOException instanceof MalformedURLException)) {
            if (httpResponse != null) {
                int statusCode = httpResponse.getStatusCode();
                VolleyLog.e(new ObfuscatedString(new long[]{-4721811390982649065L, 9042207541083578997L, -9195821400517123101L, 8052846633450987843L, 7754235531969605684L, 4245413484069076540L}).toString(), Integer.valueOf(statusCode), request.getUrl());
                if (bArr != null) {
                    NetworkResponse networkResponse = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - j, httpResponse.getHeaders());
                    if (statusCode != 401 && statusCode != 403) {
                        if (statusCode >= 400 && statusCode <= 499) {
                            throw new ClientError(networkResponse);
                        }
                        if (statusCode >= 500 && statusCode <= 599 && request.shouldRetryServerErrors()) {
                            return new RetryInfo(new ObfuscatedString(new long[]{-8165266989440346777L, 2796538558525403203L}).toString(), new ServerError(networkResponse));
                        }
                        throw new ServerError(networkResponse);
                    }
                    return new RetryInfo(new ObfuscatedString(new long[]{-2838045509319484761L, -5559604592084160349L}).toString(), new AuthFailureError(networkResponse));
                }
                return new RetryInfo(new ObfuscatedString(new long[]{-5297606101050971743L, 2648837620135735033L}).toString(), new NetworkError());
            }
            if (request.shouldRetryConnectionErrors()) {
                return new RetryInfo(new ObfuscatedString(new long[]{9055528487115622580L, -6262613961648511002L, -4691352248991792125L}).toString(), new NoConnectionError());
            }
            throw new NoConnectionError(iOException);
        }
        throw new RuntimeException(new ObfuscatedString(new long[]{7656529106303306341L, -4580814753096151381L}).toString() + request.getUrl(), iOException);
    }
}
