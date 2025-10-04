.class public abstract Lcom/google/android/gms/internal/ads/zzazr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static zzb:Ljava/security/MessageDigest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field protected final zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazr;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/security/MessageDigest;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazr;->zza:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzazr;->zzb:Ljava/security/MessageDigest;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    return-object v2

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v0, :cond_1

    .line 15
    .line 16
    :try_start_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 17
    .line 18
    new-array v4, v0, [J

    .line 19
    .line 20
    fill-array-data v4, :array_0

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sput-object v3, Lcom/google/android/gms/internal/ads/zzazr;->zzb:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    :catch_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazr;->zzb:Ljava/security/MessageDigest;

    .line 40
    .line 41
    monitor-exit v1

    .line 42
    return-object v0

    .line 43
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw v0

    .line 45
    :array_0
    .array-data 8
        -0x6bf47ffd5011e9e0L
        -0x60b2f0df77a2f718L
    .end array-data
.end method

.method public abstract zzb(Ljava/lang/String;)[B
.end method
