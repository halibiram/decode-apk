.class public final synthetic Lcom/google/android/gms/internal/ads/zzdoj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbng;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdom;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdoj;->zza:Lcom/google/android/gms/internal/ads/zzdom;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 6

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjk;

    .line 3
    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjk;->zzN()Lcom/google/android/gms/internal/ads/zzcky;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdog;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdoj;->zza:Lcom/google/android/gms/internal/ads/zzdom;

    .line 11
    .line 12
    invoke-direct {v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzdog;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcky;->zzB(Lcom/google/android/gms/internal/ads/zzckw;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    new-array v2, v1, [J

    .line 22
    .line 23
    fill-array-data v2, :array_0

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    move-object v2, p1

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    new-array v4, v3, [J

    .line 44
    .line 45
    fill-array-data v4, :array_1

    .line 46
    .line 47
    .line 48
    invoke-direct {p1, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_0

    .line 66
    .line 67
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 68
    .line 69
    new-array p2, v1, [J

    .line 70
    .line 71
    fill-array-data p2, :array_2

    .line 72
    .line 73
    .line 74
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v1, v3, [J

    .line 84
    .line 85
    fill-array-data v1, :array_3

    .line 86
    .line 87
    .line 88
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {v0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcjk;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_0
    new-instance p2, Lcom/panda912/muddy/ObfuscatedString;

    .line 100
    .line 101
    new-array v1, v1, [J

    .line 102
    .line 103
    fill-array-data v1, :array_4

    .line 104
    .line 105
    .line 106
    invoke-direct {p2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 114
    .line 115
    new-array v3, v3, [J

    .line 116
    .line 117
    fill-array-data v3, :array_5

    .line 118
    .line 119
    .line 120
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    const/4 v5, 0x0

    .line 128
    move-object v1, p1

    .line 129
    move-object v3, p2

    .line 130
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcjk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :array_0
    .array-data 8
        -0x7d81b896b0ef937cL
        0x84f4b4c1b994be0L
        0x3ef4584fb7146156L    # 1.940247188256366E-5
    .end array-data

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
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :array_1
    .array-data 8
        -0x2c410328dd325deeL    # -2.5855169980796133E95
        -0x2d740962acaad883L    # -4.4501816970140255E89
    .end array-data

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    :array_2
    .array-data 8
        0x4a4632ee84dc5680L    # 6.48876094219543E49
        -0x66a551fcd410ef65L
        0x55a4271bb7d1608L
    .end array-data

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
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
    :array_3
    .array-data 8
        0x7dcf0952803788faL    # 1.0148860452214162E298
        0x5e906dc517f0e775L    # 3.2823390193881054E147
    .end array-data

    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    :array_4
    .array-data 8
        -0x2ea0f5d691353fc8L    # -9.421851460188349E83
        -0x21d0c4d925dfefbaL    # -4.8747760614311057E145
        -0x5a9fab0dc40a97b2L
    .end array-data

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :array_5
    .array-data 8
        0x67dd7bbcd0622dc2L
        0x2b9005270c1ada01L    # 7.324321296485265E-99
    .end array-data
.end method
