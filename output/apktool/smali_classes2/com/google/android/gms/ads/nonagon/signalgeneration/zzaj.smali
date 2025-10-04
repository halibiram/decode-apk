.class public final synthetic Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdu;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaj;->zza:Lcom/google/android/gms/internal/ads/zzbze;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;

    .line 4
    .line 5
    new-instance v1, Landroid/util/JsonReader;

    .line 6
    .line 7
    new-instance v2, Ljava/io/InputStreamReader;

    .line 8
    .line 9
    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;-><init>(Landroid/util/JsonReader;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaj;->zza:Lcom/google/android/gms/internal/ads/zzbze;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbze;->zza:Landroid/os/Bundle;

    .line 21
    .line 22
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcdv;->zzh(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;->zzb:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 38
    .line 39
    const/4 v1, 0x2

    .line 40
    new-array v1, v1, [J

    .line 41
    .line 42
    fill-array-data v1, :array_0

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;->zzb:Ljava/lang/String;

    .line 53
    .line 54
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgen;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1

    .line 59
    :array_0
    .array-data 8
        0x320303c94c08d286L    # 8.816222141203853E-68
        -0x3d10daa6a1f1537dL    # -2.739621886989801E14
    .end array-data
.end method
