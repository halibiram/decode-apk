.class public final Lcom/google/android/gms/internal/ads/zzcbp;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "SafeBrowsingConfigParcelCreator"
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
            "Lcom/google/android/gms/internal/ads/zzcbp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field public final zzb:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field public final zzc:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field public final zzd:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation
.end field

.field public final zze:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation
.end field

.field public final zzf:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x7
    .end annotation
.end field

.field public final zzg:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x8
    .end annotation
.end field

.field public final zzh:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x9
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcbq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcbp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zza:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzb:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzc:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzd:Z

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zze:Ljava/util/List;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzf:Z

    .line 15
    .line 16
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzg:Z

    .line 17
    .line 18
    if-nez p8, :cond_0

    .line 19
    .line 20
    new-instance p8, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzh:Ljava/util/List;

    .line 26
    .line 27
    return-void
.end method

.method public static zza(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcbp;
    .locals 23
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 19
    .line 20
    const/4 v4, 0x4

    .line 21
    new-array v5, v4, [J

    .line 22
    .line 23
    fill-array-data v5, :array_1

    .line 24
    .line 25
    .line 26
    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    new-instance v5, Lcom/panda912/muddy/ObfuscatedString;

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    new-array v7, v6, [J

    .line 37
    .line 38
    fill-array-data v7, :array_2

    .line 39
    .line 40
    .line 41
    invoke-direct {v5, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    new-instance v7, Lcom/panda912/muddy/ObfuscatedString;

    .line 49
    .line 50
    new-array v8, v6, [J

    .line 51
    .line 52
    fill-array-data v8, :array_3

    .line 53
    .line 54
    .line 55
    invoke-direct {v7, v8}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    new-instance v8, Lcom/panda912/muddy/ObfuscatedString;

    .line 63
    .line 64
    const/4 v9, 0x1

    .line 65
    new-array v10, v9, [J

    .line 66
    .line 67
    const-wide v11, 0x6982bb8b1d1b32bcL    # 1.792358977575004E200

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    const/4 v13, 0x0

    .line 73
    aput-wide v11, v10, v13

    .line 74
    .line 75
    invoke-direct {v8, v10}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 83
    .line 84
    new-array v6, v6, [J

    .line 85
    .line 86
    fill-array-data v6, :array_4

    .line 87
    .line 88
    .line 89
    invoke-direct {v10, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v10, Lcom/panda912/muddy/ObfuscatedString;

    .line 97
    .line 98
    new-array v9, v9, [J

    .line 99
    .line 100
    const-wide v11, -0x5159e12cac345496L    # -5.693304759143674E-84

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    aput-wide v11, v9, v13

    .line 106
    .line 107
    invoke-direct {v10, v9}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    invoke-virtual {v0, v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    invoke-virtual {v0, v3, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 123
    .line 124
    .line 125
    move-result v17

    .line 126
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v18

    .line 130
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-static {v1, v3}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzc(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v19

    .line 139
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 140
    .line 141
    new-array v5, v4, [J

    .line 142
    .line 143
    fill-array-data v5, :array_5

    .line 144
    .line 145
    .line 146
    invoke-direct {v1, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v1, v3}, Lcom/google/android/gms/ads/internal/util/zzbw;->zzc(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 158
    .line 159
    .line 160
    move-result-object v22

    .line 161
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 162
    .line 163
    new-array v2, v2, [J

    .line 164
    .line 165
    fill-array-data v2, :array_6

    .line 166
    .line 167
    .line 168
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 176
    .line 177
    new-array v3, v4, [J

    .line 178
    .line 179
    fill-array-data v3, :array_7

    .line 180
    .line 181
    .line 182
    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 190
    .line 191
    .line 192
    move-result v20

    .line 193
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 194
    .line 195
    .line 196
    move-result v21

    .line 197
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbp;

    .line 198
    .line 199
    move-object v14, v0

    .line 200
    invoke-direct/range {v14 .. v22}, Lcom/google/android/gms/internal/ads/zzcbp;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    nop

    .line 205
    :array_0
    .array-data 8
        -0x7fa59e92861ef4c8L    # -5.869873163772726E-307
        0x5f9945e963020767L    # 3.3091481382259646E152
        0x43ba7e5d54876d03L    # 1.90906590968237338E18
        -0x6824c73c7cf3648dL    # -9.322632732559726E-194
        -0x714f4ad7f2d21d8eL    # -6.4144379022466E-238
    .end array-data

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
    :array_1
    .array-data 8
        -0x2f9287965e46e7d3L    # -2.729947811860209E79
        -0x3601d090fb2f18edL    # -2.757240468025492E48
        -0x3173f0de90feda75L    # -2.4207102235045272E70
        0x6f9cb51990bbc044L    # 4.3524209984136466E229
    .end array-data

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    :array_2
    .array-data 8
        -0x1e8df390c60e0e64L    # -2.537467823426032E161
        0x4916fe6602929c0dL    # 1.281944068038658E44
        -0x79b53076cef2797L    # -8.738273842544487E271
    .end array-data

    :array_3
    .array-data 8
        0x4a6aad3fb0738ad8L    # 3.1190494633586287E50
        -0x16aa09eb27edaf3eL    # -2.6266022538513296E199
        -0x496185ae5fc35444L    # -1.3346407988843682E-45
    .end array-data

    :array_4
    .array-data 8
        -0xb19f73f6d315b7dL    # -1.292359691457185E255
        0x46dd154b4aa7fa7bL    # 2.359507886192804E33
        0x6681b7108e6332bbL    # 6.021862868828107E185
    .end array-data

    :array_5
    .array-data 8
        -0x7da0a4b41686bdc4L    # -2.99663352303058E-297
        0x133b06a3025ae2eL
        -0x5348e7859bf20b16L    # -2.7680308867893866E-93
        -0xb0964a63e34f3afL    # -2.651894050508709E255
    .end array-data

    :array_6
    .array-data 8
        -0x1e1f69d3fb6229ebL    # -2.9848689905243E163
        0x71a31b3e18164412L    # 2.4883175622337425E239
        -0xa7f7caf5fb9b26aL
        -0x616c592dbc97cbc1L    # -2.184043389241201E-161
        -0xd61019ccf99d938L
    .end array-data

    :array_7
    .array-data 8
        -0x1c24f1b3bf4af2baL    # -1.0455835150258351E173
        -0x50c3d7afad84fbd1L    # -3.710521019510656E-81
        0x3dfe71f5d942d009L    # 4.4303535255435066E-10
        -0x16730b36b6ff014L    # -6.645968454440695E301
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zza:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzb:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 p2, 0x4

    .line 19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzc:Z

    .line 20
    .line 21
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzd:Z

    .line 26
    .line 27
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x6

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zze:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 34
    .line 35
    .line 36
    const/4 p2, 0x7

    .line 37
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzf:Z

    .line 38
    .line 39
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzg:Z

    .line 45
    .line 46
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 47
    .line 48
    .line 49
    const/16 p2, 0x9

    .line 50
    .line 51
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbp;->zzh:Ljava/util/List;

    .line 52
    .line 53
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
