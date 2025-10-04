package androidx.camera.core.impl;

import androidx.annotation.NonNull;
import androidx.camera.core.ExperimentalRetryPolicy;
import androidx.camera.core.RetryPolicy;
import androidx.core.util.Preconditions;

@ExperimentalRetryPolicy
/* loaded from: classes.dex */
public final class TimeoutRetryPolicy implements RetryPolicy {
    private final RetryPolicy mDelegatePolicy;
    private final long mTimeoutInMillis;

    public TimeoutRetryPolicy(long j, @NonNull RetryPolicy retryPolicy) {
        boolean z;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Timeout must be non-negative.");
        this.mTimeoutInMillis = j;
        this.mDelegatePolicy = retryPolicy;
    }

    @Override // androidx.camera.core.RetryPolicy
    public long getTimeoutInMillis() {
        return this.mTimeoutInMillis;
    }

    @Override // androidx.camera.core.RetryPolicy
    @NonNull
    public RetryPolicy.RetryConfig onRetryDecisionRequested(@NonNull RetryPolicy.ExecutionState executionState) {
        RetryPolicy.RetryConfig onRetryDecisionRequested = this.mDelegatePolicy.onRetryDecisionRequested(executionState);
        if (getTimeoutInMillis() > 0 && executionState.getExecutedTimeInMillis() >= getTimeoutInMillis() - onRetryDecisionRequested.getRetryDelayInMillis()) {
            return RetryPolicy.RetryConfig.NOT_RETRY;
        }
        return onRetryDecisionRequested;
    }
}
