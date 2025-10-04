package com.google.android.gms.ads.admanager;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.AdRequest;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public final class AdManagerAdRequest extends AdRequest {

    /* loaded from: classes2.dex */
    public static final class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public Builder addCategoryExclusion(@NonNull String str) {
            this.zza.zzn(str);
            return this;
        }

        @NonNull
        public Builder addCustomTargeting(@NonNull String str, @NonNull String str2) {
            this.zza.zzp(str, str2);
            return this;
        }

        @NonNull
        public AdManagerAdRequest build() {
            return new AdManagerAdRequest(this, null);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public final /* bridge */ /* synthetic */ Builder self() {
            return this;
        }

        @NonNull
        public Builder setPublisherProvidedId(@NonNull String str) {
            this.zza.zzA(str);
            return this;
        }

        @NonNull
        public Builder addCustomTargeting(@NonNull String str, @NonNull List<String> list) {
            if (list != null) {
                this.zza.zzp(str, TextUtils.join(new ObfuscatedString(new long[]{157535028795992270L, 3082641083349732974L}).toString(), list));
            }
            return this;
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public Builder self() {
            return this;
        }
    }

    public /* synthetic */ AdManagerAdRequest(Builder builder, zza zzaVar) {
        super(builder);
    }

    @Override // com.google.android.gms.ads.AdRequest
    @NonNull
    public Bundle getCustomTargeting() {
        return this.zza.zzd();
    }

    @NonNull
    public String getPublisherProvidedId() {
        return this.zza.zzk();
    }
}
