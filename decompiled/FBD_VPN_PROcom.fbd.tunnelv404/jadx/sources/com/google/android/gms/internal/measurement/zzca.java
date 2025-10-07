package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzca extends zzbm implements zzcc {
    public zzca(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3357751857283385974L, -4372479527886252579L, -1908900534563469480L, 4773705949550404538L, 3985914106257414933L, -8680751451941130104L, 4926165266421372484L, 3750692977585436781L, 3293418597066981328L, -8048711297852709233L, -2317351377025359443L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void beginAdUnitExposure(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(23, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zze(zza, bundle);
        zzc(9, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void clearMeasurementEnabled(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(43, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void endAdUnitExposure(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(24, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void generateEventId(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(22, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getAppInstanceId(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(20, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCachedAppInstanceId(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(19, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getConditionalUserProperties(String str, String str2, zzcf zzcfVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zzf(zza, zzcfVar);
        zzc(10, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCurrentScreenClass(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(17, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getCurrentScreenName(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(16, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getGmpAppId(zzcf zzcfVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zzc(21, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getMaxUserProperties(String str, zzcf zzcfVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbo.zzf(zza, zzcfVar);
        zzc(6, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getTestFlag(zzcf zzcfVar, int i) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzcfVar);
        zza.writeInt(i);
        zzc(38, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void getUserProperties(String str, String str2, boolean z, zzcf zzcfVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zzd(zza, z);
        zzbo.zzf(zza, zzcfVar);
        zzc(5, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void initForTests(Map map) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void initialize(IObjectWrapper iObjectWrapper, zzcl zzclVar, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zzbo.zze(zza, zzclVar);
        zza.writeLong(j);
        zzc(1, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void isDataCollectionEnabled(zzcf zzcfVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zze(zza, bundle);
        zzbo.zzd(zza, z);
        zzbo.zzd(zza, z2);
        zza.writeLong(j);
        zzc(2, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void logEventAndBundle(String str, String str2, Bundle bundle, zzcf zzcfVar, long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zza.writeInt(5);
        zza.writeString(str);
        zzbo.zzf(zza, iObjectWrapper);
        zzbo.zzf(zza, iObjectWrapper2);
        zzbo.zzf(zza, iObjectWrapper3);
        zzc(33, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zzbo.zze(zza, bundle);
        zza.writeLong(j);
        zzc(27, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(28, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityPaused(IObjectWrapper iObjectWrapper, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(29, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityResumed(IObjectWrapper iObjectWrapper, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(30, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, zzcf zzcfVar, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zzbo.zzf(zza, zzcfVar);
        zza.writeLong(j);
        zzc(31, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityStarted(IObjectWrapper iObjectWrapper, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(25, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void onActivityStopped(IObjectWrapper iObjectWrapper, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeLong(j);
        zzc(26, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void performAction(Bundle bundle, zzcf zzcfVar, long j) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zzbo.zzf(zza, zzcfVar);
        zza.writeLong(j);
        zzc(32, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void registerOnMeasurementEventListener(zzci zzciVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzciVar);
        zzc(35, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void resetAnalyticsData(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(12, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zza.writeLong(j);
        zzc(8, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConsent(Bundle bundle, long j) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zza.writeLong(j);
        zzc(44, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setConsentThirdParty(Bundle bundle, long j) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zza.writeLong(j);
        zzc(45, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) {
        Parcel zza = zza();
        zzbo.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeString(str2);
        zza.writeLong(j);
        zzc(15, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setDataCollectionEnabled(boolean z) {
        Parcel zza = zza();
        zzbo.zzd(zza, z);
        zzc(39, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setDefaultEventParameters(Bundle bundle) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zzc(42, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setEventInterceptor(zzci zzciVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzciVar);
        zzc(34, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setInstanceIdProvider(zzck zzckVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel zza = zza();
        zzbo.zzd(zza, z);
        zza.writeLong(j);
        zzc(11, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setMinimumSessionDuration(long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setSessionTimeoutDuration(long j) {
        Parcel zza = zza();
        zza.writeLong(j);
        zzc(14, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setUserId(String str, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeLong(j);
        zzc(7, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzbo.zzf(zza, iObjectWrapper);
        zzbo.zzd(zza, z);
        zza.writeLong(j);
        zzc(4, zza);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final void unregisterOnMeasurementEventListener(zzci zzciVar) {
        Parcel zza = zza();
        zzbo.zzf(zza, zzciVar);
        zzc(36, zza);
    }
}
