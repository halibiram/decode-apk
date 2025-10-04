.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzeb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzej;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/internal/client/zzej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzeb;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/ads/internal/client/zzee;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzeb;->zza:Lcom/google/android/gms/ads/internal/client/zzej;

    .line 9
    .line 10
    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/client/zzee;-><init>(Lcom/google/android/gms/ads/internal/client/zzej;)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 14
    .line 15
    const/4 v3, 0x6

    .line 16
    new-array v3, v3, [J

    .line 17
    .line 18
    fill-array-data v3, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-object v0

    .line 32
    nop

    .line 33
    :array_0
    .array-data 8
        -0x4770b0133ce58beaL    # -2.944585743809289E-36
        -0x5d796c61744c7ab5L    # -2.314255627101563E-142
        0x7f4bb7f65e1d2ec8L
        -0x6bb0bd7e0c113a4cL    # -7.428466680421131E-211
        0x3caf8c643bb6a441L    # 2.1891103123356554E-16
        0x4577f7a4d7018e35L    # 4.635961461000626E26
    .end array-data
.end method
