.class final Lcom/google/android/gms/internal/ads/zzdrs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgej;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 p2, 0x4

    new-array p2, p2, [J

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    nop

    :array_0
    .array-data 8
        -0x3cdef1cb03f89a57L    # -2.4003476667563085E15
        0x43f382147752361fL    # 2.2491336582495334E19
        0xf9c613346728b9fL    # 1.785134732536136E-233
        -0x61fb5ecd4a9d33c3L    # -4.478007980573349E-164
    .end array-data
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zza:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdrs;->zzb:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbqa;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
