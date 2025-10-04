.class public final Lcom/google/android/gms/internal/ads/zzgjt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzgjt;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzgjt;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzgjt;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjt;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_0

    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjt;->zza:Lcom/google/android/gms/internal/ads/zzgjt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjt;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjt;->zzb:Lcom/google/android/gms/internal/ads/zzgjt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgjt;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgjt;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgjt;->zzc:Lcom/google/android/gms/internal/ads/zzgjt;

    return-void

    :array_0
    .array-data 8
        -0x130e2b5f4de8817L
        0x6a5b56f3330ee7f9L    # 2.1429399585329712E204
    .end array-data

    :array_1
    .array-data 8
        0x569df65420b7f903L    # 1.7591888083899243E109
        -0x56713fcc467c35b5L
    .end array-data

    :array_2
    .array-data 8
        0x14355432a9b5670aL
        -0x6a2c62fc7fb64921L
        -0x138fa9509fb849c9L    # -2.2001491864062635E214
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjt;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjt;->zzd:Ljava/lang/String;

    return-object v0
.end method
