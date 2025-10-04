.class public Lcom/google/android/gms/ads/VersionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zza:I

.field protected final zzb:I

.field protected final zzc:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    iput p2, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    iput p3, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    return v0
.end method

.method public getMicroVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/ads/VersionInfo;->zza:I

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/google/android/gms/ads/VersionInfo;->zzb:I

    .line 10
    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, p0, Lcom/google/android/gms/ads/VersionInfo;->zzc:I

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    aput-object v1, v4, v5

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    aput-object v2, v4, v1

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    aput-object v3, v4, v1

    .line 32
    .line 33
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    new-array v1, v1, [J

    .line 36
    .line 37
    fill-array-data v1, :array_0

    .line 38
    .line 39
    .line 40
    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    nop

    .line 53
    :array_0
    .array-data 8
        0x31279c5d911cdb20L    # 6.681620381143843E-72
        0x46ab073d444784d9L    # 2.740993087832442E32
    .end array-data
.end method
