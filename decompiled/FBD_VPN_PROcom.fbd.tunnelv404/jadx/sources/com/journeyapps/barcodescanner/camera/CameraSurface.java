package com.journeyapps.barcodescanner.camera;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class CameraSurface {
    private SurfaceHolder surfaceHolder;
    private SurfaceTexture surfaceTexture;

    public CameraSurface(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != null) {
            this.surfaceHolder = surfaceHolder;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4244962001636207440L, -7970007826225895152L, 562844540935149598L, 6864108329027895476L, 1371296849802249264L}).toString());
    }

    public SurfaceHolder getSurfaceHolder() {
        return this.surfaceHolder;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public void setPreview(Camera camera) {
        SurfaceHolder surfaceHolder = this.surfaceHolder;
        if (surfaceHolder != null) {
            camera.setPreviewDisplay(surfaceHolder);
        } else {
            camera.setPreviewTexture(this.surfaceTexture);
        }
    }

    public CameraSurface(SurfaceTexture surfaceTexture) {
        if (surfaceTexture != null) {
            this.surfaceTexture = surfaceTexture;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2409751848696727419L, 4900678508856664729L, -5370064713547207937L, 5265905539151702438L, 3574626371938311224L}).toString());
    }
}
