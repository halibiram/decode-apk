.class public final Lcom/google/android/gms/common/internal/AccountType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final GOOGLE:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zza:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x3

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->GOOGLE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_3

    invoke-direct {v3, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/AccountType;->zza:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 8
        0x5c4c368cad40f97fL    # 4.101272404916049E136
        0x50044bac05a762deL    # 2.937586481383332E77
        -0x373f9a82442d2c42L    # -2.856664445404493E42
    .end array-data

    :array_1
    .array-data 8
        0x3f099438d68b8ffcL    # 4.878805595412425E-5
        0x1750e3eb07d3f474L    # 2.259541533005806E-196
        0x3509ee969578bd7L
    .end array-data

    :array_2
    .array-data 8
        0x783545aeb5415e0bL    # 1.1237985384166289E271
        0x57a831cc753c0a81L    # 1.8619391886330804E114
        -0xa5c74da5614b7d1L    # -4.69515140381066E258
    .end array-data

    :array_3
    .array-data 8
        -0x5b0a1a00022c4b97L
        -0x3b2669c59bf28247L    # -4.8332152474233224E23
        0x49e5e305d5973f7dL    # 9.996126687198718E47
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
