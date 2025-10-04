package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.customtabs.CustomTabsCallback;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzbhe extends CustomTabsCallback {
    private final AtomicBoolean zza = new AtomicBoolean(false);
    private final List zzb = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzjD)).split(new ObfuscatedString(new long[]{-4970011566526745576L, -2083483647414872541L}).toString()));
    private final zzbhh zzc;

    @Nullable
    private final CustomTabsCallback zzd;

    public zzbhe(@NonNull zzbhh zzbhhVar, @Nullable CustomTabsCallback customTabsCallback) {
        this.zzd = customTabsCallback;
        this.zzc = zzbhhVar;
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void extraCallback(String str, @Nullable Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.extraCallback(str, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    @Nullable
    public final Bundle extraCallbackWithResult(String str, @Nullable Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            return customTabsCallback.extraCallbackWithResult(str, bundle);
        }
        return null;
    }

    public final void onActivityResized(int i, int i2, Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.onActivityResized(i, i2, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onMessageChannelReady(@Nullable Bundle bundle) {
        this.zza.set(false);
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.onMessageChannelReady(bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onNavigationEvent(int i, @Nullable Bundle bundle) {
        List list;
        this.zza.set(false);
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.onNavigationEvent(i, bundle);
        }
        this.zzc.zzi(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis());
        if (this.zzc != null && (list = this.zzb) != null && list.contains(String.valueOf(i))) {
            this.zzc.zzf();
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onPostMessage(String str, @Nullable Bundle bundle) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.optInt(new ObfuscatedString(new long[]{-1448415631117459325L, 3278729028849927839L}).toString(), -1) == 0) {
                this.zza.set(true);
                this.zzc.zzh(jSONObject.getString(new ObfuscatedString(new long[]{-4095295153879470967L, 6954647048919960007L}).toString()));
            }
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.zze.zzb(new ObfuscatedString(new long[]{-4433803543259866821L, 4702384321254645258L, -5216496773390042101L, -7278074549369911671L, 4902554128435221268L}).toString(), e);
        }
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.onPostMessage(str, bundle);
        }
    }

    @Override // androidx.browser.customtabs.CustomTabsCallback
    public final void onRelationshipValidationResult(int i, Uri uri, boolean z, @Nullable Bundle bundle) {
        CustomTabsCallback customTabsCallback = this.zzd;
        if (customTabsCallback != null) {
            customTabsCallback.onRelationshipValidationResult(i, uri, z, bundle);
        }
    }

    public final Boolean zza() {
        return Boolean.valueOf(this.zza.get());
    }
}
