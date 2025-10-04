.class public final Lcom/google/android/gms/internal/ads/zzgkf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgkf;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgkf;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgkf;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkf;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zza:Lcom/google/android/gms/internal/ads/zzgkf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkf;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzb:Lcom/google/android/gms/internal/ads/zzgkf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgkf;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgkf;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgkf;->zzc:Lcom/google/android/gms/internal/ads/zzgkf;

    return-void

    :array_0
    .array-data 8
        0x5ebef5245df54e9L
        0x2c89114abe94b8fL
    .end array-data

    :array_1
    .array-data 8
        0x41916f6fa207ac8fL    # 7.31289365074942E7
        -0x39732e70275b53e1L    # -7.306383414121909E31
    .end array-data

    :array_2
    .array-data 8
        -0x2b1977c7b41f708fL    # -9.856674354711143E100
        -0x38fd702ad0c4fc52L    # -1.204732728033801E34
        0x1905fda66b510931L    # 3.948518293144285E-188
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkf;->zzd:Ljava/lang/String;

    return-object v0
.end method
