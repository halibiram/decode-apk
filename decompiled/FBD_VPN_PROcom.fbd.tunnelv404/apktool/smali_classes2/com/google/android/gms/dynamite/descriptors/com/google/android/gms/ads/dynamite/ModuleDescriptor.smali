.class public Lcom/google/android/gms/dynamite/descriptors/com/google/android/gms/ads/dynamite/ModuleDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field public static final MODULE_ID:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation
.end field

.field public static final MODULE_VERSION:I = 0xe52c23e
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x6

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/dynamite/descriptors/com/google/android/gms/ads/dynamite/ModuleDescriptor;->MODULE_ID:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        -0x440783fe64b626faL    # -8.295637233076264E-20
        0x5bf319d43c5f2ecL
        -0x6a43144e7ba5933aL    # -5.765160604148986E-204
        -0x1e6e913d6f459593L    # -9.803502255692786E161
        -0x148562a90b370c5aL    # -5.46861154501401E209
        -0x28777b669c49ebffL    # -4.717075342043286E113
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
