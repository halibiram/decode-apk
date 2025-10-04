package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.privacysandbox.ads.adservices.java.topics.TopicsManagerFutures;
import androidx.privacysandbox.ads.adservices.topics.GetTopicsRequest;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzeil {
    private final Context zza;

    public zzeil(Context context) {
        this.zza = context;
    }

    public final ListenableFuture zza(boolean z) {
        GetTopicsRequest build = new GetTopicsRequest.Builder().setAdsSdkName(new ObfuscatedString(new long[]{-8490837773429877440L, -2531341525024183782L, -4709139748573147504L, 8142180907396090726L, 7695144214647487465L}).toString()).setShouldRecordObservation(z).build();
        TopicsManagerFutures from = TopicsManagerFutures.from(this.zza);
        if (from != null) {
            return from.getTopicsAsync(build);
        }
        return zzgen.zzg(new IllegalStateException());
    }
}
