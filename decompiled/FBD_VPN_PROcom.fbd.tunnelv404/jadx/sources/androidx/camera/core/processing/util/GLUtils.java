package androidx.camera.core.processing.util;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.processing.ShaderProvider;
import androidx.core.util.Preconditions;
import androidx.work.Data;
import defpackage.AbstractC0362x4440ab85;
import j$.util.Objects;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class GLUtils {
    public static final String BLANK_FRAGMENT_SHADER = "precision mediump float;\nuniform float uAlphaScale;\nvoid main() {\n    gl_FragColor = vec4(0.0, 0.0, 0.0, uAlphaScale);\n}\n";
    public static final String BLANK_VERTEX_SHADER = "uniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n}\n";
    public static final String DEFAULT_VERTEX_SHADER;
    public static final String HDR_VERTEX_SHADER;
    public static final OutputSurface NO_OUTPUT_SURFACE;
    public static final int PIXEL_STRIDE = 4;
    private static final ShaderProvider SHADER_PROVIDER_DEFAULT;
    private static final ShaderProvider SHADER_PROVIDER_HDR_DEFAULT;
    private static final ShaderProvider SHADER_PROVIDER_HDR_YUV;
    public static final int SIZEOF_FLOAT = 4;
    public static final String TAG = "GLUtils";
    public static final FloatBuffer TEX_BUF;
    public static final float[] TEX_COORDS;
    public static final String VAR_TEXTURE = "sTexture";
    public static final String VAR_TEXTURE_COORD = "vTextureCoord";
    public static final String VERSION_UNKNOWN = "0.0";
    public static final FloatBuffer VERTEX_BUF;
    public static final float[] VERTEX_COORDS;
    public static final int[] EMPTY_ATTRIBS = {12344};
    public static final int EGL_GL_COLORSPACE_KHR = 12445;
    public static final int EGL_GL_COLORSPACE_BT2020_HLG_EXT = 13632;
    public static final int[] HLG_SURFACE_ATTRIBS = {EGL_GL_COLORSPACE_KHR, EGL_GL_COLORSPACE_BT2020_HLG_EXT, 12344};

    /* loaded from: classes.dex */
    public static class BlankShaderProgram extends Program2D {
        public BlankShaderProgram() {
            super(GLUtils.BLANK_VERTEX_SHADER, GLUtils.BLANK_FRAGMENT_SHADER);
        }
    }

    /* loaded from: classes.dex */
    public enum InputFormat {
        UNKNOWN,
        DEFAULT,
        YUV
    }

    /* loaded from: classes.dex */
    public static abstract class Program2D {
        protected int mProgramHandle;
        protected int mTransMatrixLoc = -1;
        protected int mAlphaScaleLoc = -1;
        protected int mPositionLoc = -1;

        /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Program2D(@NonNull String str, @NonNull String str2) {
            int i;
            int i2;
            int i3;
            try {
                i = GLUtils.loadShader(35633, str);
            } catch (IllegalArgumentException | IllegalStateException e) {
                e = e;
                i = -1;
            }
            try {
                i2 = GLUtils.loadShader(35632, str2);
                try {
                    i3 = GLES20.glCreateProgram();
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    i3 = -1;
                    if (i != -1) {
                        GLES20.glDeleteShader(i);
                    }
                    if (i2 != -1) {
                        GLES20.glDeleteShader(i2);
                    }
                    if (i3 != -1) {
                        GLES20.glDeleteProgram(i3);
                    }
                    throw e;
                } catch (IllegalStateException e3) {
                    e = e3;
                    i3 = -1;
                    if (i != -1) {
                    }
                    if (i2 != -1) {
                    }
                    if (i3 != -1) {
                    }
                    throw e;
                }
                try {
                    GLUtils.checkGlErrorOrThrow("glCreateProgram");
                    GLES20.glAttachShader(i3, i);
                    GLUtils.checkGlErrorOrThrow("glAttachShader");
                    GLES20.glAttachShader(i3, i2);
                    GLUtils.checkGlErrorOrThrow("glAttachShader");
                    GLES20.glLinkProgram(i3);
                    int[] iArr = new int[1];
                    GLES20.glGetProgramiv(i3, 35714, iArr, 0);
                    if (iArr[0] == 1) {
                        this.mProgramHandle = i3;
                        loadLocations();
                    } else {
                        throw new IllegalStateException("Could not link program: " + GLES20.glGetProgramInfoLog(i3));
                    }
                } catch (IllegalArgumentException e4) {
                    e = e4;
                    if (i != -1) {
                    }
                    if (i2 != -1) {
                    }
                    if (i3 != -1) {
                    }
                    throw e;
                } catch (IllegalStateException e5) {
                    e = e5;
                    if (i != -1) {
                    }
                    if (i2 != -1) {
                    }
                    if (i3 != -1) {
                    }
                    throw e;
                }
            } catch (IllegalArgumentException e6) {
                e = e6;
                i2 = -1;
                i3 = -1;
                if (i != -1) {
                }
                if (i2 != -1) {
                }
                if (i3 != -1) {
                }
                throw e;
            } catch (IllegalStateException e7) {
                e = e7;
                i2 = -1;
                i3 = -1;
                if (i != -1) {
                }
                if (i2 != -1) {
                }
                if (i3 != -1) {
                }
                throw e;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadLocations() {
            int glGetAttribLocation = GLES20.glGetAttribLocation(this.mProgramHandle, "aPosition");
            this.mPositionLoc = glGetAttribLocation;
            GLUtils.checkLocationOrThrow(glGetAttribLocation, "aPosition");
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramHandle, "uTransMatrix");
            this.mTransMatrixLoc = glGetUniformLocation;
            GLUtils.checkLocationOrThrow(glGetUniformLocation, "uTransMatrix");
            int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.mProgramHandle, "uAlphaScale");
            this.mAlphaScaleLoc = glGetUniformLocation2;
            GLUtils.checkLocationOrThrow(glGetUniformLocation2, "uAlphaScale");
        }

        public void delete() {
            GLES20.glDeleteProgram(this.mProgramHandle);
        }

        public void updateAlpha(float f) {
            GLES20.glUniform1f(this.mAlphaScaleLoc, f);
            GLUtils.checkGlErrorOrThrow("glUniform1f");
        }

        public void updateTransformMatrix(@NonNull float[] fArr) {
            GLES20.glUniformMatrix4fv(this.mTransMatrixLoc, 1, false, fArr, 0);
            GLUtils.checkGlErrorOrThrow("glUniformMatrix4fv");
        }

        public void use() {
            GLES20.glUseProgram(this.mProgramHandle);
            GLUtils.checkGlErrorOrThrow("glUseProgram");
            GLES20.glEnableVertexAttribArray(this.mPositionLoc);
            GLUtils.checkGlErrorOrThrow("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.mPositionLoc, 2, 5126, false, 0, (Buffer) GLUtils.VERTEX_BUF);
            GLUtils.checkGlErrorOrThrow("glVertexAttribPointer");
            updateTransformMatrix(GLUtils.create4x4IdentityMatrix());
            updateAlpha(1.0f);
        }
    }

    /* loaded from: classes.dex */
    public static class SamplerShaderProgram extends Program2D {
        private int mSamplerLoc;
        private int mTexCoordLoc;
        private int mTexMatrixLoc;

        public SamplerShaderProgram(@NonNull DynamicRange dynamicRange, @NonNull InputFormat inputFormat) {
            this(dynamicRange, resolveDefaultShaderProvider(dynamicRange, inputFormat));
        }

        private void loadLocations() {
            loadLocations();
            int glGetUniformLocation = GLES20.glGetUniformLocation(this.mProgramHandle, GLUtils.VAR_TEXTURE);
            this.mSamplerLoc = glGetUniformLocation;
            GLUtils.checkLocationOrThrow(glGetUniformLocation, GLUtils.VAR_TEXTURE);
            int glGetAttribLocation = GLES20.glGetAttribLocation(this.mProgramHandle, "aTextureCoord");
            this.mTexCoordLoc = glGetAttribLocation;
            GLUtils.checkLocationOrThrow(glGetAttribLocation, "aTextureCoord");
            int glGetUniformLocation2 = GLES20.glGetUniformLocation(this.mProgramHandle, "uTexMatrix");
            this.mTexMatrixLoc = glGetUniformLocation2;
            GLUtils.checkLocationOrThrow(glGetUniformLocation2, "uTexMatrix");
        }

        private static ShaderProvider resolveDefaultShaderProvider(@NonNull DynamicRange dynamicRange, @Nullable InputFormat inputFormat) {
            boolean z;
            if (!dynamicRange.is10BitHdr()) {
                return GLUtils.SHADER_PROVIDER_DEFAULT;
            }
            if (inputFormat != InputFormat.UNKNOWN) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkArgument(z, "No default sampler shader available for" + inputFormat);
            return inputFormat == InputFormat.YUV ? GLUtils.SHADER_PROVIDER_HDR_YUV : GLUtils.SHADER_PROVIDER_HDR_DEFAULT;
        }

        public void updateTextureMatrix(@NonNull float[] fArr) {
            GLES20.glUniformMatrix4fv(this.mTexMatrixLoc, 1, false, fArr, 0);
            GLUtils.checkGlErrorOrThrow("glUniformMatrix4fv");
        }

        @Override // androidx.camera.core.processing.util.GLUtils.Program2D
        public void use() {
            super.use();
            GLES20.glUniform1i(this.mSamplerLoc, 0);
            GLES20.glEnableVertexAttribArray(this.mTexCoordLoc);
            GLUtils.checkGlErrorOrThrow("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(this.mTexCoordLoc, 2, 5126, false, 0, (Buffer) GLUtils.TEX_BUF);
            GLUtils.checkGlErrorOrThrow("glVertexAttribPointer");
        }

        public SamplerShaderProgram(@NonNull DynamicRange dynamicRange, @NonNull ShaderProvider shaderProvider) {
            super(dynamicRange.is10BitHdr() ? GLUtils.HDR_VERTEX_SHADER : GLUtils.DEFAULT_VERTEX_SHADER, GLUtils.getFragmentShaderSource(shaderProvider));
            this.mSamplerLoc = -1;
            this.mTexMatrixLoc = -1;
            this.mTexCoordLoc = -1;
            loadLocations();
        }
    }

    static {
        Locale locale = Locale.US;
        DEFAULT_VERTEX_SHADER = "uniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uTransMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        HDR_VERTEX_SHADER = "#version 300 es\nin vec4 aPosition;\nin vec4 aTextureCoord;\nuniform mat4 uTexMatrix;\nuniform mat4 uTransMatrix;\nout vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uTransMatrix * aPosition;\n  vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        SHADER_PROVIDER_DEFAULT = new ShaderProvider() { // from class: androidx.camera.core.processing.util.GLUtils.1
            @Override // androidx.camera.core.processing.ShaderProvider
            @NonNull
            public String createFragmentShader(@NonNull String str, @NonNull String str2) {
                Locale locale2 = Locale.US;
                StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 ", str2, ";\nuniform samplerExternalOES ", str, ";\nuniform float uAlphaScale;\nvoid main() {\n    vec4 src = texture2D(");
                m2944x4440ab85.append(str);
                m2944x4440ab85.append(", ");
                m2944x4440ab85.append(str2);
                m2944x4440ab85.append(");\n    gl_FragColor = vec4(src.rgb, src.a * uAlphaScale);\n}\n");
                return m2944x4440ab85.toString();
            }
        };
        SHADER_PROVIDER_HDR_DEFAULT = new ShaderProvider() { // from class: androidx.camera.core.processing.util.GLUtils.2
            @Override // androidx.camera.core.processing.ShaderProvider
            @NonNull
            public String createFragmentShader(@NonNull String str, @NonNull String str2) {
                Locale locale2 = Locale.US;
                StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nuniform samplerExternalOES ", str, ";\nuniform float uAlphaScale;\nin vec2 ", str2, ";\nout vec4 outColor;\n\nvoid main() {\n  vec4 src = texture(");
                m2944x4440ab85.append(str);
                m2944x4440ab85.append(", ");
                m2944x4440ab85.append(str2);
                m2944x4440ab85.append(");\n  outColor = vec4(src.rgb, src.a * uAlphaScale);\n}");
                return m2944x4440ab85.toString();
            }
        };
        SHADER_PROVIDER_HDR_YUV = new ShaderProvider() { // from class: androidx.camera.core.processing.util.GLUtils.3
            @Override // androidx.camera.core.processing.ShaderProvider
            @NonNull
            public String createFragmentShader(@NonNull String str, @NonNull String str2) {
                Locale locale2 = Locale.US;
                StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("#version 300 es\n#extension GL_EXT_YUV_target : require\nprecision mediump float;\nuniform __samplerExternal2DY2YEXT ", str, ";\nuniform float uAlphaScale;\nin vec2 ", str2, ";\nout vec4 outColor;\n\nvec3 yuvToRgb(vec3 yuv) {\n  const vec3 yuvOffset = vec3(0.0625, 0.5, 0.5);\n  const mat3 yuvToRgbColorMat = mat3(\n    1.1689f, 1.1689f, 1.1689f,\n    0.0000f, -0.1881f, 2.1502f,\n    1.6853f, -0.6530f, 0.0000f\n  );\n  return clamp(yuvToRgbColorMat * (yuv - yuvOffset), 0.0, 1.0);\n}\n\nvoid main() {\n  vec3 srcYuv = texture(");
                m2944x4440ab85.append(str);
                m2944x4440ab85.append(", ");
                m2944x4440ab85.append(str2);
                m2944x4440ab85.append(").xyz;\n  vec3 srcRgb = yuvToRgb(srcYuv);\n  outColor = vec4(srcRgb, uAlphaScale);\n}");
                return m2944x4440ab85.toString();
            }
        };
        float[] fArr = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
        VERTEX_COORDS = fArr;
        VERTEX_BUF = createFloatBuffer(fArr);
        float[] fArr2 = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
        TEX_COORDS = fArr2;
        TEX_BUF = createFloatBuffer(fArr2);
        NO_OUTPUT_SURFACE = OutputSurface.of(EGL14.EGL_NO_SURFACE, 0, 0);
    }

    private GLUtils() {
    }

    public static void checkEglErrorOrLog(@NonNull String str) {
        try {
            checkEglErrorOrThrow(str);
        } catch (IllegalStateException e) {
            Logger.e(TAG, e.toString(), e);
        }
    }

    public static void checkEglErrorOrThrow(@NonNull String str) {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError == 12288) {
            return;
        }
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, ": EGL error: 0x");
        m2943xc20437a5.append(Integer.toHexString(eglGetError));
        throw new IllegalStateException(m2943xc20437a5.toString());
    }

    public static void checkGlErrorOrThrow(@NonNull String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError == 0) {
            return;
        }
        StringBuilder m2943xc20437a5 = AbstractC0362x4440ab85.m2943xc20437a5(str, ": GL error 0x");
        m2943xc20437a5.append(Integer.toHexString(glGetError));
        throw new IllegalStateException(m2943xc20437a5.toString());
    }

    public static void checkGlThreadOrThrow(@Nullable Thread thread) {
        boolean z;
        if (thread == Thread.currentThread()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Method call must be called on the GL thread.");
    }

    public static void checkInitializedOrThrow(@NonNull AtomicBoolean atomicBoolean, boolean z) {
        boolean z2;
        String str;
        if (z == atomicBoolean.get()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            str = "OpenGlRenderer is not initialized";
        } else {
            str = "OpenGlRenderer is already initialized";
        }
        Preconditions.checkState(z2, str);
    }

    public static void checkLocationOrThrow(int i, @NonNull String str) {
        if (i >= 0) {
        } else {
            throw new IllegalStateException(AbstractC0362x4440ab85.m2932x95f25580("Unable to locate '", str, "' in program"));
        }
    }

    @NonNull
    public static int[] chooseSurfaceAttrib(@NonNull String str, @NonNull DynamicRange dynamicRange) {
        int[] iArr = EMPTY_ATTRIBS;
        if (dynamicRange.getEncoding() == 3) {
            if (str.contains("EGL_EXT_gl_colorspace_bt2020_hlg")) {
                return HLG_SURFACE_ATTRIBS;
            }
            Logger.w(TAG, "Dynamic range uses HLG encoding, but device does not support EGL_EXT_gl_colorspace_bt2020_hlg.Fallback to default colorspace.");
            return iArr;
        }
        return iArr;
    }

    @NonNull
    public static float[] create4x4IdentityMatrix() {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        return fArr;
    }

    @NonNull
    public static FloatBuffer createFloatBuffer(@NonNull float[] fArr) {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(fArr.length * 4);
        allocateDirect.order(ByteOrder.nativeOrder());
        FloatBuffer asFloatBuffer = allocateDirect.asFloatBuffer();
        asFloatBuffer.put(fArr);
        asFloatBuffer.position(0);
        return asFloatBuffer;
    }

    @NonNull
    public static EGLSurface createPBufferSurface(@NonNull EGLDisplay eGLDisplay, @NonNull EGLConfig eGLConfig, int i, int i2) {
        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, new int[]{12375, i, 12374, i2, 12344}, 0);
        checkEglErrorOrThrow("eglCreatePbufferSurface");
        if (eglCreatePbufferSurface != null) {
            return eglCreatePbufferSurface;
        }
        throw new IllegalStateException("surface was null");
    }

    @NonNull
    public static Map<InputFormat, Program2D> createPrograms(@NonNull DynamicRange dynamicRange, @NonNull Map<InputFormat, ShaderProvider> map) {
        Object samplerShaderProgram;
        InputFormat inputFormat;
        boolean z;
        HashMap hashMap = new HashMap();
        for (InputFormat inputFormat2 : InputFormat.values()) {
            ShaderProvider shaderProvider = map.get(inputFormat2);
            if (shaderProvider != null) {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, shaderProvider);
            } else if (inputFormat2 != InputFormat.YUV && inputFormat2 != (inputFormat = InputFormat.DEFAULT)) {
                if (inputFormat2 == InputFormat.UNKNOWN) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkState(z, "Unhandled input format: " + inputFormat2);
                if (dynamicRange.is10BitHdr()) {
                    samplerShaderProgram = new BlankShaderProgram();
                } else {
                    ShaderProvider shaderProvider2 = map.get(inputFormat);
                    if (shaderProvider2 != null) {
                        samplerShaderProgram = new SamplerShaderProgram(dynamicRange, shaderProvider2);
                    } else {
                        samplerShaderProgram = new SamplerShaderProgram(dynamicRange, inputFormat);
                    }
                }
            } else {
                samplerShaderProgram = new SamplerShaderProgram(dynamicRange, inputFormat2);
            }
            Objects.toString(inputFormat2);
            samplerShaderProgram.toString();
            hashMap.put(inputFormat2, samplerShaderProgram);
        }
        return hashMap;
    }

    public static int createTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGlErrorOrThrow("glGenTextures");
        int i = iArr[0];
        GLES20.glBindTexture(36197, i);
        checkGlErrorOrThrow("glBindTexture " + i);
        GLES20.glTexParameteri(36197, 10241, 9728);
        GLES20.glTexParameteri(36197, Data.MAX_DATA_BYTES, 9729);
        GLES20.glTexParameteri(36197, 10242, 33071);
        GLES20.glTexParameteri(36197, 10243, 33071);
        checkGlErrorOrThrow("glTexParameter");
        return i;
    }

    @NonNull
    public static EGLSurface createWindowSurface(@NonNull EGLDisplay eGLDisplay, @NonNull EGLConfig eGLConfig, @NonNull Surface surface, @NonNull int[] iArr) {
        EGLSurface eglCreateWindowSurface = EGL14.eglCreateWindowSurface(eGLDisplay, eGLConfig, surface, iArr, 0);
        checkEglErrorOrThrow("eglCreateWindowSurface");
        if (eglCreateWindowSurface != null) {
            return eglCreateWindowSurface;
        }
        throw new IllegalStateException("surface was null");
    }

    public static void deleteFbo(int i) {
        GLES20.glDeleteFramebuffers(1, new int[]{i}, 0);
        checkGlErrorOrThrow("glDeleteFramebuffers");
    }

    public static void deleteTexture(int i) {
        GLES20.glDeleteTextures(1, new int[]{i}, 0);
        checkGlErrorOrThrow("glDeleteTextures");
    }

    public static int generateFbo() {
        int[] iArr = new int[1];
        GLES20.glGenFramebuffers(1, iArr, 0);
        checkGlErrorOrThrow("glGenFramebuffers");
        return iArr[0];
    }

    public static int generateTexture() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        checkGlErrorOrThrow("glGenTextures");
        return iArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getFragmentShaderSource(@NonNull ShaderProvider shaderProvider) {
        try {
            String createFragmentShader = shaderProvider.createFragmentShader(VAR_TEXTURE, VAR_TEXTURE_COORD);
            if (createFragmentShader != null && createFragmentShader.contains(VAR_TEXTURE_COORD) && createFragmentShader.contains(VAR_TEXTURE)) {
                return createFragmentShader;
            }
            throw new IllegalArgumentException("Invalid fragment shader");
        } catch (Throwable th) {
            if (th instanceof IllegalArgumentException) {
                throw th;
            }
            throw new IllegalArgumentException("Unable retrieve fragment shader source", th);
        }
    }

    @NonNull
    public static String getGlVersionNumber() {
        Matcher matcher = Pattern.compile("OpenGL ES ([0-9]+)\\.([0-9]+).*").matcher(GLES20.glGetString(7938));
        if (matcher.find()) {
            return AbstractC0362x4440ab85.m2953x742e2fda((String) Preconditions.checkNotNull(matcher.group(1)), ".", (String) Preconditions.checkNotNull(matcher.group(2)));
        }
        return VERSION_UNKNOWN;
    }

    @NonNull
    public static Size getSurfaceSize(@NonNull EGLDisplay eGLDisplay, @NonNull EGLSurface eGLSurface) {
        return new Size(querySurface(eGLDisplay, eGLSurface, 12375), querySurface(eGLDisplay, eGLSurface, 12374));
    }

    public static int loadShader(int i, @NonNull String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        checkGlErrorOrThrow("glCreateShader type=" + i);
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        Logger.w(TAG, "Could not compile shader: " + str);
        GLES20.glDeleteShader(glCreateShader);
        StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Could not compile shader type ", ":");
        m2939xab142723.append(GLES20.glGetShaderInfoLog(glCreateShader));
        throw new IllegalStateException(m2939xab142723.toString());
    }

    public static int querySurface(@NonNull EGLDisplay eGLDisplay, @NonNull EGLSurface eGLSurface, int i) {
        int[] iArr = new int[1];
        EGL14.eglQuerySurface(eGLDisplay, eGLSurface, i, iArr, 0);
        return iArr[0];
    }
}
