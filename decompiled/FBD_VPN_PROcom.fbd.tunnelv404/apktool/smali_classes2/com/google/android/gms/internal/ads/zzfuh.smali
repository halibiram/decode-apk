.class final Lcom/google/android/gms/internal/ads/zzfuh;
.super Lcom/google/android/gms/internal/ads/zzgdb;
.source "SourceFile"


# instance fields
.field zza:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuh;->zza:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuh;->zza:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [J

    .line 9
    .line 10
    const-wide v2, 0x1e8b93c3cfbfab9dL

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    aput-wide v2, v1, v4

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuh;->zza:Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzc(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final zzd(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzd(Ljava/lang/Throwable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
