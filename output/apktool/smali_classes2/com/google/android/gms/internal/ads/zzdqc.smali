.class public final synthetic Lcom/google/android/gms/internal/ads/zzdqc;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqc;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 7
    .line 8
    const/16 v0, 0x8

    .line 9
    .line 10
    new-array v0, v0, [J

    .line 11
    .line 12
    fill-array-data v0, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeml;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :array_0
    .array-data 8
        0x5f6796f46dcf42fcL    # 3.8609097511070705E151
        -0x2ac82525991d8638L    # -3.3393047349938597E102
        -0x702357a32de0cf00L
        0x1c97bff3fdd723a2L    # 6.145577995906096E-171
        0x48339143cb6a3937L    # 6.658455040521207E39
        0x489034066be28880L    # 3.528749483816076E41
        0x727ee022f4a9ee53L    # 3.294056035416803E243
        0x2d75e666e87f8fd8L    # 1.0750918495740032E-89
    .end array-data
.end method
