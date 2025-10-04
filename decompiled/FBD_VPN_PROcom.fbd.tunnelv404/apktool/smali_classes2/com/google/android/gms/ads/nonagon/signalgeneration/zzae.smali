.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;->zzc(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbbz;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x3

    .line 10
    sparse-switch v1, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_0
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 15
    .line 16
    new-array v5, v2, [J

    .line 17
    .line 18
    fill-array-data v5, :array_0

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :sswitch_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v5, v2, [J

    .line 39
    .line 40
    fill-array-data v5, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const/4 v0, 0x3

    .line 57
    goto :goto_1

    .line 58
    :sswitch_2
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 59
    .line 60
    new-array v5, v4, [J

    .line 61
    .line 62
    fill-array-data v5, :array_2

    .line 63
    .line 64
    .line 65
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    goto :goto_1

    .line 80
    :sswitch_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 81
    .line 82
    new-array v5, v2, [J

    .line 83
    .line 84
    fill-array-data v5, :array_3

    .line 85
    .line 86
    .line 87
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    goto :goto_1

    .line 102
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 103
    :goto_1
    if-eqz v0, :cond_4

    .line 104
    .line 105
    if-eq v0, v3, :cond_3

    .line 106
    .line 107
    if-eq v0, v2, :cond_2

    .line 108
    .line 109
    if-eq v0, v4, :cond_1

    .line 110
    .line 111
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zza:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzh:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzg:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzb:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 124
    .line 125
    return-object v0

    .line 126
    nop

    .line 127
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_3
        -0x51d5b0d4 -> :sswitch_2
        0x205e3c0e -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch

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
    .line 142
    .line 143
    .line 144
    .line 145
    :array_0
    .array-data 8
        -0x234cd2df0220b029L    # -3.568144968023934E138
        0x27e278b6dd9c37fdL
    .end array-data

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :array_1
    .array-data 8
        -0x7d8aac99e3d995bfL    # -8.152093346403541E-297
        0x53da0eef789da669L    # 8.696918704174522E95
    .end array-data

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :array_2
    .array-data 8
        -0x6c6e9d83177a7bffL
        0x44f6f88970495f6L
        0x45ec10633636038eL    # 6.9483132819276726E28
    .end array-data

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    :array_3
    .array-data 8
        -0x4cf34b5d95021623L    # -8.7224320264936E-63
        -0x4f0baf3307d4057cL    # -7.186398581881648E-73
    .end array-data
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zzc()Ljava/util/Set;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzae;->zza:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
