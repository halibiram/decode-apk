package com.android.volley.toolbox;

import androidx.annotation.VisibleForTesting;
import com.android.volley.Header;
import com.android.volley.Request;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public class HurlStack extends BaseHttpStack {
    private static final int HTTP_CONTINUE = 100;
    private final SSLSocketFactory mSslSocketFactory;
    private final UrlRewriter mUrlRewriter;

    /* loaded from: classes.dex */
    public static class UrlConnectionInputStream extends FilterInputStream {
        private final HttpURLConnection mConnection;

        public UrlConnectionInputStream(HttpURLConnection httpURLConnection) {
            super(HurlStack.inputStreamFromConnection(httpURLConnection));
            this.mConnection = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            this.mConnection.disconnect();
        }
    }

    /* loaded from: classes.dex */
    public interface UrlRewriter extends com.android.volley.toolbox.UrlRewriter {
    }

    public HurlStack() {
        this(null);
    }

    private void addBody(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey(new ObfuscatedString(new long[]{4348352707803460817L, -6838710853984328455L, 7487683783573612737L}).toString())) {
            httpURLConnection.setRequestProperty(new ObfuscatedString(new long[]{-8752015316503407714L, 492053636447182050L, 6971279219158330395L}).toString(), request.getBodyContentType());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(createOutputStream(request, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    private void addBodyIfExists(HttpURLConnection httpURLConnection, Request<?> request) {
        byte[] body = request.getBody();
        if (body != null) {
            addBody(httpURLConnection, request, body);
        }
    }

    @VisibleForTesting
    public static List<Header> convertHeaders(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new Header(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static boolean hasResponseBody(int i, int i2) {
        return (i == 4 || (100 <= i2 && i2 < 200) || i2 == 204 || i2 == 304) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream inputStreamFromConnection(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private HttpURLConnection openConnection(URL url, Request<?> request) {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection createConnection = createConnection(url);
        int timeoutMs = request.getTimeoutMs();
        createConnection.setConnectTimeout(timeoutMs);
        createConnection.setReadTimeout(timeoutMs);
        createConnection.setUseCaches(false);
        createConnection.setDoInput(true);
        if (new ObfuscatedString(new long[]{-1022873662617947891L, 6300645441461220738L}).toString().equals(url.getProtocol()) && (sSLSocketFactory = this.mSslSocketFactory) != null) {
            ((HttpsURLConnection) createConnection).setSSLSocketFactory(sSLSocketFactory);
        }
        return createConnection;
    }

    public HttpURLConnection createConnection(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    public InputStream createInputStream(Request<?> request, HttpURLConnection httpURLConnection) {
        return new UrlConnectionInputStream(httpURLConnection);
    }

    public OutputStream createOutputStream(Request<?> request, HttpURLConnection httpURLConnection, int i) {
        return httpURLConnection.getOutputStream();
    }

    @Override // com.android.volley.toolbox.BaseHttpStack
    public HttpResponse executeRequest(Request<?> request, Map<String, String> map) {
        String url = request.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(map);
        hashMap.putAll(request.getHeaders());
        UrlRewriter urlRewriter = this.mUrlRewriter;
        if (urlRewriter != null) {
            String rewriteUrl = urlRewriter.rewriteUrl(url);
            if (rewriteUrl != null) {
                url = rewriteUrl;
            } else {
                throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-9141218026757338994L, 7602082609900890700L, -8657920224038884118L, -4594965804337747737L, -3813894895752242314L}), new StringBuilder(), url));
            }
        }
        HttpURLConnection openConnection = openConnection(new URL(url), request);
        try {
            for (String str : hashMap.keySet()) {
                openConnection.setRequestProperty(str, (String) hashMap.get(str));
            }
            setConnectionParametersForRequest(openConnection, request);
            int responseCode = openConnection.getResponseCode();
            if (responseCode != -1) {
                if (!hasResponseBody(request.getMethod(), responseCode)) {
                    HttpResponse httpResponse = new HttpResponse(responseCode, convertHeaders(openConnection.getHeaderFields()));
                    openConnection.disconnect();
                    return httpResponse;
                }
                return new HttpResponse(responseCode, convertHeaders(openConnection.getHeaderFields()), openConnection.getContentLength(), createInputStream(request, openConnection));
            }
            throw new IOException(new ObfuscatedString(new long[]{-6223263378486648047L, -4786882371888137273L, 6510081296847961637L, 8527447741375687265L, -1741448019043441935L, 4645774517309159396L, 5390871391796072208L, 1945213458561857435L}).toString());
        } catch (Throwable th) {
            if (0 == 0) {
                openConnection.disconnect();
            }
            throw th;
        }
    }

    public void setConnectionParametersForRequest(HttpURLConnection httpURLConnection, Request<?> request) {
        switch (request.getMethod()) {
            case -1:
                byte[] postBody = request.getPostBody();
                if (postBody != null) {
                    httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-5999466550481206050L, -4690942267130362195L}).toString());
                    addBody(httpURLConnection, request, postBody);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{2247581941642674247L, -2843633755799786905L}).toString());
                return;
            case 1:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-3947688881221551946L, -219818399935943972L}).toString());
                addBodyIfExists(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{3493465244884155764L, 1911147381199190280L}).toString());
                addBodyIfExists(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{7816349352321455861L, 3793927254180280987L}).toString());
                return;
            case 4:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{1600314690750249494L, -2641953891984068893L}).toString());
                return;
            case 5:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-4170845845409988234L, -1415883459167580240L}).toString());
                return;
            case 6:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-6596399013077059712L, 8095021249543170309L}).toString());
                return;
            case 7:
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{-2531347483357782762L, 5503059428078888850L}).toString());
                addBodyIfExists(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException(new ObfuscatedString(new long[]{-3973104809453880083L, -6617992411498644622L, -5520921696415061601L, -5756089943664293400L}).toString());
        }
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.mUrlRewriter = urlRewriter;
        this.mSslSocketFactory = sSLSocketFactory;
    }
}
