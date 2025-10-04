package com.google.android.gms.internal.ads;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(17)
/* loaded from: classes2.dex */
public final class zzes {
    @DoNotInline
    public static int zza() {
        int[] iArr = new int[1];
        EGL14.eglQueryContext(EGL14.eglGetDisplay(0), EGL14.eglGetCurrentContext(), 12440, iArr, 0);
        zzeu.zza();
        return iArr[0];
    }

    @DoNotInline
    public static EGLContext zzb(EGLContext eGLContext, EGLDisplay eGLDisplay, int i, int[] iArr) {
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, zzl(eGLDisplay, iArr), eGLContext, new int[]{12440, i, 12344}, 0);
        if (eglCreateContext != null) {
            zzeu.zza();
            return eglCreateContext;
        }
        EGL14.eglTerminate(eGLDisplay);
        throw new zzet(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5692717645587344157L, 5249130665145894796L, -4967987600958310637L, -335646572107946829L, 6100213640430492905L, -480170163303066521L, 3480110004763032359L, 7318331328636409718L, -4122701449735041246L, -3201631657503102775L, -514930839033644664L, -6824888857537866395L, -6831664701068120065L}), new StringBuilder(), i));
    }

    @DoNotInline
    public static EGLContext zzc() {
        return EGL14.eglGetCurrentContext();
    }

    @DoNotInline
    public static EGLDisplay zzd() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        zzeu.zzb(!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY), new ObfuscatedString(new long[]{7730327804036053940L, -3049255705079007422L, -1246745863417576761L}).toString());
        zzeu.zzb(EGL14.eglInitialize(eglGetDisplay, new int[1], 0, new int[1], 0), new ObfuscatedString(new long[]{-8490267235477581007L, 5179302058612199202L, 2281709545846239517L, -6825724518985943120L}).toString());
        zzeu.zza();
        return eglGetDisplay;
    }

    @DoNotInline
    public static EGLSurface zze(EGLDisplay eGLDisplay, int[] iArr, int[] iArr2) {
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, zzl(eGLDisplay, iArr), iArr2, 0);
        zzg(new ObfuscatedString(new long[]{5324526126102039474L, -7998660568723898471L, -7666485316808185334L, 6495102318578419905L, 5205638594941789662L, 2905121759145938779L}).toString());
        return eglCreatePbufferSurface;
    }

    @DoNotInline
    public static EGLSurface zzf(EGLDisplay eGLDisplay, Object obj, int[] iArr, int[] iArr2) {
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, zzl(eGLDisplay, iArr), obj, iArr2, 0);
        zzg(new ObfuscatedString(new long[]{-967534347198676589L, -4523222871173253512L, -5568623312613069336L, 5216360088954957330L, -8631550837607960637L}).toString());
        return eglCreateWindowSurface;
    }

    @DoNotInline
    public static void zzg(String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        String hexString = Integer.toHexString(eglGetError);
        throw new zzet(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1502203777771091584L, 202424760172494689L, 7997135989062941390L}), AbstractC0749x8313616e.m3341xc20437a5(str), hexString));
    }

    @DoNotInline
    public static void zzh(@Nullable EGLDisplay eGLDisplay, @Nullable EGLContext eGLContext) {
        if (eGLDisplay == null) {
            return;
        }
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        zzg(new ObfuscatedString(new long[]{871517532329739088L, -9143545233619256077L, 3963772516467403467L, -9046010267539863153L}).toString());
        if (eGLContext != null) {
            EGL14.eglDestroyContext(eGLDisplay, eGLContext);
            zzg(new ObfuscatedString(new long[]{6897532308035832173L, 4125742439934447843L, 6506667441399843849L, 8456139744842954402L}).toString());
        }
        EGL14.eglReleaseThread();
        zzg(new ObfuscatedString(new long[]{-588070723278727946L, -2219221293661429468L, -5133738892829969462L, -1361781797441773548L}).toString());
        EGL14.eglTerminate(eGLDisplay);
        zzg(new ObfuscatedString(new long[]{6808803580727030400L, -2271840208848396575L, 8357730414037827300L, -1971465728237749285L, -4606648359763115057L}).toString());
    }

    @DoNotInline
    public static void zzi(@Nullable EGLDisplay eGLDisplay, @Nullable EGLSurface eGLSurface) {
        if (eGLDisplay != null && eGLSurface != null && EGL14.eglGetCurrentSurface(12377) != EGL14.EGL_NO_SURFACE) {
            EGL14.eglDestroySurface(eGLDisplay, eGLSurface);
            zzg(new ObfuscatedString(new long[]{-8276476532933714727L, 4258256883440154929L, 5940721880132769688L, -6300356408162447872L}).toString());
        }
    }

    @DoNotInline
    public static void zzj(EGLDisplay eGLDisplay, EGLContext eGLContext, EGLSurface eGLSurface, int i, int i2, int i3) {
        EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
        zzg(new ObfuscatedString(new long[]{870431179392041807L, -1134444100312423573L, 2155543509338009570L, 3385898164983961577L, -315138267002607338L}).toString());
        int[] iArr = new int[1];
        GLES20.glGetIntegerv(36006, iArr, 0);
        if (iArr[0] != i) {
            GLES20.glBindFramebuffer(36160, i);
        }
        zzeu.zza();
        GLES20.glViewport(0, 0, i2, i3);
        zzeu.zza();
    }

    @DoNotInline
    public static boolean zzk(String str) {
        String eglQueryString = EGL14.eglQueryString(EGL14.eglGetDisplay(0), 12373);
        if (eglQueryString == null || !eglQueryString.contains(str)) {
            return false;
        }
        return true;
    }

    @DoNotInline
    private static EGLConfig zzl(EGLDisplay eGLDisplay, int[] iArr) {
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        if (EGL14.eglChooseConfig(eGLDisplay, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0)) {
            return eGLConfigArr[0];
        }
        throw new zzet(new ObfuscatedString(new long[]{-1430739402505639830L, 988060821403602204L, 6490592734295420251L, 6204806202852557815L}).toString());
    }
}
