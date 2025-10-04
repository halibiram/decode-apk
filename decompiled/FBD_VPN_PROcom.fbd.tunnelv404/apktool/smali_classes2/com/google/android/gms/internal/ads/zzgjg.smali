.class public final Lcom/google/android/gms/internal/ads/zzgjg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgjg;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgjg;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgjg;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjg;->zza:Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjg;->zzb:Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjg;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjg;->zzc:Lcom/google/android/gms/internal/ads/zzgjg;

    return-void

    :array_0
    .array-data 8
        0x14c174cc3aa0342cL
        0x4d7e6b8766f08d12L    # 2.0022522373523154E65
    .end array-data

    :array_1
    .array-data 8
        0x43c1fe6ad39d3c2L
        -0x58d6a8ea6a0e35e6L
    .end array-data

    :array_2
    .array-data 8
        -0x260ed0a6e56fb389L    # -1.8176345593080403E125
        0x5abf408cf4cb54faL    # 1.3539358040380217E129
        -0x346d764e4e56ea05L    # -1.1363679801283258E56
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjg;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjg;->zzd:Ljava/lang/String;

    return-object v0
.end method
