.class public final Lcom/google/android/gms/internal/ads/zzgqv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgqv;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgqv;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgqv;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzgqv;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqv;->zza:Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqv;->zzb:Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqv;->zzc:Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqv;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgqv;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqv;->zzd:Lcom/google/android/gms/internal/ads/zzgqv;

    return-void

    nop

    :array_0
    .array-data 8
        -0x4a84f9841bf1e14fL    # -4.51452142215464E-51
        0x25ff310958a5d22aL
    .end array-data

    :array_1
    .array-data 8
        0x36826199b3c76c4aL    # 4.024628059990988E-46
        0x323a8fdf3b511b4cL    # 9.852393375793866E-67
    .end array-data

    :array_2
    .array-data 8
        -0x3058d687b9fa6614L    # -5.238233172209402E75
        0x733415a7dc54aa02L    # 8.776866420404857E246
    .end array-data

    :array_3
    .array-data 8
        0x3b3bf05f15690c91L    # 2.3110558487387803E-23
        0x8ec6421403dd887L
        -0x79fc044202a5ce8cL    # -1.100886935272074E-279
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqv;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqv;->zze:Ljava/lang/String;

    return-object v0
.end method
