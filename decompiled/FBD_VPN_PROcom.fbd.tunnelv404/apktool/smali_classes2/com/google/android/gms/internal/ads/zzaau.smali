.class final Lcom/google/android/gms/internal/ads/zzaau;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/google/android/gms/internal/ads/zzaas;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# instance fields
.field private final zza:Landroid/hardware/display/DisplayManager;

.field private zzb:Lcom/google/android/gms/internal/ads/zzaap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zza:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public static zzc(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaas;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaau;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    return-object p0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x7c070ab8635d42daL
        -0x2f204a15d97b589aL    # -3.7599611904063843E81
    .end array-data
.end method

.method private final zzd()Landroid/view/Display;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zza:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzd()Landroid/view/Display;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzb(Lcom/google/android/gms/internal/ads/zzaaw;Landroid/view/Display;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final zza()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zza:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 8
    .line 9
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaau;->zzb:Lcom/google/android/gms/internal/ads/zzaap;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaau;->zza:Landroid/hardware/display/DisplayManager;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfy;->zzw(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaap;->zza:Lcom/google/android/gms/internal/ads/zzaaw;

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaau;->zzd()Landroid/view/Display;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaaw;->zzb(Lcom/google/android/gms/internal/ads/zzaaw;Landroid/view/Display;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
