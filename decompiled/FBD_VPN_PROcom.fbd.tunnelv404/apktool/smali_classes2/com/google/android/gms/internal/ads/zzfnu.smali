.class public final Lcom/google/android/gms/internal/ads/zzfnu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzemh;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfgz;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfha;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzavi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzemh;Lcom/google/android/gms/internal/ads/zzcei;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfgz;Lcom/google/android/gms/internal/ads/zzfha;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzavi;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/internal/ads/zzfgz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzfha;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzcei;->zza:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zze:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzf:Lcom/google/android/gms/internal/ads/zzfgz;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzg:Lcom/google/android/gms/internal/ads/zzfha;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzh:Lcom/google/android/gms/common/util/Clock;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzi:Lcom/google/android/gms/internal/ads/zzavi;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzfgz;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgz;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfnu;->zzi(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfgz;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfgz;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfnu;->zzi(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final zzf(IILjava/util/List;)Ljava/util/List;
    .locals 5

    .line 1
    const/4 p0, 0x2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    new-array v4, p0, [J

    .line 31
    .line 32
    fill-array-data v4, :array_0

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 36
    .line 37
    .line 38
    invoke-static {v3, v2, p1}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    new-array v4, p0, [J

    .line 45
    .line 46
    fill-array-data v4, :array_1

    .line 47
    .line 48
    .line 49
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-object v0

    .line 65
    :array_0
    .array-data 8
        -0x3e31fcfe38f26fffL    # -1.0070270861059572E9
        -0x5759970bacbd890bL    # -7.280028289480932E-113
    .end array-data

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
    :array_1
    .array-data 8
        -0x14aaa1ed3c693f61L    # -1.0976153920511123E209
        -0xef5808ab4dbab33L    # -3.3700612958201704E236
    .end array-data
.end method

.method public static final zzg(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v3, 0x3

    .line 25
    new-array v3, v3, [J

    .line 26
    .line 27
    fill-array-data v3, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0

    .line 46
    nop

    .line 47
    :array_0
    .array-data 8
        -0x5a1846af0ea451b5L
        -0x52f8e97c42cc8dd5L    # -8.854757271583219E-92
        -0x77e4c916bb0a3fb6L
    .end array-data
.end method

.method public static final zzh(Ljava/util/List;J)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    invoke-static {p1, p2, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 29
    .line 30
    const/4 v4, 0x2

    .line 31
    new-array v4, v4, [J

    .line 32
    .line 33
    fill-array-data v4, :array_0

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-object v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x2becf4053eee657aL    # 4.235922982857721E-97
        -0x529ee587b2d17a4cL    # -4.198109005873675E-90
    .end array-data
.end method

.method private static zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    const-wide v1, -0x244244f8bc38c7eL

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-wide v1, v0, v3

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzceb;->zzk()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    const/4 v0, 0x4

    .line 37
    new-array v0, v0, [J

    .line 38
    .line 39
    fill-array-data v0, :array_0

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    :cond_1
    return-object p0

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x98035d7e6c2f202L    # -6.256368424297314E262
        0x51c03ccd77fa0efdL    # 6.308821191686712E85
        0x12669a11b953500L
        0x92f765b27307f49L
    .end array-data
.end method

.method private static zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    const-wide v1, -0x1a7b1bf25985c58dL    # -1.0835854746458278E181

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-wide v1, v0, v3

    .line 19
    .line 20
    invoke-direct {p2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;Ljava/util/List;)Ljava/util/List;
    .locals 13

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    const-wide v3, 0x225768a916f79835L    # 2.9994510739094396E-143

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    aput-wide v3, v2, v5

    .line 13
    .line 14
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v1, v1, [J

    .line 24
    .line 25
    const-wide v2, -0x44542c15a76f6ab9L    # -2.946382357919265E-21

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    aput-wide v2, v1, v5

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v11

    .line 39
    const/4 v9, 0x0

    .line 40
    move-object v6, p0

    .line 41
    move-object v7, p1

    .line 42
    move-object v8, p2

    .line 43
    move-object/from16 v12, p3

    .line 44
    .line 45
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzfnu;->zzd(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzfgy;Lcom/google/android/gms/internal/ads/zzfgm;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p2    # Lcom/google/android/gms/internal/ads/zzfgm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x3

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p6

    .line 13
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_7

    .line 18
    .line 19
    if-eq v0, p3, :cond_0

    .line 20
    .line 21
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 22
    .line 23
    new-array v5, v1, [J

    .line 24
    .line 25
    fill-array-data v5, :array_0

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v5, v1, [J

    .line 39
    .line 40
    fill-array-data v5, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfgy;->zza:Lcom/google/android/gms/internal/ads/zzfgv;

    .line 57
    .line 58
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfgv;->zza:Lcom/google/android/gms/internal/ads/zzfhh;

    .line 59
    .line 60
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 61
    .line 62
    new-array v8, v2, [J

    .line 63
    .line 64
    fill-array-data v8, :array_2

    .line 65
    .line 66
    .line 67
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfhh;->zzf:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    const/4 v7, 0x4

    .line 83
    new-array v7, v7, [J

    .line 84
    .line 85
    fill-array-data v7, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzb:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v7, v2, [J

    .line 104
    .line 105
    fill-array-data v7, :array_4

    .line 106
    .line 107
    .line 108
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-eqz p2, :cond_1

    .line 120
    .line 121
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 122
    .line 123
    new-array v6, v2, [J

    .line 124
    .line 125
    fill-array-data v6, :array_5

    .line 126
    .line 127
    .line 128
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzz:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 142
    .line 143
    new-array v6, v2, [J

    .line 144
    .line 145
    fill-array-data v6, :array_6

    .line 146
    .line 147
    .line 148
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzy:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v6, v2, [J

    .line 164
    .line 165
    fill-array-data v6, :array_7

    .line 166
    .line 167
    .line 168
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzx:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zze:Landroid/content/Context;

    .line 182
    .line 183
    iget-boolean v6, p2, Lcom/google/android/gms/internal/ads/zzfgm;->zzX:Z

    .line 184
    .line 185
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzccj;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    :cond_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    .line 190
    .line 191
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 192
    .line 193
    new-array v7, v2, [J

    .line 194
    .line 195
    fill-array-data v7, :array_8

    .line 196
    .line 197
    .line 198
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzemh;->zzg()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zza:Lcom/google/android/gms/internal/ads/zzemh;

    .line 214
    .line 215
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzemh;->zza()J

    .line 216
    .line 217
    .line 218
    move-result-wide v5

    .line 219
    const/16 v7, 0xa

    .line 220
    .line 221
    invoke-static {v5, v6, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 226
    .line 227
    new-array v7, v1, [J

    .line 228
    .line 229
    fill-array-data v7, :array_9

    .line 230
    .line 231
    .line 232
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzc:Ljava/lang/String;

    .line 244
    .line 245
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 246
    .line 247
    new-array v7, v2, [J

    .line 248
    .line 249
    fill-array-data v7, :array_a

    .line 250
    .line 251
    .line 252
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzd:Ljava/lang/String;

    .line 264
    .line 265
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 266
    .line 267
    new-array v7, v2, [J

    .line 268
    .line 269
    fill-array-data v7, :array_b

    .line 270
    .line 271
    .line 272
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbgc;->zzdp:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 284
    .line 285
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v5, Ljava/lang/Boolean;

    .line 294
    .line 295
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    const/4 v6, 0x0

    .line 300
    if-eqz v5, :cond_2

    .line 301
    .line 302
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    if-nez v5, :cond_2

    .line 307
    .line 308
    const/4 v6, 0x1

    .line 309
    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    xor-int/lit8 v7, v5, 0x1

    .line 314
    .line 315
    if-nez v6, :cond_3

    .line 316
    .line 317
    if-nez v5, :cond_6

    .line 318
    .line 319
    const/4 v7, 0x1

    .line 320
    :cond_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfnu;->zzi:Lcom/google/android/gms/internal/ads/zzavi;

    .line 325
    .line 326
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzavi;->zzf(Landroid/net/Uri;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-eqz v5, :cond_6

    .line 331
    .line 332
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v4

    .line 340
    if-eqz v6, :cond_4

    .line 341
    .line 342
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 343
    .line 344
    new-array v6, v1, [J

    .line 345
    .line 346
    fill-array-data v6, :array_c

    .line 347
    .line 348
    .line 349
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v5

    .line 356
    invoke-virtual {v4, v5, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    :cond_4
    if-eqz v7, :cond_5

    .line 361
    .line 362
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 363
    .line 364
    new-array v6, v1, [J

    .line 365
    .line 366
    fill-array-data v6, :array_d

    .line 367
    .line 368
    .line 369
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v5

    .line 376
    invoke-virtual {v4, v5, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_7
    return-object v3

    .line 394
    nop

    .line 395
    :array_0
    .array-data 8
        0x2fd266a9d1f54ffdL    # 2.483037279230387E-78
        -0x36a952fc13bd639cL    # -2.0227526188985583E45
    .end array-data

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :array_1
    .array-data 8
        0x47c252b8f25f4434L    # 4.871124686518854E37
        0x58d54463b33a63a3L    # 8.580794679380006E119
    .end array-data

    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    :array_2
    .array-data 8
        -0x46021fe474fe3570L    # -2.3567551080233436E-29
        0x1ddbefc3d848be57L    # 7.58011258612091E-165
        0x699736524c6febd1L    # 4.441946337775419E200
    .end array-data

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_3
    .array-data 8
        0x393f730660e56aecL    # 6.0569179565496116E-33
        -0x16ef78a6b73dd14bL    # -1.235537758682172E198
        -0x64f32026e3c6373dL    # -2.226720193067523E-178
        0x3f5aa9cd6a3d4b62L    # 0.0016273981099927605
    .end array-data

    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    :array_4
    .array-data 8
        0x3b1293ed9614d19bL    # 3.8418081008630165E-24
        0x3ef59acd0df94f2cL    # 2.0603839287438422E-5
        -0x7d2b3bbe7587ecd7L    # -5.080543569196405E-295
    .end array-data

    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    :array_5
    .array-data 8
        -0x1f728609143e37eaL    # -1.2646855391204762E157
        -0x12e24ec439d891aL
        0x5c7024a45c62aa49L    # 1.8773526652900718E137
    .end array-data

    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :array_6
    .array-data 8
        0x3130ca4a85a73b4dL    # 9.502916212417642E-72
        -0x2fb03ae80cc3f052L    # -7.3574054275076115E78
        0x34e1397e00f6e529L    # 5.619781087641672E-54
    .end array-data

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    :array_7
    .array-data 8
        -0x34ad32efafdb1d00L    # -7.203123723877244E54
        -0x70239518d19639f2L
        0x48c11b22d5fcabafL    # 2.980285579165293E42
    .end array-data

    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    :array_8
    .array-data 8
        -0x77c83a28153ee98L    # -3.294157577404425E272
        0x1387cc539bff9919L
        -0x686f3c0652ac7718L    # -3.588558803727726E-195
    .end array-data

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    :array_9
    .array-data 8
        0x61020c154c16ba26L    # 1.9822460179951115E159
        0x2f1ad6dc4e869bd8L
    .end array-data

    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    :array_a
    .array-data 8
        -0x552f479fde611ba7L    # -1.866308304338331E-102
        -0x1d7bcbf87456a93aL    # -3.722962360004722E166
        0x74db3a15a642b6dL
    .end array-data

    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    :array_b
    .array-data 8
        -0x7ac05be1e2e3a49L    # -4.221615921674846E271
        -0x68196eb91e9139d8L
        -0x5560cd81193d4d0dL
    .end array-data

    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    :array_c
    .array-data 8
        -0x6f2dc5e2b54aa5f4L    # -1.202205486518997E-227
        0x13ba90dfeb5bb5daL
    .end array-data

    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    :array_d
    .array-data 8
        -0x26d7c1be873f9058L    # -3.130098271611297E121
        -0x4e1863cc6a932c2bL    # -2.736717453043087E-68
    .end array-data
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfgm;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbzu;)Ljava/util/List;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfnu;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 11
    .line 12
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v5

    .line 16
    :try_start_0
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbzu;->zzc()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v7

    .line 20
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzbzu;->zzb()I

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbgc;->zzdq:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 29
    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    check-cast v9, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_1

    .line 45
    .line 46
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfnu;->zzg:Lcom/google/android/gms/internal/ads/zzfha;

    .line 47
    .line 48
    if-nez v9, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwz;->zzc()Lcom/google/android/gms/internal/ads/zzfwz;

    .line 51
    .line 52
    .line 53
    move-result-object v9

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfha;->zza:Lcom/google/android/gms/internal/ads/zzfgz;

    .line 56
    .line 57
    :goto_0
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwz;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfnu;->zzf:Lcom/google/android/gms/internal/ads/zzfgz;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    sget-object v10, Lcom/google/android/gms/internal/ads/zzfns;->zza:Lcom/google/android/gms/internal/ads/zzfns;

    .line 66
    .line 67
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzfwz;->zza(Lcom/google/android/gms/internal/ads/zzfws;)Lcom/google/android/gms/internal/ads/zzfwz;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 72
    .line 73
    new-array v12, v2, [J

    .line 74
    .line 75
    const-wide v13, 0x3a62d40d4bb3752aL    # 1.9011752668629204E-27

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    aput-wide v13, v12, v0

    .line 81
    .line 82
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzfwz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    check-cast v10, Ljava/lang/String;

    .line 94
    .line 95
    sget-object v11, Lcom/google/android/gms/internal/ads/zzfnt;->zza:Lcom/google/android/gms/internal/ads/zzfnt;

    .line 96
    .line 97
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzfwz;->zza(Lcom/google/android/gms/internal/ads/zzfws;)Lcom/google/android/gms/internal/ads/zzfwz;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 102
    .line 103
    new-array v2, v2, [J

    .line 104
    .line 105
    const-wide v12, -0x4b1b561f1944cb58L    # -6.74181014573465E-54

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    aput-wide v12, v2, v0

    .line 111
    .line 112
    invoke-direct {v11, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzfwz;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_2

    .line 134
    .line 135
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    check-cast v9, Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 146
    .line 147
    new-array v13, v3, [J

    .line 148
    .line 149
    fill-array-data v13, :array_0

    .line 150
    .line 151
    .line 152
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v9

    .line 163
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 168
    .line 169
    const/4 v13, 0x4

    .line 170
    new-array v13, v13, [J

    .line 171
    .line 172
    fill-array-data v13, :array_1

    .line 173
    .line 174
    .line 175
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v12

    .line 182
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v9

    .line 186
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 191
    .line 192
    new-array v13, v3, [J

    .line 193
    .line 194
    fill-array-data v13, :array_2

    .line 195
    .line 196
    .line 197
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 213
    .line 214
    new-array v13, v3, [J

    .line 215
    .line 216
    fill-array-data v13, :array_3

    .line 217
    .line 218
    .line 219
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    new-instance v11, Lcom/panda912/muddy/ObfuscatedString;

    .line 231
    .line 232
    new-array v12, v3, [J

    .line 233
    .line 234
    fill-array-data v12, :array_4

    .line 235
    .line 236
    .line 237
    invoke-direct {v11, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v11}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-static {v9, v11, v8}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfnu;->zzb:Ljava/lang/String;

    .line 249
    .line 250
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 251
    .line 252
    new-array v13, v3, [J

    .line 253
    .line 254
    fill-array-data v13, :array_5

    .line 255
    .line 256
    .line 257
    invoke-direct {v12, v13}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v12

    .line 264
    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfnu;->zzj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfnu;->zze:Landroid/content/Context;

    .line 269
    .line 270
    move-object/from16 v12, p1

    .line 271
    .line 272
    iget-boolean v13, v12, Lcom/google/android/gms/internal/ads/zzfgm;->zzX:Z

    .line 273
    .line 274
    invoke-static {v9, v11, v13}, Lcom/google/android/gms/internal/ads/zzccj;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :cond_2
    return-object v4

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 286
    .line 287
    const/4 v3, 0x7

    .line 288
    new-array v3, v3, [J

    .line 289
    .line 290
    fill-array-data v3, :array_6

    .line 291
    .line 292
    .line 293
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    return-object v4

    .line 304
    nop

    .line 305
    :array_0
    .array-data 8
        -0x64c3aee4787a8f33L
        -0x1dcd024a4e3ac4e2L    # -1.093620651574941E165
        0x2a601eeb911a558L    # 6.73016862978303E-296
    .end array-data

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    :array_1
    .array-data 8
        0x241e93d8134d07deL
        -0x373fc13a9780253cL    # -2.830312964329007E42
        0x5679cde27f235b69L    # 3.787646884297062E108
        0x3a0ab69f925fab42L    # 4.214627022178546E-29
    .end array-data

    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    :array_2
    .array-data 8
        0x82197c06c4bd60fL
        -0x56224e7488c0f7dcL
        0x1a7e36198954ac6L
    .end array-data

    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    :array_3
    .array-data 8
        0x782ccde505af13edL    # 7.60857070283053E270
        -0x2a5c340dccada21cL    # -3.547158006649325E104
        0x436a7a4fadbc990bL    # 5.9622656242403416E16
    .end array-data

    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    :array_4
    .array-data 8
        -0x666bac8685a5858L    # -5.599481110761348E277
        0x5ccf0b912963caebL    # 1.1553198974029028E139
        -0x654ac1da5149f379L    # -5.119335531139758E-180
    .end array-data

    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    :array_5
    .array-data 8
        0x1d324fda3c04c420L    # 4.8521743679708E-168
        0x3904f4d006cbd0daL    # 5.0450455270966845E-34
        0x4dc9acb2fe912840L    # 5.4077032411874105E66
    .end array-data

    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    :array_6
    .array-data 8
        -0xa0f5c9f36b82a6eL
        -0x39eb6f3c60d854a5L    # -4.0734139595560664E29
        0x39ce0a6adf01272dL    # 2.9622410562437618E-30
        0x4e83431cc529acf9L    # 1.6617815858494525E70
        0x5a7a83643b43abb6L    # 7.178953092738385E127
        -0x4cdee0fe60cb5db8L    # -2.080956679458201E-62
        0x7cd5349759b7ddaL
    .end array-data
.end method
