.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public zzb:Ljava/lang/String;

.field public zzc:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/util/JsonReader;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;->zzc:Landroid/os/Bundle;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [J

    .line 23
    .line 24
    const-wide v4, -0x7b717054f92d546dL

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    aput-wide v4, v3, v6

    .line 31
    .line 32
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_7

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 52
    .line 53
    new-array v4, v2, [J

    .line 54
    .line 55
    const-wide v7, 0x2cb440aedab6c1aaL    # 2.427300792382303E-93

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    aput-wide v7, v4, v6

    .line 61
    .line 62
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const v5, -0x3b55067a

    .line 74
    .line 75
    .line 76
    if-eq v4, v5, :cond_2

    .line 77
    .line 78
    const v5, -0x102de173

    .line 79
    .line 80
    .line 81
    if-eq v4, v5, :cond_1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 85
    .line 86
    const/4 v5, 0x4

    .line 87
    new-array v5, v5, [J

    .line 88
    .line 89
    fill-array-data v5, :array_0

    .line 90
    .line 91
    .line 92
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    const/4 v3, 0x1

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    new-instance v4, Lcom/panda912/muddy/ObfuscatedString;

    .line 108
    .line 109
    const/4 v5, 0x2

    .line 110
    new-array v5, v5, [J

    .line 111
    .line 112
    fill-array-data v5, :array_1

    .line 113
    .line 114
    .line 115
    invoke-direct {v4, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    :goto_1
    const/4 v3, -0x1

    .line 131
    :goto_2
    if-eqz v3, :cond_6

    .line 132
    .line 133
    if-eq v3, v2, :cond_4

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    .line 145
    .line 146
    .line 147
    :goto_3
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_6
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_7
    iput-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;->zza:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 179
    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    :cond_8
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_9

    .line 194
    .line 195
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_8

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_8

    .line 212
    .line 213
    iget-object v1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzam;->zzc:Landroid/os/Bundle;

    .line 214
    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    check-cast v2, Ljava/lang/String;

    .line 220
    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_9
    return-void

    .line 232
    nop

    .line 233
    :array_0
    .array-data 8
        -0x3274d5357b2569c5L    # -3.5762938854062747E65
        0x72c11903ce9e2456L    # 5.837199667200403E244
        -0x3fea3db82777714dL    # -5.439727195105365
        0x5defd18bf0cc3650L    # 3.104046438527157E144
    .end array-data

    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_1
    .array-data 8
        -0x29e059097222a47aL    # -7.259427601670223E106
        0x3c7c881cecac786fL    # 2.4747297399640226E-17
    .end array-data
.end method
