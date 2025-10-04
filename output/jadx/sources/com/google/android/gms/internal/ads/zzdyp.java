package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdyp extends zzfua {

    @Nullable
    private final SensorManager zzb;

    @Nullable
    private final Sensor zzc;
    private float zzd;
    private Float zze;
    private long zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;

    @Nullable
    private zzdyo zzj;
    private boolean zzk;

    public zzdyp(Context context) {
        super(new ObfuscatedString(new long[]{-6155958395373445380L, -5221922528996223039L, 6352889363476156605L}).toString(), new ObfuscatedString(new long[]{7791885896976458816L, -7148757858225902756L}).toString());
        this.zzd = 0.0f;
        this.zze = Float.valueOf(0.0f);
        this.zzf = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        this.zzg = 0;
        this.zzh = false;
        this.zzi = false;
        this.zzj = null;
        this.zzk = false;
        SensorManager sensorManager = (SensorManager) context.getSystemService(new ObfuscatedString(new long[]{-6102477828634700373L, -7804044463766909912L}).toString());
        this.zzb = sensorManager;
        if (sensorManager != null) {
            this.zzc = sensorManager.getDefaultSensor(4);
        } else {
            this.zzc = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfua
    public final void zza(SensorEvent sensorEvent) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziW)).booleanValue()) {
            long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            if (this.zzf + ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziY)).intValue() < currentTimeMillis) {
                this.zzg = 0;
                this.zzf = currentTimeMillis;
                this.zzh = false;
                this.zzi = false;
                this.zzd = this.zze.floatValue();
            }
            Float valueOf = Float.valueOf(this.zze.floatValue() + (sensorEvent.values[1] * 4.0f));
            this.zze = valueOf;
            float floatValue = valueOf.floatValue();
            float f = this.zzd;
            zzbfu zzbfuVar = zzbgc.zziX;
            if (floatValue > ((Float) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).floatValue() + f) {
                this.zzd = this.zze.floatValue();
                this.zzi = true;
            } else if (this.zze.floatValue() < this.zzd - ((Float) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).floatValue()) {
                this.zzd = this.zze.floatValue();
                this.zzh = true;
            }
            if (this.zze.isInfinite()) {
                this.zze = Float.valueOf(0.0f);
                this.zzd = 0.0f;
            }
            if (this.zzh && this.zzi) {
                com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-7370650890536895414L, -79287943430338357L, 1233880111559251172L}).toString());
                this.zzf = currentTimeMillis;
                int i = this.zzg + 1;
                this.zzg = i;
                this.zzh = false;
                this.zzi = false;
                zzdyo zzdyoVar = this.zzj;
                if (zzdyoVar != null) {
                    if (i == ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziZ)).intValue()) {
                        zzdzd zzdzdVar = (zzdzd) zzdyoVar;
                        zzdzdVar.zzh(new zzdzb(zzdzdVar), zzdzc.zzc);
                    }
                }
            }
        }
    }

    public final void zzb() {
        SensorManager sensorManager;
        Sensor sensor;
        synchronized (this) {
            try {
                if (this.zzk && (sensorManager = this.zzb) != null && (sensor = this.zzc) != null) {
                    sensorManager.unregisterListener(this, sensor);
                    this.zzk = false;
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{6884896683191790996L, -641680646468836065L, 281686612030077836L, -3622028402018586502L, -2075167301643806633L, -7165352540196415141L}).toString());
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
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziW)).booleanValue()) {
                    return;
                }
                if (!this.zzk && (sensorManager = this.zzb) != null && (sensor = this.zzc) != null) {
                    sensorManager.registerListener(this, sensor, 2);
                    this.zzk = true;
                    com.google.android.gms.ads.internal.util.zze.zza(new ObfuscatedString(new long[]{-771257292283500836L, 2777398279119499814L, -4341366475859330311L, -9071186305131530066L, -2241715138189627472L}).toString());
                }
                if (this.zzb != null && this.zzc != null) {
                    return;
                }
                zzcec.zzj(new ObfuscatedString(new long[]{-3038292718964033591L, 422580145731353168L, 7887063455283420404L, -7197646091709577254L, 344440853929430047L, 3814561579897825192L, 6656986098596971611L, -7341168101449762102L, 3666160914870887746L, -667613058761976458L}).toString());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzd(zzdyo zzdyoVar) {
        this.zzj = zzdyoVar;
    }
}
