package com.v2ray.ang.viewmodel;

import com.panda912.muddy.ObfuscatedString;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002*\u0001\u0000\b\u008a\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\"\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001¢\u0006\u0002\u0010\u0013J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, d2 = {"com/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay", "", "guid", "", "testDelayMillis", "", "<init>", "(Ljava/lang/String;J)V", "getGuid", "()Ljava/lang/String;", "setGuid", "(Ljava/lang/String;)V", "getTestDelayMillis", "()J", "setTestDelayMillis", "(J)V", "component1", "component2", "copy", "(Ljava/lang/String;J)Lcom/v2ray/ang/viewmodel/MainViewModel$sortByTestResults$ServerDelay;", "equals", "", "other", "hashCode", "", "toString", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class MainViewModel$sortByTestResults$ServerDelay {
    private String guid;
    private long testDelayMillis;

    public MainViewModel$sortByTestResults$ServerDelay(String str, long j) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{2742196220675495261L, -909866248865629006L}).toString());
        this.guid = str;
        this.testDelayMillis = j;
    }

    public static /* synthetic */ MainViewModel$sortByTestResults$ServerDelay copy$default(MainViewModel$sortByTestResults$ServerDelay mainViewModel$sortByTestResults$ServerDelay, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = mainViewModel$sortByTestResults$ServerDelay.guid;
        }
        if ((i & 2) != 0) {
            j = mainViewModel$sortByTestResults$ServerDelay.testDelayMillis;
        }
        return mainViewModel$sortByTestResults$ServerDelay.copy(str, j);
    }

    /* renamed from: component1, reason: from getter */
    public final String getGuid() {
        return this.guid;
    }

    /* renamed from: component2, reason: from getter */
    public final long getTestDelayMillis() {
        return this.testDelayMillis;
    }

    public final MainViewModel$sortByTestResults$ServerDelay copy(String guid, long testDelayMillis) {
        Intrinsics.checkNotNullParameter(guid, new ObfuscatedString(new long[]{-5949220022904849764L, 4417301211956558511L}).toString());
        return new MainViewModel$sortByTestResults$ServerDelay(guid, testDelayMillis);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MainViewModel$sortByTestResults$ServerDelay)) {
            return false;
        }
        MainViewModel$sortByTestResults$ServerDelay mainViewModel$sortByTestResults$ServerDelay = (MainViewModel$sortByTestResults$ServerDelay) other;
        return Intrinsics.areEqual(this.guid, mainViewModel$sortByTestResults$ServerDelay.guid) && this.testDelayMillis == mainViewModel$sortByTestResults$ServerDelay.testDelayMillis;
    }

    public final String getGuid() {
        return this.guid;
    }

    public final long getTestDelayMillis() {
        return this.testDelayMillis;
    }

    public int hashCode() {
        int hashCode = this.guid.hashCode() * 31;
        long j = this.testDelayMillis;
        return hashCode + ((int) (j ^ (j >>> 32)));
    }

    public final void setGuid(String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-2700400223227808238L, -1513698914119304313L}).toString());
        this.guid = str;
    }

    public final void setTestDelayMillis(long j) {
        this.testDelayMillis = j;
    }

    public String toString() {
        return "ServerDelay(guid=" + this.guid + ", testDelayMillis=" + this.testDelayMillis + ")";
    }
}
