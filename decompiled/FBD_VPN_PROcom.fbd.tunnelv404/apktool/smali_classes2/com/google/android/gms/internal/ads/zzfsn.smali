.class public final Lcom/google/android/gms/internal/ads/zzfsn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Ljava/lang/Object;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/content/SharedPreferences;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfru;

.field private zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfru;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzfru;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Landroid/content/Context;

    .line 8
    .line 9
    add-int/lit8 p2, p2, -0x1

    .line 10
    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Ljava/lang/String;

    .line 16
    .line 17
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    new-array v1, v1, [J

    .line 21
    .line 22
    fill-array-data v1, :array_0

    .line 23
    .line 24
    .line 25
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Lcom/google/android/gms/internal/ads/zzfru;

    .line 39
    .line 40
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    .line 41
    .line 42
    return-void

    .line 43
    :array_0
    .array-data 8
        0x688805586c18e3c7L    # 3.507002902770028E195
        0x29bb63c6021c494cL
    .end array-data
.end method

.method private final zze(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v2, v2, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    .line 27
    new-instance v3, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v2

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        0x3cc35cd274107a9bL    # 5.374197271556724E-16
        0xd5ba139ee580b5bL
    .end array-data
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzayc;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/google/android/gms/internal/ads/zzayc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayf;->zze()Lcom/google/android/gms/internal/ads/zzaye;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaye;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzj()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaye;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaye;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayf;->zza()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzb(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayf;->zzd()J

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzd(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayf;->zzc()J

    .line 54
    .line 55
    .line 56
    move-result-wide v1

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaye;->zzc(J)Lcom/google/android/gms/internal/ads/zzaye;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgzp;->zzal()Lcom/google/android/gms/internal/ads/zzgzu;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/google/android/gms/internal/ads/zzayf;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxt;->zzax()[B

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method private final zzg()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x25aa6c12cd3da1a9L    # 3.049440697249235E-127
        -0x16602cef475026e9L    # -6.0900150020856044E200
    .end array-data
.end method

.method private final zzh()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Ljava/lang/String;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x1d3efc3b33dc079dL    # 8.210277387986032E-168
        0x6693165887d10141L    # 1.2976619561575216E186
    .end array-data
.end method

.method private final zzi(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Lcom/google/android/gms/internal/ads/zzfru;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfru;->zza(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final zzj(IJLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:Lcom/google/android/gms/internal/ads/zzfru;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfru;->zzb(IJLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final zzk(I)Lcom/google/android/gms/internal/ads/zzayf;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzh()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :goto_0
    if-nez p1, :cond_1

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgyl;->zzb:Lcom/google/android/gms/internal/ads/zzgyl;

    .line 38
    .line 39
    array-length v0, p1

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-static {p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgyl;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzf:Z

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzf;->zza()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgzf;->zzb()Lcom/google/android/gms/internal/ads/zzgzf;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzayf;->zzi(Lcom/google/android/gms/internal/ads/zzgyl;Lcom/google/android/gms/internal/ads/zzgzf;)Lcom/google/android/gms/internal/ads/zzayf;

    .line 59
    .line 60
    .line 61
    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzhag; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-object p1

    .line 63
    :catch_0
    const/16 p1, 0x7f0

    .line 64
    .line 65
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_1
    const/16 p1, 0x7ed

    .line 70
    .line 71
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 72
    .line 73
    .line 74
    :catch_2
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzayc;)Z
    .locals 7
    .param p1    # Lcom/google/android/gms/internal/ads/zzayc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zze(Ljava/lang/String;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    new-instance v4, Ljava/io/File;

    .line 21
    .line 22
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    new-array v6, v6, [J

    .line 26
    .line 27
    fill-array-data v6, :array_0

    .line 28
    .line 29
    .line 30
    invoke-direct {v5, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfsh;->zze(Ljava/io/File;[B)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    const/16 p1, 0xfb4

    .line 55
    .line 56
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 57
    .line 58
    .line 59
    monitor-exit v2

    .line 60
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzf(Lcom/google/android/gms/internal/ads/zzayc;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzh()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    .line 80
    .line 81
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    const/16 v3, 0x1397

    .line 88
    .line 89
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    const/16 v3, 0xfb5

    .line 94
    .line 95
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 96
    .line 97
    .line 98
    :goto_0
    monitor-exit v2

    .line 99
    return p1

    .line 100
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p1

    .line 102
    nop

    .line 103
    :array_0
    .array-data 8
        0x65591b0ec785230dL    # 1.6277573315893307E180
        0x7e1a0ddd5a5fc535L    # 2.72629447640408E299
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzayc;Lcom/google/android/gms/internal/ads/zzfsm;)Z
    .locals 16
    .param p1    # Lcom/google/android/gms/internal/ads/zzayc;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/ads/zzfsm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    sget-object v6, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v6

    .line 14
    :try_start_0
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 15
    .line 16
    .line 17
    move-result-object v7

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzd()Lcom/google/android/gms/internal/ads/zzayf;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    const/4 v9, 0x0

    .line 27
    if-eqz v7, :cond_0

    .line 28
    .line 29
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    const/16 v0, 0xfae

    .line 40
    .line 41
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 42
    .line 43
    .line 44
    monitor-exit v6

    .line 45
    return v9

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzfsn;->zze(Ljava/lang/String;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 58
    .line 59
    .line 60
    move-result v12

    .line 61
    const/16 v13, 0xfaf

    .line 62
    .line 63
    if-eqz v12, :cond_3

    .line 64
    .line 65
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    new-instance v14, Lcom/panda912/muddy/ObfuscatedString;

    .line 70
    .line 71
    new-array v15, v3, [J

    .line 72
    .line 73
    fill-array-data v15, :array_0

    .line 74
    .line 75
    .line 76
    invoke-direct {v14, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v14}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    new-instance v15, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    new-array v9, v3, [J

    .line 86
    .line 87
    fill-array-data v9, :array_1

    .line 88
    .line 89
    .line 90
    invoke-direct {v15, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    if-eq v2, v12, :cond_1

    .line 98
    .line 99
    move-object v14, v9

    .line 100
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v12, v3, [J

    .line 107
    .line 108
    fill-array-data v12, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {v9, v12}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 119
    .line 120
    new-array v15, v3, [J

    .line 121
    .line 122
    fill-array-data v15, :array_3

    .line 123
    .line 124
    .line 125
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v12

    .line 132
    if-eq v2, v7, :cond_2

    .line 133
    .line 134
    move-object v9, v12

    .line 135
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 141
    .line 142
    new-array v15, v3, [J

    .line 143
    .line 144
    fill-array-data v15, :array_4

    .line 145
    .line 146
    .line 147
    invoke-direct {v12, v15}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    new-instance v12, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v14, v3, [J

    .line 163
    .line 164
    fill-array-data v14, :array_5

    .line 165
    .line 166
    .line 167
    invoke-direct {v12, v14}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v12}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    const/16 v9, 0xfb7

    .line 185
    .line 186
    invoke-direct {v1, v9, v10, v11, v7}, Lcom/google/android/gms/internal/ads/zzfsn;->zzj(IJLjava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 190
    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    if-nez v9, :cond_5

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 204
    .line 205
    new-array v5, v3, [J

    .line 206
    .line 207
    fill-array-data v5, :array_6

    .line 208
    .line 209
    .line 210
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 218
    .line 219
    new-array v7, v3, [J

    .line 220
    .line 221
    fill-array-data v7, :array_7

    .line 222
    .line 223
    .line 224
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    if-eq v2, v0, :cond_4

    .line 232
    .line 233
    move-object v4, v5

    .line 234
    :cond_4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 235
    .line 236
    new-array v2, v3, [J

    .line 237
    .line 238
    fill-array-data v2, :array_8

    .line 239
    .line 240
    .line 241
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const/16 v2, 0xfb8

    .line 253
    .line 254
    invoke-direct {v1, v2, v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzj(IJLjava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-direct {v1, v13, v10, v11}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 258
    .line 259
    .line 260
    monitor-exit v6

    .line 261
    const/4 v0, 0x0

    .line 262
    return v0

    .line 263
    :cond_5
    :goto_0
    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzfsn;->zze(Ljava/lang/String;)Ljava/io/File;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    new-instance v8, Ljava/io/File;

    .line 268
    .line 269
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 270
    .line 271
    new-array v10, v3, [J

    .line 272
    .line 273
    fill-array-data v10, :array_9

    .line 274
    .line 275
    .line 276
    invoke-direct {v9, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    new-instance v9, Ljava/io/File;

    .line 287
    .line 288
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 289
    .line 290
    new-array v11, v3, [J

    .line 291
    .line 292
    fill-array-data v11, :array_a

    .line 293
    .line 294
    .line 295
    invoke-direct {v10, v11}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v10

    .line 302
    invoke-direct {v9, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzayc;->zzf()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    invoke-static {v8, v10}, Lcom/google/android/gms/internal/ads/zzfsh;->zze(Ljava/io/File;[B)Z

    .line 314
    .line 315
    .line 316
    move-result v10

    .line 317
    if-nez v10, :cond_6

    .line 318
    .line 319
    const/16 v0, 0xfb0

    .line 320
    .line 321
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 322
    .line 323
    .line 324
    monitor-exit v6

    .line 325
    const/4 v0, 0x0

    .line 326
    return v0

    .line 327
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzayc;->zze()Lcom/google/android/gms/internal/ads/zzgyl;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgyl;->zzA()[B

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfsh;->zze(Ljava/io/File;[B)Z

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    if-nez v9, :cond_7

    .line 340
    .line 341
    const/16 v0, 0xfb1

    .line 342
    .line 343
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 344
    .line 345
    .line 346
    monitor-exit v6

    .line 347
    const/4 v0, 0x0

    .line 348
    return v0

    .line 349
    :cond_7
    if-eqz v0, :cond_8

    .line 350
    .line 351
    invoke-interface {v0, v8}, Lcom/google/android/gms/internal/ads/zzfsm;->zza(Ljava/io/File;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-nez v0, :cond_8

    .line 356
    .line 357
    const/16 v0, 0xfb2

    .line 358
    .line 359
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 360
    .line 361
    .line 362
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfsh;->zzd(Ljava/io/File;)Z

    .line 363
    .line 364
    .line 365
    monitor-exit v6

    .line 366
    const/4 v0, 0x0

    .line 367
    return v0

    .line 368
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzf(Lcom/google/android/gms/internal/ads/zzayc;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 373
    .line 374
    .line 375
    move-result-wide v7

    .line 376
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 377
    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzh()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    const/4 v11, 0x0

    .line 383
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v9

    .line 387
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Landroid/content/SharedPreferences;

    .line 388
    .line 389
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 390
    .line 391
    .line 392
    move-result-object v10

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzh()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v11

    .line 397
    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    .line 399
    .line 400
    if-eqz v9, :cond_9

    .line 401
    .line 402
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfsn;->zzg()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 407
    .line 408
    .line 409
    :cond_9
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_a

    .line 414
    .line 415
    const/16 v0, 0xfb3

    .line 416
    .line 417
    invoke-direct {v1, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 418
    .line 419
    .line 420
    monitor-exit v6

    .line 421
    const/4 v0, 0x0

    .line 422
    return v0

    .line 423
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    .line 424
    .line 425
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 429
    .line 430
    .line 431
    move-result-object v7

    .line 432
    if-eqz v7, :cond_b

    .line 433
    .line 434
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    :cond_b
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    if-eqz v7, :cond_c

    .line 446
    .line 447
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    :cond_c
    new-instance v7, Ljava/io/File;

    .line 455
    .line 456
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:Landroid/content/Context;

    .line 457
    .line 458
    new-instance v9, Lcom/panda912/muddy/ObfuscatedString;

    .line 459
    .line 460
    new-array v3, v3, [J

    .line 461
    .line 462
    fill-array-data v3, :array_b

    .line 463
    .line 464
    .line 465
    invoke-direct {v9, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v9}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    const/4 v9, 0x0

    .line 473
    invoke-virtual {v8, v3, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzfsn;->zzd:Ljava/lang/String;

    .line 478
    .line 479
    invoke-direct {v7, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    array-length v7, v3

    .line 487
    :goto_1
    if-ge v9, v7, :cond_e

    .line 488
    .line 489
    aget-object v8, v3, v9

    .line 490
    .line 491
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v10

    .line 495
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v10

    .line 499
    if-nez v10, :cond_d

    .line 500
    .line 501
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfsh;->zzd(Ljava/io/File;)Z

    .line 502
    .line 503
    .line 504
    :cond_d
    add-int/2addr v9, v2

    .line 505
    goto :goto_1

    .line 506
    :cond_e
    const/16 v0, 0x1396

    .line 507
    .line 508
    invoke-direct {v1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 509
    .line 510
    .line 511
    monitor-exit v6

    .line 512
    return v2

    .line 513
    :goto_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    throw v0

    .line 515
    :array_0
    .array-data 8
        -0x31cc18f1c8ddbcf1L    # -5.365719739139077E68
        0xcf7a7ea774c7914L
    .end array-data

    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    :array_1
    .array-data 8
        -0x7b3be0c657f4e348L    # -1.057169674443129E-285
        0x4f1bfe7cd1ae3d30L    # 1.236531985910866E73
    .end array-data

    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    :array_2
    .array-data 8
        -0x26330bd95036bc3dL    # -3.828005265085E124
        -0x4795fb6c46e119aL
    .end array-data

    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    :array_3
    .array-data 8
        0x73ebc906002eaf31L    # 2.48668450776506E250
        0x564dcf711d7abb0bL    # 5.4695941671580323E107
    .end array-data

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
    :array_4
    .array-data 8
        -0x4084e3061d60bda0L    # -0.0066194306509293754
        0x2cd5249bb968b680L    # 1.0136032114134546E-92
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
    :array_5
    .array-data 8
        -0x30d94cb67622182L    # -7.352185244002778E293
        0x20a3e218cd4321c2L
    .end array-data

    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    :array_6
    .array-data 8
        0x515099b1bf20849bL    # 5.038909278574347E83
        -0x294a2c4975f73eefL    # -5.126164852942063E109
    .end array-data

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :array_7
    .array-data 8
        -0x25819665626bb341L    # -8.234751956803285E127
        0x3ce7b97170d1ae28L    # 2.6339360934218044E-15
    .end array-data

    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    :array_8
    .array-data 8
        -0x69467a95702dad26L    # -3.334135476767681E-199
        -0x5e83c73d194c420aL    # -2.207118611297785E-147
    .end array-data

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    :array_9
    .array-data 8
        0x3a18c20694950f6eL    # 7.81221983548784E-29
        0xfb3cc2dc6110318L
    .end array-data

    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    :array_a
    .array-data 8
        0x323877ee783599c0L    # 9.075864581233664E-67
        -0x4d27d333a4ff9bd0L    # -9.182211433843637E-64
    .end array-data

    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    :array_b
    .array-data 8
        0x4705e60cbbad6422L    # 1.4213024632416913E34
        0x158df2a9de4377b3L    # 7.462415059045312E-205
    .end array-data
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzfsf;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/16 p1, 0xfb6

    .line 17
    .line 18
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 19
    .line 20
    .line 21
    monitor-exit v2

    .line 22
    const/4 p1, 0x0

    .line 23
    return-object p1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzfsn;->zze(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v5, Ljava/io/File;

    .line 35
    .line 36
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v7, p1, [J

    .line 39
    .line 40
    fill-array-data v7, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    new-instance v5, Ljava/io/File;

    .line 60
    .line 61
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 62
    .line 63
    new-array v7, p1, [J

    .line 64
    .line 65
    fill-array-data v7, :array_1

    .line 66
    .line 67
    .line 68
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 79
    .line 80
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v8, p1, [J

    .line 83
    .line 84
    fill-array-data v8, :array_2

    .line 85
    .line 86
    .line 87
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance v7, Ljava/io/File;

    .line 98
    .line 99
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array p1, p1, [J

    .line 102
    .line 103
    fill-array-data p1, :array_3

    .line 104
    .line 105
    .line 106
    invoke-direct {v8, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-direct {v7, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/16 p1, 0x1398

    .line 117
    .line 118
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Lcom/google/android/gms/internal/ads/zzfsf;

    .line 122
    .line 123
    invoke-direct {p1, v3, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzfsf;-><init>(Lcom/google/android/gms/internal/ads/zzayf;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 124
    .line 125
    .line 126
    monitor-exit v2

    .line 127
    return-object p1

    .line 128
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p1

    .line 130
    nop

    .line 131
    :array_0
    .array-data 8
        -0x6692447fae7d1ce6L
        -0x19a6b3a57002f1acL    # -1.0749492302000107E185
    .end array-data

    .line 132
    .line 133
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
    :array_1
    .array-data 8
        -0x7486710a725c04b1L
        -0x3ef71bcccee4370cL    # -203910.39897877688
    .end array-data

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
    :array_2
    .array-data 8
        0x40e70ca019c861c7L    # 47205.00314730737
        0x3d251928493f7446L    # 3.747805793259511E-14
    .end array-data

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
    .line 166
    .line 167
    :array_3
    .array-data 8
        -0x1005720b4e303c22L    # -2.5766478099243945E231
        0x53ce0acf1c1eb41L
    .end array-data
.end method

.method public final zzd(I)Z
    .locals 9

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    const/4 v3, 0x1

    .line 10
    :try_start_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfsn;->zzk(I)Lcom/google/android/gms/internal/ads/zzayf;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x0

    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    const/16 p1, 0xfb9

    .line 18
    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 20
    .line 21
    .line 22
    monitor-exit v2

    .line 23
    return v5

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzayf;->zzk()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzfsn;->zze(Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    new-instance v6, Ljava/io/File;

    .line 35
    .line 36
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v8, p1, [J

    .line 39
    .line 40
    fill-array-data v8, :array_0

    .line 41
    .line 42
    .line 43
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    const/16 p1, 0xfba

    .line 60
    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 62
    .line 63
    .line 64
    monitor-exit v2

    .line 65
    return v5

    .line 66
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 67
    .line 68
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 69
    .line 70
    new-array p1, p1, [J

    .line 71
    .line 72
    fill-array-data p1, :array_1

    .line 73
    .line 74
    .line 75
    invoke-direct {v7, p1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {v6, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    const/16 p1, 0xfbb

    .line 92
    .line 93
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 94
    .line 95
    .line 96
    monitor-exit v2

    .line 97
    return v5

    .line 98
    :cond_2
    const/16 p1, 0x139b

    .line 99
    .line 100
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzi(IJ)V

    .line 101
    .line 102
    .line 103
    monitor-exit v2

    .line 104
    return v3

    .line 105
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p1

    .line 107
    :array_0
    .array-data 8
        -0x4943507b5c272ef0L    # -5.024638999732594E-45
        -0x57cf538166e7372dL    # -4.231715169424257E-115
    .end array-data

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    :array_1
    .array-data 8
        -0x21a4492b37870486L    # -3.460668588014324E146
        -0x7b788d98ae5e2840L    # -7.699089508989816E-287
    .end array-data
.end method
