.class public Lcom/google/android/gms/common/FirstPartyScopes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# static fields
.field public static final GAMES_1P:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/FirstPartyScopes;->GAMES_1P:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x37797c727c3a47a7L    # 1.8285395706455715E-41
        -0x3289b97af4a6ffe0L    # -1.466175337782294E65
        -0x553fad4840961650L    # -9.10991996105416E-103
        0x56d1fdcb61f4053cL    # 1.6901413163738274E110
        -0x561f114a1e4bfa65L    # -5.767819725467797E-107
        0x694b1b35d1bff026L    # 1.620978412322834E199
        0x628244e6cf07dfe9L    # 3.36655633734225E166
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
