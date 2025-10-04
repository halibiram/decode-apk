package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.LongMath;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
public final class CacheStats {
    private final long evictionCount;
    private final long hitCount;
    private final long loadExceptionCount;
    private final long loadSuccessCount;
    private final long missCount;
    private final long totalLoadTime;

    public CacheStats(long j, long j2, long j3, long j4, long j5, long j6) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        if (j2 >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2);
        if (j3 >= 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.checkArgument(z3);
        if (j4 >= 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        Preconditions.checkArgument(z4);
        if (j5 >= 0) {
            z5 = true;
        } else {
            z5 = false;
        }
        Preconditions.checkArgument(z5);
        Preconditions.checkArgument(j6 >= 0);
        this.hitCount = j;
        this.missCount = j2;
        this.loadSuccessCount = j3;
        this.loadExceptionCount = j4;
        this.totalLoadTime = j5;
        this.evictionCount = j6;
    }

    public double averageLoadPenalty() {
        long saturatedAdd = LongMath.saturatedAdd(this.loadSuccessCount, this.loadExceptionCount);
        if (saturatedAdd == 0) {
            return 0.0d;
        }
        return this.totalLoadTime / saturatedAdd;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof CacheStats)) {
            return false;
        }
        CacheStats cacheStats = (CacheStats) obj;
        if (this.hitCount != cacheStats.hitCount || this.missCount != cacheStats.missCount || this.loadSuccessCount != cacheStats.loadSuccessCount || this.loadExceptionCount != cacheStats.loadExceptionCount || this.totalLoadTime != cacheStats.totalLoadTime || this.evictionCount != cacheStats.evictionCount) {
            return false;
        }
        return true;
    }

    public long evictionCount() {
        return this.evictionCount;
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.hitCount), Long.valueOf(this.missCount), Long.valueOf(this.loadSuccessCount), Long.valueOf(this.loadExceptionCount), Long.valueOf(this.totalLoadTime), Long.valueOf(this.evictionCount));
    }

    public long hitCount() {
        return this.hitCount;
    }

    public double hitRate() {
        long requestCount = requestCount();
        if (requestCount == 0) {
            return 1.0d;
        }
        return this.hitCount / requestCount;
    }

    public long loadCount() {
        return LongMath.saturatedAdd(this.loadSuccessCount, this.loadExceptionCount);
    }

    public long loadExceptionCount() {
        return this.loadExceptionCount;
    }

    public double loadExceptionRate() {
        long saturatedAdd = LongMath.saturatedAdd(this.loadSuccessCount, this.loadExceptionCount);
        if (saturatedAdd == 0) {
            return 0.0d;
        }
        return this.loadExceptionCount / saturatedAdd;
    }

    public long loadSuccessCount() {
        return this.loadSuccessCount;
    }

    public CacheStats minus(CacheStats cacheStats) {
        return new CacheStats(Math.max(0L, LongMath.saturatedSubtract(this.hitCount, cacheStats.hitCount)), Math.max(0L, LongMath.saturatedSubtract(this.missCount, cacheStats.missCount)), Math.max(0L, LongMath.saturatedSubtract(this.loadSuccessCount, cacheStats.loadSuccessCount)), Math.max(0L, LongMath.saturatedSubtract(this.loadExceptionCount, cacheStats.loadExceptionCount)), Math.max(0L, LongMath.saturatedSubtract(this.totalLoadTime, cacheStats.totalLoadTime)), Math.max(0L, LongMath.saturatedSubtract(this.evictionCount, cacheStats.evictionCount)));
    }

    public long missCount() {
        return this.missCount;
    }

    public double missRate() {
        long requestCount = requestCount();
        if (requestCount == 0) {
            return 0.0d;
        }
        return this.missCount / requestCount;
    }

    public CacheStats plus(CacheStats cacheStats) {
        return new CacheStats(LongMath.saturatedAdd(this.hitCount, cacheStats.hitCount), LongMath.saturatedAdd(this.missCount, cacheStats.missCount), LongMath.saturatedAdd(this.loadSuccessCount, cacheStats.loadSuccessCount), LongMath.saturatedAdd(this.loadExceptionCount, cacheStats.loadExceptionCount), LongMath.saturatedAdd(this.totalLoadTime, cacheStats.totalLoadTime), LongMath.saturatedAdd(this.evictionCount, cacheStats.evictionCount));
    }

    public long requestCount() {
        return LongMath.saturatedAdd(this.hitCount, this.missCount);
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).add(new ObfuscatedString(new long[]{7110994134394040564L, 5609066334983015802L}).toString(), this.hitCount).add(new ObfuscatedString(new long[]{3037509266008908474L, 3376898837795289923L, -2676793599674826564L}).toString(), this.missCount).add(new ObfuscatedString(new long[]{-2281568993882790111L, -3304627958032877356L, 2265707594336206111L}).toString(), this.loadSuccessCount).add(new ObfuscatedString(new long[]{-7412278612551218766L, 980843379867585224L, -2014281600342318829L, -9149178391558570270L}).toString(), this.loadExceptionCount).add(new ObfuscatedString(new long[]{5007261933765990298L, -1316493862219873519L, 3944755697763954520L}).toString(), this.totalLoadTime).add(new ObfuscatedString(new long[]{5760387230761162715L, -7008438971292153744L, 1544399934852558105L}).toString(), this.evictionCount).toString();
    }

    public long totalLoadTime() {
        return this.totalLoadTime;
    }
}
