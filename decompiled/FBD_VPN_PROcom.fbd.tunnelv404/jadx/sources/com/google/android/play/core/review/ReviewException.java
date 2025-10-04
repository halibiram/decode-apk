package com.google.android.play.core.review;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public class ReviewException extends ApiException {
    public ReviewException(int i) {
        super(new Status(i, String.format(Locale.getDefault(), new ObfuscatedString(new long[]{-707711639154665630L, 1727030106496362068L, 1478779847313346088L, -3689227527096705917L}).toString(), Integer.valueOf(i), com.google.android.play.core.review.model.zza.zza(i))));
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
