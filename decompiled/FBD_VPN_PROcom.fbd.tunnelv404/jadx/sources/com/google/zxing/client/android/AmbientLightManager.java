package com.google.zxing.client.android;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import com.journeyapps.barcodescanner.camera.CameraManager;
import com.journeyapps.barcodescanner.camera.CameraSettings;
import com.panda912.muddy.ObfuscatedString;
import defpackage.RunnableC0395x2fa10a30;

/* loaded from: classes3.dex */
public final class AmbientLightManager implements SensorEventListener {
    private static final float BRIGHT_ENOUGH_LUX = 450.0f;
    private static final float TOO_DARK_LUX = 45.0f;
    private CameraManager cameraManager;
    private CameraSettings cameraSettings;
    private Context context;
    private Handler handler = new Handler();
    private Sensor lightSensor;

    public AmbientLightManager(Context context, CameraManager cameraManager, CameraSettings cameraSettings) {
        this.context = context;
        this.cameraManager = cameraManager;
        this.cameraSettings = cameraSettings;
    }

    public /* synthetic */ void lambda$setTorch$0(boolean z) {
        this.cameraManager.setTorch(z);
    }

    private void setTorch(boolean z) {
        this.handler.post(new RunnableC0395x2fa10a30(0, this, z));
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        float f = sensorEvent.values[0];
        if (this.cameraManager != null) {
            if (f <= TOO_DARK_LUX) {
                setTorch(true);
            } else if (f >= BRIGHT_ENOUGH_LUX) {
                setTorch(false);
            }
        }
    }

    public void start() {
        if (this.cameraSettings.isAutoTorchEnabled()) {
            SensorManager sensorManager = (SensorManager) this.context.getSystemService(new ObfuscatedString(new long[]{-4560656873738159911L, -8227958344383761860L}).toString());
            Sensor defaultSensor = sensorManager.getDefaultSensor(5);
            this.lightSensor = defaultSensor;
            if (defaultSensor != null) {
                sensorManager.registerListener(this, defaultSensor, 3);
            }
        }
    }

    public void stop() {
        if (this.lightSensor != null) {
            ((SensorManager) this.context.getSystemService(new ObfuscatedString(new long[]{6138310043957336244L, 2396439966880519283L}).toString())).unregisterListener(this);
            this.lightSensor = null;
        }
    }
}
