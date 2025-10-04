package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;

/* loaded from: classes2.dex */
public final class ApiKey<O extends Api.ApiOptions> {
    private final int zaa;
    private final Api<O> zab;

    @Nullable
    private final O zac;

    @Nullable
    private final String zad;

    private ApiKey(Api<O> api, @Nullable O o, @Nullable String str) {
        this.zab = api;
        this.zac = o;
        this.zad = str;
        this.zaa = Objects.hashCode(api, o, str);
    }

    @NonNull
    public static <O extends Api.ApiOptions> ApiKey<O> zaa(@NonNull Api<O> api, @Nullable O o, @Nullable String str) {
        return new ApiKey<>(api, o, str);
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ApiKey)) {
            return false;
        }
        ApiKey apiKey = (ApiKey) obj;
        if (!Objects.equal(this.zab, apiKey.zab) || !Objects.equal(this.zac, apiKey.zac) || !Objects.equal(this.zad, apiKey.zad)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.zaa;
    }

    @NonNull
    public final String zab() {
        return this.zab.zad();
    }
}
