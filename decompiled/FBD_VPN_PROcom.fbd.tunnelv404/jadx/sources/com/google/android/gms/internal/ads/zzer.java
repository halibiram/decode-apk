package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import java.util.Locale;

@RequiresApi(17)
/* loaded from: classes2.dex */
public final class zzer implements SurfaceTexture.OnFrameAvailableListener, Runnable {
    private static final int[] zza = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};
    private final Handler zzb;
    private final int[] zzc = new int[1];

    @Nullable
    private EGLDisplay zzd;

    @Nullable
    private EGLContext zze;

    @Nullable
    private EGLSurface zzf;

    @Nullable
    private SurfaceTexture zzg;

    public zzer(Handler handler, @Nullable zzeq zzeqVar) {
        this.zzb = handler;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzb.post(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        SurfaceTexture surfaceTexture = this.zzg;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public final SurfaceTexture zza() {
        SurfaceTexture surfaceTexture = this.zzg;
        surfaceTexture.getClass();
        return surfaceTexture;
    }

    public final void zzb(int i) {
        boolean z;
        boolean z2;
        int[] iArr;
        boolean z3;
        int[] iArr2;
        EGLSurface eglCreatePbufferSurface;
        boolean z4;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            z = true;
        } else {
            z = false;
        }
        zzeu.zzb(z, new ObfuscatedString(new long[]{-7324455404304524734L, 791263729143177645L, -2178746234325528020L, 6047585049437002489L}).toString());
        int[] iArr3 = new int[2];
        zzeu.zzb(EGL14.eglInitialize(eglGetDisplay, iArr3, 0, iArr3, 1), new ObfuscatedString(new long[]{-5787923027644766716L, 9243301055320151L, -3193182098085957369L, -638265656434652189L}).toString());
        this.zzd = eglGetDisplay;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr4 = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eglGetDisplay, zza, 0, eGLConfigArr, 0, 1, iArr4, 0);
        if (eglChooseConfig && iArr4[0] > 0 && eGLConfigArr[0] != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        zzeu.zzb(z2, String.format(Locale.US, new ObfuscatedString(new long[]{-6689460819867635062L, 9108600232338009065L, -7832359549184958920L, -4041185493172395299L, -7376513609996579642L, -8681643638353515819L, 5663013979573682003L, -8324064441830070345L, -9154144959152839637L, -7049359484665078884L}).toString(), Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr4[0]), eGLConfigArr[0]));
        EGLConfig eGLConfig = eGLConfigArr[0];
        EGLDisplay eGLDisplay = this.zzd;
        if (i == 0) {
            iArr = new int[]{12440, 2, 12344};
        } else {
            iArr = new int[]{12440, 2, 12992, 1, 12344};
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
        if (eglCreateContext != null) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzeu.zzb(z3, new ObfuscatedString(new long[]{-7110557398957813524L, 5889641639186746317L, 2598145088246001098L, 6329596009303894627L}).toString());
        this.zze = eglCreateContext;
        EGLDisplay eGLDisplay2 = this.zzd;
        if (i == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            if (i == 2) {
                iArr2 = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
            } else {
                iArr2 = new int[]{12375, 1, 12374, 1, 12344};
            }
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay2, eGLConfig, iArr2, 0);
            if (eglCreatePbufferSurface != null) {
                z4 = true;
            } else {
                z4 = false;
            }
            zzeu.zzb(z4, new ObfuscatedString(new long[]{-2414846118921368846L, 333867064125267954L, 6770658811464314964L, 1682095379917520792L, -151061990487296797L}).toString());
        }
        zzeu.zzb(EGL14.eglMakeCurrent(eGLDisplay2, eglCreatePbufferSurface, eglCreatePbufferSurface, eglCreateContext), new ObfuscatedString(new long[]{-3987581520730996882L, -3731567568557976825L, -5355264424065221687L, 3259044519406107361L}).toString());
        this.zzf = eglCreatePbufferSurface;
        GLES20.glGenTextures(1, this.zzc, 0);
        zzeu.zza();
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.zzc[0]);
        this.zzg = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    public final void zzc() {
        this.zzb.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.zzg;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.zzc, 0);
            }
            EGLDisplay eGLDisplay = this.zzd;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.zzd;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.zzf;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.zzd, this.zzf);
            }
            EGLContext eGLContext = this.zze;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.zzd, eGLContext);
            }
            int i = zzfy.zza;
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay3 = this.zzd;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.zzd);
            }
            this.zzd = null;
            this.zze = null;
            this.zzf = null;
            this.zzg = null;
        } catch (Throwable th) {
            EGLDisplay eGLDisplay4 = this.zzd;
            if (eGLDisplay4 != null && !eGLDisplay4.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay5 = this.zzd;
                EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay5, eGLSurface3, eGLSurface3, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface4 = this.zzf;
            if (eGLSurface4 != null && !eGLSurface4.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.zzd, this.zzf);
            }
            EGLContext eGLContext2 = this.zze;
            if (eGLContext2 != null) {
                EGL14.eglDestroyContext(this.zzd, eGLContext2);
            }
            int i2 = zzfy.zza;
            EGL14.eglReleaseThread();
            EGLDisplay eGLDisplay6 = this.zzd;
            if (eGLDisplay6 != null && !eGLDisplay6.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.zzd);
            }
            this.zzd = null;
            this.zze = null;
            this.zzf = null;
            this.zzg = null;
            throw th;
        }
    }
}
