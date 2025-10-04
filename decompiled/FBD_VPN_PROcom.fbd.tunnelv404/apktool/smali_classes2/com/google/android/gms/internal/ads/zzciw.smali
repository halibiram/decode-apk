.class public final synthetic Lcom/google/android/gms/internal/ads/zzciw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadb;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzciw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzciw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzciw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzciw;->zza:Lcom/google/android/gms/internal/ads/zzciw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzacu;
    .locals 3

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzada;->zza:I

    .line 2
    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/zzcix;->zza:I

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajh;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance p2, Lcom/google/android/gms/internal/ads/zzahy;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/zzajc;

    .line 17
    .line 18
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzajc;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzacu;

    .line 23
    .line 24
    aput-object p1, v2, v0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    aput-object p2, v2, p1

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    aput-object v1, v2, p1

    .line 31
    .line 32
    return-object v2
.end method
