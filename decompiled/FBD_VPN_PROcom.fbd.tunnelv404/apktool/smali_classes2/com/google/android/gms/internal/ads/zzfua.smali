.class public abstract Lcom/google/android/gms/internal/ads/zzfua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzftu;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftz;->zza()Lcom/google/android/gms/internal/ads/zzftz;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftw;->zza()Lcom/google/android/gms/internal/ads/zzftw;

    .line 8
    .line 9
    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/zzftw;->zza:Lcom/google/android/gms/internal/ads/zzftu;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfua;->zza:Lcom/google/android/gms/internal/ads/zzftu;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfua;->zza(Landroid/hardware/SensorEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract zza(Landroid/hardware/SensorEvent;)V
.end method
