.class public final synthetic Lcom/google/android/gms/internal/ads/zzffd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfdq;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/ads/zzffd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzffd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzffd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzffd;->zza:Lcom/google/android/gms/internal/ads/zzffd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;->onAdMetadataChanged()V

    return-void
.end method
