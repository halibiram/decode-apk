package com.android.volley;

import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes.dex */
public class AuthFailureError extends VolleyError {
    private Intent mResolutionIntent;

    public AuthFailureError() {
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        if (this.mResolutionIntent != null) {
            return new ObfuscatedString(new long[]{-4877143559516336790L, 824066542402736039L, -25596855794684412L, -2146632350651644878L, -6101947409483808774L, -4660864582093648973L}).toString();
        }
        return super.getMessage();
    }

    public Intent getResolutionIntent() {
        return this.mResolutionIntent;
    }

    public AuthFailureError(Intent intent) {
        this.mResolutionIntent = intent;
    }

    public AuthFailureError(NetworkResponse networkResponse) {
        super(networkResponse);
    }

    public AuthFailureError(String str) {
        super(str);
    }

    public AuthFailureError(String str, Exception exc) {
        super(str, exc);
    }
}
