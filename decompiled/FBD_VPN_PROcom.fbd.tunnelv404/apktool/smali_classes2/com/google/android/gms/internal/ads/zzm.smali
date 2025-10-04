.class public abstract Lcom/google/android/gms/internal/ads/zzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzco;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzcw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcw;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzm;->zza:Lcom/google/android/gms/internal/ads/zzcw;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract zza(IJIZ)V
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation
.end method
