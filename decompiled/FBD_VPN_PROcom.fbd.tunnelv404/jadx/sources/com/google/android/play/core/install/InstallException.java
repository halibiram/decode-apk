package com.google.android.play.core.install;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.play.core.install.model.InstallErrorCode;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

/* loaded from: classes2.dex */
public class InstallException extends ApiException {
    public InstallException(@InstallErrorCode int i) {
        super(new Status(i, String.format(Locale.getDefault(), new ObfuscatedString(new long[]{871817796658720447L, -8264326736450547416L, -7193634044692802370L, -670514121601643390L}).toString(), Integer.valueOf(i), com.google.android.play.core.install.model.zza.zza(i))));
        if (i != 0) {
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6839141653566259715L, -1046527075258582643L, 2508114200149295356L, -5206496554581617207L, 4032288631116053015L}).toString());
        }
    }

    @InstallErrorCode
    public int getErrorCode() {
        return super.getStatusCode();
    }
}
