package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzeac extends zzfua {
    private final Context zzb;

    @Nullable
    private SensorManager zzc;
    private Sensor zzd;
    private long zze;
    private int zzf;
    private zzeab zzg;
    private boolean zzh;

    public zzeac(Context context) {
        super(new ObfuscatedString(new long[]{-5129230095616028538L, 3178804047579289545L, 3098034294828014903L}).toString(), new ObfuscatedString(new long[]{6748702071805754551L, 7104640333831114750L}).toString());
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzfua
    public final void zza(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziR)).booleanValue()) {
            float[] fArr = sensorEvent.values;
            float f = fArr[0] / 9.80665f;
            float f2 = fArr[1] / 9.80665f;
            float f3 = fArr[2] / 9.80665f;
            float f4 = f3 * f3;
            if (((float) Math.sqrt(f4 + (f2 * f2) + (f * f))) >= ((Float) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziS)).floatValue()) {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
                if (this.zze + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziT)).intValue() <= currentTimeMillis) {
                    if (this.zze + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziU)).intValue() < currentTimeMillis) {
                        this.zzf = 0;
                    }
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{2264998948731423403L, 3936630407517601676L, 2855604942616900359L}).toString());
                    this.zze = currentTimeMillis;
                    int i = this.zzf + 1;
                    this.zzf = i;
                    zzeab zzeabVar = this.zzg;
                    if (zzeabVar != null) {
                        if (i == ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziV)).intValue()) {
                            zzdzd zzdzdVar = (zzdzd) zzeabVar;
                            zzdzdVar.zzh(new zzdza(zzdzdVar), zzdzc.zzc);
                        }
                    }
                }
            }
        }
    }

    public final void zzb() {
        synchronized (this) {
            try {
                if (this.zzh) {
                    SensorManager sensorManager = this.zzc;
                    if (sensorManager != null) {
                        sensorManager.unregisterListener(this, this.zzd);
                        com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4383807691001656636L, -5472254100283220099L, -7240733269833286868L, 8827024676872346L, -2324609784375201780L, 217643595536401191L}).toString());
                    }
                    this.zzh = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzc() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziR)).booleanValue()) {
                    return;
                }
                if (this.zzc == null) {
                    SensorManager sensorManager2 = (SensorManager) this.zzb.getSystemService(new ObfuscatedString(new long[]{4644560964330408716L, -2040742173541597882L}).toString());
                    this.zzc = sensorManager2;
                    if (sensorManager2 == null) {
                        zzcec.zzj(new ObfuscatedString(new long[]{-1817518160134767651L, 3953310239336249400L, 2552099472976816115L, -2295188411088094139L, -4252209789462235604L, -6514657541140308183L, 724295864649027962L, 8297517410402084285L, 1328136905586208187L, -8856480645073490340L}).toString());
                        return;
                    }
                    this.zzd = sensorManager2.getDefaultSensor(1);
                }
                if (!this.zzh && (sensorManager = this.zzc) != null && (sensor = this.zzd) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.zze = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis() - ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziT)).intValue();
                    this.zzh = true;
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{4811386468446702854L, -1728268958672317109L, -811766647934886157L, -532047637980547944L, -9044342103182900957L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(zzeab zzeabVar) {
        this.zzg = zzeabVar;
    }
}
