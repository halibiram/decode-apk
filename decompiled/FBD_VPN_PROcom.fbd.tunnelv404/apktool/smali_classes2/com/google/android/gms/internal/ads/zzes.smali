.class final Lcom/google/android/gms/internal/ads/zzes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method public static zza()I
    .locals 5
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/16 v4, 0x3098

    .line 14
    .line 15
    invoke-static {v2, v3, v4, v0, v1}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 19
    .line 20
    .line 21
    aget v0, v0, v1

    .line 22
    .line 23
    return v0
.end method

.method public static zzb(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .locals 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/16 v0, 0x3098

    .line 2
    .line 3
    const/16 v1, 0x3038

    .line 4
    .line 5
    filled-new-array {v0, p2, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzes;->zzl(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, p3, p0, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 25
    .line 26
    .line 27
    new-instance p0, Lcom/google/android/gms/internal/ads/zzet;

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance p3, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/16 v0, 0xd

    .line 37
    .line 38
    new-array v0, v0, [J

    .line 39
    .line 40
    fill-array-data v0, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {p3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-static {p3, p1, p2}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        -0x4f0098898fd4eb1dL    # -1.1108824724736195E-72
        0x48d8a88763a1878cL    # 8.592169052391962E42
        -0x44f1d666cbaa48edL    # -3.1187287791715104E-24
        -0x4a874c76c925b4dL
        0x54a84ffc53da1ce9L    # 6.647176334863539E99
        -0x6a9e8382f6bab99L
        0x304bd59c652efb27L    # 4.807654449528895E-76
        0x658fef91b7fc5776L    # 1.6564771355713483E181
        -0x3936c7202271f0deL    # -1.0231326003854841E33
        -0x2c6e7b078f1e1737L    # -3.654418482071101E94
        -0x72566deb07e8678L
        -0x5eb6e0419110ea9bL    # -2.45607103254898E-148
        -0x5ecef2d993bd9001L    # -8.334534837668575E-149
    .end array-data
.end method

.method public static zzc()Landroid/opengl/EGLContext;
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static zzd()Landroid/opengl/EGLDisplay;
    .locals 6
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    xor-int/2addr v2, v3

    .line 14
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    new-array v5, v5, [J

    .line 18
    .line 19
    fill-array-data v5, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-array v2, v3, [I

    .line 33
    .line 34
    new-array v3, v3, [I

    .line 35
    .line 36
    invoke-static {v1, v2, v0, v3, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    new-array v3, v3, [J

    .line 44
    .line 45
    fill-array-data v3, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzb(ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    nop

    .line 63
    :array_0
    .array-data 8
        0x6b47a42e44e4fbb4L    # 6.072100293452839E208
        -0x2a5121e87a9148beL    # -5.5308339812239305E104
        -0x114d54c1da313d39L    # -1.727570979675944E225
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :array_1
    .array-data 8
        -0x75d37d113ac76ccfL
        0x47e093c7fc078f22L    # 1.762797739048863E38
        0x1faa42be30c8711dL    # 3.82541713212188E-156
        -0x5eb9d84928d4c850L
    .end array-data
.end method

.method public static zze(Landroid/opengl/EGLDisplay;[I[I)Landroid/opengl/EGLSurface;
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzes;->zzl(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p2, 0x6

    .line 13
    new-array p2, p2, [J

    .line 14
    .line 15
    fill-array-data p2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :array_0
    .array-data 8
        0x49e4844d17994bb2L    # 9.370418356716715E47
        -0x6f00f36895b64067L    # -8.191689622165452E-227
        -0x6a64d3c6e01995f6L
        0x5a233d256eaec8c1L    # 1.627898652992403E126
        0x483e24b8b091a5deL    # 1.0257282179341888E40
        0x285110d91326cf5bL
    .end array-data
.end method

.method public static zzf(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I[I)Landroid/opengl/EGLSurface;
    .locals 1
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzes;->zzl(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, p2, p1, p3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 11
    .line 12
    const/4 p2, 0x5

    .line 13
    new-array p2, p2, [J

    .line 14
    .line 15
    fill-array-data p2, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :array_0
    .array-data 8
        -0xd6d5f5cd0c43e6dL    # -7.94933581789735E243
        -0x3ec5b73c7c344988L    # -1722563.5148271602
        -0x4d47b9662442d218L    # -2.3051236287395756E-64
        0x48643bdd0aaf6e12L    # 5.508175603599124E40
        -0x77c96dc14059103dL    # -4.272478444884887E-269
    .end array-data
.end method

.method public static zzg(Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3000

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzet;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 21
    .line 22
    const/4 v3, 0x3

    .line 23
    new-array v3, v3, [J

    .line 24
    .line 25
    fill-array-data v3, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2, p0, v0}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1

    .line 39
    :array_0
    .array-data 8
        -0x14d8e6607a4bb680L    # -1.4832716634241458E208
        0x2cf283f33d33f61L
        0x6efb88cfb896baceL    # 4.076736883739453E226
    .end array-data
.end method

.method public static zzh(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 3
    .param p0    # Landroid/opengl/EGLDisplay;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/opengl/EGLContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 6
    .line 7
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 8
    .line 9
    invoke-static {p0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v2, v0, [J

    .line 15
    .line 16
    fill-array-data v2, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 32
    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array v1, v0, [J

    .line 37
    .line 38
    fill-array-data v1, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 52
    .line 53
    .line 54
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 55
    .line 56
    new-array v0, v0, [J

    .line 57
    .line 58
    fill-array-data v0, :array_2

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 72
    .line 73
    .line 74
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 p1, 0x5

    .line 77
    new-array p1, p1, [J

    .line 78
    .line 79
    fill-array-data p1, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :array_0
    .array-data 8
        0xc184094020a0350L
        -0x7ee465f20597830dL    # -2.515598940493541E-303
        0x3702261a4e7eeacbL    # 1.0172776035990903E-43
        -0x7d89e269173ff671L    # -8.454008788752457E-297
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :array_1
    .array-data 8
        0x5fb8f516e741896dL    # 1.3071240907264563E153
        0x394194e3d70bd0e3L    # 6.77218658404217E-33
        0x5a4c53906c3ccc09L    # 9.587379530925457E126
        0x755a3e4b9e6d36a2L    # 1.970223268452708E257
    .end array-data

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_2
    .array-data 8
        -0x8293f3503d5eb0aL
        -0x1ecc420236ac1edcL    # -1.7347314008111095E160
        -0x473eb452c4bccc36L    # -2.602354465550579E-35
        -0x12e605546a1c1fecL    # -3.582303168755446E217
    .end array-data

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    :array_3
    .array-data 8
        0x5e7dbac836a47280L    # 1.4849342460499998E147
        -0x1f8732a21adba11fL    # -5.320693139493712E156
        0x73fc9f87c933fee4L    # 5.12335057330091E250
        -0x1b5c0da27277c425L    # -6.314797072780741E176
        -0x3fee1a46b0d0fc31L    # -4.474339711422501
    .end array-data
.end method

.method public static zzi(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .locals 2
    .param p0    # Landroid/opengl/EGLDisplay;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/opengl/EGLSurface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 v0, 0x3059

    .line 7
    .line 8
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 17
    .line 18
    .line 19
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 p1, 0x4

    .line 22
    new-array p1, p1, [J

    .line 23
    .line 24
    fill-array-data p1, :array_0

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void

    .line 38
    nop

    .line 39
    :array_0
    .array-data 8
        -0x72dbf38e595ee327L    # -2.293917488316101E-245
        0x3b185e1303cff931L    # 5.039076271031327E-24
        0x5271af131eb45798L    # 1.4071371468365059E89
        -0x576f5cc5c2e0f200L
    .end array-data
.end method

.method public static zzj(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .locals 0
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    invoke-static {p0, p2, p2, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2
    .line 3
    .line 4
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    new-array p1, p1, [J

    .line 8
    .line 9
    fill-array-data p1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzg(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    new-array p0, p0, [I

    .line 24
    .line 25
    const p1, 0x8ca6

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 30
    .line 31
    .line 32
    aget p0, p0, p2

    .line 33
    .line 34
    if-eq p0, p3, :cond_0

    .line 35
    .line 36
    const p0, 0x8d40

    .line 37
    .line 38
    .line 39
    invoke-static {p0, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, p2, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeu;->zza()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0xc14648bc116434fL
        -0xfbe5ae610a8dc95L    # -5.478813676470559E232
        0x1dea0766b3fdafe2L
        0x2efd2071198417e9L    # 2.3989039722082446E-82
        -0x45f98958bd296eaL    # -3.122301176355361E287
    .end array-data
.end method

.method public static zzk(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x3055

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    return v0
.end method

.method private static zzl(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .locals 10
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v9, v0, [Landroid/opengl/EGLConfig;

    .line 3
    .line 4
    new-array v7, v0, [I

    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v4, v9

    .line 13
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    aget-object p0, v9, p0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzet;

    .line 24
    .line 25
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    new-array v0, v0, [J

    .line 29
    .line 30
    fill-array-data v0, :array_0

    .line 31
    .line 32
    .line 33
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzet;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    nop

    .line 45
    :array_0
    .array-data 8
        -0x13db01e7fc80d796L    # -8.833894922912269E212
        0xdb64c15043e0d1cL
        0x5a1337b40568ed5bL    # 8.130497925065494E125
        0x561be65df52ac3f7L    # 6.398831593872734E106
    .end array-data
.end method
