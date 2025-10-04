.class public final Lcom/google/android/gms/internal/ads/zzbzi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zzA:I

.field private final zzB:Ljava/lang/String;

.field private zzC:Z

.field private zza:I

.field private zzb:Z

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:Z

.field private zzl:I

.field private zzm:D

.field private zzn:Z

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private final zzq:Z

.field private final zzr:Z

.field private final zzs:Ljava/lang/String;

.field private final zzt:Z

.field private final zzu:Z

.field private final zzv:Z

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/String;

.field private zzy:F

.field private zzz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zzc(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zze(Landroid/content/Context;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zzd(Landroid/content/Context;)V

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 7
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbzi;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzq:Z

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v7, v1, [J

    fill-array-data v7, :array_1

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbzi;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzr:Z

    .line 9
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzs:Ljava/lang/String;

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdv;->zzr()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzt:Z

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzu:Z

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzv:Z

    .line 14
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzw:Ljava/lang/String;

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x7

    new-array v4, v4, [J

    fill-array-data v4, :array_2

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzbzi;->zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    :catch_0
    :cond_2
    :goto_2
    move-object v2, v3

    goto :goto_3

    .line 16
    :cond_3
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 18
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v0, [J

    fill-array-data v6, :array_3

    invoke-direct {v4, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzx:Ljava/lang/String;

    .line 20
    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2

    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_4

    invoke-direct {v4, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x80

    .line 21
    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v0, v0, [J

    fill-array-data v0, :array_5

    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_5
    :goto_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzB:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_5

    .line 24
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 25
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzy:F

    .line 26
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzz:I

    .line 27
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzA:I

    :cond_7
    :goto_5
    return-void

    :array_0
    .array-data 8
        0x6cbbdf9e81433b20L    # 6.005492243635111E215
        -0x1766547fff74484dL    # -7.495519639174856E195
        -0x5935958780482741L    # -7.992031662802888E-122
    .end array-data

    :array_1
    .array-data 8
        -0x1c47c388a15a49eeL    # -2.3415422636807856E172
        0x72cefba6b145ff6cL    # 1.0577672858922064E245
        -0x1f10812a1ad984dfL    # -8.64839601020358E158
        0x29627067d02f6714L    # 2.453527482230354E-109
    .end array-data

    :array_2
    .array-data 8
        -0x528a3230f333de28L    # -1.0703758222942474E-89
        -0x32d177a7ce71addfL    # -6.280190676994556E63
        -0x38b3faeaa8d393fbL    # -2.9097482971460986E35
        -0x212935cdca649defL    # -7.285157325030764E148
        -0x76cef826039f6fa0L
        -0x75dce352e68b281fL    # -7.7689129906745E-260
        0x623ee205e4addf69L    # 1.778425801371613E165
    .end array-data

    :array_3
    .array-data 8
        -0x74db89b25df2d9c8L    # -5.4511025555782E-255
        0x23a003470a608207L    # 4.302880998371738E-137
    .end array-data

    :array_4
    .array-data 8
        -0x34953a8530fa36a6L    # -2.0513529516566635E55
        -0x6ab5c8f96904f9d7L
        0x2bb9c0e2eb5b255L
        0x5255cb24c31a2cdbL    # 4.335371488364916E88
    .end array-data

    :array_5
    .array-data 8
        -0x567a870e60d87e29L    # -1.142859672419706E-108
        0x535ae43ad773046L    # 1.4580009181210603E-283
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzj;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgc;->zza(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zzc(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zze(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbzi;->zzd(Landroid/content/Context;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzo:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzp:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbhd;->zzg(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzC:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zza:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzq:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzb:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzr:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzs:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zze:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzt:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzu:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzv:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzw:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzi:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzx:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzB:Ljava/lang/String;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzm:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzy:F

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzn:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzz:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzbzj;->zzo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzA:I

    return-void
.end method

.method private static zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x5

    .line 2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v3, v0, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    .line 24
    .line 25
    const/high16 p1, 0x10000

    .line 26
    .line 27
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-object p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v0, v0, [J

    .line 36
    .line 37
    fill-array-data v0, :array_1

    .line 38
    .line 39
    .line 40
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    return-object p0

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x3548b75678fba6d0L    # 5.160975688695338E-52
        -0x1080a6dcb3725681L    # -1.188199211364808E229
        0x2eccd4df738b79bbL    # 2.9682396946127832E-83
        0x2678b4f7cb354e45L
        -0x35b97303e49b759bL    # -6.591583380645829E49
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
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
    .line 80
    .line 81
    :array_1
    .array-data 8
        -0x583b4d242bd1fa0aL
        0x6b0f8f38ae4a9465L    # 5.0661328545255125E207
        0x2ac30d0c7da4c7b6L    # 1.063233428214854E-102
        0xb830af6bf6950d7L
        -0xad50f0517d722efL
    .end array-data
.end method

.method private final zzc(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/media/AudioManager;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zza:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzb:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzc:Z

    .line 41
    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzd:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zze:I

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 64
    .line 65
    const/4 v2, 0x5

    .line 66
    new-array v2, v2, [J

    .line 67
    .line 68
    fill-array-data v2, :array_1

    .line 69
    .line 70
    .line 71
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v2, p1, v0}, Lcom/google/android/gms/internal/ads/zzcdl;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    const/4 p1, -0x2

    .line 86
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zza:I

    .line 87
    .line 88
    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzb:Z

    .line 90
    .line 91
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzc:Z

    .line 92
    .line 93
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzd:I

    .line 94
    .line 95
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zze:I

    .line 96
    .line 97
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzf:I

    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :array_0
    .array-data 8
        -0x3cdc9b14227e65abL    # -2.7294943769265065E15
        0x582ae6b70c0c4291L    # 5.299812269331159E116
    .end array-data

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
        0x26aeb4e46194975cL
        0x6f03f6451945d224L    # 5.911131577565054E226
        -0x6ead0f97cd4188a9L
        -0x31fb4b7b9227b3d4L    # -6.977620300096415E67
        -0x5956b6cc46c21c1bL
    .end array-data
.end method

.method private final zzd(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Landroid/content/IntentFilter;

    .line 3
    .line 4
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v3, 0x6

    .line 7
    new-array v3, v3, [J

    .line 8
    .line 9
    fill-array-data v3, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zzkw:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x21

    .line 43
    .line 44
    if-lt v2, v3, :cond_0

    .line 45
    .line 46
    invoke-static {p1, v1}, L땸뒵돵딃땀된될땐땫돰땠땦돨됩딃디따땝뒐뒐땨땻뎠돠돨됩땻됩득뒷땹딸딹땋땹땹된뒬딹뎡딄뒋뒐뎽뎸돳땄땃따뎨듌뒬뒛땅딜뒀듼됩땅딞뎰땥뒀뒨뎬딃됩땬딸뒀돶돠뎠돤돴돳땃든뒙듰뒹땳드뒈땰딐땁둔된둘땋든듌딝땵뎹땵땳딸둡딐땭듻땮뒻딟딞됴도돴딻뎸돰듸돴땬땵땜딸돶듨돠돶땨땣땮따땱땻뒋;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(Landroid/content/Context;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    const/4 v1, 0x0

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 60
    .line 61
    new-array v3, v0, [J

    .line 62
    .line 63
    fill-array-data v3, :array_1

    .line 64
    .line 65
    .line 66
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v3, -0x1

    .line 74
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 79
    .line 80
    new-array v5, v0, [J

    .line 81
    .line 82
    fill-array-data v5, :array_2

    .line 83
    .line 84
    .line 85
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v6, v0, [J

    .line 99
    .line 100
    fill-array-data v6, :array_3

    .line 101
    .line 102
    .line 103
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    int-to-float v3, v4

    .line 115
    int-to-float p1, p1

    .line 116
    div-float/2addr v3, p1

    .line 117
    float-to-double v3, v3

    .line 118
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzm:D

    .line 119
    .line 120
    const/4 p1, 0x1

    .line 121
    if-eq v2, v0, :cond_1

    .line 122
    .line 123
    const/4 v0, 0x5

    .line 124
    if-ne v2, v0, :cond_2

    .line 125
    .line 126
    :cond_1
    const/4 v1, 0x1

    .line 127
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzn:Z

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 131
    .line 132
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzm:D

    .line 133
    .line 134
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzn:Z

    .line 135
    .line 136
    return-void

    .line 137
    :array_0
    .array-data 8
        -0x59e5f205111696c7L
        0x30bf03fd954c23efL    # 6.8571096796387E-74
        -0x6b13acae0426f356L    # -6.892711885075738E-208
        0x1cea665d7cbec627L    # 2.186020042649965E-169
        -0x2bc4543b4c5f67d1L    # -5.9104833574294E97
        0x680820f6091ce92L
    .end array-data

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
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        0x10a5968285d6d230L
        0x4c7a7dfbd0fb3f8aL    # 2.6607000866371464E60
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    :array_2
    .array-data 8
        -0xc724aa83c74a115L
        -0x5d5dfbeae1f181bfL    # -7.387017909259035E-142
    .end array-data

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_3
    .array-data 8
        -0x3b83f6fa43bcb970L    # -8.2745434685156E21
        -0x65b7613cb16cb1edL    # -4.635361804332476E-182
    .end array-data
.end method

.method private final zze(Landroid/content/Context;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 21
    .line 22
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    new-array v2, v2, [J

    .line 26
    .line 27
    fill-array-data v2, :array_1

    .line 28
    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzg:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastR()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v3, 0x0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbgc;->zziu:Lcom/google/android/gms/internal/ads/zzbfu;

    .line 57
    .line 58
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbga;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbga;->zza(Lcom/google/android/gms/internal/ads/zzbfu;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_0

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    :goto_0
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzi:I

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzj:I

    .line 87
    .line 88
    const/4 v0, -0x2

    .line 89
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzh:I

    .line 90
    .line 91
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzk:Z

    .line 92
    .line 93
    const/4 v0, -0x1

    .line 94
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzl:I

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    .line 97
    .line 98
    .line 99
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    const/4 v3, 0x6

    .line 102
    new-array v3, v3, [J

    .line 103
    .line 104
    fill-array-data v3, :array_2

    .line 105
    .line 106
    .line 107
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {p1, v2}, Lcom/google/android/gms/ads/internal/util/zzt;->zzz(Landroid/content/Context;Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_2

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_1

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzh:I

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzl:I

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzh:I

    .line 144
    .line 145
    :goto_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbzi;->zzk:Z

    .line 150
    .line 151
    :cond_2
    return-void

    .line 152
    nop

    .line 153
    :array_0
    .array-data 8
        0x7c207eea17571970L    # 8.037817783779549E289
        0x7773209e3894d150L    # 2.4670186398799816E267
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_1
    .array-data 8
        -0x159d7b851ea65de0L    # -2.902882295218402E204
        -0x69ca241de01f1b8eL    # -1.115505195279946E-201
        -0x385f543ba26dedecL    # -1.1079756730538103E37
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 8
        0x12156690537286eeL
        -0x2b0bf78ae5bb697L
        0x3b784020cc7979edL    # 3.2095270132106264E-22
        -0x4586518b8af4ba55L    # -5.186330452386895E-27
        -0x197f13f5c815934aL    # -5.752277464075765E185
        -0x1ada71eefd7e023bL    # -1.7469255540189764E179
    .end array-data
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbzj;
    .locals 35

    move-object/from16 v0, p0

    new-instance v32, Lcom/google/android/gms/internal/ads/zzbzj;

    move-object/from16 v1, v32

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zza:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzq:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzr:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzg:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzs:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzt:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzu:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzv:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzb:Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzc:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzw:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzx:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzB:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzd:I

    move-object/from16 v33, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzh:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzi:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzj:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zze:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzf:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzy:F

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzz:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzA:I

    move/from16 v23, v1

    move/from16 v34, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzm:D

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzn:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzk:Z

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzl:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzo:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzC:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbzi;->zzp:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/internal/ads/zzbzj;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v32
.end method
