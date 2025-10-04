.class public final Lcom/google/android/gms/internal/ads/zzbbb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CacheOfferingCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ads/zzbbb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field public final zzb:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public final zzc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field public final zzd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field public final zze:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field

.field public final zzf:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x7
    .end annotation
.end field

.field public final zzg:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field public zzh:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x9
    .end annotation
.end field

.field public zzi:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xa
    .end annotation
.end field

.field public zzj:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJLjava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p12    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zza:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzb:J

    .line 9
    .line 10
    if-nez p4, :cond_0

    .line 11
    .line 12
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array p2, v1, [J

    .line 15
    .line 16
    const-wide p3, 0x67b92ea272ca60f9L    # 4.487974148873261E191

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    aput-wide p3, p2, v0

    .line 22
    .line 23
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzc:Ljava/lang/String;

    .line 31
    .line 32
    if-nez p5, :cond_1

    .line 33
    .line 34
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 35
    .line 36
    new-array p2, v1, [J

    .line 37
    .line 38
    const-wide p3, -0x6ee8b61c7bb799d9L    # -2.457690387472312E-226

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    aput-wide p3, p2, v0

    .line 44
    .line 45
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p5

    .line 52
    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzd:Ljava/lang/String;

    .line 53
    .line 54
    if-nez p6, :cond_2

    .line 55
    .line 56
    new-instance p1, Lcom/panda912/muddy/ObfuscatedString;

    .line 57
    .line 58
    new-array p2, v1, [J

    .line 59
    .line 60
    const-wide p3, 0x539958aa885b9642L    # 5.287058548811554E94

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    aput-wide p3, p2, v0

    .line 66
    .line 67
    invoke-direct {p1, p2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p6

    .line 74
    :cond_2
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zze:Ljava/lang/String;

    .line 75
    .line 76
    if-nez p7, :cond_3

    .line 77
    .line 78
    new-instance p7, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    :cond_3
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzf:Landroid/os/Bundle;

    .line 84
    .line 85
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzg:Z

    .line 86
    .line 87
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 88
    .line 89
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 90
    .line 91
    iput p12, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 92
    .line 93
    return-void
.end method

.method public static zza(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzbbb;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v5, 0x0

    .line 8
    :try_start_0
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 9
    .line 10
    new-array v7, v4, [J

    .line 11
    .line 12
    fill-array-data v7, :array_0

    .line 13
    .line 14
    .line 15
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    return-object v5

    .line 33
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-eq v7, v4, :cond_1

    .line 42
    .line 43
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 53
    .line 54
    const/16 v3, 0x8

    .line 55
    .line 56
    new-array v3, v3, [J

    .line 57
    .line 58
    fill-array-data v3, :array_1

    .line 59
    .line 60
    .line 61
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzj(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-object v5

    .line 82
    :catch_0
    move-exception v0

    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :catch_1
    move-exception v0

    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_1
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    move-object v13, v7

    .line 93
    check-cast v13, Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    move-object v14, v6

    .line 100
    check-cast v14, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 107
    .line 108
    new-array v7, v4, [J

    .line 109
    .line 110
    fill-array-data v7, :array_2

    .line 111
    .line 112
    .line 113
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 125
    .line 126
    new-array v7, v4, [J

    .line 127
    .line 128
    fill-array-data v7, :array_3

    .line 129
    .line 130
    .line 131
    invoke-direct {v6, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 139
    .line 140
    new-array v8, v1, [J

    .line 141
    .line 142
    fill-array-data v8, :array_4

    .line 143
    .line 144
    .line 145
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v16

    .line 160
    new-instance v6, Lcom/panda912/muddy/ObfuscatedString;

    .line 161
    .line 162
    new-array v1, v1, [J

    .line 163
    .line 164
    fill-array-data v1, :array_5

    .line 165
    .line 166
    .line 167
    invoke-direct {v6, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-nez v1, :cond_2

    .line 179
    .line 180
    const-wide/16 v6, 0x0

    .line 181
    .line 182
    :goto_0
    move-wide v10, v6

    .line 183
    goto :goto_1

    .line 184
    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 185
    .line 186
    .line 187
    move-result-wide v6

    .line 188
    goto :goto_0

    .line 189
    :goto_1
    new-instance v15, Landroid/os/Bundle;

    .line 190
    .line 191
    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    if-eqz v6, :cond_4

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, Ljava/lang/String;

    .line 213
    .line 214
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 215
    .line 216
    new-array v8, v4, [J

    .line 217
    .line 218
    fill-array-data v8, :array_6

    .line 219
    .line 220
    .line 221
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v7

    .line 228
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_3

    .line 233
    .line 234
    const/4 v7, 0x4

    .line 235
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    invoke-virtual {v15, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbb;

    .line 248
    .line 249
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 250
    .line 251
    new-array v2, v2, [J

    .line 252
    .line 253
    const-wide v6, -0x6af6af2a499300ecL

    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    aput-wide v6, v2, v3

    .line 259
    .line 260
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v19

    .line 267
    const/16 v20, 0x0

    .line 268
    .line 269
    const-wide/16 v17, 0x0

    .line 270
    .line 271
    move-object v8, v0

    .line 272
    invoke-direct/range {v8 .. v20}, Lcom/google/android/gms/internal/ads/zzbbb;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    .line 275
    return-object v0

    .line 276
    :goto_3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 277
    .line 278
    const/4 v2, 0x6

    .line 279
    new-array v2, v2, [J

    .line 280
    .line 281
    fill-array-data v2, :array_7

    .line 282
    .line 283
    .line 284
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcec;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .line 293
    .line 294
    return-object v5

    .line 295
    :array_0
    .array-data 8
        0x3520a1eaa4e15a8dL    # 8.682563147883067E-53
        0x3973cb621353e256L    # 6.099640541410126E-32
    .end array-data

    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    :array_1
    .array-data 8
        -0x3c26c382a26ed840L
        0x77d3fe64b7b7c976L    # 1.6504023781606828E269
        0x6e4faa20fc58bc99L    # 2.2891821024910591E223
        0x41c5c6592751a416L    # 7.3064097463782E8
        0x44a201fea963e46eL    # 4.2519696871858385E22
        0x569601aed41379b1L    # 1.292084398802943E109
        -0x4210404f5cd083c0L    # -2.3100284323655173E-10
        0x9096c87f038764L
    .end array-data

    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :array_2
    .array-data 8
        -0x188ce905d465d72bL    # -2.1263640786728814E190
        0x1be662ef43d5b88eL
    .end array-data

    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    :array_3
    .array-data 8
        -0x5904d773fe300828L
        -0x689a334d39419ff0L    # -5.832589534167513E-196
    .end array-data

    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    :array_4
    .array-data 8
        0x141919fb4669432cL    # 7.456286204120238E-212
        -0x1aa729ea728c9d5fL    # -1.6102886555829358E180
        -0x14be1124e2d134a6L    # -4.60596580739951E208
    .end array-data

    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :array_5
    .array-data 8
        0x5c5f944c258eb10bL    # 9.181219443732653E136
        0x3fbf0819e60f7d48L    # 0.12121736399375493
        0x505c13bb8c957d2cL    # 1.3004415253775007E79
    .end array-data

    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :array_6
    .array-data 8
        -0xba4c2314fd43d1bL    # -3.120659365270981E252
        -0x62ef4d0415fa80c3L
    .end array-data

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    :array_7
    .array-data 8
        0x637a71a9e00867f9L    # 1.5967784974797239E171
        -0x5a1e7ab6743965ddL
        -0x2d959e5719d2a1e8L    # -1.0496099783001832E89
        0x3928c728e3541f30L    # 2.3860314930447657E-33
        0x6945bc265b7e91ceL    # 1.2997684840102277E199
        0x28770f7c6626fda4L
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x3

    .line 13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzb:J

    .line 14
    .line 15
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzc:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzd:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x6

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zze:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x7

    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzf:Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzg:Z

    .line 45
    .line 46
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x9

    .line 50
    .line 51
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzh:J

    .line 52
    .line 53
    invoke-static {p1, p2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 54
    .line 55
    .line 56
    const/16 p2, 0xa

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzi:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const/16 p2, 0xb

    .line 64
    .line 65
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbbb;->zzj:I

    .line 66
    .line 67
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
