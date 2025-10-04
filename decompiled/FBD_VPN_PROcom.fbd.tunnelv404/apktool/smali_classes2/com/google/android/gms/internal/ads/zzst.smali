.class public Lcom/google/android/gms/internal/ads/zzst;
.super Lcom/google/android/gms/internal/ads/zzif;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzsv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsv;)V
    .locals 4
    .param p2    # Lcom/google/android/gms/internal/ads/zzsv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    move-object v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzsv;->zza:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    new-array v3, v3, [J

    .line 12
    .line 13
    fill-array-data v3, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzif;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzst;->zza:Lcom/google/android/gms/internal/ads/zzsv;

    .line 35
    .line 36
    sget p2, Lcom/google/android/gms/internal/ads/zzfy;->zza:I

    .line 37
    .line 38
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    check-cast p1, Landroid/media/MediaCodec$CodecException;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzst;->zzb:Ljava/lang/String;

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 8
        -0x57aaec39235a2a5cL
        0x1714ad9936337addL    # 1.728915966388347E-197
        -0x797df31581b984feL
    .end array-data
.end method
