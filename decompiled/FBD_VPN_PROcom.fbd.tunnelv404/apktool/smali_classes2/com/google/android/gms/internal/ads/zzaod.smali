.class public final synthetic Lcom/google/android/gms/internal/ads/zzaod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadb;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzaod;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaod;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaod;->zza:Lcom/google/android/gms/internal/ads/zzaod;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zzacu;
    .locals 7

    .line 1
    sget p1, Lcom/google/android/gms/internal/ads/zzada;->zza:I

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzaog;

    .line 4
    .line 5
    sget-object v3, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzakp;

    .line 6
    .line 7
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfw;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(J)V

    .line 12
    .line 13
    .line 14
    new-instance v5, Lcom/google/android/gms/internal/ads/zzamv;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {v5, p2}, Lcom/google/android/gms/internal/ads/zzamv;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    const/4 v2, 0x1

    .line 22
    const v6, 0x1b8a0

    .line 23
    .line 24
    .line 25
    move-object v0, p1

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzaog;-><init>(IILcom/google/android/gms/internal/ads/zzakp;Lcom/google/android/gms/internal/ads/zzfw;Lcom/google/android/gms/internal/ads/zzaoj;I)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzacu;

    .line 31
    .line 32
    aput-object p1, v0, p2

    .line 33
    .line 34
    return-object v0
.end method
