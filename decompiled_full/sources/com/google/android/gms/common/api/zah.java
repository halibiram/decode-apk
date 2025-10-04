package com.google.android.gms.common.api;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zah<R extends Result> extends BasePendingResult<R> {
    public zah(@Nullable GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final R createFailedResult(Status status) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-8780507557283181525L, -8281798775803784142L, -2563196293118267253L, -7985092895793456812L, 34164807007998850L, -6301978049190834147L}).toString());
    }
}
