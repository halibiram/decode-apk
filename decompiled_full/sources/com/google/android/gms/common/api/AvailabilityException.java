package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public class AvailabilityException extends Exception {
    private final ArrayMap<ApiKey<?>, ConnectionResult> zaa;

    public AvailabilityException(@NonNull ArrayMap<ApiKey<?>, ConnectionResult> arrayMap) {
        this.zaa = arrayMap;
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull GoogleApi<? extends Api.ApiOptions> googleApi) {
        ApiKey<? extends Api.ApiOptions> apiKey = googleApi.getApiKey();
        boolean z = this.zaa.get(apiKey) != null;
        String zab = apiKey.zab();
        StringBuilder sb = new StringBuilder(String.valueOf(zab).length() + 58);
        sb.append(new ObfuscatedString(new long[]{-2365427699703839690L, 6237729960119965893L, -6145886088701330755L}).toString());
        sb.append(zab);
        sb.append(new ObfuscatedString(new long[]{-1145565743627697907L, 3597974171455448896L, -9085967305877385265L, 2921418467479458813L, -7867929755797717527L, -8602468895383000081L, 4332117499326078603L}).toString());
        Preconditions.checkArgument(z, sb.toString());
        return (ConnectionResult) Preconditions.checkNotNull(this.zaa.get(apiKey));
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (ApiKey<?> apiKey : this.zaa.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) Preconditions.checkNotNull(this.zaa.get(apiKey));
            z &= !connectionResult.isSuccess();
            String zab = apiKey.zab();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(zab).length() + 2 + valueOf.length());
            sb.append(zab);
            sb.append(new ObfuscatedString(new long[]{-6817775300721768225L, -7064711504320802632L}).toString());
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z) {
            sb2.append(new ObfuscatedString(new long[]{1921523431637573747L, -5683029338594866481L, -1381899192222899886L, -452795292187953052L, -6648537650479658286L, -5754546516631210898L}).toString());
        } else {
            sb2.append(new ObfuscatedString(new long[]{8089159415804047099L, 222324714014785861L, -9126390225546502966L, -6850277071424294982L, -7021517148776238252L, -8154524097128971244L, 8591422431793541817L}).toString());
        }
        sb2.append(TextUtils.join(new ObfuscatedString(new long[]{-1598195189886323048L, 458896326962756423L}).toString(), arrayList));
        return sb2.toString();
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull HasApiKey<? extends Api.ApiOptions> hasApiKey) {
        ApiKey<? extends Api.ApiOptions> apiKey = hasApiKey.getApiKey();
        boolean z = this.zaa.get(apiKey) != null;
        String zab = apiKey.zab();
        StringBuilder sb = new StringBuilder(String.valueOf(zab).length() + 58);
        sb.append(new ObfuscatedString(new long[]{-671722731634527571L, -6756383728893647256L, -8586606668770378563L}).toString());
        sb.append(zab);
        sb.append(new ObfuscatedString(new long[]{-5921742696301181596L, -7452903290379118738L, -3051043235517109305L, -5102307108737497108L, -1203358163224156938L, -6275475138368689740L, 6018967380284993082L}).toString());
        Preconditions.checkArgument(z, sb.toString());
        return (ConnectionResult) Preconditions.checkNotNull(this.zaa.get(apiKey));
    }
}
