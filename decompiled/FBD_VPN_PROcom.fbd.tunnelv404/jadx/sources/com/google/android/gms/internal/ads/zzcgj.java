package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.work.Data;
import com.panda912.muddy.ObfuscatedString;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* loaded from: classes2.dex */
public final class zzcgj extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzcgh {
    private static final float[] zza = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private volatile boolean zzA;
    private volatile boolean zzB;
    private final zzcgi zzb;
    private final float[] zzc;
    private final float[] zzd;
    private final float[] zze;
    private final float[] zzf;
    private final float[] zzg;
    private final float[] zzh;
    private final float[] zzi;
    private float zzj;
    private float zzk;
    private float zzl;
    private int zzm;
    private int zzn;
    private SurfaceTexture zzo;
    private SurfaceTexture zzp;
    private int zzq;
    private int zzr;
    private int zzs;
    private final FloatBuffer zzt;
    private final CountDownLatch zzu;
    private final Object zzv;
    private EGL10 zzw;
    private EGLDisplay zzx;
    private EGLContext zzy;
    private EGLSurface zzz;

    public zzcgj(Context context) {
        super(new ObfuscatedString(new long[]{430178827803766627L, 8586432035245363154L, 8598959198075631353L, -1063896364824401209L}).toString());
        float[] fArr = zza;
        int length = fArr.length;
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(48).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzt = asFloatBuffer;
        asFloatBuffer.put(fArr).position(0);
        this.zzc = new float[9];
        this.zzd = new float[9];
        this.zze = new float[9];
        this.zzf = new float[9];
        this.zzg = new float[9];
        this.zzh = new float[9];
        this.zzi = new float[9];
        this.zzj = Float.NaN;
        zzcgi zzcgiVar = new zzcgi(context);
        this.zzb = zzcgiVar;
        zzcgiVar.zzb(this);
        this.zzu = new CountDownLatch(1);
        this.zzv = new Object();
    }

    private static final void zzh(String str) {
        if (GLES20.glGetError() != 0) {
            new ObfuscatedString(new long[]{7702413190656360907L, 1812271375518762194L, 5910761395614488843L}).toString();
            new ObfuscatedString(new long[]{-8063003537191291129L, -8745735549158626612L, 2910663327310490374L, -5213191068972920863L}).toString();
        }
    }

    private static final void zzi(float[] fArr, float[] fArr2, float[] fArr3) {
        float f = fArr2[0] * fArr3[0];
        float f2 = fArr2[1];
        float f3 = fArr3[3];
        float f4 = fArr2[2];
        float f5 = fArr3[6];
        fArr[0] = f + (f2 * f3) + (f4 * f5);
        float f6 = fArr2[0];
        float f7 = fArr3[1] * f6;
        float f8 = fArr3[4];
        float f9 = fArr3[7];
        fArr[1] = f7 + (f2 * f8) + (f4 * f9);
        float f10 = f6 * fArr3[2];
        float f11 = fArr2[1];
        float f12 = fArr3[5];
        float f13 = fArr3[8];
        fArr[2] = f10 + (f11 * f12) + (f4 * f13);
        float f14 = fArr2[3];
        float f15 = fArr3[0];
        float f16 = fArr2[4];
        float f17 = fArr2[5];
        fArr[3] = (f14 * f15) + (f3 * f16) + (f17 * f5);
        float f18 = fArr2[3];
        float f19 = fArr3[1];
        fArr[4] = (f18 * f19) + (f16 * f8) + (f17 * f9);
        float f20 = fArr3[2];
        fArr[5] = (f18 * f20) + (fArr2[4] * f12) + (f17 * f13);
        float f21 = fArr2[6] * f15;
        float f22 = fArr2[7];
        float f23 = fArr3[3] * f22;
        float f24 = fArr2[8];
        fArr[6] = f21 + f23 + (f5 * f24);
        float f25 = fArr2[6];
        float f26 = f9 * f24;
        fArr[7] = f26 + (f22 * fArr3[4]) + (f19 * f25);
        fArr[8] = (f25 * f20) + (fArr2[7] * fArr3[5]) + (f24 * f13);
    }

