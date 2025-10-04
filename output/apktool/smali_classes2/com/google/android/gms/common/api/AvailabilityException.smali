.class public Lcom/google/android/gms/common/api/AvailabilityException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final zaa:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0
    .param p1    # Landroidx/collection/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Lcom/google/android/gms/common/api/internal/ApiKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getConnectionResult(Lcom/google/android/gms/common/api/GoogleApi;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApi;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3a

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x7

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    nop

    :array_0
    .array-data 8
        -0x20d3aff5d6b77bcaL    # -2.89619934751801E150
        0x5690de598dc318c5L    # 9.904129334081324E108
        -0x554a92d5db0ec543L    # -5.979036337707721E-103
    .end array-data

    :array_1
    .array-data 8
        -0xfe5ddf96fc8fef3L    # -1.0142954922870213E232
        0x31ee927230a1e740L    # 3.5436891898977057E-68
        -0x7e17d7200ba27031L
        0x288af69e2a6113fdL
        -0x6d30806d440c8217L
        -0x77621be1eca69411L
        0x3c1ec5e9c0959e8bL    # 4.170532466842941E-19
    .end array-data
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/HasApiKey;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 5
    .param p1    # Lcom/google/android/gms/common/api/HasApiKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/HasApiKey<",
            "+",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/common/api/HasApiKey;->getApiKey()Lcom/google/android/gms/common/api/internal/ApiKey;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 7
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3a

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x3

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x7

    new-array v2, v2, [J

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 10
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    nop

    :array_0
    .array-data 8
        -0x9527043f6a18d53L
        -0x5dc37f345eef5998L    # -9.130494232637336E-144
        -0x7729c1457e0f0343L    # -4.311783075252279E-266
    .end array-data

    :array_1
    .array-data 8
        -0x522e419b884bba9cL    # -5.574757275169277E-88
        -0x676e080e30632892L    # -2.520550380645376E-190
        -0x2a577ba8575b1439L    # -4.392939040221905E104
        -0x46cf09483f3fb814L    # -3.267097742952623E-33
        -0x10b32fdfb08adb0aL    # -1.365133451925031E228
        -0x5716f763b342d64cL
        0x5387aaf1488cee3aL    # 2.4684567756199633E94
    .end array-data
.end method

.method public getMessage()Ljava/lang/String;
    .locals 10
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/collection/ArrayMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x1

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Lcom/google/android/gms/common/api/internal/ApiKey;

    .line 30
    .line 31
    iget-object v6, p0, Lcom/google/android/gms/common/api/AvailabilityException;->zaa:Landroidx/collection/ArrayMap;

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    .line 38
    .line 39
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/google/android/gms/common/ConnectionResult;

    .line 44
    .line 45
    invoke-virtual {v6}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    xor-int/2addr v7, v3

    .line 50
    and-int/2addr v4, v7

    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/common/api/internal/ApiKey;->zab()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    add-int/2addr v7, v0

    .line 74
    add-int/2addr v7, v8

    .line 75
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 82
    .line 83
    new-array v7, v0, [J

    .line 84
    .line 85
    fill-array-data v7, :array_0

    .line 86
    .line 87
    .line 88
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 117
    .line 118
    const/4 v4, 0x6

    .line 119
    new-array v4, v4, [J

    .line 120
    .line 121
    fill-array-data v4, :array_1

    .line 122
    .line 123
    .line 124
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 136
    .line 137
    const/4 v4, 0x7

    .line 138
    new-array v4, v4, [J

    .line 139
    .line 140
    fill-array-data v4, :array_2

    .line 141
    .line 142
    .line 143
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    :goto_1
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    new-array v0, v0, [J

    .line 156
    .line 157
    fill-array-data v0, :array_3

    .line 158
    .line 159
    .line 160
    invoke-direct {v3, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    return-object v0

    .line 179
    :array_0
    .array-data 8
        -0x5e9d9a838df3f721L    # -7.193590193389925E-148
        -0x620ae5aec7a82f48L    # -2.290353387917198E-164
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
    :array_1
    .array-data 8
        0x1aaa9f616258e073L
        -0x4ede2d12cf11f531L    # -5.043993932686512E-72
        -0x132d7dfe63d85eaeL    # -1.5950436468763324E216
        -0x648a6eb52d5079cL
        -0x5c4459c484a6752eL    # -1.4859589998138041E-136
        -0x4fdc41916743cb92L    # -8.525571651988074E-77
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
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    :array_2
    .array-data 8
        0x704277a16681aefbL    # 5.734165499196249E232
        0x315db2643a44145L
        -0x7ea7738e734be336L
        -0x5f1112b3bf3f9046L    # -4.723992410632035E-150
        -0x617170a52d1f0cacL    # -1.698186551575687E-161
        -0x712ab07639bc3becL
        0x773add2eb26072b9L    # 2.1655427554026645E266
    .end array-data

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    :array_3
    .array-data 8
        -0x162dee0ebee98968L    # -5.532703129036335E201
        0x65e53c72d58bb47L
    .end array-data
.end method
