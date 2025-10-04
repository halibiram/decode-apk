.class public final synthetic Lcom/google/android/gms/internal/ads/zzdpu;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

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
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcjk;->zzq()Lcom/google/android/gms/internal/ads/zzcki;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpu;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    new-array v0, v0, [J

    .line 18
    .line 19
    fill-array-data v0, :array_0

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeml;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    nop

    .line 37
    :array_0
    .array-data 8
        -0x2c28e5147c53c6d0L    # -7.711299066979753E95
        0x50e1e86eb9dee631L    # 4.246728159058418E81
        -0x48e1c04a5497df2dL    # -3.3910151362847598E-43
        0x7c2c2e72d7d046d5L    # 1.3731849039107357E290
        -0x21a20944d33132a9L    # -3.741577164853962E146
        -0x30769eb9476d59afL    # -1.4349616847729548E75
        0x66144b7a198c2b01L    # 5.389678125358107E183
    .end array-data
.end method
