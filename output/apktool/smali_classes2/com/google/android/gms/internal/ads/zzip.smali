.class final Lcom/google/android/gms/internal/ads/zzip;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/media/AudioManager;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzin;

.field private zzc:Lcom/google/android/gms/internal/ads/zzio;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:I

.field private zze:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzio;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:F

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    new-array v1, v1, [J

    .line 16
    .line 17
    fill-array-data v1, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/media/AudioManager;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:Landroid/media/AudioManager;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/zzin;

    .line 41
    .line 42
    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzin;-><init>(Lcom/google/android/gms/internal/ads/zzip;Landroid/os/Handler;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:Lcom/google/android/gms/internal/ads/zzin;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:I

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        0x1ed42a3e174c5675L
        0x5bea5dd0a2dd0396L    # 5.988802384032574E134
    .end array-data
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzip;I)V
    .locals 2

    .line 1
    const/4 v0, -0x3

    .line 2
    const/4 v1, -0x2

    .line 3
    if-eq p1, v0, :cond_2

    .line 4
    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x5

    .line 21
    new-array v1, v1, [J

    .line 22
    .line 23
    fill-array-data v1, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, p0, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    fill-array-data v0, :array_1

    .line 39
    .line 40
    .line 41
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzff;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzg(I)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzf(I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzf(I)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zze()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    if-eq p1, v1, :cond_3

    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzip;->zzg(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzip;->zzf(I)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x2

    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzip;->zzg(I)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 8
        0x719c22b31786ed65L    # 1.832111539462951E239
        -0x4d5abfe200989b1L
        -0x4abf9c8563505bdfL    # -3.422097194953008E-52
        0x48dc7dede840a66L    # 9.77889292985205E-287
        0x21e92dbf38f0922dL    # 2.520492388596077E-145
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
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
    :array_1
    .array-data 8
        -0x53efe2814514434bL    # -1.8861555252633724E-96
        -0x5bbff84e2dfd5f01L    # -4.410897916532057E-134
        -0x188e2def83fc549eL
        0x4756e8a6e0abd818L    # 4.75797085292719E35
    .end array-data
.end method

.method private final zze()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 7
    .line 8
    const/16 v1, 0x1a

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zza:Landroid/media/AudioManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzb:Lcom/google/android/gms/internal/ads/zzin;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 17
    .line 18
    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzip;->zzg(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final zzf(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzkk;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzko;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzko;->zzv()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzko;->zzC(ZI)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzko;

    .line 18
    .line 19
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzko;->zzR(Lcom/google/android/gms/internal/ads/zzko;ZII)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final zzg(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzd:I

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const p1, 0x3e4ccccd    # 0.2f

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:F

    .line 18
    .line 19
    cmpl-float v0, v0, p1

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:F

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/zzkk;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkk;->zza:Lcom/google/android/gms/internal/ads/zzko;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzko;->zzO(Lcom/google/android/gms/internal/ads/zzko;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final zza()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zze:F

    return v0
.end method

.method public final zzb(ZI)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zze()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, -0x1

    .line 9
    return p1
.end method

.method public final zzd()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzip;->zzc:Lcom/google/android/gms/internal/ads/zzio;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzip;->zze()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
