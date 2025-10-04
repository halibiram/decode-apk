.class public final Lcom/google/android/gms/internal/ads/zzfaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zza:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    check-cast p1, Lorg/json/JSONObject;

    .line 3
    .line 4
    :try_start_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    new-array v2, v0, [J

    .line 7
    .line 8
    fill-array-data v2, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    new-array v0, v0, [J

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfaj;->zza:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    new-array v0, v0, [J

    .line 46
    .line 47
    fill-array-data v0, :array_2

    .line 48
    .line 49
    .line 50
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :array_0
    .array-data 8
        -0xb0b62146e1aea6L
        0x7484eba695617be6L    # 1.917249578766918E253
    .end array-data

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    :array_1
    .array-data 8
        -0x6de674be9c202974L
        -0x2dc645dec87949a7L    # -1.2794669392311775E88
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 8
        -0x17749e1b6e2e5577L    # -3.9977774830146825E195
        -0x401bf1c77fd9006bL    # -0.6267359259581889
        -0xbf606fa12a22206L    # -9.297887462674705E250
        0x63a1cade63d11a4cL    # 8.594951681868945E171
        -0x72241809fe2c98bdL    # -6.539169615688639E-242
    .end array-data
.end method
