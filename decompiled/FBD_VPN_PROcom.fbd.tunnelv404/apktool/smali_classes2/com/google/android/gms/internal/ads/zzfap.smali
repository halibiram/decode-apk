.class public final Lcom/google/android/gms/internal/ads/zzfap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzexp;


# instance fields
.field private final zza:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzj(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Landroid/os/Bundle;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [J

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    new-array v1, v1, [J

    .line 30
    .line 31
    fill-array-data v1, :array_1

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzf(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 46
    .line 47
    const/4 v1, 0x4

    .line 48
    new-array v1, v1, [J

    .line 49
    .line 50
    fill-array-data v1, :array_2

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcdv;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfap;->zza:Landroid/os/Bundle;

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcdv;->zzh(Landroid/os/Bundle;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :catch_0
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 75
    .line 76
    const/4 v0, 0x6

    .line 77
    new-array v0, v0, [J

    .line 78
    .line 79
    fill-array-data v0, :array_3

    .line 80
    .line 81
    .line 82
    invoke-direct {p1, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    return-void

    .line 93
    :array_0
    .array-data 8
        -0x606bd51227525fafL    # -1.46892106268234E-156
        0x78aa7350ea705d56L
    .end array-data

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    :array_1
    .array-data 8
        -0x595270d57dd65e32L
        -0x143bae3f9c985c8cL    # -1.3360312453339837E211
        0x548c19ff81a0820aL    # 1.9207858271991193E99
    .end array-data

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    :array_2
    .array-data 8
        0x2faf77107051b55eL    # 5.307380086742971E-79
        0x7f86183198a5d545L    # 1.9394112868702514E306
        0x7eb0c8aeefe632a4L    # 1.798411402270493E302
        0x3e9b54ca3027972cL    # 4.0726676800297885E-7
    .end array-data

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    :array_3
    .array-data 8
        0x7996cc19157174cL
        -0x6ee52d8e009edeb7L
        -0x13aaf9868a0ccdeeL    # -7.078136781324601E213
        0x6178ed131916008aL    # 3.5043828794967944E161
        -0x57f2b6c1d520fc2L
        0x7ff0f7543279bd8eL
    .end array-data
.end method
