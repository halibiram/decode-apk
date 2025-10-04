.class public final synthetic Lcom/google/android/gms/internal/ads/zzcin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadb;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzcin;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcin;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcin;->zza:Lcom/google/android/gms/internal/ads/zzcin;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzacu;
    .locals 2

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
    const/4 v1, 0x2

    .line 17
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzacu;

    .line 18
    .line 19
    aput-object p1, v1, v0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    aput-object p2, v1, p1

    .line 23
    .line 24
    return-object v1
.end method
