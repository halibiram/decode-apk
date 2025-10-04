.class public final synthetic Lcom/google/android/gms/internal/ads/zzdgj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdgk;

.field public final synthetic zzb:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdgk;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zza:Lcom/google/android/gms/internal/ads/zzdgk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzb:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zza:Lcom/google/android/gms/internal/ads/zzdgk;

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgj;->zzb:Ljava/lang/Object;

    .line 5
    .line 6
    :try_start_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzdgk;->zza(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 12
    .line 13
    new-array v3, v0, [J

    .line 14
    .line 15
    fill-array-data v3, :array_0

    .line 16
    .line 17
    .line 18
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcdl;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdl;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 33
    .line 34
    new-array v0, v0, [J

    .line 35
    .line 36
    fill-array-data v0, :array_1

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :array_0
    .array-data 8
        -0x7dc2fe97de8de616L
        -0x63dee831861fe946L
        0x5c471f8fac0e6e2eL    # 3.361379941325206E136
        0x5b73298447c4cc57L    # 3.4003443859589017E132
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :array_1
    .array-data 8
        0x2b5be1b7f8f0fc0bL    # 7.967111729162005E-100
        0x468763c20dcd9ab9L    # 5.9299883218972605E31
        0x1b94002d6f99289fL    # 7.897099156349486E-176
        0x7edebf0811ae2c6fL    # 1.3177934407624553E303
    .end array-data
.end method
