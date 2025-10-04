.class public Lcom/google/android/gms/ads/internal/client/LiteSdkInfo;
.super Lcom/google/android/gms/ads/internal/client/zzck;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzck;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAdapterCreator()Lcom/google/android/gms/internal/ads/zzbsv;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbsr;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbsr;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public getLiteSdkVersion()Lcom/google/android/gms/ads/internal/client/zzen;
    .locals 4

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

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
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzen;

    .line 17
    .line 18
    const v2, 0xe52c23e

    .line 19
    .line 20
    .line 21
    const v3, 0xe52bf80

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/ads/internal/client/zzen;-><init>(IILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    nop

    .line 29
    :array_0
    .array-data 8
        -0x594a7ffe27be491cL
        0x2600aa5c1bc6aefbL    # 1.230975274949246E-125
    .end array-data
.end method
