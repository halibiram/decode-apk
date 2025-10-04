package com.google.android.gms.common.api;

import android.os.Looper;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zaf<R extends Result> extends BasePendingResult<R> {
    private final R zae;

    public zaf(R r) {
        super(Looper.getMainLooper());
        this.zae = r;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        if (status.getStatusCode() == this.zae.getStatus().getStatusCode()) {
            return this.zae;
        }
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{908938215497052653L, -365276643359634943L, -4586130087571650791L, 1400763462699570245L, 2199349556175941565L, -6003637516553670329L}).toString());
    }
}
