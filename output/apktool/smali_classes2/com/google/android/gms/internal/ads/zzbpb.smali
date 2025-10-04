.class final Lcom/google/android/gms/internal/ads/zzbpb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzceu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpc;Lcom/google/android/gms/internal/ads/zzceu;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    new-array v1, v1, [J

    .line 7
    .line 8
    fill-array-data v1, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbpb;->zza:Lcom/google/android/gms/internal/ads/zzceu;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->zzd(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    return-void

    :array_0
    .array-data 8
        0x7dd01004bf9ff50eL    # 1.0504873438175533E298
        0x668cf9c8bea68301L    # 9.84966747352405E185
        -0x3646b8feb9fb6b0fL    # -1.4430823311783354E47
        -0x2f3b9712f694c9aeL    # -1.210010177924858E81
    .end array-data
.end method
