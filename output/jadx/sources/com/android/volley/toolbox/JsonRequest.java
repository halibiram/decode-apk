package com.android.volley.toolbox;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import com.panda912.muddy.ObfuscatedString;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public abstract class JsonRequest<T> extends Request<T> {
    protected static final String PROTOCOL_CHARSET = new ObfuscatedString(new long[]{-1012310446445753072L, -8990226088740643351L}).toString();
    private static final String PROTOCOL_CONTENT_TYPE = String.format(new ObfuscatedString(new long[]{-5228569365764645131L, 8769020107458697899L, 5356780206529903398L, -8242042797666352358L, -7300971472928289821L}).toString(), new ObfuscatedString(new long[]{-674467096569933068L, 1984275633053338588L}).toString());

    @Nullable
    @GuardedBy("mLock")
    private Response.Listener<T> mListener;
    private final Object mLock;

    @Nullable
    private final String mRequestBody;

    @Deprecated
    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.android.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override // com.android.volley.Request
    public void deliverResponse(T t) {
        Response.Listener<T> listener;
        synchronized (this.mLock) {
            listener = this.mListener;
        }
        if (listener != null) {
            listener.onResponse(t);
        }
    }

    @Override // com.android.volley.Request
    public byte[] getBody() {
        try {
            String str = this.mRequestBody;
            if (str == null) {
                return null;
            }
            return str.getBytes(new ObfuscatedString(new long[]{5376605026618328482L, -3898551936088997672L}).toString());
        } catch (UnsupportedEncodingException unused) {
            VolleyLog.wtf(new ObfuscatedString(new long[]{6437351411944708981L, -5872588965725308734L, 1950124342608388934L, -614974398215369664L, -9009559373329976346L, -1733862671006678600L, 9184532600843679248L, -4703887188454269943L, 8307633164645111689L, -3982831972469177098L}).toString(), this.mRequestBody, new ObfuscatedString(new long[]{5608725052192825874L, 3426999916090336182L}).toString());
            return null;
        }
    }

    @Override // com.android.volley.Request
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // com.android.volley.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.android.volley.Request
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.android.volley.Request
    public abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);

    public JsonRequest(int i, String str, @Nullable String str2, Response.Listener<T> listener, @Nullable Response.ErrorListener errorListener) {
        super(i, str, errorListener);
        this.mLock = new Object();
        this.mListener = listener;
        this.mRequestBody = str2;
    }
}
