package com.google.android.gms.ads.rewarded;

import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public class ServerSideVerificationOptions {
    private final String zza;
    private final String zzb;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private String zza = new ObfuscatedString(new long[]{-1363381184734617598L}).toString();
        private String zzb = new ObfuscatedString(new long[]{444425802436895391L}).toString();

        @NonNull
        public ServerSideVerificationOptions build() {
            return new ServerSideVerificationOptions(this, null);
        }

        @NonNull
        public Builder setCustomData(@NonNull String str) {
            this.zzb = str;
            return this;
        }

        @NonNull
        public Builder setUserId(@NonNull String str) {
            this.zza = str;
            return this;
        }
    }

    public /* synthetic */ ServerSideVerificationOptions(Builder builder, zzd zzdVar) {
        this.zza = builder.zza;
        this.zzb = builder.zzb;
    }

    @NonNull
    public String getCustomData() {
        return this.zzb;
    }

    @NonNull
    public String getUserId() {
        return this.zza;
    }
}
