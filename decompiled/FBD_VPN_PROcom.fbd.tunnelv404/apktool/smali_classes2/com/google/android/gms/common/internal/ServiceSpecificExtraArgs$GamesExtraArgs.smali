.class public interface abstract Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GamesExtraArgs"
.end annotation


# static fields
.field public static final DESIRED_LOCALE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final GAME_PACKAGE_NAME:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final SIGNIN_OPTIONS:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final WINDOW_TOKEN:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x7

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->GAME_PACKAGE_NAME:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->DESIRED_LOCALE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x8

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->WINDOW_TOKEN:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->SIGNIN_OPTIONS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x4363522680fcdab3L    # 4.3506799070336408E16
        -0x2338d4d8588326ecL    # -8.621986121372577E138
        -0x479d109f2a88fb05L    # -4.451613873169069E-37
        0x332b95723565f05fL    # 3.352622004236649E-62
        0x1c2bf3283e2945f7L    # 5.650302720609847E-173
        -0x1858cb227cefb2b0L    # -2.0679355668958488E191
        -0x5142ee4baabf0397L    # -1.4963516443737383E-83
    .end array-data

    :array_1
    .array-data 8
        -0x626e3542b976517aL
        -0x702575dfae190e2eL
        0x395993822120889dL    # 1.9703191141750994E-32
        0x62c4697f1b6f62e9L    # 6.01831893577415E167
        0x78df50e6e573d8bL
        -0x3c5555bc1efa4624L    # -9.607114123848535E17
        -0x3f96072e0dacb60L
    .end array-data

    :array_2
    .array-data 8
        0x64d3f18604723665L    # 5.051004713227178E177
        -0x615eb7c652186eeL
        -0x3e401dbc8ca3fa71L    # -5.349220993594598E8
        0x51d68d3f3fdfddb4L    # 1.7524230448294626E86
        0x48442c039a8e7211L    # 1.3728304163801322E40
        -0x617c11b10fe051f0L
        0x5027d1073aa3c961L    # 1.3788821052292979E78
        0x531ed8d1f791b641L    # 2.513454189556093E92
    .end array-data

    :array_3
    .array-data 8
        -0x3cbb45af850041f9L    # -1.166870871588763E16
        0x6d1cc4044c183e32L    # 3.966538657406736E217
        0x3db9bfbf02ab9a79L    # 2.3418586659204047E-11
        0x4b88f7dc9011c749L    # 7.652733874182072E55
        0x303d4568ce576134L    # 2.5279041647631675E-76
        0x2e66aab86924aa02L
        0x58f449e01c744ecL
    .end array-data
.end method
