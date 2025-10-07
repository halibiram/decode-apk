package com.google.android.gms.measurement.api;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.measurement.zzee;
import com.google.android.gms.measurement.internal.zzhi;
import com.google.android.gms.measurement.internal.zzhj;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;
import java.util.Map;

@ShowFirstParty
@KeepForSdk
/* loaded from: classes2.dex */
public class AppMeasurementSdk {
    private final zzee zza;

    @KeepForSdk
    /* loaded from: classes2.dex */
    public static final class ConditionalUserProperty {

        @NonNull
        @KeepForSdk
        public static final String ORIGIN = new ObfuscatedString(new long[]{86737048477583331L, -5320961314675501563L}).toString();

        @NonNull
        @KeepForSdk
        public static final String NAME = new ObfuscatedString(new long[]{-9179355047314743698L, -5128384025424583450L}).toString();

        @NonNull
        @KeepForSdk
        public static final String VALUE = new ObfuscatedString(new long[]{-4310142203561020343L, -6279755754402081920L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TRIGGER_EVENT_NAME = new ObfuscatedString(new long[]{-4043144730978780096L, 3627161243427550094L, 8661500131588053196L, 7949056752950921443L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TRIGGER_TIMEOUT = new ObfuscatedString(new long[]{-1398192521864302159L, 7023446388542209835L, 8328780745170900632L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_NAME = new ObfuscatedString(new long[]{-686776250145326414L, -8811370532183348267L, -8738408742362341218L, -3609154055762444123L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TIMED_OUT_EVENT_PARAMS = new ObfuscatedString(new long[]{-8491085956616987675L, -3880471630720693445L, -8132086070961610673L, 2087551692860952505L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_EVENT_NAME = new ObfuscatedString(new long[]{-5629818619457192735L, 3736759125044534451L, -5909084943909025229L, 3243166216897823158L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_EVENT_PARAMS = new ObfuscatedString(new long[]{-9185554219246209759L, -7399647447239876598L, -4282614817706985783L, -9218906928924707343L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TIME_TO_LIVE = new ObfuscatedString(new long[]{3911087260985571304L, -7384747173584656337L, 1727064329791411655L}).toString();

        @NonNull
        @KeepForSdk
        public static final String EXPIRED_EVENT_NAME = new ObfuscatedString(new long[]{-1564161804134875155L, -6711558263011343432L, -3906241842513371934L, 8089081802860640092L}).toString();

        @NonNull
        @KeepForSdk
        public static final String EXPIRED_EVENT_PARAMS = new ObfuscatedString(new long[]{-3042790328766894300L, 8331985690597762929L, 6347945737387412284L, -5392031942126570844L}).toString();

        @NonNull
        @KeepForSdk
        public static final String CREATION_TIMESTAMP = new ObfuscatedString(new long[]{-7177664316498710200L, -7040844064383279759L, -6549055838783810126L, 5509583699010884117L}).toString();

        @NonNull
        @KeepForSdk
        public static final String ACTIVE = new ObfuscatedString(new long[]{5394996301685947247L, 3858605617182756316L}).toString();

        @NonNull
        @KeepForSdk
        public static final String TRIGGERED_TIMESTAMP = new ObfuscatedString(new long[]{-7001427095301442354L, -6900431924453313967L, -2741684281532307644L, -9188638915139258962L}).toString();

        private ConditionalUserProperty() {
        }
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface EventInterceptor extends zzhi {
        @Override // com.google.android.gms.measurement.internal.zzhi
        @ShowFirstParty
        @KeepForSdk
        @WorkerThread
        void interceptEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j);
    }

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes2.dex */
    public interface OnEventListener extends zzhj {
        @Override // com.google.android.gms.measurement.internal.zzhj
        @ShowFirstParty
        @KeepForSdk
        @WorkerThread
        void onEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j);
    }

    public AppMeasurementSdk(zzee zzeeVar) {
        this.zza = zzeeVar;
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @ShowFirstParty
    @KeepForSdk
    public static AppMeasurementSdk getInstance(@NonNull Context context) {
        return zzee.zzg(context, null, null, null, null).zzd();
    }

    @KeepForSdk
    public void beginAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.zza.zzu(str);
    }

    @KeepForSdk
    public void clearConditionalUserProperty(@NonNull @Size(max = 24, min = 1) String str, @Nullable String str2, @Nullable Bundle bundle) {
        this.zza.zzv(str, str2, bundle);
    }

    @KeepForSdk
    public void endAdUnitExposure(@NonNull @Size(min = 1) String str) {
        this.zza.zzw(str);
    }

    @KeepForSdk
    public long generateEventId() {
        return this.zza.zzb();
    }

    @Nullable
    @KeepForSdk
    public String getAppIdOrigin() {
        return this.zza.zzj();
    }

    @Nullable
    @KeepForSdk
    public String getAppInstanceId() {
        return this.zza.zzl();
    }

    @NonNull
    @KeepForSdk
    @WorkerThread
    public List<Bundle> getConditionalUserProperties(@Nullable String str, @Nullable @Size(max = 23, min = 1) String str2) {
        return this.zza.zzp(str, str2);
    }

    @Nullable
    @KeepForSdk
    public String getCurrentScreenClass() {
        return this.zza.zzm();
    }

    @Nullable
    @KeepForSdk
    public String getCurrentScreenName() {
        return this.zza.zzn();
    }

    @Nullable
    @KeepForSdk
    public String getGmpAppId() {
        return this.zza.zzo();
    }

    @KeepForSdk
    @WorkerThread
    public int getMaxUserProperties(@NonNull @Size(min = 1) String str) {
        return this.zza.zza(str);
    }

    @NonNull
    @KeepForSdk
    @WorkerThread
    public Map<String, Object> getUserProperties(@Nullable String str, @Nullable @Size(max = 24, min = 1) String str2, boolean z) {
        return this.zza.zzq(str, str2, z);
    }

    @KeepForSdk
    public void logEvent(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle) {
        this.zza.zzy(str, str2, bundle);
    }

    @KeepForSdk
    public void logEventNoInterceptor(@NonNull String str, @NonNull String str2, @NonNull Bundle bundle, long j) {
        this.zza.zzz(str, str2, bundle, j);
    }

    @Nullable
    @KeepForSdk
    public void performAction(@NonNull Bundle bundle) {
        this.zza.zzc(bundle, false);
    }

    @Nullable
    @KeepForSdk
    public Bundle performActionWithResponse(@NonNull Bundle bundle) {
        return this.zza.zzc(bundle, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void registerOnMeasurementEventListener(@NonNull OnEventListener onEventListener) {
        this.zza.zzB(onEventListener);
    }

    @KeepForSdk
    public void setConditionalUserProperty(@NonNull Bundle bundle) {
        this.zza.zzD(bundle);
    }

    @KeepForSdk
    public void setConsent(@NonNull Bundle bundle) {
        this.zza.zzE(bundle);
    }

    @KeepForSdk
    public void setCurrentScreen(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        this.zza.zzG(activity, str, str2);
    }

    @ShowFirstParty
    @KeepForSdk
    @WorkerThread
    public void setEventInterceptor(@NonNull EventInterceptor eventInterceptor) {
        this.zza.zzJ(eventInterceptor);
    }

    @KeepForSdk
    public void setMeasurementEnabled(@Nullable Boolean bool) {
        this.zza.zzK(bool);
    }

    @KeepForSdk
    public void setUserProperty(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        this.zza.zzN(str, str2, obj, true);
    }

    @ShowFirstParty
    @KeepForSdk
    public void unregisterOnMeasurementEventListener(@NonNull OnEventListener onEventListener) {
        this.zza.zzO(onEventListener);
    }

    public final void zza(boolean z) {
        this.zza.zzH(z);
    }

    @KeepForSdk
    public void setMeasurementEnabled(boolean z) {
        this.zza.zzK(Boolean.valueOf(z));
    }

    @NonNull
    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
    @KeepForSdk
    public static AppMeasurementSdk getInstance(@NonNull Context context, @NonNull String str, @NonNull String str2, @Nullable String str3, @NonNull Bundle bundle) {
        return zzee.zzg(context, str, str2, str3, bundle).zzd();
    }
}
