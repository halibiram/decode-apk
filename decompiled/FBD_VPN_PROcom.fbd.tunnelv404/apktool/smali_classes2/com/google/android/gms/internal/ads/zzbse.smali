.class public final synthetic Lcom/google/android/gms/internal/ads/zzbse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcew;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzceu;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzceu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrm;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

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
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrm;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbse;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :array_0
    .array-data 8
        0x37f8432aa0e237feL    # 4.456293428471931E-39
        0xa9fde73c39faed2L
        -0x7ccb0a645cd02751L
        0x34ac652a5eed6210L    # 5.7902243881088785E-55
        -0x76220940ab5ad976L
    .end array-data
.end method
