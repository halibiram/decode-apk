.class final Lcom/google/android/gms/internal/ads/zzft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzev;


# instance fields
.field private zza:Landroid/os/Message;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Lcom/google/android/gms/internal/ads/zzfu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfs;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zzd()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Landroid/os/Message;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Lcom/google/android/gms/internal/ads/zzfu;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfu;->zzl(Lcom/google/android/gms/internal/ads/zzft;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Landroid/os/Message;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzft;->zzd()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final zzb(Landroid/os/Message;Lcom/google/android/gms/internal/ads/zzfu;)Lcom/google/android/gms/internal/ads/zzft;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzft;->zzb:Lcom/google/android/gms/internal/ads/zzfu;

    return-object p0
.end method

.method public final zzc(Landroid/os/Handler;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzft;->zza:Landroid/os/Message;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzft;->zzd()V

    .line 11
    .line 12
    .line 13
    return p1
.end method
