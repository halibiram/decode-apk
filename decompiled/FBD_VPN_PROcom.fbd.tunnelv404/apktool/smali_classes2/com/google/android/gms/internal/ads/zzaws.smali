.class public final Lcom/google/android/gms/internal/ads/zzaws;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:[Ljava/lang/String;


# instance fields
.field private zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x5

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zza:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x24522d510c3e9dbcL    # -4.2336910613105674E133
        0xab3ed86f03c2803L
        -0x5a611ed86eb4917cL
        0x2a133eeb2f51cdfdL    # 5.244655480091298E-106
        -0x41f3716379d64f7L    # -5.111666082647082E288
    .end array-data

    :array_1
    .array-data 8
        0x359b960b5053e931L    # 1.843279541411107E-50
        -0x4929c9669624983bL    # -1.5563716457781592E-44
        0x4bc262df94e34f92L    # 9.016578055252184E56
        0x1dbf3d5d8dc34e17L    # 2.119089843550447E-165
        -0x71567ac313d22c84L    # -4.898938090618396E-238
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;[Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzc:J

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:J

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zze:Z

    .line 16
    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 18
    .line 19
    const/16 v1, 0x1e

    .line 20
    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawr;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzawr;-><init>(Lcom/google/android/gms/internal/ads/zzaws;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/app/AppOpsManager;

    .line 49
    .line 50
    invoke-static {p1, p3, p2, v0}, L땲땝땤둠땀뎸땠딁듟둡땪땋땰땨딀돼뒉땀땟듬땡뒨듔땯뒨딟뒙땅땟뒷땦따듌듨딌땝둥땰두듻뒵뒨땡돶뒈듨따딎들뎸뎨돝듸될둠돤듬뒙뒉듐땀든땲듬둡뒘땀듽딨뎸딸듻땝땥딻뎹도땳돤땱둥따둔땬딀됫뒻되뎸딅돸둔돝땬땠땮땳딸돨땟뎰뒹듼땍뎨딌뎸딤돨둣땮땜디듰딟땡딹딻딟뒼된뒬뒈딐되둠듟듼드듽;->뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두(Landroid/app/AppOpsManager;[Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :catch_0
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 8
        0x5401d7849e3e8b0fL    # 4.763749667458893E96
        0x4207094599ae3fe3L    # 1.2367475509781195E10
    .end array-data
.end method

.method public static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaws;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzc:J

    return-wide v0
.end method

.method public static zzd(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzaws;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaws;->zza:[Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaws;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaws;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;[Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v1
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzaws;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:J

    return-void
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaws;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zze:Z

    return-void
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzaws;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:J

    return-void
.end method


# virtual methods
.method public final zzb()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzd:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zze:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzb:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zzh()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zze:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzc:J

    .line 10
    .line 11
    :cond_0
    return-void
.end method
