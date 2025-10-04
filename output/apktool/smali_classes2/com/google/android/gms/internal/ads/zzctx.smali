.class public final Lcom/google/android/gms/internal/ads/zzctx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhhd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzctx;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzctw;->zza()Lcom/google/android/gms/internal/ads/zzctx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        -0x3b5ed2d9ffe7a625L    # -4.055653595372427E22
        -0x689eedaa268ffdd4L    # -4.56759542294646E-196
        0x5ee1353d1bf3c32dL    # 1.1001638039813213E149
    .end array-data
.end method
