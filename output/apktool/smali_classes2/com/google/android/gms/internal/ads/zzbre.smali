.class final Lcom/google/android/gms/internal/ads/zzbre;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcey;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbrd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbri;Lcom/google/android/gms/internal/ads/zzbrd;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbre;->zza:Lcom/google/android/gms/internal/ads/zzbrd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x6

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
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbqe;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbqe;->zzj()Lcom/google/android/gms/internal/ads/zzbrl;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbre;->zza:Lcom/google/android/gms/internal/ads/zzbrd;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzh(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :array_0
    .array-data 8
        0x22b465a2c5925e4eL
        0x606ec6ce434f123fL    # 3.3011723043139306E156
        -0x56040db7ea97e717L    # -1.9039152273400084E-106
        0x1f2c986a719893b0L
        0x25ec93118494fe2fL    # 5.276552374631381E-126
        -0x436150a5d8287cfL
    .end array-data
.end method
