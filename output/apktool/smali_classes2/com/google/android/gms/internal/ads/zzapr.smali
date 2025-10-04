.class public final Lcom/google/android/gms/internal/ads/zzapr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzapp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzapp;-><init>(Lcom/google/android/gms/internal/ads/zzapr;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapr;->zza:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqj;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

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
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaqg;->zza(Lcom/google/android/gms/internal/ads/zzaqj;)Lcom/google/android/gms/internal/ads/zzaqg;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqg;Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zza:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    check-cast p1, Lcom/google/android/gms/internal/ads/zzapp;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzapp;->zza:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :array_0
    .array-data 8
        -0x390936475b713644L    # -7.395120258010285E33
        0x7ac3c042cd2311c1L    # 2.2945390366774134E283
        0x7c8e3380472d109bL    # 9.418238232891974E291
    .end array-data
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqg;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqa;->zzq()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqa;->zzm(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    .line 23
    .line 24
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lcom/google/android/gms/internal/ads/zzaqa;Lcom/google/android/gms/internal/ads/zzaqg;Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapr;->zza:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    check-cast p1, Lcom/google/android/gms/internal/ads/zzapp;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzapp;->zza:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :array_0
    .array-data 8
        0x1a4c368088d083dfL    # 5.311783220432008E-182
        -0x52029aff973a0924L    # -3.6940936174600144E-87
        0x6c14edb7384ebf6cL    # 4.403486362391048E212
    .end array-data
.end method
