.class public final synthetic Lcom/google/android/gms/internal/ads/zzdpw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpw;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    new-array v0, v0, [J

    .line 12
    .line 13
    fill-array-data v0, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeml;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    nop

    .line 31
    :array_0
    .array-data 8
        0x71b774960cb6a653L    # 6.109415739175486E239
        -0x788539dbb2568a5aL
        -0x636bc6676bf86e9eL
        0x7e788bc6809baeb0L    # 1.643827985015353E301
        -0x36b66e20b548a58cL    # -1.1404517874121816E45
        -0x3e27e346acc7be55L    # -1.618142540879008E9
        0x3b23c455cf6d8cbL    # 7.30937572928258E-291
    .end array-data
.end method
