package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzbsk extends zzclb {
    private final AppMeasurementSdk zza;

    public zzbsk(AppMeasurementSdk appMeasurementSdk) {
        this.zza = appMeasurementSdk;
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final int zzb(String str) {
        return this.zza.getMaxUserProperties(str);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final long zzc() {
        return this.zza.generateEventId();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final Bundle zzd(Bundle bundle) {
        return this.zza.performActionWithResponse(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final String zze() {
        return this.zza.getAppIdOrigin();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final String zzf() {
        return this.zza.getAppInstanceId();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final String zzg() {
        return this.zza.getCurrentScreenClass();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final String zzh() {
        return this.zza.getCurrentScreenName();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final String zzi() {
        return this.zza.getGmpAppId();
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final List zzj(String str, String str2) {
        return this.zza.getConditionalUserProperties(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final Map zzk(String str, String str2, boolean z) {
        return this.zza.getUserProperties(str, str2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzl(String str) {
        this.zza.beginAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzm(String str, String str2, Bundle bundle) {
        this.zza.clearConditionalUserProperty(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzn(String str) {
        this.zza.endAdUnitExposure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzo(String str, String str2, Bundle bundle) {
        this.zza.logEvent(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzp(Bundle bundle) {
        this.zza.performAction(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzq(Bundle bundle) {
        this.zza.setConditionalUserProperty(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzr(Bundle bundle) {
        this.zza.setConsent(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzs(IObjectWrapper iObjectWrapper, String str, String str2) {
        Activity activity;
        if (iObjectWrapper != null) {
            activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        } else {
            activity = null;
        }
        this.zza.setCurrentScreen(activity, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final void zzt(String str, String str2, IObjectWrapper iObjectWrapper) {
        Object obj;
        if (iObjectWrapper != null) {
            obj = ObjectWrapper.unwrap(iObjectWrapper);
        } else {
            obj = null;
        }
        this.zza.setUserProperty(str, str2, obj);
    }
}
