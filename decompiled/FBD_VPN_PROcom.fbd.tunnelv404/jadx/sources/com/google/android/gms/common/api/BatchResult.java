package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class BatchResult implements Result {
    private final Status zaa;
    private final PendingResult<?>[] zab;

    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.zaa = status;
        this.zab = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this.zaa;
    }

    @NonNull
    public <R extends Result> R take(@NonNull BatchResultToken<R> batchResultToken) {
        boolean z;
        if (batchResultToken.mId < this.zab.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{5786474042355052781L, -135837359424283413L, 2336636514840020159L, 4896772944137312619L, 5748890857900511734L, 7360070912706256371L, -7156842120214834190L}).toString());
        return (R) this.zab[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
