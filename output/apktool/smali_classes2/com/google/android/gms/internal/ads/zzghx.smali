.class public final Lcom/google/android/gms/internal/ads/zzghx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzghx;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzghx;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzghx;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghx;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghx;->zza:Lcom/google/android/gms/internal/ads/zzghx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghx;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghx;->zzb:Lcom/google/android/gms/internal/ads/zzghx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzghx;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzghx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzghx;->zzc:Lcom/google/android/gms/internal/ads/zzghx;

    return-void

    :array_0
    .array-data 8
        0x555d7dd699bfcd13L    # 1.6513389257638877E103
        0x1ee373a3db78b569L    # 6.917836580992455E-160
    .end array-data

    :array_1
    .array-data 8
        -0x782d18855821a283L    # -5.59116831789382E-271
        0x782fc9295087f908L    # 8.396128630262336E270
    .end array-data

    :array_2
    .array-data 8
        0x30085c57e7e2f8d0L    # 2.6297906550248056E-77
        -0x291b8c71e21c43bbL    # -3.842476312236183E110
        -0x500fc8cbadef6140L    # -8.752563649473385E-78
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghx;->zzd:Ljava/lang/String;

    return-object v0
.end method
