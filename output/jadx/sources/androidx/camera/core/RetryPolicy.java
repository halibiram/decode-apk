package androidx.camera.core;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.camera.core.impl.CameraProviderInitRetryPolicy;
import androidx.camera.core.impl.RetryPolicyInternal;
import androidx.camera.core.impl.TimeoutRetryPolicy;
import androidx.core.util.Preconditions;
import defpackage.AbstractC1093xcc01ec74;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@ExperimentalRetryPolicy
/* loaded from: classes.dex */
public interface RetryPolicy {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final long DEFAULT_RETRY_TIMEOUT_IN_MILLIS = 6000;

    @NonNull
    public static final RetryPolicy NEVER = new Object();

    @NonNull
    public static final RetryPolicy DEFAULT = new CameraProviderInitRetryPolicy.Legacy(AbstractC1093xcc01ec74.m3798x3271d0aa());

    @NonNull
    public static final RetryPolicy RETRY_UNAVAILABLE_CAMERA = new CameraProviderInitRetryPolicy(AbstractC1093xcc01ec74.m3798x3271d0aa());

    @ExperimentalRetryPolicy
    /* loaded from: classes.dex */
    public static final class Builder {
        private final RetryPolicy mBasePolicy;
        private long mTimeoutInMillis;

        public Builder(@NonNull RetryPolicy retryPolicy) {
            this.mBasePolicy = retryPolicy;
            this.mTimeoutInMillis = retryPolicy.getTimeoutInMillis();
        }

        @NonNull
        public RetryPolicy build() {
            RetryPolicy retryPolicy = this.mBasePolicy;
            if (retryPolicy instanceof RetryPolicyInternal) {
                return ((RetryPolicyInternal) retryPolicy).copy(this.mTimeoutInMillis);
            }
            return new TimeoutRetryPolicy(this.mTimeoutInMillis, retryPolicy);
        }

        @NonNull
        public Builder setTimeoutInMillis(long j) {
            this.mTimeoutInMillis = j;
            return this;
        }
    }

    @ExperimentalRetryPolicy
    /* loaded from: classes.dex */
    public interface ExecutionState {
        public static final int STATUS_CAMERA_UNAVAILABLE = 2;
        public static final int STATUS_CONFIGURATION_FAIL = 1;
        public static final int STATUS_UNKNOWN_ERROR = 0;

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public @interface Status {
        }

        @Nullable
        Throwable getCause();

        long getExecutedTimeInMillis();

        int getNumOfAttempts();

        int getStatus();
    }

    @ExperimentalRetryPolicy
    /* loaded from: classes.dex */
    public static final class RetryConfig {
        private static final long DEFAULT_DELAY_MILLIS = 500;
        private final boolean mCompleteWithoutFailure;
        private final long mDelayInMillis;
        private final boolean mShouldRetry;

        @NonNull
        public static final RetryConfig NOT_RETRY = new RetryConfig(false, 0);

        @NonNull
        public static final RetryConfig DEFAULT_DELAY_RETRY = new RetryConfig(true);
        private static final long MINI_DELAY_MILLIS = 100;

        @NonNull
        public static final RetryConfig MINI_DELAY_RETRY = new RetryConfig(true, MINI_DELAY_MILLIS);

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static RetryConfig COMPLETE_WITHOUT_FAILURE = new RetryConfig(false, 0L, true);

        @ExperimentalRetryPolicy
        /* loaded from: classes.dex */
        public static final class Builder {
            private boolean mShouldRetry = true;
            private long mTimeoutInMillis = RetryConfig.getDefaultRetryDelayInMillis();

            @NonNull
            public RetryConfig build() {
                return new RetryConfig(this.mShouldRetry, this.mTimeoutInMillis);
            }

            @NonNull
            public Builder setRetryDelayInMillis(@IntRange(from = 100, to = 2000) long j) {
                this.mTimeoutInMillis = j;
                return this;
            }

            @NonNull
            public Builder setShouldRetry(boolean z) {
                this.mShouldRetry = z;
                return this;
            }
        }

        public static long getDefaultRetryDelayInMillis() {
            return DEFAULT_DELAY_MILLIS;
        }

        public long getRetryDelayInMillis() {
            return this.mDelayInMillis;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public boolean shouldCompleteWithoutFailure() {
            return this.mCompleteWithoutFailure;
        }

        public boolean shouldRetry() {
            return this.mShouldRetry;
        }

        private RetryConfig(boolean z) {
            this(z, getDefaultRetryDelayInMillis());
        }

        private RetryConfig(boolean z, long j) {
            this(z, j, false);
        }

        private RetryConfig(boolean z, long j, boolean z2) {
            this.mShouldRetry = z;
            this.mDelayInMillis = j;
            if (z2) {
                Preconditions.checkArgument(!z, "shouldRetry must be false when completeWithoutFailure is set to true");
            }
            this.mCompleteWithoutFailure = z2;
        }
    }

    long getTimeoutInMillis();

    @NonNull
    RetryConfig onRetryDecisionRequested(@NonNull ExecutionState executionState);
}
