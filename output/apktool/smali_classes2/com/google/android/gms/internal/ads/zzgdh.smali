.class final Lcom/google/android/gms/internal/ads/zzgdh;
.super Lcom/google/android/gms/internal/ads/zzgdj;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgdu;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgdj;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final bridge synthetic zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdu;

    .line 2
    .line 3
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdu;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/16 v1, 0xe

    .line 10
    .line 11
    new-array v1, v1, [J

    .line 12
    .line 13
    fill-array-data v1, :array_0

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzfxe;->zzd(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-object p2

    .line 27
    :array_0
    .array-data 8
        0x2ee4b6b58b486f4dL    # 8.530000238588938E-83
        -0x17b4ca5db58c82bcL    # -2.4828352542406255E194
        -0x7c0e044e838d2f89L
        0x5cef24ab407d6275L    # 4.635875624699337E139
        0x70b0cb8335fc5fe9L    # 6.675071010318301E234
        0x4a5328cdae1f461eL    # 1.1200591024426206E50
        0x19d9d4821dcdbcafL    # 3.799346692906771E-184
        -0x12064af669bcd107L    # -5.8077942559259774E221
        0x279f0deca58e1833L    # 7.696703239908262E-118
        -0x193f9d4038b5c06cL    # -8.911962543043687E186
        0x584233fc3065214dL    # 1.4344747055878985E117
        0x1f2c20080f404c2eL    # 1.600393297477116E-158
        0x6c077ed0ba618f5L
        0x4c0d1a4783bafa6bL    # 2.283503977579555E58
    .end array-data
.end method

.method public final synthetic zzf(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgdb;->zzs(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
