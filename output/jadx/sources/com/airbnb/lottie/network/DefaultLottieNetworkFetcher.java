package com.airbnb.lottie.network;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.panda912.muddy.ObfuscatedString;
import java.net.HttpURLConnection;
import java.net.URL;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class DefaultLottieNetworkFetcher implements LottieNetworkFetcher {
    @Override // com.airbnb.lottie.network.LottieNetworkFetcher
    @NonNull
    public LottieFetchResult fetchSync(@NonNull String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{3757965153047291255L, -5110905331087602007L}).toString());
        httpURLConnection.connect();
        return new DefaultLottieFetchResult(httpURLConnection);
    }
}
