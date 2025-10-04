package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class AdRequest {

    @NonNull
    public static final String DEVICE_ID_EMULATOR = new ObfuscatedString(new long[]{6205181834716281273L, 8605173347347749667L, 260126628960406438L, -5135807136440401895L, -2757107258961305835L}).toString();
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_AD_STRING = 11;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
    public static final int MAX_CONTENT_URL_LENGTH = 512;
    protected final zzdx zza;

    /* loaded from: classes2.dex */
    public static class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public AdRequest build() {
            return new AdRequest(this);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public Builder self() {
            return this;
        }
    }

    public AdRequest(@NonNull AbstractAdRequestBuilder abstractAdRequestBuilder) {
        this.zza = new zzdx(abstractAdRequestBuilder.zza, null);
    }

    @Nullable
    public String getAdString() {
        return this.zza.zzi();
    }

    @NonNull
    public String getContentUrl() {
        return this.zza.zzj();
    }

    @Nullable
    @Deprecated
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@NonNull Class<T> cls) {
        return this.zza.zzc(cls);
    }

    @NonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzd();
    }

    @NonNull
    public Set<String> getKeywords() {
        return this.zza.zzo();
    }

    @NonNull
    public List<String> getNeighboringContentUrls() {
        return this.zza.zzm();
    }

    @Nullable
    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(@NonNull Class<T> cls) {
        return this.zza.zze(cls);
    }

    @NonNull
    public String getRequestAgent() {
        return this.zza.zzl();
    }

    public boolean isTestDevice(@NonNull Context context) {
        return this.zza.zzq(context);
    }

    public final zzdx zza() {
        return this.zza;
    }
}