    private static final void zzj(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static final void zzk(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static final int zzl(int i, String str) {
        String obfuscatedString = new ObfuscatedString(new long[]{7282686809037396501L, 6076952961479025364L, -1475174105252423572L}).toString();
        int glCreateShader = GLES20.glCreateShader(i);
        zzh(obfuscatedString);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            zzh(new ObfuscatedString(new long[]{6433828561375291371L, 5670348009409776492L, -6264537349511985938L}).toString());
            GLES20.glCompileShader(glCreateShader);
            zzh(new ObfuscatedString(new long[]{-650535683458046359L, -1969543528445721303L, -7863537387260284722L}).toString());
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            zzh(new ObfuscatedString(new long[]{-8046358503860257199L, 6734265832756616940L, 9092075936313547102L}).toString());
            if (iArr[0] == 0) {
                new ObfuscatedString(new long[]{7965268744063001643L, 1889340172213642259L, -545831938540795146L, 2953648105289572734L, -6448635756484823885L}).toString();
                new ObfuscatedString(new long[]{2643825314953889432L, -7993530787235157760L}).toString();
                new ObfuscatedString(new long[]{-7570147685007269394L, -8904332382795375662L, -2059960814483858856L, 5975957416861324800L}).toString();
                GLES20.glGetShaderInfoLog(glCreateShader);
                new ObfuscatedString(new long[]{4383287649424429902L, 8314820609833214788L, -2983408506648949432L, -7411465003417802354L}).toString();
                GLES20.glDeleteShader(glCreateShader);
                zzh(new ObfuscatedString(new long[]{3441316315324933933L, -8151540263696342100L, 3159103865221898008L}).toString());
                return 0;
            }
        }
        return glCreateShader;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzs++;
        synchronized (this.zzv) {
            this.zzv.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x02e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00b8  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        EGLConfig eGLConfig;
        boolean z;
        zzbfu zzbfuVar;
        String obfuscatedString;
        int zzl;
        String obfuscatedString2;
        int glCreateProgram;
        if (this.zzp != null) {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.zzw = egl10;
            EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.zzx = eglGetDisplay;
            if (eglGetDisplay != EGL10.EGL_NO_DISPLAY && this.zzw.eglInitialize(eglGetDisplay, new int[2])) {
                int[] iArr = new int[1];
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                if (!this.zzw.eglChooseConfig(this.zzx, new int[]{12352, 4, 12324, 8, 12323, 8, 12322, 8, 12325, 16, 12344}, eGLConfigArr, 1, iArr) || iArr[0] <= 0) {
                    eGLConfig = null;
                } else {
                    eGLConfig = eGLConfigArr[0];
                }
                if (eGLConfig != null) {
                    EGL10 egl102 = this.zzw;
                    EGLDisplay eGLDisplay = this.zzx;
                    EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
                    EGLContext eglCreateContext = egl102.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, new int[]{12440, 2, 12344});
                    this.zzy = eglCreateContext;
                    if (eglCreateContext != null && eglCreateContext != eGLContext) {
                        EGLSurface eglCreateWindowSurface = this.zzw.eglCreateWindowSurface(this.zzx, eGLConfig, this.zzp, null);
                        this.zzz = eglCreateWindowSurface;
                        if (eglCreateWindowSurface != null && eglCreateWindowSurface != EGL10.EGL_NO_SURFACE && this.zzw.eglMakeCurrent(this.zzx, eglCreateWindowSurface, eglCreateWindowSurface, this.zzy)) {
                            z = true;
                            zzbfuVar = zzbgc.zzbj;
                            if (((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).equals(zzbfuVar.zzm())) {
                                obfuscatedString = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar);
                            } else {
                                obfuscatedString = new ObfuscatedString(new long[]{-4804701153013440119L, 5420131465839668336L, -5025370809979579787L, -713648342738062027L, 2408160230279166863L, 5618371044191212590L, 2812316695648859630L, -3758458230209182586L, 7515249270064243318L, -3340395596383144248L, -3414721063276631740L, 6872001951265474744L, -4379679435810500971L, 6460428309066431935L, 169291494937779208L, -767416334155657292L}).toString();
                            }
                            zzl = zzl(35633, obfuscatedString);
                            if (zzl != 0) {
                                zzbfu zzbfuVar2 = zzbgc.zzbk;
                                if (!((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar2)).equals(zzbfuVar2.zzm())) {
                                    obfuscatedString2 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar2);
                                } else {
                                    obfuscatedString2 = new ObfuscatedString(new long[]{6638290078983396695L, 3447280621918337076L, 8771488054625591845L, -5767234686983204216L, 5410194099289872617L, -7294317903856301925L, -1911060061331420927L, -6652126139101598005L, 8764480754175944815L, 7119236264865976851L, 5168634712825164804L, 8155449636234229910L, -8375780071856766909L, -4482282974119891405L, -8996321282699462438L, 5438886706261144847L, -971597898346619832L, -1589969593392998101L, -4461849208150860684L, -2595133875772539199L, 4648045740827005842L, 1038825673367633013L, -6161709488588499814L, 584866840203513919L, -5703310436368375021L, 4693849059633137865L, -4522332850291647844L, 3563205595844260341L, 3211350369475982099L, 3687142297350986513L, 6953906723058825142L, -5991691489064681048L, -3891224762310821229L, 5454339986601192226L, -8463427385455272684L, -5073120912606962734L, -6695095969753422222L, 5471991620162856717L, 2843250483862257197L, 6095489421499666421L, 3127525486601125826L, -7581308330734984020L, -3587619157502529188L, 2109909189130063022L, 2207906430193062669L, 5051761828999559904L, 7046502099642030089L, -4471634669238659047L, -399769950646438586L, -7623444400338545098L, -5461509841669560397L, 1888578534413665273L, -4036668116492072330L, 337362168256819581L, 4997445306413298413L, -8355785314309561084L, -3442893838365802697L, 2491584618974684520L, 1087652681400954670L, -6067704923836930823L}).toString();
                                }
                                int zzl2 = zzl(35632, obfuscatedString2);
                                if (zzl2 != 0) {
                                    String obfuscatedString3 = new ObfuscatedString(new long[]{-4901494697013856248L, 4228121577007275295L, -1691413765887261123L}).toString();
                                    glCreateProgram = GLES20.glCreateProgram();
                                    zzh(obfuscatedString3);
                                    if (glCreateProgram != 0) {
                                        GLES20.glAttachShader(glCreateProgram, zzl);
                                        zzh(new ObfuscatedString(new long[]{-3668891714758325081L, -4843677405316195230L, 7371159534003151385L}).toString());
                                        GLES20.glAttachShader(glCreateProgram, zzl2);
                                        zzh(new ObfuscatedString(new long[]{8364243247588847934L, 85241963792316560L, 7290230731265104849L}).toString());
                                        GLES20.glLinkProgram(glCreateProgram);
                                        zzh(new ObfuscatedString(new long[]{5136997058632493874L, 2701923819713758243L, -1015833456584433738L}).toString());
                                        int[] iArr2 = new int[1];
                                        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr2, 0);
                                        zzh(new ObfuscatedString(new long[]{4880564945119959371L, -2499094185009005865L, -4534692841217452820L}).toString());
                                        if (iArr2[0] != 1) {
                                            new ObfuscatedString(new long[]{270144824013590383L, 2828211274039519167L, -5385086124284143984L, -2557302267632174265L}).toString();
                                            new ObfuscatedString(new long[]{-5092028407442860076L, 8587761712734133391L, 4700201048232511863L, 6800170520086186532L}).toString();
                                            GLES20.glGetProgramInfoLog(glCreateProgram);
                                            new ObfuscatedString(new long[]{104627034815629107L, -4627422441142984770L, -4138743289414178621L, -1208583538219956691L}).toString();
                                            GLES20.glDeleteProgram(glCreateProgram);
                                            zzh(new ObfuscatedString(new long[]{-3966689248988648894L, -3530665612402024351L, 2563096346368357557L}).toString());
                                        } else {
                                            GLES20.glValidateProgram(glCreateProgram);
                                            zzh(new ObfuscatedString(new long[]{8836919555644849385L, 6342599665099324344L, -8955500023739162126L}).toString());
                                        }
                                    }
                                    this.zzq = glCreateProgram;
                                    GLES20.glUseProgram(glCreateProgram);
                                    zzh(new ObfuscatedString(new long[]{-5356759803941616838L, 3943752871344395552L, -864498639728700586L}).toString());
                                    int glGetAttribLocation = GLES20.glGetAttribLocation(this.zzq, new ObfuscatedString(new long[]{2451232872944466436L, -8259411665857222366L, -8117192438063441911L}).toString());
                                    GLES20.glVertexAttribPointer(glGetAttribLocation, 3, 5126, false, 12, (Buffer) this.zzt);
                                    zzh(new ObfuscatedString(new long[]{8947902663290070582L, 6765153581367458367L, -5569285538358469156L, -153199774364131266L}).toString());
                                    GLES20.glEnableVertexAttribArray(glGetAttribLocation);
                                    zzh(new ObfuscatedString(new long[]{6340946390027597663L, -3852928329756256990L, -7051788382668911028L, -7228476169475194016L}).toString());
                                    int[] iArr3 = new int[1];
                                    GLES20.glGenTextures(1, iArr3, 0);
                                    zzh(new ObfuscatedString(new long[]{6305503174549418686L, -4158563959810067458L, 8145980511670534139L}).toString());
                                    int i = iArr3[0];
                                    GLES20.glBindTexture(36197, i);
                                    zzh(new ObfuscatedString(new long[]{-5974286678312639200L, 3600448914894662851L, 6493012608484232792L}).toString());
                                    GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
                                    zzh(new ObfuscatedString(new long[]{-282493315721304926L, -2611647396981163319L, 5533687291584292319L}).toString());
                                    GLES20.glTexParameteri(36197, 10241, 9729);
                                    zzh(new ObfuscatedString(new long[]{2179772533792822878L, 4103565951044105306L, -7347632630758563660L}).toString());
                                    GLES20.glTexParameteri(36197, 10242, 33071);
                                    zzh(new ObfuscatedString(new long[]{-7302099041111722035L, 3719896211389379695L, -749876983876025611L}).toString());
                                    GLES20.glTexParameteri(36197, 10243, 33071);
                                    zzh(new ObfuscatedString(new long[]{-7790355470666716592L, 1535115454793425210L, -5438247499514320406L}).toString());
                                    int glGetUniformLocation = GLES20.glGetUniformLocation(this.zzq, new ObfuscatedString(new long[]{-3263733097325599143L, 6138217271308902097L}).toString());
                                    this.zzr = glGetUniformLocation;
                                    GLES20.glUniformMatrix3fv(glGetUniformLocation, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
                                    int i2 = this.zzq;
                                    if (!z && i2 != 0) {
                                        SurfaceTexture surfaceTexture = new SurfaceTexture(i);
                                        this.zzo = surfaceTexture;
                                        surfaceTexture.setOnFrameAvailableListener(this);
                                        this.zzu.countDown();
                                        this.zzb.zzc();
                                        try {
                                            try {
                                                this.zzA = true;
                                                while (!this.zzB) {
                                                    while (this.zzs > 0) {
                                                        this.zzo.updateTexImage();
                                                        this.zzs--;
                                                    }
                                                    if (this.zzb.zze(this.zzc)) {
                                                        if (Float.isNaN(this.zzj)) {
                                                            float[] fArr = this.zzc;
                                                            float[] fArr2 = {0.0f, 1.0f, 0.0f};
                                                            float f = fArr[0];
                                                            float f2 = fArr2[0];
                                                            float f3 = fArr[1];
                                                            float f4 = fArr2[1];
                                                            float[] fArr3 = {(fArr[2] * 0.0f) + (f * f2) + (f3 * f4), (fArr[5] * 0.0f) + (fArr[3] * f2) + (fArr[4] * f4), (fArr[8] * 0.0f) + (fArr[6] * f2) + (fArr[7] * f4)};
                                                            this.zzj = -(((float) Math.atan2(fArr3[1], fArr3[0])) - 1.5707964f);
                                                        }
                                                        zzk(this.zzh, this.zzj + this.zzk);
                                                    } else {
                                                        zzj(this.zzc, -1.5707964f);
                                                        zzk(this.zzh, this.zzk);
                                                    }
                                                    zzj(this.zzd, 1.5707964f);
                                                    zzi(this.zze, this.zzh, this.zzd);
                                                    zzi(this.zzf, this.zzc, this.zze);
                                                    zzj(this.zzg, this.zzl);
                                                    zzi(this.zzi, this.zzg, this.zzf);
                                                    GLES20.glUniformMatrix3fv(this.zzr, 1, false, this.zzi, 0);
                                                    GLES20.glDrawArrays(5, 0, 4);
                                                    zzh(new ObfuscatedString(new long[]{2526759306737721188L, 8608998204178473956L, -1790943213459358629L}).toString());
                                                    GLES20.glFinish();
                                                    this.zzw.eglSwapBuffers(this.zzx, this.zzz);
                                                    if (this.zzA) {
                                                        GLES20.glViewport(0, 0, this.zzn, this.zzm);
                                                        zzh(new ObfuscatedString(new long[]{-6360293467964457973L, -1275762710857879515L}).toString());
                                                        int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.zzq, new ObfuscatedString(new long[]{8701692393473758676L, -3426991213071032471L}).toString());
                                                        int glGetUniformLocation3 = GLES20.glGetUniformLocation(this.zzq, new ObfuscatedString(new long[]{-10724982065148799L, 1195572657502957125L}).toString());
                                                        int i3 = this.zzn;
                                                        int i4 = this.zzm;
                                                        if (i3 > i4) {
                                                            GLES20.glUniform1f(glGetUniformLocation2, 0.87266463f);
                                                            GLES20.glUniform1f(glGetUniformLocation3, (this.zzm * 0.87266463f) / this.zzn);
                                                        } else {
                                                            GLES20.glUniform1f(glGetUniformLocation2, (i3 * 0.87266463f) / i4);
                                                            GLES20.glUniform1f(glGetUniformLocation3, 0.87266463f);
                                                        }
                                                        this.zzA = false;
                                                    }
                                                    try {
                                                        synchronized (this.zzv) {
                                                            try {
                                                                if (!this.zzB && !this.zzA && this.zzs == 0) {
                                                                    this.zzv.wait();
                                                                }
                                                            } catch (Throwable th) {
                                                                throw th;
                                                                break;
                                                            }
                                                        }
                                                    } catch (InterruptedException unused) {
                                                    }
                                                }
                                            } finally {
                                                this.zzb.zzd();
                                                this.zzo.setOnFrameAvailableListener(null);
                                                this.zzo = 0 == true ? 1 : 0;
                                                zzg();
                                            }
                                        } catch (IllegalStateException unused2) {
                                            zzcec.zzj(new ObfuscatedString(new long[]{-1258931395675192903L, 8350082243804192472L, -371415053574149092L, -1946527066618201186L, 8598769029863226669L, -7368724376736008317L, 2817101773272446107L}).toString());
                                            return;
                                        } catch (Throwable th2) {
                                            zzcec.zzh(new ObfuscatedString(new long[]{7172052834111284257L, -7717788593544287692L, 138209341031123328L, -858451453601115232L, 5270258035645914877L}).toString(), th2);
                                            com.google.android.gms.ads.internal.zzt.zzo().zzw(th2, new ObfuscatedString(new long[]{-6663735352729448737L, 8418659877555129172L, 6031622532731793771L, 5609613691181238152L, 8193426719018567156L}).toString());
                                            return;
                                        }
                                        return;
                                    }
                                    String concat = new ObfuscatedString(new long[]{-8799495185087509112L, -5074945117216388915L, -5391806060991893422L, 1023327291178545316L, 8039102176766610246L}).toString().concat(String.valueOf(GLUtils.getEGLErrorString(this.zzw.eglGetError())));
                                    zzcec.zzg(concat);
                                    com.google.android.gms.ads.internal.zzt.zzo().zzw(new Throwable(concat), new ObfuscatedString(new long[]{-8338208824053019343L, -1821579642001510956L, 6155434367828569048L, -5325753713492681502L, -3452154840575405774L}).toString());
                                    zzg();
                                    this.zzu.countDown();
                                    return;
                                }
                            }
                            glCreateProgram = 0;
                            this.zzq = glCreateProgram;
                            GLES20.glUseProgram(glCreateProgram);
                            zzh(new ObfuscatedString(new long[]{-5356759803941616838L, 3943752871344395552L, -864498639728700586L}).toString());
                            int glGetAttribLocation2 = GLES20.glGetAttribLocation(this.zzq, new ObfuscatedString(new long[]{2451232872944466436L, -8259411665857222366L, -8117192438063441911L}).toString());
                            GLES20.glVertexAttribPointer(glGetAttribLocation2, 3, 5126, false, 12, (Buffer) this.zzt);
                            zzh(new ObfuscatedString(new long[]{8947902663290070582L, 6765153581367458367L, -5569285538358469156L, -153199774364131266L}).toString());
                            GLES20.glEnableVertexAttribArray(glGetAttribLocation2);
                            zzh(new ObfuscatedString(new long[]{6340946390027597663L, -3852928329756256990L, -7051788382668911028L, -7228476169475194016L}).toString());
                            int[] iArr32 = new int[1];
                            GLES20.glGenTextures(1, iArr32, 0);
                            zzh(new ObfuscatedString(new long[]{6305503174549418686L, -4158563959810067458L, 8145980511670534139L}).toString());
                            int i5 = iArr32[0];
                            GLES20.glBindTexture(36197, i5);
                            zzh(new ObfuscatedString(new long[]{-5974286678312639200L, 3600448914894662851L, 6493012608484232792L}).toString());
                            GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
                            zzh(new ObfuscatedString(new long[]{-282493315721304926L, -2611647396981163319L, 5533687291584292319L}).toString());
                            GLES20.glTexParameteri(36197, 10241, 9729);
                            zzh(new ObfuscatedString(new long[]{2179772533792822878L, 4103565951044105306L, -7347632630758563660L}).toString());
                            GLES20.glTexParameteri(36197, 10242, 33071);
                            zzh(new ObfuscatedString(new long[]{-7302099041111722035L, 3719896211389379695L, -749876983876025611L}).toString());
                            GLES20.glTexParameteri(36197, 10243, 33071);
                            zzh(new ObfuscatedString(new long[]{-7790355470666716592L, 1535115454793425210L, -5438247499514320406L}).toString());
                            int glGetUniformLocation4 = GLES20.glGetUniformLocation(this.zzq, new ObfuscatedString(new long[]{-3263733097325599143L, 6138217271308902097L}).toString());
                            this.zzr = glGetUniformLocation4;
                            GLES20.glUniformMatrix3fv(glGetUniformLocation4, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
                            int i22 = this.zzq;
                            if (!z) {
                            }
                            String concat2 = new ObfuscatedString(new long[]{-8799495185087509112L, -5074945117216388915L, -5391806060991893422L, 1023327291178545316L, 8039102176766610246L}).toString().concat(String.valueOf(GLUtils.getEGLErrorString(this.zzw.eglGetError())));
                            zzcec.zzg(concat2);
                            com.google.android.gms.ads.internal.zzt.zzo().zzw(new Throwable(concat2), new ObfuscatedString(new long[]{-8338208824053019343L, -1821579642001510956L, 6155434367828569048L, -5325753713492681502L, -3452154840575405774L}).toString());
                            zzg();
                            this.zzu.countDown();
                            return;
                        }
                    }
                }
            }
            z = false;
            zzbfuVar = zzbgc.zzbj;
            if (((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).equals(zzbfuVar.zzm())) {
            }
            zzl = zzl(35633, obfuscatedString);
            if (zzl != 0) {
            }
            glCreateProgram = 0;
            this.zzq = glCreateProgram;
            GLES20.glUseProgram(glCreateProgram);
            zzh(new ObfuscatedString(new long[]{-5356759803941616838L, 3943752871344395552L, -864498639728700586L}).toString());
            int glGetAttribLocation22 = GLES20.glGetAttribLocation(this.zzq, new ObfuscatedString(new long[]{2451232872944466436L, -8259411665857222366L, -8117192438063441911L}).toString());
            GLES20.glVertexAttribPointer(glGetAttribLocation22, 3, 5126, false, 12, (Buffer) this.zzt);
            zzh(new ObfuscatedString(new long[]{8947902663290070582L, 6765153581367458367L, -5569285538358469156L, -153199774364131266L}).toString());
            GLES20.glEnableVertexAttribArray(glGetAttribLocation22);
            zzh(new ObfuscatedString(new long[]{6340946390027597663L, -3852928329756256990L, -7051788382668911028L, -7228476169475194016L}).toString());
            int[] iArr322 = new int[1];
            GLES20.glGenTextures(1, iArr322, 0);
            zzh(new ObfuscatedString(new long[]{6305503174549418686L, -4158563959810067458L, 8145980511670534139L}).toString());
            int i52 = iArr322[0];
            GLES20.glBindTexture(36197, i52);
            zzh(new ObfuscatedString(new long[]{-5974286678312639200L, 3600448914894662851L, 6493012608484232792L}).toString());
            GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
            zzh(new ObfuscatedString(new long[]{-282493315721304926L, -2611647396981163319L, 5533687291584292319L}).toString());
            GLES20.glTexParameteri(36197, 10241, 9729);
            zzh(new ObfuscatedString(new long[]{2179772533792822878L, 4103565951044105306L, -7347632630758563660L}).toString());
            GLES20.glTexParameteri(36197, 10242, 33071);
            zzh(new ObfuscatedString(new long[]{-7302099041111722035L, 3719896211389379695L, -749876983876025611L}).toString());
            GLES20.glTexParameteri(36197, 10243, 33071);
            zzh(new ObfuscatedString(new long[]{-7790355470666716592L, 1535115454793425210L, -5438247499514320406L}).toString());
            int glGetUniformLocation42 = GLES20.glGetUniformLocation(this.zzq, new ObfuscatedString(new long[]{-3263733097325599143L, 6138217271308902097L}).toString());
            this.zzr = glGetUniformLocation42;
            GLES20.glUniformMatrix3fv(glGetUniformLocation42, 1, false, new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f}, 0);
            int i222 = this.zzq;
            if (!z) {
            }
            String concat22 = new ObfuscatedString(new long[]{-8799495185087509112L, -5074945117216388915L, -5391806060991893422L, 1023327291178545316L, 8039102176766610246L}).toString().concat(String.valueOf(GLUtils.getEGLErrorString(this.zzw.eglGetError())));
            zzcec.zzg(concat22);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(new Throwable(concat22), new ObfuscatedString(new long[]{-8338208824053019343L, -1821579642001510956L, 6155434367828569048L, -5325753713492681502L, -3452154840575405774L}).toString());
            zzg();
            this.zzu.countDown();
            return;
        }
        zzcec.zzg(new ObfuscatedString(new long[]{8678718853171794215L, -2024669102033937244L, 4750197548308962175L, -5361956312179505196L, 6849933463953477458L, 3196956353689793533L, 6361761954815956231L, -3748328644900635860L}).toString());
        this.zzu.countDown();
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza() {
        synchronized (this.zzv) {
            this.zzv.notifyAll();
        }
    }

    @Nullable
    public final SurfaceTexture zzb() {
        if (this.zzp == null) {
            return null;
        }
        try {
            this.zzu.await();
        } catch (InterruptedException unused) {
        }
        return this.zzo;
    }

    public final void zzc(int i, int i2) {
        synchronized (this.zzv) {
            this.zzn = i;
            this.zzm = i2;
            this.zzA = true;
            this.zzv.notifyAll();
        }
    }

    public final void zzd(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzn = i;
        this.zzm = i2;
        this.zzp = surfaceTexture;
    }

    public final void zze() {
        synchronized (this.zzv) {
            this.zzB = true;
            this.zzp = null;
            this.zzv.notifyAll();
        }
    }

    public final void zzf(float f, float f2) {
        int i = this.zzn;
        int i2 = this.zzm;
        if (i <= i2) {
            i = i2;
        }
        float f3 = i;
        this.zzk -= (f * 1.7453293f) / f3;
        float f4 = this.zzl - ((f2 * 1.7453293f) / f3);
        this.zzl = f4;
        if (f4 < -1.5707964f) {
            this.zzl = -1.5707964f;
            f4 = -1.5707964f;
        }
        if (f4 > 1.5707964f) {
            this.zzl = 1.5707964f;
        }
    }

    @VisibleForTesting
    public final boolean zzg() {
        EGLSurface eGLSurface;
        EGLSurface eGLSurface2 = this.zzz;
        boolean z = false;
        if (eGLSurface2 != null && eGLSurface2 != (eGLSurface = EGL10.EGL_NO_SURFACE)) {
            z = this.zzw.eglDestroySurface(this.zzx, this.zzz) | this.zzw.eglMakeCurrent(this.zzx, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            this.zzz = null;
        }
        EGLContext eGLContext = this.zzy;
        if (eGLContext != null) {
            z |= this.zzw.eglDestroyContext(this.zzx, eGLContext);
            this.zzy = null;
        }
        EGLDisplay eGLDisplay = this.zzx;
        if (eGLDisplay != null) {
            boolean eglTerminate = this.zzw.eglTerminate(eGLDisplay) | z;
            this.zzx = null;
            return eglTerminate;
        }
        return z;
    }
}
