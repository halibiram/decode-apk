package com.google.android.gms.internal.ads;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzcgi extends zzfua {
    private final SensorManager zzb;
    private final Object zzc;
    private final Display zzd;
    private final float[] zze;
    private final float[] zzf;
    private float[] zzg;
    private Handler zzh;
    private zzcgh zzi;

    public zzcgi(Context context) {
        super(new ObfuscatedString(new long[]{1628089973190988976L, 7475491533135483510L, 2181983981648442497L, -3633815135205547228L}).toString(), new ObfuscatedString(new long[]{-4782899875747284316L, 6603570309553228704L}).toString());
        this.zzb = (SensorManager) context.getSystemService(new ObfuscatedString(new long[]{11218933414728127L, 6906942539560954561L}).toString());
        this.zzd = ((WindowManager) context.getSystemService(new ObfuscatedString(new long[]{-4205871345351732897L, -7527549354578695105L}).toString())).getDefaultDisplay();
        this.zze = new float[9];
        this.zzf = new float[9];
        this.zzc = new Object();
    }

    @Override // com.google.android.gms.internal.ads.zzfua
    public final void zza(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] != 0.0f || fArr[1] != 0.0f || fArr[2] != 0.0f) {
            synchronized (this.zzc) {
                try {
                    if (this.zzg == null) {
                        this.zzg = new float[9];
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            SensorManager.getRotationMatrixFromVector(this.zze, fArr);
            int rotation = this.zzd.getRotation();
            if (rotation != 1) {
                if (rotation != 2) {
                    if (rotation != 3) {
                        System.arraycopy(this.zze, 0, this.zzf, 0, 9);
                    } else {
                        SensorManager.remapCoordinateSystem(this.zze, 130, 1, this.zzf);
                    }
                } else {
                    SensorManager.remapCoordinateSystem(this.zze, 129, 130, this.zzf);
                }
            } else {
                SensorManager.remapCoordinateSystem(this.zze, 2, 129, this.zzf);
            }
            float[] fArr2 = this.zzf;
            float f = fArr2[1];
            fArr2[1] = fArr2[3];
            fArr2[3] = f;
            float f2 = fArr2[2];
            fArr2[2] = fArr2[6];
            fArr2[6] = f2;
            float f3 = fArr2[5];
            fArr2[5] = fArr2[7];
            fArr2[7] = f3;
            synchronized (this.zzc) {
                System.arraycopy(this.zzf, 0, this.zzg, 0, 9);
            }
            zzcgh zzcghVar = this.zzi;
            if (zzcghVar != null) {
                zzcghVar.zza();
            }
        }
    }

    public final void zzb(zzcgh zzcghVar) {
        this.zzi = zzcghVar;
    }

    public final void zzc() {
        if (this.zzh == null) {
            Sensor defaultSensor = this.zzb.getDefaultSensor(11);
            if (defaultSensor == null) {
                zzcec.zzg(new ObfuscatedString(new long[]{-935755031685027285L, -8703291728723451361L, -1688522957517823305L, -7370924928082916594L, -2877715688742847536L, -5551924812648536746L}).toString());
                return;
            }
            HandlerThread handlerThread = new HandlerThread(new ObfuscatedString(new long[]{309202503911038570L, 2584027735332521763L, -3552739166893865277L, -2590542393680032490L}).toString());
            handlerThread.start();
            zzftt zzfttVar = new zzftt(handlerThread.getLooper());
            this.zzh = zzfttVar;
            if (!this.zzb.registerListener(this, defaultSensor, 0, zzfttVar)) {
                zzcec.zzg(new ObfuscatedString(new long[]{-7767267064824369245L, 7259154236669046402L, 4955071899849535908L, -6172698107766538099L, 5078580837039821305L, -703705954782272193L}).toString());
                zzd();
            }
        }
    }

    public final void zzd() {
        if (this.zzh == null) {
            return;
        }
        this.zzb.unregisterListener(this);
        this.zzh.post(new zzcgg(this));
        this.zzh = null;
    }

    public final boolean zze(float[] fArr) {
        synchronized (this.zzc) {
            try {
                float[] fArr2 = this.zzg;
                if (fArr2 == null) {
                    return false;
                }
                System.arraycopy(fArr2, 0, fArr, 0, 9);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
